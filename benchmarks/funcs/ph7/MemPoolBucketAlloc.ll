; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden ptr @MemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @MemPoolBucketAlloc(ptr noundef %pBackend, i32 noundef %nBucket) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %nBucket.addr = alloca i32, align 4
  %zBucket = alloca ptr, align 8
  %zBucketEnd = alloca ptr, align 8
  %pHeader = alloca ptr, align 8
  %nBucketSize = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store i32 %nBucket, ptr %nBucket.addr, align 4
  %0 = load ptr, ptr %pBackend.addr, align 8
  %call = call ptr @MemBackendAlloc(ptr noundef %0, i32 noundef 32768)
  store ptr %call, ptr %zBucket, align 8
  %1 = load ptr, ptr %zBucket, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zBucket, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 32768
  store ptr %arrayidx, ptr %zBucketEnd, align 8
  %3 = load i32, ptr %nBucket.addr, align 4
  %add = add i32 %3, 3
  %shl = shl i32 1, %add
  store i32 %shl, ptr %nBucketSize, align 4
  %4 = load ptr, ptr %zBucket, align 8
  store ptr %4, ptr %pHeader, align 8
  %5 = load ptr, ptr %pBackend.addr, align 8
  %apPool = getelementptr inbounds nuw %struct.SyMemBackend, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %nBucket.addr, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx1 = getelementptr inbounds nuw [15 x ptr], ptr %apPool, i64 0, i64 %idxprom
  store ptr %4, ptr %arrayidx1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %if.end
  %7 = load ptr, ptr %zBucket, align 8
  %8 = load i32, ptr %nBucketSize, align 4
  %idxprom2 = zext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %7, i64 %idxprom2
  %9 = load ptr, ptr %zBucketEnd, align 8
  %cmp4 = icmp uge ptr %arrayidx3, %9
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.cond
  br label %for.end

if.end6:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zBucket, align 8
  %11 = load i32, ptr %nBucketSize, align 4
  %idxprom7 = zext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %10, i64 %idxprom7
  %12 = load ptr, ptr %pHeader, align 8
  store ptr %arrayidx8, ptr %12, align 8
  %13 = load ptr, ptr %pHeader, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %pHeader, align 8
  %15 = load i32, ptr %nBucketSize, align 4
  %16 = load ptr, ptr %zBucket, align 8
  %idx.ext = zext i32 %15 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %16, i64 %idx.ext
  store ptr %add.ptr, ptr %zBucket, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then5
  %17 = load ptr, ptr %pHeader, align 8
  store ptr null, ptr %17, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
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
