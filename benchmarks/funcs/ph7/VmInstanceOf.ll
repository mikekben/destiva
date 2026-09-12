; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @VmInstanceOf(ptr noundef %pThis, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pThis.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  %0 = load ptr, ptr %pThis.addr, align 8
  %1 = load ptr, ptr %pClass.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pClass.addr, align 8
  %3 = load ptr, ptr %pThis.addr, align 8
  %aInterface = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 7
  %call = call i32 @VmQueryInterfaceSet(ptr noundef %2, ptr noundef %aInterface)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %pThis.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.ph7_class, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pBase, align 8
  store ptr %6, ptr %pParent, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end2
  %7 = load ptr, ptr %pParent, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pParent, align 8
  %9 = load ptr, ptr %pClass.addr, align 8
  %cmp4 = icmp eq ptr %8, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %while.body
  %10 = load ptr, ptr %pClass.addr, align 8
  %11 = load ptr, ptr %pParent, align 8
  %aInterface7 = getelementptr inbounds nuw %struct.ph7_class, ptr %11, i32 0, i32 7
  %call8 = call i32 @VmQueryInterfaceSet(ptr noundef %10, ptr noundef %aInterface7)
  store i32 %call8, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %13 = load ptr, ptr %pParent, align 8
  %pBase12 = getelementptr inbounds nuw %struct.ph7_class, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pBase12, align 8
  store ptr %14, ptr %pParent, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then5, %if.then1, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmQueryInterfaceSet(ptr noundef, ptr noundef) #0

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
