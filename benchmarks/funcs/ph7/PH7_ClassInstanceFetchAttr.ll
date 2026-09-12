; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_ClassInstanceFetchAttr(ptr noundef %pThis, ptr noundef %pName) #0 {
entry:
  %retval = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  %0 = load ptr, ptr %pThis.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hAttr, ptr noundef %2, i32 noundef %4)
  store ptr %call, ptr %pEntry, align 8
  %5 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pUserData, align 8
  store ptr %7, ptr %pAttr, align 8
  %8 = load ptr, ptr %pAttr, align 8
  %pAttr1 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pAttr1, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iFlags, align 8
  %and = and i32 %10, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %11 = load ptr, ptr %pThis.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm, align 8
  %13 = load ptr, ptr %pAttr, align 8
  %call4 = call ptr @ExtractClassAttrValue(ptr noundef %12, ptr noundef %13)
  store ptr %call4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

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
