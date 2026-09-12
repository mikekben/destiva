#pragma once

// Copyright (c) 2018-present The Alive2 Authors.
// Distributed under the MIT license that can be found in the LICENSE file.

#include <memory>
#include <string>
#include <string_view>

namespace llvm {
class Module;
}

namespace llvm_util {
std::string optimize_module(llvm::Module &M, std::string_view optArgs);

// Like optimize_module, but returns a snapshot of M taken after !mymd tags
// are assigned (by runBeforePass) but before any pass transforms it.
// The snapshot is the "pre" module for decompose-mode verification.
std::unique_ptr<llvm::Module>
optimize_module_with_pre(llvm::Module &M, std::string_view optArgs);
}
