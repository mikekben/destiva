; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @ph7_object_fetch_attr(ptr noundef %pObject, ptr noundef %zAttr) #0 {
entry:
  %retval = alloca ptr, align 8
  %pObject.addr = alloca ptr, align 8
  %zAttr.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sAttr = alloca %struct.SyString, align 8
  store ptr %pObject, ptr %pObject.addr, align 8
  store ptr %zAttr, ptr %zAttr.addr, align 8
  %0 = load ptr, ptr %pObject.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %zAttr.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %zAttr.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sAttr, i32 0, i32 0
  store ptr %3, ptr %zString, align 8
  %4 = load ptr, ptr %zAttr.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %4)
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sAttr, i32 0, i32 1
  store i32 %call, ptr %nByte, align 8
  %5 = load ptr, ptr %pObject.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  %call2 = call ptr @PH7_ClassInstanceFetchAttr(ptr noundef %6, ptr noundef %sAttr)
  store ptr %call2, ptr %pValue, align 8
  %7 = load ptr, ptr %pValue, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassInstanceFetchAttr(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
