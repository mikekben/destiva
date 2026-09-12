; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMutexMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemBackendInitFromParent(ptr noundef %pBackend, ptr noundef %pParent) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %pParent.addr = alloca ptr, align 8
  %bInheritMutex = alloca i8, align 1
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  %0 = load ptr, ptr %pBackend.addr, align 8
  call void @SyZero(ptr noundef %0, i32 noundef 184)
  %1 = load ptr, ptr %pParent.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pMethods, align 8
  %3 = load ptr, ptr %pBackend.addr, align 8
  %pMethods1 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %3, i32 0, i32 1
  store ptr %2, ptr %pMethods1, align 8
  %4 = load ptr, ptr %pParent.addr, align 8
  %xMemError = getelementptr inbounds nuw %struct.SyMemBackend, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %xMemError, align 8
  %6 = load ptr, ptr %pBackend.addr, align 8
  %xMemError2 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %6, i32 0, i32 4
  store ptr %5, ptr %xMemError2, align 8
  %7 = load ptr, ptr %pParent.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyMemBackend, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %pUserData, align 8
  %9 = load ptr, ptr %pBackend.addr, align 8
  %pUserData3 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %9, i32 0, i32 5
  store ptr %8, ptr %pUserData3, align 8
  %10 = load ptr, ptr %pParent.addr, align 8
  %pMutexMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pMutexMethods, align 8
  %tobool = icmp ne ptr %11, null
  %12 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr %bInheritMutex, align 1
  %13 = load i8, ptr %bInheritMutex, align 1
  %tobool4 = icmp ne i8 %13, 0
  br i1 %tobool4, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pParent.addr, align 8
  %pMutexMethods5 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pMutexMethods5, align 8
  %16 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods6 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %16, i32 0, i32 0
  store ptr %15, ptr %pMutexMethods6, align 8
  %17 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods7 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pMutexMethods7, align 8
  %xNew = getelementptr inbounds nuw %struct.SyMutexMethods, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %xNew, align 8
  %call = call ptr %19(i32 noundef 1)
  %20 = load ptr, ptr %pBackend.addr, align 8
  %pMutex = getelementptr inbounds nuw %struct.SyMemBackend, ptr %20, i32 0, i32 6
  store ptr %call, ptr %pMutex, align 8
  %21 = load ptr, ptr %pBackend.addr, align 8
  %pMutex8 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %pMutex8, align 8
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  store i32 -23, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
