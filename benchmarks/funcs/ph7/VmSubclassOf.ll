; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmQueryInterfaceSet(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmSubclassOf(ptr noundef %pClass, ptr noundef %pBase) #0 {
entry:
  %retval = alloca i32, align 4
  %pClass.addr = alloca ptr, align 8
  %pBase.addr = alloca ptr, align 8
  %pInterface = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pClass, ptr %pClass.addr, align 8
  store ptr %pBase, ptr %pBase.addr, align 8
  %0 = load ptr, ptr %pClass.addr, align 8
  %aInterface = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 7
  store ptr %aInterface, ptr %pInterface, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %pClass.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %2, i32 0, i32 2
  store ptr %sName, ptr %pName, align 8
  %3 = load ptr, ptr %pBase.addr, align 8
  %hDerived = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString, align 8
  %6 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hDerived, ptr noundef %5, i32 noundef %7)
  store ptr %call, ptr %pEntry, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %pClass.addr, align 8
  %pBase2 = getelementptr inbounds nuw %struct.ph7_class, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pBase2, align 8
  store ptr %10, ptr %pClass.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %pBase.addr, align 8
  %12 = load ptr, ptr %pInterface, align 8
  %call3 = call i32 @VmQueryInterfaceSet(ptr noundef %11, ptr noundef %12)
  store i32 %call3, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool4 = icmp ne i32 %13, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
