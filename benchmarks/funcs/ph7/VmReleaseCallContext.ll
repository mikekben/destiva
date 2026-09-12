; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_aux_data = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmReleaseCallContext(ptr noundef %pCtx) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %apObj = alloca ptr, align 8
  %aAux = alloca ptr, align 8
  %pChunk = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %sVar = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 2
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sVar, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %sVar1 = getelementptr inbounds nuw %struct.ph7_context, ptr %2, i32 0, i32 2
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sVar1, i32 0, i32 1
  %3 = load ptr, ptr %pBase, align 8
  store ptr %3, ptr %apObj, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pCtx.addr, align 8
  %sVar2 = getelementptr inbounds nuw %struct.ph7_context, ptr %5, i32 0, i32 2
  %nUsed3 = getelementptr inbounds nuw %struct.SySet, ptr %sVar2, i32 0, i32 2
  %6 = load i32, ptr %nUsed3, align 8
  %cmp4 = icmp ult i32 %4, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %apObj, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %apObj, align 8
  %11 = load i32, ptr %n, align 4
  %idxprom7 = zext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds nuw ptr, ptr %10, i64 %idxprom7
  %12 = load ptr, ptr %arrayidx8, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %12)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %apObj, align 8
  %16 = load i32, ptr %n, align 4
  %idxprom9 = zext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds nuw ptr, ptr %15, i64 %idxprom9
  %17 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then6
  %18 = load i32, ptr %n, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %pCtx.addr, align 8
  %sVar12 = getelementptr inbounds nuw %struct.ph7_context, ptr %19, i32 0, i32 2
  %call13 = call i32 @SySetRelease(ptr noundef %sVar12)
  br label %if.end14

if.end14:                                         ; preds = %for.end, %entry
  %20 = load ptr, ptr %pCtx.addr, align 8
  %sChunk = getelementptr inbounds nuw %struct.ph7_context, ptr %20, i32 0, i32 3
  %nUsed15 = getelementptr inbounds nuw %struct.SySet, ptr %sChunk, i32 0, i32 2
  %21 = load i32, ptr %nUsed15, align 8
  %cmp16 = icmp ugt i32 %21, 0
  br i1 %cmp16, label %if.then17, label %if.end37

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %pCtx.addr, align 8
  %sChunk18 = getelementptr inbounds nuw %struct.ph7_context, ptr %22, i32 0, i32 3
  %pBase19 = getelementptr inbounds nuw %struct.SySet, ptr %sChunk18, i32 0, i32 1
  %23 = load ptr, ptr %pBase19, align 8
  store ptr %23, ptr %aAux, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %if.then17
  %24 = load i32, ptr %n, align 4
  %25 = load ptr, ptr %pCtx.addr, align 8
  %sChunk21 = getelementptr inbounds nuw %struct.ph7_context, ptr %25, i32 0, i32 3
  %nUsed22 = getelementptr inbounds nuw %struct.SySet, ptr %sChunk21, i32 0, i32 2
  %26 = load i32, ptr %nUsed22, align 8
  %cmp23 = icmp ult i32 %24, %26
  br i1 %cmp23, label %for.body24, label %for.end34

for.body24:                                       ; preds = %for.cond20
  %27 = load ptr, ptr %aAux, align 8
  %28 = load i32, ptr %n, align 4
  %idxprom25 = zext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %27, i64 %idxprom25
  %pAuxData = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %arrayidx26, i32 0, i32 0
  %29 = load ptr, ptr %pAuxData, align 8
  store ptr %29, ptr %pChunk, align 8
  %30 = load ptr, ptr %pChunk, align 8
  %tobool = icmp ne ptr %30, null
  br i1 %tobool, label %if.then27, label %if.end31

if.then27:                                        ; preds = %for.body24
  %31 = load ptr, ptr %pCtx.addr, align 8
  %pVm28 = getelementptr inbounds nuw %struct.ph7_context, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pVm28, align 8
  %sAllocator29 = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pChunk, align 8
  %call30 = call i32 @SyMemBackendFree(ptr noundef %sAllocator29, ptr noundef %33)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %for.body24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %34 = load i32, ptr %n, align 4
  %inc33 = add i32 %34, 1
  store i32 %inc33, ptr %n, align 4
  br label %for.cond20, !llvm.loop !8

for.end34:                                        ; preds = %for.cond20
  %35 = load ptr, ptr %pCtx.addr, align 8
  %sChunk35 = getelementptr inbounds nuw %struct.ph7_context, ptr %35, i32 0, i32 3
  %call36 = call i32 @SySetRelease(ptr noundef %sChunk35)
  br label %if.end37

if.end37:                                         ; preds = %for.end34, %if.end14
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
