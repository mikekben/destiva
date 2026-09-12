; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ResetCodeGenerator(ptr noundef %pVm, ptr noundef %xErr, ptr noundef %pErrData) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %xErr.addr = alloca ptr, align 8
  %pErrData.addr = alloca ptr, align 8
  %pGen = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %xErr, ptr %xErr.addr, align 8
  store ptr %pErrData, ptr %pErrData.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 54
  store ptr %sCodeGen, ptr %pGen, align 8
  %1 = load ptr, ptr %pGen, align 8
  %aLabel = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %1, i32 0, i32 8
  %call = call i32 @SySetReset(ptr noundef %aLabel)
  %2 = load ptr, ptr %pGen, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 9
  %call1 = call i32 @SySetReset(ptr noundef %aGoto)
  %3 = load ptr, ptr %pGen, align 8
  %sErrBuf = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 11
  %call2 = call i32 @SyBlobRelease(ptr noundef %sErrBuf)
  %4 = load ptr, ptr %pGen, align 8
  %sWorker = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 10
  %call3 = call i32 @SyBlobRelease(ptr noundef %sWorker)
  %5 = load ptr, ptr %pGen, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pCurrent, align 8
  store ptr %6, ptr %pBlock, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %pBlock, align 8
  %pParent4 = getelementptr inbounds nuw %struct.GenBlock, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pParent4, align 8
  %cmp = icmp ne ptr %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pBlock, align 8
  %pParent5 = getelementptr inbounds nuw %struct.GenBlock, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pParent5, align 8
  store ptr %10, ptr %pParent, align 8
  %11 = load ptr, ptr %pBlock, align 8
  call void @GenStateFreeBlock(ptr noundef %11)
  %12 = load ptr, ptr %pParent, align 8
  store ptr %12, ptr %pBlock, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %xErr.addr, align 8
  %14 = load ptr, ptr %pGen, align 8
  %xErr6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 6
  store ptr %13, ptr %xErr6, align 8
  %15 = load ptr, ptr %pErrData.addr, align 8
  %16 = load ptr, ptr %pGen, align 8
  %pErrData7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 7
  store ptr %15, ptr %pErrData7, align 8
  %17 = load ptr, ptr %pGen, align 8
  %sGlobal = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 5
  %18 = load ptr, ptr %pGen, align 8
  %pCurrent8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 4
  store ptr %sGlobal, ptr %pCurrent8, align 8
  %19 = load ptr, ptr %pGen, align 8
  %pRawEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 16
  store ptr null, ptr %pRawEnd, align 8
  %20 = load ptr, ptr %pGen, align 8
  %pRawIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 15
  store ptr null, ptr %pRawIn, align 8
  %21 = load ptr, ptr %pGen, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 13
  store ptr null, ptr %pEnd, align 8
  %22 = load ptr, ptr %pGen, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  store ptr null, ptr %pIn, align 8
  %23 = load ptr, ptr %pGen, align 8
  %nErr = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 14
  store i32 0, ptr %nErr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @GenStateFreeBlock(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
