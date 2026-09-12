; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.SyMemHeader = type { ptr }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

; Function Attrs: nounwind uwtable
define hidden ptr @MemBackendPoolAlloc(ptr noundef %pBackend, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pBackend.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pBucket = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %nBucketSize = alloca i32, align 4
  %nBucket = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load i32, ptr %nByte.addr, align 4
  %conv = zext i32 %0 to i64
  %add = add i64 %conv, 8
  %cmp = icmp uge i64 %add, 32768
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBackend.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %conv2 = zext i32 %2 to i64
  %add3 = add i64 %conv2, 8
  %conv4 = trunc i64 %add3 to i32
  %call = call ptr @MemBackendAlloc(ptr noundef %1, i32 noundef %conv4)
  store ptr %call, ptr %pBucket, align 8
  %3 = load ptr, ptr %pBucket, align 8
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %pBucket, align 8
  store i32 -559022081, ptr %4, align 8
  %5 = load ptr, ptr %pBucket, align 8
  %add.ptr = getelementptr inbounds %union.SyMemHeader, ptr %5, i64 1
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %entry
  store i32 0, ptr %nBucket, align 4
  store i32 8, ptr %nBucketSize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end8
  %6 = load i32, ptr %nByte.addr, align 4
  %conv9 = zext i32 %6 to i64
  %add10 = add i64 %conv9, 8
  %7 = load i32, ptr %nBucketSize, align 4
  %conv11 = zext i32 %7 to i64
  %cmp12 = icmp ugt i64 %add10, %conv11
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, ptr %nBucketSize, align 4
  %shl = shl i32 %8, 1
  store i32 %shl, ptr %nBucketSize, align 4
  %9 = load i32, ptr %nBucket, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %nBucket, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %pBackend.addr, align 8
  %apPool = getelementptr inbounds nuw %struct.SyMemBackend, ptr %10, i32 0, i32 8
  %11 = load i32, ptr %nBucket, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds nuw [15 x ptr], ptr %apPool, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %pBucket, align 8
  %13 = load ptr, ptr %pBucket, align 8
  %cmp14 = icmp eq ptr %13, null
  br i1 %cmp14, label %if.then16, label %if.end25

if.then16:                                        ; preds = %while.end
  %14 = load ptr, ptr %pBackend.addr, align 8
  %15 = load i32, ptr %nBucket, align 4
  %call17 = call i32 @MemPoolBucketAlloc(ptr noundef %14, i32 noundef %15)
  store i32 %call17, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then16
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.then16
  %17 = load ptr, ptr %pBackend.addr, align 8
  %apPool22 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %nBucket, align 4
  %idxprom23 = zext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds nuw [15 x ptr], ptr %apPool22, i64 0, i64 %idxprom23
  %19 = load ptr, ptr %arrayidx24, align 8
  store ptr %19, ptr %pBucket, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end21, %while.end
  %20 = load ptr, ptr %pBucket, align 8
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %pNext, align 8
  %22 = load ptr, ptr %pNext, align 8
  %23 = load ptr, ptr %pBackend.addr, align 8
  %apPool26 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %nBucket, align 4
  %idxprom27 = zext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds nuw [15 x ptr], ptr %apPool26, i64 0, i64 %idxprom27
  store ptr %22, ptr %arrayidx28, align 8
  %25 = load i32, ptr %nBucket, align 4
  %or = or i32 -559087616, %25
  %26 = load ptr, ptr %pBucket, align 8
  store i32 %or, ptr %26, align 8
  %27 = load ptr, ptr %pBucket, align 8
  %arrayidx29 = getelementptr inbounds %union.SyMemHeader, ptr %27, i64 1
  store ptr %arrayidx29, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.then20, %if.end, %if.then7
  %28 = load ptr, ptr %retval, align 8
  ret ptr %28
}

; Function Attrs: nounwind uwtable
declare hidden ptr @MemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemPoolBucketAlloc(ptr noundef, i32 noundef) #0

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
