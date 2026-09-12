// Copyright (c) 2018-present The Alive2 Authors.
// Distributed under the MIT license that can be found in the LICENSE file.

#include "llvm_util/decompose.h"
#include "llvm/Analysis/TargetLibraryInfo.h"

#include <cassert>
#include <queue>
#include <sstream>
#include <string>
#include <unordered_map>

using namespace llvm;

namespace llvm_util {

std::optional<uint64_t> getMymIdx(llvm::Instruction *inst)
{
  auto *MD = inst->getMetadata("mymd");
  if (!MD)
    return std::nullopt;
  if (auto *CI = llvm::mdconst::dyn_extract<llvm::ConstantInt>(MD->getOperand(0)))
    return CI->getZExtValue();
  if (auto *MS = llvm::dyn_cast<llvm::MDString>(MD->getOperand(0)))
  {
    uint64_t idx;
    if (!MS->getString().getAsInteger(10, idx))
      return idx;
  }
  return std::nullopt;
}

static std::map<uint64_t, llvm::Instruction *>
buildMymdMap(llvm::Function &F)
{
  std::map<uint64_t, llvm::Instruction *> m;
  for (auto &BB : F)
    for (auto &Inst : BB)
      if (auto idx = getMymIdx(const_cast<llvm::Instruction *>(&Inst)))
        m[*idx] = const_cast<llvm::Instruction *>(&Inst);
  return m;
}

static ValueKey valueToKey(llvm::Value *v)
{
  if (auto *arg = llvm::dyn_cast<llvm::Argument>(v))
    return ArgNo{arg->getArgNo()};
  if (auto *inst = llvm::dyn_cast<llvm::Instruction>(v))
  {
    auto idx = getMymIdx(inst);
    assert(idx && "valueToKey called on instruction without valid !mymd");
    return MymIdx{*idx};
  }
  llvm_unreachable("unexpected value kind in valueToKey");
}

static std::string stripMetadata(std::string s)
{
  auto pos = s.find(", !");
  if (pos != std::string::npos)
    s.erase(pos);
  return s;
}

std::unordered_set<uint64_t>
computeTouchedPre(llvm::Function &pre_fn, llvm::Function &post_fn)
{
  auto pre  = buildMymdMap(pre_fn);
  auto post = buildMymdMap(post_fn);

  std::unordered_set<uint64_t> result;
  for (auto &[idx, pre_inst] : pre)
  {
    auto it = post.find(idx);
    if (it == post.end())
    {
      result.insert(idx);
    }
    else
    {
      std::string pre_s, post_s;
      llvm::raw_string_ostream(pre_s) << *pre_inst;
      llvm::raw_string_ostream(post_s) << *it->second;
      if (stripMetadata(pre_s) != stripMetadata(post_s))
        result.insert(idx);
    }
  }
  return result;
}

std::unordered_set<uint64_t>
computeTouchedPost(llvm::Function &pre_fn, llvm::Function &post_fn)
{
  auto pre  = buildMymdMap(pre_fn);
  auto post = buildMymdMap(post_fn);

  std::unordered_set<uint64_t> result;
  for (auto &[idx, post_inst] : post)
  {
    auto it = pre.find(idx);
    if (it == pre.end())
    {
      result.insert(idx);
    }
    else
    {
      std::string pre_s, post_s;
      llvm::raw_string_ostream(pre_s) << *it->second;
      llvm::raw_string_ostream(post_s) << *post_inst;
      if (stripMetadata(pre_s) != stripMetadata(post_s))
        result.insert(idx);
    }
  }
  return result;
}

static std::unordered_set<llvm::Instruction *>
forwardReach(const std::unordered_set<llvm::Instruction *> &seeds,
             llvm::MemorySSA &MSSA)
{
  std::unordered_set<llvm::Instruction *> reached;
  std::queue<llvm::Instruction *> worklist;

  auto enqueue = [&](llvm::Instruction *inst) {
    if (reached.insert(inst).second)
      worklist.push(inst);
  };

  for (auto *inst : seeds)
    enqueue(inst);

  while (!worklist.empty())
  {
    auto *inst = worklist.front(); worklist.pop();

    for (auto *user : inst->users())
      if (auto *user_inst = llvm::dyn_cast<llvm::Instruction>(user))
        enqueue(user_inst);

    if (auto *MA = MSSA.getMemoryAccess(inst))
      if (llvm::isa<llvm::MemoryDef>(MA))
        for (auto *mem_user : MA->users())
          if (auto *MU = llvm::dyn_cast<llvm::MemoryUse>(mem_user))
            if (auto *load_inst = MU->getMemoryInst())
              enqueue(load_inst);
  }

  return reached;
}

static std::unordered_set<llvm::Instruction *>
backwardReach(const std::unordered_set<llvm::Instruction *> &seeds,
              llvm::MemorySSA &MSSA)
{
  std::unordered_set<llvm::Instruction *> reached;
  std::queue<llvm::Instruction *> worklist;

  auto enqueue = [&](llvm::Instruction *inst) {
    if (reached.insert(inst).second)
      worklist.push(inst);
  };

  for (auto *inst : seeds)
    enqueue(inst);

  while (!worklist.empty())
  {
    auto *inst = worklist.front(); worklist.pop();

    for (auto &op : inst->operands())
      if (auto *op_inst = llvm::dyn_cast<llvm::Instruction>(op.get()))
        enqueue(op_inst);

    if (auto *MA = MSSA.getMemoryAccess(inst))
      if (auto *MU = llvm::dyn_cast<llvm::MemoryUse>(MA))
        if (auto *clobber = MU->getDefiningAccess())
          if (auto *MD = llvm::dyn_cast<llvm::MemoryDef>(clobber))
            if (!MSSA.isLiveOnEntryDef(MD))
              if (auto *store_inst = MD->getMemoryInst())
                enqueue(store_inst);
  }

  return reached;
}

std::unordered_set<uint64_t>
flowClosure(llvm::Function &fn, const std::unordered_set<uint64_t> &indices)
{
  if (indices.empty())
    return {};

  llvm::DominatorTree DT(fn);
  llvm::AssumptionCache AC(fn);
  llvm::TargetLibraryInfoImpl TLII(llvm::Triple(fn.getParent()->getTargetTriple()));
  llvm::TargetLibraryInfo TLI(TLII, &fn);
  llvm::AAResults AA(TLI);
  llvm::BasicAAResult BAR(fn.getParent()->getDataLayout(), fn, TLI, AC, &DT);
  AA.addAAResult(BAR);
  llvm::MemorySSA MSSA(fn, &AA, &DT);

  std::unordered_set<llvm::Instruction *> seeds;
  for (auto &BB : fn)
    for (auto &Inst : BB)
      if (auto idx = getMymIdx(const_cast<llvm::Instruction *>(&Inst)))
        if (indices.count(*idx))
          seeds.insert(const_cast<llvm::Instruction *>(&Inst));

  auto fwd = forwardReach(seeds, MSSA);
  auto bwd = backwardReach(seeds, MSSA);

  std::unordered_set<uint64_t> result = indices;
  for (auto *inst : fwd)
    if (bwd.count(inst))
      if (auto idx = getMymIdx(inst))
        result.insert(*idx);

  return result;
}

std::unordered_set<uint64_t>
flowChanges(llvm::Function &pre_fn, llvm::Function &post_fn,
            const std::unordered_set<uint64_t> &indices_t,
            const std::unordered_set<uint64_t> &indices_t_prime)
{
  struct MSSAContext {
    llvm::DominatorTree DT;
    llvm::AssumptionCache AC;
    llvm::TargetLibraryInfoImpl TLII;
    llvm::TargetLibraryInfo TLI;
    llvm::AAResults AA;
    llvm::BasicAAResult BAR;
    llvm::MemorySSA MSSA;

    MSSAContext(llvm::Function &fn)
      : DT(fn), AC(fn),
        TLII(llvm::Triple(fn.getParent()->getTargetTriple())),
        TLI(TLII, &fn),
        AA(TLI),
        BAR(fn.getParent()->getDataLayout(), fn, TLI, AC, &DT),
        MSSA(fn, &AA, &DT)
    { AA.addAAResult(BAR); }
  };

  MSSAContext ctx_pre(pre_fn);
  MSSAContext ctx_post(post_fn);

  auto build_seeds = [](llvm::Function &fn,
                         const std::unordered_set<uint64_t> &indices) {
    std::unordered_set<llvm::Instruction *> seeds;
    for (auto &BB : fn)
      for (auto &Inst : BB)
        if (auto idx = getMymIdx(const_cast<llvm::Instruction *>(&Inst)))
          if (indices.count(*idx))
            seeds.insert(const_cast<llvm::Instruction *>(&Inst));
    return seeds;
  };

  auto seeds_t       = build_seeds(pre_fn,  indices_t);
  auto seeds_t_prime = build_seeds(post_fn, indices_t_prime);

  auto fwd_pre  = forwardReach(seeds_t,        ctx_pre.MSSA);
  auto bwd_pre  = backwardReach(seeds_t,       ctx_pre.MSSA);
  auto fwd_post = forwardReach(seeds_t_prime,  ctx_post.MSSA);
  auto bwd_post = backwardReach(seeds_t_prime, ctx_post.MSSA);

  auto to_indices = [](const std::unordered_set<llvm::Instruction *> &insts,
                        const std::unordered_set<uint64_t> &exclude) {
    std::unordered_set<uint64_t> result;
    for (auto *inst : insts)
      if (auto idx = getMymIdx(inst))
        if (!exclude.count(*idx))
          result.insert(*idx);
    return result;
  };

  auto fwd_pre_idx  = to_indices(fwd_pre,  indices_t);
  auto bwd_pre_idx  = to_indices(bwd_pre,  indices_t);
  auto fwd_post_idx = to_indices(fwd_post, indices_t_prime);
  auto bwd_post_idx = to_indices(bwd_post, indices_t_prime);

  std::unordered_set<uint64_t> result;
  for (auto idx : bwd_pre_idx)
    if (!bwd_post_idx.count(idx)) result.insert(idx);
  for (auto idx : bwd_post_idx)
    if (!bwd_pre_idx.count(idx))  result.insert(idx);
  for (auto idx : fwd_pre_idx)
    if (!fwd_post_idx.count(idx)) result.insert(idx);
  for (auto idx : fwd_post_idx)
    if (!fwd_pre_idx.count(idx))  result.insert(idx);

  return result;
}

std::unordered_set<uint64_t>
findBranches(llvm::Function &fn, const std::unordered_set<uint64_t> &indices)
{
  if (indices.empty())
    return {};

  std::unordered_set<llvm::BasicBlock *> touched_bbs;
  for (auto &BB : fn)
    for (auto &Inst : BB)
      if (auto idx = getMymIdx(const_cast<llvm::Instruction *>(&Inst)))
        if (indices.count(*idx))
          touched_bbs.insert(const_cast<llvm::BasicBlock *>(&BB));

  for (auto &BB : fn)
  {
    if (touched_bbs.count(const_cast<llvm::BasicBlock *>(&BB)))
      continue;
    bool has_touched_pred = false, has_touched_succ = false;
    for (auto *pred : llvm::predecessors(&BB))
      if (touched_bbs.count(pred)) { has_touched_pred = true; break; }
    if (!has_touched_pred)
      continue;
    for (auto *succ : llvm::successors(&BB))
      if (touched_bbs.count(succ)) { has_touched_succ = true; break; }
    if (has_touched_succ)
      touched_bbs.insert(const_cast<llvm::BasicBlock *>(&BB));
  }

  std::unordered_set<uint64_t> result = indices;
  for (auto *BB : touched_bbs)
  {
    auto *term = BB->getTerminator();
    if (auto idx = getMymIdx(term))
      result.insert(*idx);
  }

  return result;
}

std::unordered_set<llvm::Value *>
usedValues(const std::vector<llvm::Instruction *> &instrs)
{
  std::unordered_set<llvm::Instruction *> defined(instrs.begin(), instrs.end());
  std::unordered_set<llvm::Value *> inputs;
  for (auto *inst : instrs)
  {
    for (auto &op : inst->operands())
    {
      llvm::Value *v = op.get();
      if (auto *def_inst = llvm::dyn_cast<llvm::Instruction>(v))
      {
        if (!defined.count(def_inst))
          inputs.insert(v);
      }
      else if (llvm::isa<llvm::Argument>(v))
      {
        inputs.insert(v);
      }
    }
  }
  bool changed = true;
  while (changed)
  {
    changed = false;
    std::vector<llvm::Value *> to_add;
    for (auto *v : inputs)
    {
      auto *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(v);
      if (!gep) continue;
      for (auto &op : gep->operands())
      {
        llvm::Value *operand = op.get();
        if (llvm::isa<llvm::Constant>(operand)) continue;
        if (inputs.count(operand)) continue;
        auto *op_inst = llvm::dyn_cast<llvm::Instruction>(operand);
        if (op_inst && defined.count(op_inst)) continue;
        to_add.push_back(operand);
      }
    }
    for (auto *v : to_add)
    {
      inputs.insert(v);
      changed = true;
    }
  }
  return inputs;
}

std::map<ConsumerKey, llvm::Value *>
definedValues(const std::vector<llvm::Instruction *> &instrs)
{
  std::unordered_set<llvm::Instruction *> defined(instrs.begin(), instrs.end());
  std::map<ConsumerKey, llvm::Value *> outputs;
  for (auto *inst : instrs)
  {
    if (inst->getType()->isVoidTy())
      continue;
    for (auto &use : inst->uses())
    {
      auto *user_inst = llvm::dyn_cast<llvm::Instruction>(use.getUser());
      if (!user_inst || defined.count(user_inst))
        continue;
      auto consumer_idx = getMymIdx(user_inst);
      if (!consumer_idx)
        continue;
      outputs.emplace(ConsumerKey{*consumer_idx, use.getOperandNo()}, inst);
    }
  }
  return outputs;
}

std::vector<llvm::Instruction *>
collectInOrder(llvm::Function &fn, const std::unordered_set<uint64_t> &indices)
{
  std::vector<llvm::Instruction *> result;
  for (auto &BB : fn)
    for (auto &Inst : BB)
      if (auto idx = getMymIdx(const_cast<llvm::Instruction *>(&Inst)))
        if (indices.count(*idx))
          result.push_back(const_cast<llvm::Instruction *>(&Inst));
  return result;
}

std::tuple<ParamList, OutputList, llvm::Type *>
unifiedSignature(
    llvm::LLVMContext &ctx,
    const std::unordered_set<llvm::Value *> &inputs_pre,
    const std::unordered_set<llvm::Value *> &inputs_post,
    const std::map<ConsumerKey, llvm::Value *> &outputs_pre,
    const std::map<ConsumerKey, llvm::Value *> &outputs_post)
{
  std::map<ValueKey, llvm::Type *> param_map;
  for (auto *v : inputs_pre)
    param_map.emplace(valueToKey(v), v->getType());
  for (auto *v : inputs_post)
    param_map.emplace(valueToKey(v), v->getType());

  std::map<ConsumerKey, llvm::Type *> output_map;
  for (auto &[key, val] : outputs_pre)
    output_map.emplace(key, val->getType());
  for (auto &[key, val] : outputs_post)
    output_map.emplace(key, val->getType());

  ParamList params(param_map.begin(), param_map.end());
  OutputList ordered_outputs(output_map.begin(), output_map.end());

  llvm::Type *return_type;
  if (output_map.empty())
  {
    return_type = llvm::Type::getVoidTy(ctx);
  }
  else if (output_map.size() == 1)
  {
    return_type = output_map.begin()->second;
  }
  else
  {
    std::vector<llvm::Type *> elem_types;
    for (auto &[key, ty] : output_map)
      elem_types.push_back(ty);
    return_type = llvm::StructType::get(ctx, elem_types);
  }

  return {params, ordered_outputs, return_type};
}

llvm::Function *extractFunction(
    const std::string &name,
    llvm::Module &new_module,
    const std::vector<llvm::Instruction *> &touched,
    const std::unordered_set<llvm::Value *> &inputs,
    const OutputList &ordered_outputs,
    const std::map<ConsumerKey, llvm::Value *> &output_vals,
    const ParamList &params,
    llvm::Type *return_type)
{
  auto &ctx = new_module.getContext();

  std::vector<llvm::Type *> param_types;
  for (auto &[key, ty] : params)
    param_types.push_back(ty);
  auto *fn_type = llvm::FunctionType::get(return_type, param_types, false);
  auto *new_fn = llvm::Function::Create(
      fn_type, llvm::Function::ExternalLinkage, name, &new_module);

  std::map<ValueKey, llvm::Value *> key_to_input;
  for (auto *v : inputs)
    key_to_input[valueToKey(v)] = v;

  llvm::ValueToValueMapTy vmap;
  const auto &DL = new_module.getDataLayout();
  for (unsigned i = 0; i < params.size(); ++i)
  {
    auto it = key_to_input.find(params[i].first);
    if (it != key_to_input.end())
    {
      vmap[it->second] = new_fn->getArg(i);
      if (auto *AI = llvm::dyn_cast<llvm::AllocaInst>(it->second))
      {
        auto *alloc_ty = AI->getAllocatedType();
        uint64_t alloc_size = DL.getTypeAllocSize(alloc_ty);
        llvm::Align alloc_align = AI->getAlign();
        llvm::AttrBuilder AB(ctx);
        AB.addAttribute(llvm::Attribute::NonNull);
        AB.addAttribute(llvm::Attribute::NoUndef);
        AB.addAlignmentAttr(alloc_align);
        AB.addDereferenceableAttr(alloc_size);
        new_fn->getArg(i)->addAttrs(AB);
      }
    }
  }

  if (touched.empty())
  {
    auto *entry = llvm::BasicBlock::Create(ctx, "entry", new_fn);
    llvm::IRBuilder<> B(entry);
    if (return_type->isVoidTy())
      B.CreateRetVoid();
    else
      B.CreateRet(llvm::UndefValue::get(return_type));
    return new_fn;
  }

  std::unordered_map<llvm::BasicBlock *, llvm::BasicBlock *> bb_map;
  for (auto *inst : touched)
  {
    auto *orig_bb = inst->getParent();
    if (!bb_map.count(orig_bb))
    {
      auto *new_bb = llvm::BasicBlock::Create(ctx, orig_bb->getName(), new_fn);
      bb_map[orig_bb] = new_bb;
      vmap[orig_bb] = new_bb;
    }
  }

  // BFS fix: find first selected BB reachable from original entry, move to front
  {
    llvm::Function *orig_fn = touched[0]->getParent()->getParent();
    std::queue<llvm::BasicBlock *> bfs_q;
    std::unordered_set<llvm::BasicBlock *> bfs_seen;
    llvm::BasicBlock *bfs_entry = nullptr;
    bfs_q.push(&orig_fn->getEntryBlock());
    bfs_seen.insert(&orig_fn->getEntryBlock());
    while (!bfs_q.empty())
    {
      auto *bb = bfs_q.front(); bfs_q.pop();
      if (bb_map.count(bb)) { bfs_entry = bb; break; }
      for (auto *succ : llvm::successors(bb))
        if (!bfs_seen.count(succ)) { bfs_seen.insert(succ); bfs_q.push(succ); }
    }
    if (bfs_entry && bb_map[bfs_entry] != &new_fn->front())
      bb_map[bfs_entry]->moveBefore(&new_fn->front());
  }

  // GEP recomputation at the top of the entry block
  {
    llvm::BasicBlock *first_bb = &new_fn->front();
    llvm::IRBuilder<> B(first_bb, first_bb->begin());
    for (unsigned i = 0; i < params.size(); ++i)
    {
      auto it = key_to_input.find(params[i].first);
      if (it == key_to_input.end()) continue;
      auto *gep = llvm::dyn_cast<llvm::GetElementPtrInst>(it->second);
      if (!gep) continue;
      llvm::Value *mapped_base = vmap.lookup(gep->getPointerOperand());
      if (!mapped_base) continue;
      bool all_available = true;
      std::vector<llvm::Value *> mapped_indices;
      for (auto &idx_use : gep->indices())
      {
        llvm::Value *idx = idx_use.get();
        if (llvm::isa<llvm::Constant>(idx))
          mapped_indices.push_back(idx);
        else if (llvm::Value *mapped_idx = vmap.lookup(idx))
          mapped_indices.push_back(mapped_idx);
        else { all_available = false; break; }
      }
      if (!all_available) continue;
      llvm::Value *recomputed = B.CreateGEP(
          gep->getSourceElementType(), mapped_base, mapped_indices,
          gep->getName(), gep->isInBounds());
      vmap[it->second] = recomputed;
    }
  }

  std::vector<llvm::Instruction *> clones;
  for (auto *inst : touched)
  {
    if (llvm::isa<llvm::ReturnInst>(inst))
      continue;
    auto *clone = inst->clone();
    if (inst->hasName())
      clone->setName(inst->getName());
    clone->insertInto(bb_map[inst->getParent()],
                      bb_map[inst->getParent()]->end());
    if (!inst->getType()->isVoidTy())
      vmap[inst] = clone;
    clones.push_back(clone);
  }

  for (auto *clone : clones)
    llvm::RemapInstruction(clone, vmap,
        llvm::RF_NoModuleLevelChanges | llvm::RF_IgnoreMissingLocals);

  static const llvm::Attribute::AttrKind kValueAttrs[] = {
    llvm::Attribute::NonNull,
    llvm::Attribute::NoUndef,
    llvm::Attribute::Dereferenceable,
    llvm::Attribute::DereferenceableOrNull,
    llvm::Attribute::Alignment,
  };
  for (auto *clone : clones)
  {
    auto *CB = llvm::dyn_cast<llvm::CallBase>(clone);
    if (!CB) continue;
    for (unsigned i = 0; i < CB->arg_size(); ++i)
      for (auto attr : kValueAttrs)
        CB->removeParamAttr(i, attr);
  }

  std::unordered_set<llvm::BasicBlock *> new_bbs;
  for (auto &[orig, nb] : bb_map)
    new_bbs.insert(nb);

  llvm::BasicBlock *exit_bb = nullptr;
  auto get_exit_bb = [&]() -> llvm::BasicBlock *
  {
    if (exit_bb) return exit_bb;
    exit_bb = llvm::BasicBlock::Create(ctx, "region.exit", new_fn);
    llvm::IRBuilder<> builder(exit_bb);
    if (return_type->isVoidTy())
      builder.CreateRetVoid();
    else
      builder.CreateRet(llvm::UndefValue::get(return_type));
    return exit_bb;
  };

  // Step 5a: fix terminators
  std::vector<llvm::BasicBlock *> needs_ret_bbs;
  for (auto &[orig_bb, new_bb] : bb_map)
  {
    auto *term = new_bb->getTerminator();
    if (!term)
    {
      needs_ret_bbs.push_back(new_bb);
      continue;
    }
    bool all_outside = true;
    bool any_outside = false;
    for (auto *succ : llvm::successors(term))
    {
      if (new_bbs.count(succ)) all_outside = false;
      else                     any_outside = true;
    }
    if (all_outside)
    {
      term->eraseFromParent();
      needs_ret_bbs.push_back(new_bb);
    }
    else if (any_outside)
    {
      for (unsigned i = 0; i < term->getNumSuccessors(); ++i)
        if (!new_bbs.count(term->getSuccessor(i)))
          term->setSuccessor(i, get_exit_bb());
    }
  }

  // Step 5b: build DominatorTree, then add return instructions
  llvm::DominatorTree DT(*new_fn);

  auto get_output = [&](llvm::BasicBlock *exit_bb_,
                         const ConsumerKey &key, llvm::Type *ty) -> llvm::Value *
  {
    auto it = output_vals.find(key);
    if (it == output_vals.end()) return llvm::UndefValue::get(ty);
    llvm::Value *cloned = vmap.lookup(it->second);
    if (!cloned) return llvm::UndefValue::get(ty);
    if (auto *inst = llvm::dyn_cast<llvm::Instruction>(cloned))
      if (!DT.dominates(inst->getParent(), exit_bb_))
        return llvm::UndefValue::get(ty);
    return cloned;
  };

  for (auto *new_bb : needs_ret_bbs)
  {
    llvm::IRBuilder<> builder(new_bb);
    if (return_type->isVoidTy())
    {
      builder.CreateRetVoid();
    }
    else if (ordered_outputs.size() == 1)
    {
      builder.CreateRet(
          get_output(new_bb, ordered_outputs[0].first, ordered_outputs[0].second));
    }
    else
    {
      llvm::Value *agg = llvm::UndefValue::get(return_type);
      for (unsigned i = 0; i < ordered_outputs.size(); ++i)
        agg = builder.CreateInsertValue(
            agg, get_output(new_bb, ordered_outputs[i].first, ordered_outputs[i].second),
            {i});
      builder.CreateRet(agg);
    }
  }

  // Orphan promotion: if entry is trivially empty, promote first orphan BB
  {
    auto *entry = &new_fn->front();
    bool trivial_entry = (entry->size() == 1 &&
                          llvm::isa<llvm::ReturnInst>(entry->begin()));
    if (trivial_entry)
    {
      for (auto &bb : *new_fn)
      {
        if (&bb == entry) continue;
        if (llvm::pred_empty(&bb))
        {
          bb.moveBefore(entry);
          break;
        }
      }
    }
  }

  return new_fn;
}

} // namespace llvm_util
