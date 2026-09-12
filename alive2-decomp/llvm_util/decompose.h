#pragma once
// Shared decomposition utilities: instruction-slice extraction for
// translation-validation decompose mode.

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/AssumptionCache.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/MemorySSA.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Triple.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"

#include <map>
#include <optional>
#include <unordered_set>
#include <variant>
#include <vector>

namespace llvm_util {

// --- Types ---

struct MymIdx { uint64_t v; bool operator<(const MymIdx &o) const { return v < o.v; } };
struct ArgNo   { unsigned v; bool operator<(const ArgNo   &o) const { return v < o.v; } };
using ValueKey = std::variant<MymIdx, ArgNo>;

struct ConsumerKey {
  uint64_t consumer_mymd;
  unsigned operand_idx;
  bool operator<(const ConsumerKey &o) const {
    if (consumer_mymd != o.consumer_mymd) return consumer_mymd < o.consumer_mymd;
    return operand_idx < o.operand_idx;
  }
};

using ParamList  = std::vector<std::pair<ValueKey, llvm::Type *>>;
using OutputList = std::vector<std::pair<ConsumerKey, llvm::Type *>>;

// --- Public functions ---

/// Returns the !mymd index of an instruction, or nullopt if absent.
std::optional<uint64_t> getMymIdx(llvm::Instruction *inst);

/// Indices of instructions in pre_fn that were removed or changed.
std::unordered_set<uint64_t>
computeTouchedPre(llvm::Function &pre_fn, llvm::Function &post_fn);

/// Indices of instructions in post_fn that were inserted or changed.
std::unordered_set<uint64_t>
computeTouchedPost(llvm::Function &pre_fn, llvm::Function &post_fn);

/// Expand indices to include all instructions on dataflow paths between seeds.
std::unordered_set<uint64_t>
flowClosure(llvm::Function &fn, const std::unordered_set<uint64_t> &indices);

/// Indices of instructions whose dataflow relationship to the touched set
/// changed due to the transformation.
std::unordered_set<uint64_t>
flowChanges(llvm::Function &pre_fn, llvm::Function &post_fn,
            const std::unordered_set<uint64_t> &indices_t,
            const std::unordered_set<uint64_t> &indices_t_prime);

/// Expand indices to include branch terminators needed for control flow
/// between touched basic blocks.
std::unordered_set<uint64_t>
findBranches(llvm::Function &fn, const std::unordered_set<uint64_t> &indices);

/// Values used but not defined within the instruction list (inputs).
std::unordered_set<llvm::Value *>
usedValues(const std::vector<llvm::Instruction *> &instrs);

/// Values defined within the instruction list and used outside (outputs).
std::map<ConsumerKey, llvm::Value *>
definedValues(const std::vector<llvm::Instruction *> &instrs);

/// Collect instructions from fn whose !mymd index is in indices, in program order.
std::vector<llvm::Instruction *>
collectInOrder(llvm::Function &fn, const std::unordered_set<uint64_t> &indices);

/// Build the unified parameter list and return type for a pre/post pair.
std::tuple<ParamList, OutputList, llvm::Type *>
unifiedSignature(
    llvm::LLVMContext &ctx,
    const std::unordered_set<llvm::Value *> &inputs_pre,
    const std::unordered_set<llvm::Value *> &inputs_post,
    const std::map<ConsumerKey, llvm::Value *> &outputs_pre,
    const std::map<ConsumerKey, llvm::Value *> &outputs_post);

/// Extract a subset of instructions into a new LLVM function.
llvm::Function *extractFunction(
    const std::string &name,
    llvm::Module &new_module,
    const std::vector<llvm::Instruction *> &touched,
    const std::unordered_set<llvm::Value *> &inputs,
    const OutputList &ordered_outputs,
    const std::map<ConsumerKey, llvm::Value *> &output_vals,
    const ParamList &params,
    llvm::Type *return_type);

} // namespace llvm_util
