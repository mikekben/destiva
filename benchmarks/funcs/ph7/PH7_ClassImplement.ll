; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassImplement(ptr noundef %pMain, ptr noundef %pInterface) #0 {
entry:
  %retval = alloca i32, align 4
  %pMain.addr = alloca ptr, align 8
  %pInterface.addr = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pMain, ptr %pMain.addr, align 8
  store ptr %pInterface, ptr %pInterface.addr, align 8
  %0 = load ptr, ptr %pInterface.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 4
  %call = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %1 = load ptr, ptr %pInterface.addr, align 8
  %hAttr1 = getelementptr inbounds nuw %struct.ph7_class, ptr %1, i32 0, i32 4
  %call2 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr1)
  store ptr %call2, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pUserData, align 8
  store ptr %3, ptr %pAttr, align 8
  %4 = load ptr, ptr %pAttr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %4, i32 0, i32 0
  store ptr %sName, ptr %pName, align 8
  %5 = load ptr, ptr %pMain.addr, align 8
  %hAttr3 = getelementptr inbounds nuw %struct.ph7_class, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zString, align 8
  %8 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte, align 8
  %call4 = call ptr @SyHashGet(ptr noundef %hAttr3, ptr noundef %7, i32 noundef %9)
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then, label %if.end12

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %pMain.addr, align 8
  %hAttr6 = getelementptr inbounds nuw %struct.ph7_class, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pName, align 8
  %zString7 = getelementptr inbounds nuw %struct.SyString, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zString7, align 8
  %13 = load ptr, ptr %pName, align 8
  %nByte8 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nByte8, align 8
  %15 = load ptr, ptr %pAttr, align 8
  %call9 = call i32 @SyHashInsert(ptr noundef %hAttr6, ptr noundef %12, i32 noundef %14, ptr noundef %15)
  store i32 %call9, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %16, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %pMain.addr, align 8
  %aInterface = getelementptr inbounds nuw %struct.ph7_class, ptr %18, i32 0, i32 7
  %call13 = call i32 @SySetPut(ptr noundef %aInterface, ptr noundef %pInterface.addr)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then11
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
