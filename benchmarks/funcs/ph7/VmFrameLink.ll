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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashLastEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmFrameLink(ptr noundef %pVm, ptr noundef %pName) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %pTarget = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nIdx = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr null, ptr %pEntry, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFrame1, align 8
  store ptr %1, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %4, i32 0, i32 8
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, 1
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParent3, align 8
  store ptr %8, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %pFrame, align 8
  store ptr %9, ptr %pTarget, align 8
  %10 = load ptr, ptr %pTarget, align 8
  %pParent4 = getelementptr inbounds nuw %struct.VmFrame, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParent4, align 8
  store ptr %11, ptr %pFrame, align 8
  br label %while.cond5

while.cond5:                                      ; preds = %if.end12, %while.end
  %12 = load ptr, ptr %pFrame, align 8
  %tobool6 = icmp ne ptr %12, null
  br i1 %tobool6, label %while.body7, label %while.end14

while.body7:                                      ; preds = %while.cond5
  %13 = load ptr, ptr %pFrame, align 8
  %iFlags8 = getelementptr inbounds nuw %struct.VmFrame, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iFlags8, align 8
  %and9 = and i32 %14, 1
  %cmp = icmp eq i32 %and9, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body7
  %15 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zString, align 8
  %18 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hVar, ptr noundef %17, i32 noundef %19)
  store ptr %call, ptr %pEntry, align 8
  %20 = load ptr, ptr %pEntry, align 8
  %tobool10 = icmp ne ptr %20, null
  br i1 %tobool10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  br label %while.end14

if.end:                                           ; preds = %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %while.body7
  %21 = load ptr, ptr %pFrame, align 8
  %pParent13 = getelementptr inbounds nuw %struct.VmFrame, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pParent13, align 8
  store ptr %22, ptr %pFrame, align 8
  br label %while.cond5, !llvm.loop !8

while.end14:                                      ; preds = %if.then11, %while.cond5
  %23 = load ptr, ptr %pEntry, align 8
  %cmp15 = icmp eq ptr %23, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end14
  store i32 -6, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.end14
  %24 = load ptr, ptr %pTarget, align 8
  %hVar18 = getelementptr inbounds nuw %struct.VmFrame, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %pEntry, align 8
  %pKey = getelementptr inbounds nuw %struct.SyHashEntry, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pKey, align 8
  %27 = load ptr, ptr %pEntry, align 8
  %nKeyLen = getelementptr inbounds nuw %struct.SyHashEntry, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nKeyLen, align 8
  %29 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %pUserData, align 8
  %call19 = call i32 @SyHashInsert(ptr noundef %hVar18, ptr noundef %26, i32 noundef %28, ptr noundef %30)
  store i32 %call19, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %31, 0
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end17
  %32 = load ptr, ptr %pEntry, align 8
  %pUserData22 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %pUserData22, align 8
  %34 = ptrtoint ptr %33 to i64
  %conv = trunc i64 %34 to i32
  store i32 %conv, ptr %nIdx, align 4
  %35 = load ptr, ptr %pVm.addr, align 8
  %36 = load i32, ptr %nIdx, align 4
  %37 = load ptr, ptr %pTarget, align 8
  %hVar23 = getelementptr inbounds nuw %struct.VmFrame, ptr %37, i32 0, i32 5
  %call24 = call ptr @SyHashLastEntry(ptr noundef %hVar23)
  %call25 = call i32 @PH7_VmRefObjInstall(ptr noundef %35, i32 noundef %36, ptr noundef %call24, ptr noundef null, i32 noundef 0)
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end17
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then16
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
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
