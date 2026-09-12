; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @GenStateInitBlock(ptr noundef %pGen, ptr noundef %pBlock, i32 noundef %iType, i32 noundef %nFirstInstr, ptr noundef %pUserData) #0 {
entry:
  %pGen.addr = alloca ptr, align 8
  %pBlock.addr = alloca ptr, align 8
  %iType.addr = alloca i32, align 4
  %nFirstInstr.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pBlock, ptr %pBlock.addr, align 8
  store i32 %iType, ptr %iType.addr, align 4
  store i32 %nFirstInstr, ptr %nFirstInstr.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load i32, ptr %nFirstInstr.addr, align 4
  %1 = load ptr, ptr %pBlock.addr, align 8
  %nFirstInstr1 = getelementptr inbounds nuw %struct.GenBlock, ptr %1, i32 0, i32 2
  store i32 %0, ptr %nFirstInstr1, align 8
  %2 = load ptr, ptr %pUserData.addr, align 8
  %3 = load ptr, ptr %pBlock.addr, align 8
  %pUserData2 = getelementptr inbounds nuw %struct.GenBlock, ptr %3, i32 0, i32 5
  store ptr %2, ptr %pUserData2, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %5 = load ptr, ptr %pBlock.addr, align 8
  %pGen3 = getelementptr inbounds nuw %struct.GenBlock, ptr %5, i32 0, i32 0
  store ptr %4, ptr %pGen3, align 8
  %6 = load i32, ptr %iType.addr, align 4
  %7 = load ptr, ptr %pBlock.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %7, i32 0, i32 3
  store i32 %6, ptr %iFlags, align 4
  %8 = load ptr, ptr %pBlock.addr, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %8, i32 0, i32 1
  store ptr null, ptr %pParent, align 8
  %9 = load ptr, ptr %pBlock.addr, align 8
  %aJumpFix = getelementptr inbounds nuw %struct.GenBlock, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %aJumpFix, ptr noundef %sAllocator, i32 noundef 40)
  %12 = load ptr, ptr %pBlock.addr, align 8
  %aPostContFix = getelementptr inbounds nuw %struct.GenBlock, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %pGen.addr, align 8
  %pVm4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVm4, align 8
  %sAllocator5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %call6 = call i32 @SySetInit(ptr noundef %aPostContFix, ptr noundef %sAllocator5, i32 noundef 40)
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
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
