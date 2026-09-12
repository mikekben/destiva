; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @ph7_object_get_class_name(ptr noundef %pObject, ptr noundef %pLength) #0 {
entry:
  %retval = alloca ptr, align 8
  %pObject.addr = alloca ptr, align 8
  %pLength.addr = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  store ptr %pObject, ptr %pObject.addr, align 8
  store ptr %pLength, ptr %pLength.addr, align 8
  %0 = load ptr, ptr %pLength.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pLength.addr, align 8
  store i32 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pObject.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags, align 8
  %and = and i32 %3, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pObject.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %x, align 8
  %pClass3 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pClass3, align 8
  store ptr %6, ptr %pClass, align 8
  %7 = load ptr, ptr %pLength.addr, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  %8 = load ptr, ptr %pClass, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %8, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %9 = load i32, ptr %nByte, align 8
  %10 = load ptr, ptr %pLength.addr, align 8
  store i32 %9, ptr %10, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end2
  %11 = load ptr, ptr %pClass, align 8
  %sName7 = getelementptr inbounds nuw %struct.ph7_class, ptr %11, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName7, i32 0, i32 0
  %12 = load ptr, ptr %zString, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then1
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
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
