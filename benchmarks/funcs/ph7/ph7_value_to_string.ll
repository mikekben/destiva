; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ph7_value_to_string(ptr noundef %pValue, ptr noundef %pLen) #0 {
entry:
  %retval = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  %0 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @PH7_MemObjToString(ptr noundef %0)
  %1 = load ptr, ptr %pValue.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %2 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pValue.addr, align 8
  %sBlob1 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 4
  %call2 = call i32 @SyBlobNullAppend(ptr noundef %sBlob1)
  %4 = load ptr, ptr %pLen.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %pValue.addr, align 8
  %sBlob4 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 4
  %nByte5 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob4, i32 0, i32 2
  %6 = load i32, ptr %nByte5, align 8
  %7 = load ptr, ptr %pLen.addr, align 8
  store i32 %6, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %8 = load ptr, ptr %pValue.addr, align 8
  %sBlob6 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob6, i32 0, i32 1
  %9 = load ptr, ptr %pBlob, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pLen.addr, align 8
  %tobool7 = icmp ne ptr %10, null
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.else
  %11 = load ptr, ptr %pLen.addr, align 8
  store i32 0, ptr %11, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else
  store ptr @.str.4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.end
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobNullAppend(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
