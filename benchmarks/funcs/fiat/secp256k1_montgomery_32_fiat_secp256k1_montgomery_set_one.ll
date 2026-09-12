; ModuleID = '/data2/ben/alive-decomp/bench/fiat/secp256k1_montgomery_32.ll'
source_filename = "test/test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @fiat_secp256k1_montgomery_set_one(ptr noundef %out1) #0 {
entry:
  %out1.addr = alloca ptr, align 8
  store ptr %out1, ptr %out1.addr, align 8
  %0 = load ptr, ptr %out1.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  store i32 977, ptr %arrayidx, align 4
  %1 = load ptr, ptr %out1.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %1, i64 1
  store i32 1, ptr %arrayidx1, align 4
  %2 = load ptr, ptr %out1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %2, i64 2
  store i32 0, ptr %arrayidx2, align 4
  %3 = load ptr, ptr %out1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 3
  store i32 0, ptr %arrayidx3, align 4
  %4 = load ptr, ptr %out1.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %4, i64 4
  store i32 0, ptr %arrayidx4, align 4
  %5 = load ptr, ptr %out1.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 5
  store i32 0, ptr %arrayidx5, align 4
  %6 = load ptr, ptr %out1.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %6, i64 6
  store i32 0, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %out1.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %7, i64 7
  store i32 0, ptr %arrayidx7, align 4
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/swiftlang/llvm-project.git 613f9527cc114fa23dba17bc9a10ae370d87d0ea)"}
