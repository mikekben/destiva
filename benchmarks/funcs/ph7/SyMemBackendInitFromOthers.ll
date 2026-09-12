; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemBackendInitFromOthers(ptr noundef %pBackend, ptr noundef %pMethods, ptr noundef %xMemErr, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %pMethods.addr = alloca ptr, align 8
  %xMemErr.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pMethods, ptr %pMethods.addr, align 8
  store ptr %xMemErr, ptr %xMemErr.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pMethods.addr, align 8
  %xAlloc = getelementptr inbounds nuw %struct.SyMemMethods, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %xAlloc, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pMethods.addr, align 8
  %xRealloc = getelementptr inbounds nuw %struct.SyMemMethods, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %xRealloc, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pMethods.addr, align 8
  %xFree = getelementptr inbounds nuw %struct.SyMemMethods, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %xFree, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %pMethods.addr, align 8
  %xChunkSize = getelementptr inbounds nuw %struct.SyMemMethods, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %xChunkSize, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %pBackend.addr, align 8
  call void @SyZero(ptr noundef %8, i32 noundef 184)
  %9 = load ptr, ptr %xMemErr.addr, align 8
  %10 = load ptr, ptr %pBackend.addr, align 8
  %xMemError = getelementptr inbounds nuw %struct.SyMemBackend, ptr %10, i32 0, i32 4
  store ptr %9, ptr %xMemError, align 8
  %11 = load ptr, ptr %pUserData.addr, align 8
  %12 = load ptr, ptr %pBackend.addr, align 8
  %pUserData6 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %12, i32 0, i32 5
  store ptr %11, ptr %pUserData6, align 8
  %13 = load ptr, ptr %pMethods.addr, align 8
  %14 = load ptr, ptr %pBackend.addr, align 8
  %pMethods7 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %14, i32 0, i32 1
  store ptr %13, ptr %pMethods7, align 8
  %15 = load ptr, ptr %pBackend.addr, align 8
  %pMethods8 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pMethods8, align 8
  %xInit = getelementptr inbounds nuw %struct.SyMemMethods, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %xInit, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end
  %18 = load ptr, ptr %pBackend.addr, align 8
  %pMethods10 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pMethods10, align 8
  %xInit11 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %xInit11, align 8
  %21 = load ptr, ptr %pBackend.addr, align 8
  %pMethods12 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pMethods12, align 8
  %pUserData13 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %pUserData13, align 8
  %call = call i32 %20(ptr noundef %23)
  %cmp14 = icmp ne i32 0, %call
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then9
  store i32 -10, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then15, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
