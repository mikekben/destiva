; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.JumpFixup = type { i32, i32, %struct.SyString, ptr, i32 }
%struct.SyString = type { ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateNewJumpFixup(ptr noundef %pBlock, i32 noundef %nJumpType, i32 noundef %nInstrIdx) #0 {
entry:
  %pBlock.addr = alloca ptr, align 8
  %nJumpType.addr = alloca i32, align 4
  %nInstrIdx.addr = alloca i32, align 4
  %sJumpFix = alloca %struct.JumpFixup, align 8
  %rc = alloca i32, align 4
  store ptr %pBlock, ptr %pBlock.addr, align 8
  store i32 %nJumpType, ptr %nJumpType.addr, align 4
  store i32 %nInstrIdx, ptr %nInstrIdx.addr, align 4
  %0 = load i32, ptr %nJumpType.addr, align 4
  %nJumpType1 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJumpFix, i32 0, i32 0
  store i32 %0, ptr %nJumpType1, align 8
  %1 = load i32, ptr %nInstrIdx.addr, align 4
  %nInstrIdx2 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJumpFix, i32 0, i32 1
  store i32 %1, ptr %nInstrIdx2, align 4
  %2 = load ptr, ptr %pBlock.addr, align 8
  %aJumpFix = getelementptr inbounds nuw %struct.GenBlock, ptr %2, i32 0, i32 4
  %call = call i32 @SySetPut(ptr noundef %aJumpFix, ptr noundef %sJumpFix)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
