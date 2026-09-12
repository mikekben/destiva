// Copyright (c) 2018-present The Alive2 Authors.
// Distributed under the MIT license that can be found in the LICENSE file.

// Set to 1 to enable debug output: per-phase index sets, selected instruction
// lists, and .ll files dumped to /data2/ben/alive-decomp/decomposed/.
#define DECOMPOSE_DEBUG 0

// Set to 1 to emit "DECOMPOSE_SIZE: ..." lines to stderr for each verified
// pair, recording pre/post/extracted-pre/extracted-post instruction counts.
#define DECOMPOSE_SIZE_STATS 1

#include "cache/cache.h"
#include "ir/memory.h"
#include "llvm_util/decompose.h"
#include "llvm_util/llvm2alive.h"
#include "llvm_util/utils.h"
#include "smt/smt.h"
#include "smt/solver.h"
#include "tools/transform.h"
#include "util/parallel.h"
#include "util/stopwatch.h"
#include "util/version.h"
#include "llvm/ADT/Any.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Metadata.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Plugins/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/IR/IRBuilder.h"
#include <fstream>
#include <iostream>
#include <map>
#include <queue>
#include <memory>
#include <random>
#include <signal.h>
#include <sstream>
#include <unistd.h>
#include <unordered_map>
#include <utility>
#include <optional>
#include <variant>

using namespace IR;
using namespace llvm_util;
using namespace tools;
using namespace util;
using namespace std;

#define LLVM_ARGS_PREFIX "tv-"
#define ARGS_SRC_TGT
#define ARGS_REFINEMENT
#include "llvm_util/cmd_args_list.h"

namespace {

llvm::cl::opt<string> parallel_tv("tv-parallel",
  llvm::cl::desc("Parallelization mode. Accepted values:"
                  " unrestricted (no throttling)"
                  ", fifo (use Alive2's job server)"
                  ", null (developer mode)"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<int> max_subprocesses("max-subprocesses",
  llvm::cl::desc("Maximum children any single clang instance will have at one "
                 "time (default=128)"),
  llvm::cl::init(128), llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<long> subprocess_timeout("tv-subprocess-timeout",
  llvm::cl::desc("Maximum time, in seconds, that a parallel TV call "
                 "will be allowed to execute (default=infinite)"),
  llvm::cl::init(-1), llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<bool> batch_opts("tv-batch-opts",
  llvm::cl::desc("Batch optimizations (clang plugin only)"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<string> check_only_pass("tv-check-pass",
  llvm::cl::desc("Check only the specified LLVM optimization pass"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<string> check_pairs("tv-check-pairs",
  llvm::cl::desc("Verify only specified pass pairs (format: PassA:PassB,PassC:PassD,...)"),
  llvm::cl::cat(alive_cmdargs));

llvm::cl::opt<bool> decompose("decompose",
  llvm::cl::desc("Enable decomposition mode"),
  llvm::cl::init(false), llvm::cl::cat(alive_cmdargs));


struct FnInfo {
  Function fn;
  string fn_tostr;
  unsigned n = 0;
  // Raw pointer: intermediate modules are deleted explicitly in runOn() while
  // the LLVMContext is still alive. The last module is intentionally leaked at
  // exit to avoid calling Module::~Module() after the context is gone.
  llvm::Module *pre_pass_module = nullptr;
  llvm::Function *pre_pass_fn = nullptr; // points into pre_pass_module
};
optional<smt::smt_initializer> smt_init;
optional<llvm_util::initializer> llvm_util_init;
unordered_map<string, FnInfo> fns;
unsigned initialized = 0;
bool showed_stats = false;
bool has_failure = false;
bool is_clangtv = false;
bool is_clangtv_done = false;
unique_ptr<Cache> cache;
unique_ptr<parallel> parallelMgr;
stringstream parent_ss;
std::string SavedBitcode;
string pass_name;

static unordered_set<string> pairs_starts;
static unordered_set<string> pairs_ends;

static void parse_pairs() {
  static bool parsed = false;
  if (parsed) return;
  parsed = true;
  stringstream ss(check_pairs.getValue());
  string pair;
  while (getline(ss, pair, ',')) {
    auto colon = pair.find(':');
    if (colon == string::npos) continue;
    pairs_starts.insert(pair.substr(0, colon));
    pairs_ends.insert(pair.substr(colon + 1));
  }
}

void sigalarm_handler(int) {
  parallelMgr->finishChild(/*is_timeout=*/true);
  // this is a fully asynchronous exit, skip destructors and such
  _Exit(0);
}

void printDot(const Function &tgt, int n) {
  if (opt_print_dot) {
    string prefix = to_string(n);
    tgt.writeDot(prefix.c_str());
  }
}

string toString(const Function &fn) {
  stringstream ss;
  fn.print(ss);
  return std::move(ss).str();
}

void showStats() {
  if (opt_smt_stats)
    smt::solver_print_stats(*out);
  if (opt_alias_stats)
    IR::Memory::printAliasStats(*out);
}

void writeBitcode(const fs::path &report_filename) {
  fs::path bc_filename;
  if (report_filename.empty()) {
    bc_filename = get_random_str(8) + ".bc";
  } else {
    bc_filename = report_filename;
    bc_filename.replace_extension("");
    bc_filename += "_" + get_random_str(4) + ".bc";
  }

  ofstream bc_file(bc_filename);
  if (!bc_file.is_open()) {
    cerr << "Alive2: Couldn't open bitcode file" << endl;
    exit(1);
  }
  bc_file << SavedBitcode;
  bc_file.close();
  *out << "Wrote bitcode to: " << bc_filename << '\n';
}

void saveBitcode(const llvm::Module *M) {
  SavedBitcode.clear();
  llvm::raw_string_ostream OS(SavedBitcode);
  WriteBitcodeToFile(*M, OS);
}

void emitCommandLine(ostream *out) {
#ifdef __linux__
  ifstream cmd_args("/proc/self/cmdline");
  if (!cmd_args.is_open()) {
    return;
  }
  *out << "Command line:";
  std::string arg;
  while (std::getline(cmd_args, arg, '\0'))
    *out << " '" << arg << "'";
  *out << "\n";
#endif
}

struct TVLegacyPass final : public llvm::ModulePass {
  static char ID;
  bool unsupported_transform = false;
  bool nop_transform = false;
  bool onlyif_src_exists = false; // Verify this pair only if src exists
  const function<llvm::TargetLibraryInfo*(llvm::Function&)> *TLI_override
    = nullptr;
  unsigned anon_count = 0;

  TVLegacyPass() : ModulePass(ID) {}

  bool runOnModule(llvm::Module &M) override {
    anon_count = 0;
    for (auto &F: M)
      runOn(F);
    return false;
  }

  bool runOn(llvm::Module &M) { return runOnModule(M); }

  bool runOn(llvm::Function &F) {
    if (F.isDeclaration())
      // This can happen at EntryExitInstrumenter pass.
      return false;

    if (!func_names.empty() && !func_names.count(F.getName().str()))
      return false;

    optional<ScopedWatch> timer;
    if (opt_elapsed_time)
      timer.emplace([&](const StopWatch &sw) {
        *out << "Took " << sw.seconds() << "s\n";
      });

    llvm::TargetLibraryInfo *TLI = nullptr;
    if (TLI_override) {
      // When used as a clang plugin or from the new pass manager, this is run
      // as a plain function rather than a registered pass, so getAnalysis()
      // cannot be used.
      TLI = (*TLI_override)(F);
    } else {
      TLI = &getAnalysis<llvm::TargetLibraryInfoWrapperPass>().getTLI(F);
    }

    string name = F.getName().str();
    if (name.empty())
      name = "anon$" + std::to_string(++anon_count);
    auto [I, first] = fns.try_emplace(std::move(name));
    if (onlyif_src_exists && first) {
      // src does not exist; skip this fn
      fns.erase(I);
      return false;
    }

    if (!first && nop_transform)
      return false;

    auto fn = llvm2alive(F, *TLI, first,
                         first ? vector<GlobalVariable*>()
                               : I->second.fn.getGlobalVars());
    if (!fn) {
      fns.erase(I);
      return false;
    }

    if (first || unsupported_transform) {
      //BM: Save previous function from first pass
      I->second.fn = std::move(*fn);
      if (!opt_always_verify)
        // Prepare syntactic check
        I->second.fn_tostr = toString(I->second.fn);
      printDot(I->second.fn, I->second.n++);
      if (decompose)
      {
        delete I->second.pre_pass_module;
        I->second.pre_pass_module = llvm::CloneModule(*F.getParent()).release();
        I->second.pre_pass_fn = I->second.pre_pass_module->getFunction(F.getName());
      }
      return false;
    }

    Transform t;
    

    //Skip decomposition if the functions are syntactically equal
    if (decompose && (opt_always_verify || toString(*fn) != I->second.fn_tostr))
    {
      //similar to llvm::CodeExtractor, but at instruction granularity rather than basic blocks

      // Check for changes before running any analysis
      auto touched_pre_raw  = computeTouchedPre(*I->second.pre_pass_fn, F);
      auto touched_post_raw = computeTouchedPost(*I->second.pre_pass_fn, F);

      //If nothing changed, then no need to do any work
      if (!touched_pre_raw.empty() || !touched_post_raw.empty())
      {
        auto flow_closure_pre  = flowClosure(*I->second.pre_pass_fn, touched_pre_raw);
        auto flow_closure_post = flowClosure(F, touched_post_raw);
        auto flow_changes      = flowChanges(*I->second.pre_pass_fn, F,
                                             touched_pre_raw, touched_post_raw);

        // First union: touched + flow_closure + flow_changes
#if DECOMPOSE_DEBUG
        auto print_idx_set = [](const char *label, const std::unordered_set<uint64_t> &s) {
          llvm::errs() << label << ": {";
          for (auto idx : s) llvm::errs() << idx << " ";
          llvm::errs() << "}\n";
        };
        print_idx_set("touched_pre_raw", touched_pre_raw);
        print_idx_set("flow_closure_pre", flow_closure_pre);
        print_idx_set("flow_changes", flow_changes);
        print_idx_set("touched_post_raw", touched_post_raw);
        print_idx_set("flow_closure_post", flow_closure_post);
#endif

        std::unordered_set<uint64_t> selected_pre = touched_pre_raw;
        for (auto idx : flow_closure_pre) selected_pre.insert(idx);
        for (auto idx : flow_changes)     selected_pre.insert(idx);

        std::unordered_set<uint64_t> selected_post = touched_post_raw;
        for (auto idx : flow_closure_post) selected_post.insert(idx);
        for (auto idx : flow_changes)      selected_post.insert(idx);

        // Add branch terminators for all BBs in the selected sets
        auto branches_pre  = findBranches(*I->second.pre_pass_fn, selected_pre);
        auto branches_post = findBranches(F, selected_post);
#if DECOMPOSE_DEBUG
        print_idx_set("branches_pre", branches_pre);
        print_idx_set("branches_post", branches_post);
#endif
        for (auto idx : branches_pre)  selected_pre.insert(idx);
        for (auto idx : branches_post) selected_post.insert(idx);

        auto touched_pre  = collectInOrder(*I->second.pre_pass_fn, selected_pre);
        auto touched_post = collectInOrder(F, selected_post);

        auto inputs_pre = usedValues(touched_pre);
        auto outputs_pre = definedValues(touched_pre);
        auto inputs_post = usedValues(touched_post);
        auto outputs_post = definedValues(touched_post);

#if DECOMPOSE_DEBUG
        llvm::errs() << "\n=== DECOMPOSE DEBUG: " << F.getName() << " ===\n";
        llvm::errs() << "selected_pre (" << touched_pre.size() << " insts):\n";
        for (auto *inst : touched_pre)
          llvm::errs() << "  [" << *getMymIdx(inst) << "] " << *inst << "\n";
        llvm::errs() << "selected_post (" << touched_post.size() << " insts):\n";
        for (auto *inst : touched_post)
          llvm::errs() << "  [" << *getMymIdx(inst) << "] " << *inst << "\n";
        llvm::errs() << "outputs_pre (" << outputs_pre.size() << "):\n";
        for (auto &[key, val] : outputs_pre)
          llvm::errs() << "  consumer=[" << key.consumer_mymd << "] op=" << key.operand_idx
                       << " def=" << *val << "\n";
        llvm::errs() << "outputs_post (" << outputs_post.size() << "):\n";
        for (auto &[key, val] : outputs_post)
          llvm::errs() << "  consumer=[" << key.consumer_mymd << "] op=" << key.operand_idx
                       << " def=" << *val << "\n";
#endif

        //Function signature for combination of pre and post
        auto [params, ordered_outputs, return_type] = unifiedSignature(
            F.getContext(), inputs_pre, inputs_post, outputs_pre, outputs_post);

        // Build the extracted pre and post functions in fresh modules.
        // Copy data layout and target triple so llvm2alive interprets pointer
        // sizes, endianness, etc. correctly.
        // IMPORTANT: extractFunction uses RF_NoModuleLevelChanges, so cloned
        // instructions in pre_module/post_module hold Use edges to globals in
        // pre_pass_module (pre side) and F.getParent() (post side). We must
        // call llvm2alive — which copies everything into Alive2 IR — before
        // destroying pre_pass_module, so that its globals are still live.
#if DECOMPOSE_DEBUG
        {
          std::string base = std::string("/data2/ben/alive-decomp/decomposed/") + F.getName().str();
          std::error_code EC;
          llvm::raw_fd_ostream pre_file(base + "_before.ll", EC);
          if (!EC) I->second.pre_pass_fn->print(pre_file);
          llvm::raw_fd_ostream post_file(base + "_after.ll", EC);
          if (!EC) F.print(post_file);
        }
#endif

        std::optional<IR::Function> alive_pre, alive_post;
        {
          auto pre_module = std::make_unique<llvm::Module>("pre", F.getContext());
          pre_module->setDataLayout(F.getParent()->getDataLayout());
          pre_module->setTargetTriple(F.getParent()->getTargetTriple());
          auto *pre_fn = extractFunction(F.getName().str() + "_pre", *pre_module,
              touched_pre, inputs_pre, ordered_outputs, outputs_pre, params, return_type);

          auto post_module = std::make_unique<llvm::Module>("post", F.getContext());
          post_module->setDataLayout(F.getParent()->getDataLayout());
          post_module->setTargetTriple(F.getParent()->getTargetTriple());
          auto *post_fn = extractFunction(F.getName().str() + "_post", *post_module,
              touched_post, inputs_post, ordered_outputs, outputs_post, params, return_type);

#if DECOMPOSE_DEBUG
          {
            std::string base = std::string("/data2/ben/alive-decomp/decomposed/") + F.getName().str();
            std::error_code EC;
            llvm::raw_fd_ostream epre_file(base + "_extracted_pre.ll", EC);
            if (!EC) pre_fn->print(epre_file);
            llvm::raw_fd_ostream epost_file(base + "_extracted_post.ll", EC);
            if (!EC) post_fn->print(epost_file);
          }
#endif
#if DECOMPOSE_SIZE_STATS
          llvm::errs() << "DECOMPOSE_SIZE:"
                       << " func=" << F.getName()
                       << " pass=" << pass_name
                       << " pre=" << I->second.pre_pass_fn->getInstructionCount()
                       << " post=" << F.getInstructionCount()
                       << " epre=" << pre_fn->getInstructionCount()
                       << " epost=" << post_fn->getInstructionCount()
                       << "\n";
#endif
          alive_pre = llvm2alive(*pre_fn, *TLI, true);
          alive_post = llvm2alive(*post_fn, *TLI, true);
          // pre_module and post_module destroyed here, releasing Use edges to
          // pre_pass_module's globals before we delete pre_pass_module below.
        }

        // Update clone to post-pass state for next pass
        delete I->second.pre_pass_module;
        I->second.pre_pass_module = llvm::CloneModule(*F.getParent()).release();
        I->second.pre_pass_fn = I->second.pre_pass_module->getFunction(F.getName());
        if (alive_pre && alive_post)
        {
          t.src = std::move(*alive_pre);
          t.tgt = std::move(*alive_post);
          verify(t, I->second.n++, I->second.fn_tostr);
        }
        else
        {
          *out << "ERROR: llvm2alive failed for extracted "
               << (!alive_pre ? "pre" : "post")
               << " function in decompose mode\n";
          fn = llvm2alive(F, *TLI, true);
          if (fn)
          {
            I->second.fn = std::move(*fn);
            if (!opt_always_verify)
              I->second.fn_tostr = toString(I->second.fn);
          }
          return false;
        }
      }
      else
      {
        // No identifiable instruction changes; treat as trivially equivalent
        if (!config::quiet)
          *out << "Transformation seems to be correct! (no identifiable changes)\n\n";
        delete I->second.pre_pass_module;
        I->second.pre_pass_module = llvm::CloneModule(*F.getParent()).release();
        I->second.pre_pass_fn = I->second.pre_pass_module->getFunction(F.getName());
      }
    }
    else
    {
      //BM: Stored function from before the pass ran
      t.src = std::move(I->second.fn);

      //BM: New function from pass that just finished
      t.tgt = std::move(*fn);

      verify(t, I->second.n++, I->second.fn_tostr);
    }

    fn = llvm2alive(F, *TLI, true);
    if (!fn) {
      fns.erase(I);
      return false;
    }

    //BM:Save optimized function for use after the next pass
    I->second.fn = std::move(*fn);
    if (!opt_always_verify)
      I->second.fn_tostr = toString(I->second.fn);
    return false;
  }

  static void verify(Transform &t, int n, const string &src_tostr) {
    printDot(t.tgt, n);

    auto tgt_tostr = toString(t.tgt);
    if (!opt_always_verify) {
      // Compare Alive2 IR and skip if syntactically equal
      if (src_tostr == tgt_tostr) {
        if (!config::quiet) {
          TransformPrintOpts print_opts;
          print_opts.skip_tgt = true;
          t.print(*out, print_opts);
          *out << "Transformation seems to be correct! (syntactically equal)\n\n";
        }
        return;
      }
    }

    // Since we have an open connection to the Redis server, we have
    // to do this before forking. Anyway, this is fast.
    if (opt_assume_cache_hit ||
        (cache && cache->lookup(src_tostr + "===\n" + tgt_tostr))) {
      if (!config::quiet)
        *out << "Skipping repeated query\n\n";
      return;
    }

    if (parallelMgr) {
      auto [pid, osp, index] = parallelMgr->limitedFork();

      if (pid == -1) {
        perror("fork() failed");
        exit(-1);
      }

      if (pid != 0) {
        /*
         * parent returns to LLVM immediately; leave a placeholder in
         * the output that we'll patch up later
         */
        *out << "include(" << index << ")\n";
        /*
         * Tell the caller that tgt should be regenerated via llvm2alive.
         * TODO: this llvm2alive() call isn't needed for correctness,
         * but only to make parallel output match sequential
         * output. we can remove it later if we want.
         */
        return;
      }

      if (subprocess_timeout != -1) {
        ENSURE(signal(SIGALRM, sigalarm_handler) == nullptr);
        alarm(subprocess_timeout);
      }

      /*
       * child now writes to a stringstream provided by the parallel
       * manager, its output will get pushed to the parent via a pipe
       * later on
       */
      out = osp;
      set_outs(*out);
    }

    /*
     * from here, we must not return back to LLVM if parallelMgr
     * is non-null; instead we call parallelMgr->finishChild()
     */

    smt_init->reset();
    t.preprocess();
    TransformVerify verifier(t, false);
    if (!config::quiet)
      t.print(*out);

    {
      auto types = verifier.getTypings();
      if (!types) {
        if (config::quiet)
          t.print(*out);
        *out << "Transformation doesn't verify!\n"
                "ERROR: program doesn't type check!\n\n";
        goto done;
      }
      assert(types.hasSingleTyping());
    }

    {
      Errors errs = verifier.verify();
      if (errs.hasWarnings())
        errs.printWarnings(*out);

      if (errs) {
        if (config::quiet)
          t.print(*out);

        *out << "Transformation doesn't verify!" <<
                (errs.isUnsound() ? " (unsound)\n" : " (not unsound)\n")
             << errs
             << "\nPass: " << pass_name << '\n';
        emitCommandLine(out);
        *out << '\n';
        if (errs.isUnsound()) {
          if (!SavedBitcode.empty())
            writeBitcode(report_filename);
          has_failure = true;
        }
        if (opt_error_fatal && has_failure)
          finalize();
      } else if (!config::quiet) {
        *out << "Transformation seems to be correct!\n\n";
      }
    }

  done:
    if (parallelMgr) {
      showStats();
      signal(SIGALRM, SIG_IGN);
      llvm_util_init.reset();
      smt_init.reset();
      parallelMgr->finishChild(/*is_timeout=*/false);
      exit(0);
    }
  }

 bool doInitialization(llvm::Module &module) override {
    initialize(module);
    return false;
  }

  static void initialize(llvm::Function &fn) {
    initialize(*fn.getParent());
  }

  static void initialize(llvm::Module &module) {
    if (initialized++)
      return;

#define ARGS_MODULE_VAR (&module)
#   include "llvm_util/cmd_args_def.h"

    if (parallel_tv == "unrestricted") {
      parallelMgr = make_unique<unrestricted>(max_subprocesses, parent_ss,
                                              *out);
    } else if (parallel_tv == "fifo") {
      parallelMgr = make_unique<fifo>(max_subprocesses, parent_ss, *out);
    } else if (parallel_tv == "null") {
      parallelMgr = make_unique<null>(max_subprocesses, parent_ss, *out);
    } else if (!parallel_tv.empty()) {
      *out << "Alive2: Unknown parallelization mode: " << parallel_tv << endl;
      exit(1);
    }

    if (parallelMgr) {
      if (parallelMgr->init()) {
        out = &parent_ss;
        set_outs(*out);
      } else {
        *out << "WARNING: Parallel execution of Alive2 Clang plugin is "
                "unavailable, sorry\n";
        parallelMgr.reset();
      }
    }

    showed_stats = false;
    llvm_util_init.emplace(*out, module.getDataLayout());
    smt_init.emplace();
    return;
  }

  bool doFinalization(llvm::Module&) override {
    finalize();
    return false;
  }

  static void finalize() {
    SavedBitcode.resize(0);
    if (parallelMgr) {
      parallelMgr->finishParent();
      out = out_file.is_open() ? &out_file : &cout;
      set_outs(*out);
    }

    // If it is run in parallel, stats are shown by children
    if (!showed_stats && !parallelMgr) {
      showed_stats = true;
      showStats();
      if (has_failure && !report_filename.empty())
        cerr << "Report written to " << report_filename << endl;
    }

    llvm_util_init.reset();
    smt_init.reset();
    --initialized;
    is_clangtv_done = true;

    if (has_failure) {
      if (opt_error_fatal)
        *out << "Alive2: Transform doesn't verify; aborting!" << endl;
      else
        *out << "Alive2: Transform doesn't verify!" << endl;
      exit(1);
    }
  }

  void getAnalysisUsage(llvm::AnalysisUsage &AU) const override {
    AU.addRequired<llvm::TargetLibraryInfoWrapperPass>();
    AU.setPreservesAll();
  }
};

char TVLegacyPass::ID = 0;
llvm::RegisterPass<TVLegacyPass> X("tv", "Translation Validator", false, false);



/// Classes and functions for running translation validation on clang or
/// opt with new pass manager
/// Clang plugin uses new pass manager's callback.

// Extracting Module out of IR unit.
// Excerpted from LLVM's StandardInstrumentation.cpp
const llvm::Module * unwrapModule(llvm::Any IR) {
  using namespace llvm;

  if (auto **M = any_cast<const Module *>(&IR))
    return *M;
  else if (auto **F = any_cast<const llvm::Function *>(&IR))
    return (*F)->getParent();
  else if (auto **C = any_cast<const LazyCallGraph::SCC *>(&IR)) {
    assert((*C)->begin() != (*C)->end()); // there's at least one function
    return (*C)->begin()->getFunction().getParent();
  } else if (auto **L = any_cast<const Loop *>(&IR))
    return (*L)->getHeader()->getParent()->getParent();

  llvm_unreachable("Unknown IR unit");
}


// List 'leaf' interprocedural passes only.
// For example, ModuleInlinerWrapperPass shouldn't be here because it is an
// interprocedural pass having other passes as children.
const char* unsupported_pass_list[] = {
  "AlwaysInlinerPass",
  "ArgumentPromotionPass",
  "AttributorCGSCCPass",
  "AttributorPass",
  "CalledValuePropagationPass",
  "DeadArgumentEliminationPass",
  "EliminateAvailableExternallyPass",
  "EntryExitInstrumenterPass",
  "GlobalDCEPass",
  "GlobalOptPass",
  "GlobalSplitPass",
  "HotColdSplittingPass",
  "InferFunctionAttrsPass",
  "InlinerPass",
  "IPSCCPPass",
  "IROutlinerPass",
  "LoopExtractorPass",
  "MergeFunctionsPass",
  "OpenMPOptCGSCCPass",
  "OpenMPOptPass",
  "PartialInlinerPass",
  "PostOrderFunctionAttrsPass",
  "SampleProfileLoaderPass",
  "TailCallElimPass",
  "ThinLTOBitcodeWriterPass",
};

const char* nop_pass_prefixes[] {
  "InvalidateAnalysisPass",
  // "ModuleToFunctionPassAdaptor", --  don't skip; runs function passes
  "PassManager<",
  "RequireAnalysisPass",
  "VerifierPass",
};

const char* terminate_execution[] {
  "RequireAnalysisPass<llvm::GlobalsAA",
  "RequireAnalysisPass<GlobalsAA",
};

bool is_unsupported_pass(const llvm::StringRef &pass0) {
  string_view pass = pass0;
  return any_of(unsupported_pass_list, end(unsupported_pass_list),
                [&](auto skip) { return pass == skip; });
}

bool is_nop_pass(const llvm::StringRef &pass0) {
  string_view pass = pass0;
  return any_of(nop_pass_prefixes, end(nop_pass_prefixes),
                [&](auto skip) { return pass.starts_with(skip); });
}

bool is_terminate_pass(const llvm::StringRef &pass0) {
  string_view pass = pass0;
  return any_of(terminate_execution, end(terminate_execution),
                [&](auto skip) { return pass.starts_with(skip); });
}


struct TVPass : public llvm::PassInfoMixin<TVPass> {
  static string batched_pass_begin_name;
  static bool batch_started;
  // # of run passes when batching is enabled
  static unsigned batched_pass_count;

  static bool dont_verify;

  // A reference counter for TVPass objects.
  // If this counter reaches zero, finalization should be called.
  // Note that this is necessary for opt + NPM only.
  // (1) In case of opt + LegacyPM, we can use TVLegacyPass::doFinalization().
  // (2) In case of clang tv, we have registerOptimizerLastEPCallback.
  static unsigned num_instances;

  TVPass() { ++num_instances; }
  TVPass(TVPass&&) { ++num_instances; }
  ~TVPass() {
    assert(num_instances > 0);
    --num_instances;
    if (initialized && num_instances == 0 && !is_clangtv) {
      // All TVPass instances are deleted.
      // This happens when llvm::runPassPipeline is done.
      // If it isn't clang tv (which has ClangTVFinalizePass to control
      // finalization), finalize resources.
      TVLegacyPass::finalize();
    }
  }
  TVPass(const TVPass &) = delete;
  TVPass &operator=(const TVPass &) = delete;

  llvm::PreservedAnalyses run(llvm::Module &M,
                              llvm::ModuleAnalysisManager &AM) {
    auto &FAM = AM.getResult<llvm::FunctionAnalysisManagerModuleProxy>(M)
                  .getManager();
    auto get_TLI = [&FAM](llvm::Function &F) {
      return &FAM.getResult<llvm::TargetLibraryAnalysis>(F);
    };
    run(M, get_TLI);
    return llvm::PreservedAnalyses::all();
  }

  template <typename Ty>
  void run(Ty &M,
           const function<llvm::TargetLibraryInfo*(llvm::Function&)> &get_TLI) {
    if (!initialized)
      TVLegacyPass::initialize(M);

    if (batch_opts) {
      // Batching is supported by clang-tv only
      assert(is_clangtv);

      // If set_src is true, set M as src.
      bool set_src = !batch_started;

      TVLegacyPass tv;

      if (set_src) {
        // Prepare src. Do this by setting this to true.
        tv.unsupported_transform = true;
        *out << "-- FROM THE BITCODE AFTER "
              << batched_pass_count << ". " << batched_pass_begin_name << '\n';
      } else {
        *out << "-- TO THE BITCODE AFTER "
              << batched_pass_count << ". " << pass_name << '\n';

        // Translate LLVM to Alive2 only if there exists src
        tv.onlyif_src_exists = true;
      }

      tv.TLI_override = &get_TLI;
      // If skip_pass is true, this updates fns map only.
      tv.runOn(M);

      if (!set_src)
        *out << "-- DONE: " << batched_pass_count << ". " << pass_name << '\n';
      batch_started = !batch_started;
    } else {
      bool unsupported = is_unsupported_pass(pass_name);
      bool nop = is_nop_pass(pass_name);
      bool terminate = is_terminate_pass(pass_name);
      bool check_skip = false;
      bool pairs_skip = false;
      bool pairs_start = false;

      if (!check_pairs.empty()) {
        parse_pairs();
        bool is_end   = pairs_ends.count(pass_name) > 0;
        bool is_start = pairs_starts.count(pass_name) > 0;
        if (!is_end && !is_start) {
          nop = true;
          pairs_skip = true;
        } else if (is_start && !is_end) {
          unsupported = true;
          pairs_start = true;
        }
      } else {
        check_skip = !check_only_pass.empty() &&
                     !stricontains(pass_name, check_only_pass);
      }

      static unsigned count = 0;

      if (!config::quiet) {
        *out << "-- " << ++count << ". " << pass_name;

        if (terminate)
          *out << " : Global pass. Cannot continue verification\n";
        else if (pairs_skip)
          *out << " : Skip (not a pair boundary)\n";
        else if (pairs_start)
          *out << " : Pair start (capturing IR)\n";
        else if (unsupported)
          *out << " : Skipping unsupported\n";
        else if (nop)
          *out << " : Skipping NOP\n";
        else if (check_skip)
          *out << " : Skip this pass per user request\n";
        else
          *out << '\n';
      }

      if ((dont_verify |= terminate))
        return;

      TVLegacyPass tv;
      tv.unsupported_transform = unsupported || check_skip;
      tv.nop_transform = nop;

      tv.TLI_override = &get_TLI;
      // If skip_pass is true, this updates fns map only.
      tv.runOn(M);
    }
  }
};

string TVPass::batched_pass_begin_name;
bool TVPass::batch_started = false;
unsigned TVPass::batched_pass_count = 0;
bool TVPass::dont_verify = false;
unsigned TVPass::num_instances = 0;

template <typename Ty>
void runTVPass(Ty &M) {
  static optional<llvm::TargetLibraryInfoImpl> TLIImpl;
  optional<llvm::TargetLibraryInfo> TLI_holder;

  auto get_TLI = [&](llvm::Function &F) {
    if (!TLIImpl)
      TLIImpl.emplace(llvm::Triple(F.getParent()->getTargetTriple()));
    return &TLI_holder.emplace(*TLIImpl, &F);
  };

  TVPass tv;
  tv.run(M, get_TLI);
}

struct ClangTVFinalizePass : public llvm::PassInfoMixin<ClangTVFinalizePass> {
  llvm::PreservedAnalyses run(llvm::Module &M,
                              llvm::ModuleAnalysisManager &AM) {
    if (is_clangtv) {
      if (batch_opts && TVPass::batch_started)
        runTVPass(M);

      if (initialized)
        TVLegacyPass::finalize();
      is_clangtv_done = true;
    }
    return llvm::PreservedAnalyses::all();
  }
};

// Entry point for this plugin
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "Alive2 Translation Validation", "",
    [](llvm::PassBuilder &PB) {
      is_clangtv = true;
      PB.registerPipelineParsingCallback(
          [](llvm::StringRef Name,
             llvm::ModulePassManager &MPM,
             llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
          if (Name != "tv")
            return false;

          // Assume that this plugin is loaded from opt when tv pass is
          // explicitly given as an argument
          is_clangtv = false;

          MPM.addPass(TVPass());
          return true;
        });
      // registerOptimizerLastEPCallback is called when 'default' pipelines
      // such as O2, O3 are used by either opt or clang.
      // ClangTVFinalizePass internally checks whether we're running clang tv
      // and finalizes resources then.
      PB.registerOptimizerLastEPCallback(
          [](llvm::ModulePassManager &MPM, llvm::OptimizationLevel,
             llvm::ThinOrFullLTOPhase) {
            MPM.addPass(ClangTVFinalizePass());
          });

      auto *instrument = PB.getPassInstrumentationCallbacks();

      if (batch_opts) {
        // For batched clang tv, manually run TVPass before each pass
        instrument->registerBeforeNonSkippedPassCallback(
              [](llvm::StringRef P, llvm::Any IR) {
          assert(is_clangtv && "Batching is enabled for clang-tv only");
          if (is_clangtv_done)
            return;

          // Run only when it is at the boundary
          bool is_first = pass_name.empty();
          bool do_start = !TVPass::batch_started &&
                          is_unsupported_pass(pass_name) &&
                          !is_unsupported_pass(P);
          bool do_finish = TVPass::batch_started &&
                           !is_unsupported_pass(pass_name) &&
                           is_unsupported_pass(P);

          if (do_start)
            TVPass::batched_pass_begin_name = pass_name;
          else if (is_first)
            TVPass::batched_pass_begin_name = "beginning";

          if ((is_first || do_start) && opt_save_ir)
            saveBitcode(unwrapModule(IR));

          if (is_first || do_start || do_finish)
            runTVPass(*const_cast<llvm::Module *>(unwrapModule(IR)));
        });
        instrument->registerAfterPassCallback([&](
            llvm::StringRef P, llvm::Any, const llvm::PreservedAnalyses &) {
          TVPass::batched_pass_count++;
          pass_name = P.str();
        });

      } else {
        auto run_tv = [](llvm::StringRef P, llvm::Any IR) {
          pass_name = P.str();
          if (is_clangtv && !is_clangtv_done) {
            if (auto **F = any_cast<const llvm::Function *>(&IR)) {
              runTVPass(*const_cast<llvm::Function*>(*F));
            } else if (auto **L = any_cast<const llvm::Loop *>(&IR)) {
              runTVPass(*const_cast<llvm::Function*>((*L)->getHeader()
                                                         ->getParent()));
            } else {
              auto *M = unwrapModule(IR);
              saveBitcode(M);
              runTVPass(*const_cast<llvm::Module*>(M));
            }
          }
        };
        // For non-batched clang tv, manually run TVPass after each pass.
        // We also need to run it before everything else as sometimes we have
        // a transformation pass in the beginning of the pipeline
        // (this varies per LLVM version).
        // In pairs mode we skip the Before callback for known functions:
        // between checkpoints, non-checkpoint passes modify the IR, so
        // Before-endpass would spuriously verify start_IR -> pre-endpass_IR
        // instead of start_IR -> post-endpass_IR.
        // Exception: if the function hasn't been seen yet, call run_tv to
        // capture the initial IR as the baseline so the first pair
        // (initial -> first_checkpoint) can be verified.
        instrument->registerBeforeNonSkippedPassCallback(
          [run_tv](llvm::StringRef P, llvm::Any IR) {
            if (check_pairs.empty()) {
              run_tv(P, IR);
            } else {
              pass_name = P.str();
              // Capture initial IR the first time we see each function.
              string fn_name;
              if (auto **F = llvm::any_cast<const llvm::Function *>(&IR))
                fn_name = (*F)->getName().str();
              else if (auto **L = llvm::any_cast<const llvm::Loop *>(&IR))
                fn_name = (*L)->getHeader()->getParent()->getName().str();
              if (!fn_name.empty() && fns.count(fn_name) == 0)
                run_tv(P, IR);
            }
          });
        instrument->registerAfterPassCallback(
          [run_tv](llvm::StringRef P, llvm::Any IR,
             const llvm::PreservedAnalyses &PA) {
            return run_tv(P, IR);
        });
      }
    }
  };
}

}
