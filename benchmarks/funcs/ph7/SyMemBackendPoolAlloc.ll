; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMutexMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @SyMemBackendPoolAlloc(ptr noundef %pBackend, i32 noundef %nByte) #0 {
entry:
  %pBackend.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pChunk = alloca ptr, align 8
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMutexMethods, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pBackend.addr, align 8
  %pMutex = getelementptr inbounds nuw %struct.SyMemBackend, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %pMutex, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods3 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMutexMethods3, align 8
  %xEnter = getelementptr inbounds nuw %struct.SyMutexMethods, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %xEnter, align 8
  %7 = load ptr, ptr %pBackend.addr, align 8
  %pMutex4 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pMutex4, align 8
  call void %6(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %pBackend.addr, align 8
  %10 = load i32, ptr %nByte.addr, align 4
  %call = call ptr @MemBackendPoolAlloc(ptr noundef %9, i32 noundef %10)
  store ptr %call, ptr %pChunk, align 8
  %11 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods6 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pMutexMethods6, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %pBackend.addr, align 8
  %pMutex9 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %13, i32 0, i32 6
  %14 = load ptr, ptr %pMutex9, align 8
  %tobool10 = icmp ne ptr %14, null
  br i1 %tobool10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then8
  %15 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods12 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pMutexMethods12, align 8
  %xLeave = getelementptr inbounds nuw %struct.SyMutexMethods, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %xLeave, align 8
  %18 = load ptr, ptr %pBackend.addr, align 8
  %pMutex13 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %pMutex13, align 8
  call void %17(ptr noundef %19)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end5
  %20 = load ptr, ptr %pChunk, align 8
  ret ptr %20
}

; Function Attrs: nounwind uwtable
declare hidden ptr @MemBackendPoolAlloc(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
