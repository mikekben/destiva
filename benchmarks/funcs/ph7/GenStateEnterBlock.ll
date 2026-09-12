; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.224 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @GenStateInitBlock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateEnterBlock(ptr noundef %pGen, i32 noundef %iType, i32 noundef %nFirstInstr, ptr noundef %pUserData, ptr noundef %ppBlock) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iType.addr = alloca i32, align 4
  %nFirstInstr.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %ppBlock.addr = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iType, ptr %iType.addr, align 4
  store i32 %nFirstInstr, ptr %nFirstInstr.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %ppBlock, ptr %ppBlock.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 120)
  store ptr %call, ptr %pBlock, align 8
  %2 = load ptr, ptr %pBlock, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %call1 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %3, i32 noundef 1, i32 noundef 1, ptr noundef @.str.224)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pBlock, align 8
  call void @SyZero(ptr noundef %4, i32 noundef 120)
  %5 = load ptr, ptr %pGen.addr, align 8
  %6 = load ptr, ptr %pBlock, align 8
  %7 = load i32, ptr %iType.addr, align 4
  %8 = load i32, ptr %nFirstInstr.addr, align 4
  %9 = load ptr, ptr %pUserData.addr, align 8
  call void @GenStateInitBlock(ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pCurrent, align 8
  %12 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %12, i32 0, i32 1
  store ptr %11, ptr %pParent, align 8
  %13 = load ptr, ptr %pBlock, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pCurrent2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 4
  store ptr %13, ptr %pCurrent2, align 8
  %15 = load ptr, ptr %ppBlock.addr, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %16 = load ptr, ptr %pBlock, align 8
  %17 = load ptr, ptr %ppBlock.addr, align 8
  store ptr %16, ptr %17, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
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
