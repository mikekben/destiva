// Copyright (c) 2018-present The Alive2 Authors.
// Distributed under the MIT license that can be found in the LICENSE file.

#include "cache/cache.h"
#include "llvm_util/compare.h"
#include "llvm_util/llvm2alive.h"
#include "llvm_util/decompose.h"
#include "llvm_util/llvm_optimizer.h"
#include "llvm_util/utils.h"
#include "smt/smt.h"
#include "tools/transform.h"
#include "util/version.h"

#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/InitializePasses.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/Signals.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Transforms/Utils/Cloning.h"

#include <fstream>
#include <iostream>
#include <sstream>
#include <unordered_set>
#include <utility>

using namespace tools;
using namespace util;
using namespace std;
using namespace llvm_util;

#define LLVM_ARGS_PREFIX ""
#define ARGS_SRC_TGT
#define ARGS_REFINEMENT
#include "llvm_util/cmd_args_list.h"

namespace {

llvm::cl::opt<string> opt_file1(llvm::cl::Positional,
  llvm::cl::desc("first_bitcode_file"),
  llvm::cl::Required, llvm::cl::value_desc("filename"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<string> opt_file2(llvm::cl::Positional,
  llvm::cl::desc("[second_bitcode_file]"),
  llvm::cl::Optional, llvm::cl::value_desc("filename"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<std::string> opt_src_fn(LLVM_ARGS_PREFIX "src-fn",
  llvm::cl::desc("Name of src function (without @)"),
  llvm::cl::cat(alive_cmdargs), llvm::cl::init("src"));

llvm::cl::opt<std::string> opt_tgt_fn(LLVM_ARGS_PREFIX"tgt-fn",
  llvm::cl::desc("Name of tgt function (without @)"),
  llvm::cl::cat(alive_cmdargs), llvm::cl::init("tgt"));

llvm::cl::opt<string>
    optPass(LLVM_ARGS_PREFIX "passes",
            llvm::cl::value_desc("optimization passes"),
            llvm::cl::desc("Specify which LLVM passes to run (default=O2). "
                           "The syntax is described at "
                           "https://llvm.org/docs/NewPassManager.html#invoking-opt"),
            llvm::cl::cat(alive_cmdargs), llvm::cl::init("O2"));

llvm::cl::opt<bool> opt_decompose(LLVM_ARGS_PREFIX "decompose",
  llvm::cl::desc("Extract changed instruction slices and verify those instead "
                 "of the full function pair"),
  llvm::cl::cat(alive_cmdargs), llvm::cl::init(false));

}

unique_ptr<Cache> cache;

int main(int argc, char **argv) {
  llvm::sys::PrintStackTraceOnErrorSignal(argv[0]);
  llvm::InitLLVM X(argc, argv);
  llvm::EnableDebugBuffering = true;
  llvm::LLVMContext Context;
  unsigned M1_anon_count = 0;

  std::string Usage =
      R"EOF(Alive2 stand-alone translation validator:
version )EOF";
  Usage += alive_version;
  Usage += R"EOF(
see alive-tv --version for LLVM version info,

This program takes either one or two LLVM IR files as
command-line arguments. Both .bc and .ll files are supported.

If two files are provided, alive-tv checks that functions in the
second file refine functions in the first file, matching up functions
by name. Functions not found in both files are ignored. It is an error
for a function to be found in both files unless they have the same
signature.

If one file is provided, there are two possibilities. If the file
contains a function called "src" and also a function called "tgt",
then alive-tv will determine whether src is refined by tgt. It is an
error if src and tgt do not have the same signature. Otherwise,
alive-tv will optimize the entire module using an optimization
pipeline similar to -O2, and then verify that functions in the
optimized module refine those in the original one. This provides a
convenient way to demonstrate an existing optimizer bug.

Multiple "src" and "tgt" functions can be specified in the same file
by postfixing, after "src" and "tgt", either a unique integer or an
'_' followed by an arbitrary string. For example if the file contains
the following functions "src", "tgt", "src4", "tgt4", "src_foo",
"tgt_foo", "src_bar", "tgt5", then the pairs "src" <-> "tgt", "src4"
<-> "tgt4", and "src_foo" <-> "tgt_foo" will be verified but "src_bar"
and "tgt5" will unused.
)EOF";

  llvm::cl::HideUnrelatedOptions(alive_cmdargs);
  llvm::cl::ParseCommandLineOptions(argc, argv, Usage);

  auto M1 = openInputFile(Context, opt_file1);
  if (!M1.get()) {
    cerr << "Could not read bitcode from '" << opt_file1 << "'\n";
    return -1;
  }

#define ARGS_MODULE_VAR M1
# include "llvm_util/cmd_args_def.h"

  if (llvm::verifyModule(*M1.get(), &llvm::errs())) {
    *out << "Source file is broken\n";
    return -1;
  }

  auto &DL = M1.get()->getDataLayout();
  llvm::Triple targetTriple(M1.get()->getTargetTriple());
  llvm::TargetLibraryInfoWrapperPass TLI(targetTriple);

  llvm_util::initializer llvm_util_init(*out, DL);
  smt::smt_initializer smt_init;
  Verifier verifier(TLI, smt_init, *out);
  verifier.always_verify = opt_always_verify;
  verifier.print_dot = opt_print_dot;
  verifier.bidirectional = opt_bidirectional;

  unique_ptr<llvm::Module> M2;
  unique_ptr<llvm::Module> M_pre; // tagged pre-snapshot for decompose mode
  llvm::Module *pre_module = nullptr;
  if (opt_file2.empty()) {
    unsigned Cnt = 0;
    for (auto &F1 : *M1.get()) {
      if (F1.isDeclaration())
        continue;
      auto SrcFName = F1.getName();
      if (!SrcFName.starts_with(opt_src_fn))
        continue;

      // Check src{+d}/tgt{+d} variant
      if (std::find_if(SrcFName.begin() + opt_src_fn.length(), SrcFName.end(),
                       [](unsigned char c) { return !std::isdigit(c); }) ==
          SrcFName.end()) {
        // Pass, we found a valid postfix
      }
      // Check src_*/tgt_* variant
      else if (SrcFName.str().length() > opt_src_fn.length() &&
               SrcFName[opt_src_fn.length()] == '_') {
        // Pass, we found a valid postfix
      }
      // No valid postfix.
      else {
        continue;
      }

      // Check if we have tgt + same postfix
      auto DstFName =
          SrcFName.str().replace(0, opt_src_fn.length(), opt_tgt_fn);
      auto SRC = findFunction(*M1, SrcFName.str());
      auto TGT = findFunction(*M1, DstFName);
      if (SRC && TGT) {
        ++Cnt;
        if (!verifier.compareFunctions(*SRC, *TGT))
          if (opt_error_fatal)
            goto end;
      }
    }
    if (Cnt == 0) {
      M2 = CloneModule(*M1);
      if (opt_decompose) {
        M_pre = llvm_util::optimize_module_with_pre(*M2.get(), optPass);
      } else {
        auto err = optimize_module(*M2.get(), optPass);
        if (!err.empty()) {
          *out << "Error parsing list of LLVM passes: " << err << '\n';
          return -1;
        }
      }
    } else if (Cnt > 1) {
      goto summary;
    } else {
      goto end;
    }
  } else {
    M2 = openInputFile(Context, opt_file2);
    if (!M2.get()) {
      *out << "Could not read bitcode from '" << opt_file2 << "'\n";
      return -1;
    }
  }

  if (M1.get()->getTargetTriple() != M2.get()->getTargetTriple()) {
    *out << "Modules have different target triples\n";
    return -1;
  }

  if (llvm::verifyModule(*M2.get(), &llvm::errs())) {
    *out << "Target file is broken\n";
    return -1;
  }

  // FIXME: quadratic, may not be suitable for very large modules
  // emitted by opt-fuzz
  pre_module = (opt_decompose && M_pre) ? M_pre.get() : M1.get();
  for (auto &F1 : *pre_module) {
    if (F1.isDeclaration())
      continue;
    if (F1.getName().empty())
      M1_anon_count++;
    if (!func_names.empty() && !func_names.count(F1.getName().str()))
      continue;
    unsigned M2_anon_count = 0;
    for (auto &F2 : *M2.get()) {
      if (F2.isDeclaration())
        continue;
      if (F2.getName().empty())
        M2_anon_count++;
      if ((F1.getName().empty() && (M1_anon_count == M2_anon_count)) ||
          (F1.getName() == F2.getName())) {
        if (opt_decompose) {
          auto touched_pre_raw  = llvm_util::computeTouchedPre(
              const_cast<llvm::Function &>(F1), const_cast<llvm::Function &>(F2));
          auto touched_post_raw = llvm_util::computeTouchedPost(
              const_cast<llvm::Function &>(F1), const_cast<llvm::Function &>(F2));
          if (!touched_pre_raw.empty() || !touched_post_raw.empty()) {
            auto flow_closure_pre  = llvm_util::flowClosure(
                const_cast<llvm::Function &>(F1), touched_pre_raw);
            auto flow_closure_post = llvm_util::flowClosure(
                const_cast<llvm::Function &>(F2), touched_post_raw);
            auto flow_changes = llvm_util::flowChanges(
                const_cast<llvm::Function &>(F1), const_cast<llvm::Function &>(F2),
                touched_pre_raw, touched_post_raw);

            std::unordered_set<uint64_t> selected_pre = touched_pre_raw;
            for (auto idx : flow_closure_pre) selected_pre.insert(idx);
            for (auto idx : flow_changes)     selected_pre.insert(idx);

            std::unordered_set<uint64_t> selected_post = touched_post_raw;
            for (auto idx : flow_closure_post) selected_post.insert(idx);
            for (auto idx : flow_changes)      selected_post.insert(idx);

            auto branches_pre  = llvm_util::findBranches(
                const_cast<llvm::Function &>(F1), selected_pre);
            auto branches_post = llvm_util::findBranches(
                const_cast<llvm::Function &>(F2), selected_post);
            for (auto idx : branches_pre)  selected_pre.insert(idx);
            for (auto idx : branches_post) selected_post.insert(idx);

            auto touched_pre  = llvm_util::collectInOrder(
                const_cast<llvm::Function &>(F1), selected_pre);
            auto touched_post = llvm_util::collectInOrder(
                const_cast<llvm::Function &>(F2), selected_post);

            auto inputs_pre   = llvm_util::usedValues(touched_pre);
            auto outputs_pre  = llvm_util::definedValues(touched_pre);
            auto inputs_post  = llvm_util::usedValues(touched_post);
            auto outputs_post = llvm_util::definedValues(touched_post);

            auto [params, ordered_outputs, return_type] = llvm_util::unifiedSignature(
                F1.getContext(), inputs_pre, inputs_post, outputs_pre, outputs_post);

            auto extract_pre_mod = std::make_unique<llvm::Module>("pre", F1.getContext());
            extract_pre_mod->setDataLayout(pre_module->getDataLayout());
            extract_pre_mod->setTargetTriple(pre_module->getTargetTriple());
            auto *pre_fn = llvm_util::extractFunction(
                F1.getName().str() + "_pre", *extract_pre_mod,
                touched_pre, inputs_pre, ordered_outputs, outputs_pre,
                params, return_type);

            auto extract_post_mod = std::make_unique<llvm::Module>("post", F2.getContext());
            extract_post_mod->setDataLayout(M2->getDataLayout());
            extract_post_mod->setTargetTriple(M2->getTargetTriple());
            auto *post_fn = llvm_util::extractFunction(
                F2.getName().str() + "_post", *extract_post_mod,
                touched_post, inputs_post, ordered_outputs, outputs_post,
                params, return_type);

            llvm::errs() << "DECOMPOSE_SIZE:"
                         << " func=" << F1.getName()
                         << " pre=" << F1.getInstructionCount()
                         << " post=" << F2.getInstructionCount()
                         << " epre=" << pre_fn->getInstructionCount()
                         << " epost=" << post_fn->getInstructionCount()
                         << "\n";
            if (!verifier.compareFunctions(*pre_fn, *post_fn))
              if (opt_error_fatal)
                goto end;
          } else {
            ++verifier.num_correct;
          }
        } else {
          if (!verifier.compareFunctions(F1, F2))
            if (opt_error_fatal)
              goto end;
        }
        break;
      }
    }
  }
summary:
  *out << "Summary:\n"
          "  " << verifier.num_correct << " correct transformations\n"
          "  " << verifier.num_unsound << " incorrect transformations\n"
          "  " << verifier.num_failed  << " failed-to-prove transformations\n"
          "  " << verifier.num_errors << " Alive2 errors\n";

end:
  if (opt_smt_stats)
    smt::solver_print_stats(*out);

  if (opt_alias_stats)
    IR::Memory::printAliasStats(*out);

  return verifier.num_errors > 0;
}
