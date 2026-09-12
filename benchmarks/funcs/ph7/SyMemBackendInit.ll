; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

@sOSAllocMethods = external hidden constant %struct.SyMemMethods, align 8

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemBackendInit(ptr noundef %pBackend, ptr noundef %xMemErr, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %xMemErr.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %xMemErr, ptr %xMemErr.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pBackend.addr, align 8
  call void @SyZero(ptr noundef %0, i32 noundef 184)
  %1 = load ptr, ptr %xMemErr.addr, align 8
  %2 = load ptr, ptr %pBackend.addr, align 8
  %xMemError = getelementptr inbounds nuw %struct.SyMemBackend, ptr %2, i32 0, i32 4
  store ptr %1, ptr %xMemError, align 8
  %3 = load ptr, ptr %pUserData.addr, align 8
  %4 = load ptr, ptr %pBackend.addr, align 8
  %pUserData1 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %4, i32 0, i32 5
  store ptr %3, ptr %pUserData1, align 8
  %5 = load ptr, ptr %pBackend.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %5, i32 0, i32 1
  store ptr @sOSAllocMethods, ptr %pMethods, align 8
  %6 = load ptr, ptr %pBackend.addr, align 8
  %pMethods2 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pMethods2, align 8
  %xInit = getelementptr inbounds nuw %struct.SyMemMethods, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %xInit, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pBackend.addr, align 8
  %pMethods3 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pMethods3, align 8
  %xInit4 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %xInit4, align 8
  %12 = load ptr, ptr %pBackend.addr, align 8
  %pMethods5 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pMethods5, align 8
  %pUserData6 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pUserData6, align 8
  %call = call i32 %11(ptr noundef %14)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
