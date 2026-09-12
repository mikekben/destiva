; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.513 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.518 = external hidden unnamed_addr constant [2 x i8], align 1
@PH7_ClassInstanceDump.zInfinite = external hidden constant [43 x i8], align 16
@.str.519 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.520 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.521 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @ExtractClassAttrValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjDump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInstanceDump(ptr noundef %pOut, ptr noundef %pThis, i32 noundef %ShowType, i32 noundef %nTab, i32 noundef %nDepth) #0 {
entry:
  %retval = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %ShowType.addr = alloca i32, align 4
  %nTab.addr = alloca i32, align 4
  %nDepth.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %pVmAttr = alloca ptr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store i32 %ShowType, ptr %ShowType.addr, align 4
  store i32 %nTab, ptr %nTab.addr, align 4
  store i32 %nDepth, ptr %nDepth.addr, align 4
  %0 = load i32, ptr %nDepth.addr, align 4
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @SyBlobAppend(ptr noundef %1, ptr noundef @PH7_ClassInstanceDump.zInfinite, i32 noundef 42)
  %2 = load i32, ptr %ShowType.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %pOut.addr, align 8
  %call2 = call i32 @SyBlobAppend(ptr noundef %3, ptr noundef @.str.513, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -7, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  %4 = load i32, ptr %ShowType.addr, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %pOut.addr, align 8
  %call6 = call i32 @SyBlobAppend(ptr noundef %5, ptr noundef @.str.519, i32 noundef 7)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %6 = load ptr, ptr %pOut.addr, align 8
  %7 = load ptr, ptr %pThis.addr, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pClass, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %8, i32 0, i32 2
  %call8 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %6, ptr noundef @.str.520, ptr noundef %sName)
  %9 = load ptr, ptr %pOut.addr, align 8
  %call9 = call i32 @SyBlobAppend(ptr noundef %9, ptr noundef @.str.47, i32 noundef 1)
  %10 = load ptr, ptr %pThis.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %10, i32 0, i32 2
  %call10 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end7
  %11 = load ptr, ptr %pThis.addr, align 8
  %hAttr11 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %11, i32 0, i32 2
  %call12 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr11)
  store ptr %call12, ptr %pEntry, align 8
  %cmp13 = icmp ne ptr %call12, null
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pUserData, align 8
  store ptr %13, ptr %pVmAttr, align 8
  %14 = load ptr, ptr %pVmAttr, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %iFlags, align 8
  %and = and i32 %16, 3
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %while.body
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %nTab.addr, align 4
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pOut.addr, align 8
  %call17 = call i32 @SyBlobAppend(ptr noundef %19, ptr noundef @.str.61, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %pThis.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pVm, align 8
  %23 = load ptr, ptr %pVmAttr, align 8
  %call18 = call ptr @ExtractClassAttrValue(ptr noundef %22, ptr noundef %23)
  store ptr %call18, ptr %pValue, align 8
  %24 = load ptr, ptr %pValue, align 8
  %tobool19 = icmp ne ptr %24, null
  br i1 %tobool19, label %if.then20, label %if.end29

if.then20:                                        ; preds = %for.end
  %25 = load ptr, ptr %pOut.addr, align 8
  %26 = load ptr, ptr %pVmAttr, align 8
  %pAttr21 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pAttr21, align 8
  %sName22 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %27, i32 0, i32 0
  %call23 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %25, ptr noundef @.str.521, ptr noundef %sName22)
  %28 = load ptr, ptr %pOut.addr, align 8
  %call24 = call i32 @SyBlobAppend(ptr noundef %28, ptr noundef @.str.47, i32 noundef 1)
  %29 = load ptr, ptr %pOut.addr, align 8
  %30 = load ptr, ptr %pValue, align 8
  %31 = load i32, ptr %ShowType.addr, align 4
  %32 = load i32, ptr %nTab.addr, align 4
  %add = add nsw i32 %32, 1
  %33 = load i32, ptr %nDepth.addr, align 4
  %call25 = call i32 @PH7_MemObjDump(ptr noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %add, i32 noundef %33, i32 noundef 0)
  store i32 %call25, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %34, -7
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then20
  br label %while.end

if.end28:                                         ; preds = %if.then20
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then27, %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc35, %while.end
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %nTab.addr, align 4
  %cmp32 = icmp slt i32 %35, %36
  br i1 %cmp32, label %for.body33, label %for.end37

for.body33:                                       ; preds = %for.cond31
  %37 = load ptr, ptr %pOut.addr, align 8
  %call34 = call i32 @SyBlobAppend(ptr noundef %37, ptr noundef @.str.61, i32 noundef 1)
  br label %for.inc35

for.inc35:                                        ; preds = %for.body33
  %38 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond31, !llvm.loop !9

for.end37:                                        ; preds = %for.cond31
  %39 = load ptr, ptr %pOut.addr, align 8
  %call38 = call i32 @SyBlobAppend(ptr noundef %39, ptr noundef @.str.518, i32 noundef 1)
  %40 = load i32, ptr %rc, align 4
  store i32 %40, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end37, %if.end
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
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
!9 = distinct !{!9, !7}
