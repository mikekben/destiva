; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInstanceWalk(ptr noundef %pThis, ptr noundef %xWalk, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pThis.addr = alloca ptr, align 8
  %xWalk.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sValue = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %xWalk, ptr %xWalk.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pThis.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 2
  %call = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  %1 = load ptr, ptr %pThis.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %call1 = call i32 @PH7_MemObjInit(ptr noundef %2, ptr noundef %sValue)
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %3 = load ptr, ptr %pThis.addr, align 8
  %hAttr2 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %3, i32 0, i32 2
  %call3 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr2)
  store ptr %call3, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pEntry, align 8
  %pUserData4 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pUserData4, align 8
  store ptr %5, ptr %pAttr, align 8
  %6 = load ptr, ptr %pThis.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm5, align 8
  %8 = load ptr, ptr %pAttr, align 8
  %call6 = call ptr @ExtractClassAttrValue(ptr noundef %7, ptr noundef %8)
  store ptr %call6, ptr %pValue, align 8
  %9 = load ptr, ptr %pValue, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %pValue, align 8
  %call7 = call i32 @PH7_MemObjLoad(ptr noundef %10, ptr noundef %sValue)
  %11 = load ptr, ptr %xWalk.addr, align 8
  %12 = load ptr, ptr %pAttr, align 8
  %pAttr8 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pAttr8, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %13, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %14 = load ptr, ptr %zString, align 8
  %15 = load ptr, ptr %pUserData.addr, align 8
  %call9 = call i32 %11(ptr noundef %14, ptr noundef %sValue, ptr noundef %15)
  store i32 %call9, ptr %rc, align 4
  %call10 = call i32 @PH7_MemObjRelease(ptr noundef %sValue)
  %16 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %16, 0
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then12
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @ExtractClassAttrValue(ptr noundef, ptr noundef) #0

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
