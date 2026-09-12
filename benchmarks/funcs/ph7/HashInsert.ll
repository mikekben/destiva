; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @HashInsert(ptr noundef %pHash, ptr noundef %pEntry) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %iBucket = alloca i32, align 4
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %nHash, align 8
  %2 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %nBucketSize, align 8
  %sub = sub i32 %3, 1
  %and = and i32 %1, %sub
  store i32 %and, ptr %iBucket, align 4
  %4 = load ptr, ptr %pHash.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.SyHash, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %apBucket, align 8
  %6 = load i32, ptr %iBucket, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %8, i32 0, i32 7
  store ptr %7, ptr %pNextCollide, align 8
  %9 = load ptr, ptr %pHash.addr, align 8
  %apBucket1 = getelementptr inbounds nuw %struct.SyHash, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %apBucket1, align 8
  %11 = load i32, ptr %iBucket, align 4
  %idxprom2 = zext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds nuw ptr, ptr %10, i64 %idxprom2
  %12 = load ptr, ptr %arrayidx3, align 8
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %pEntry.addr, align 8
  %14 = load ptr, ptr %pHash.addr, align 8
  %apBucket4 = getelementptr inbounds nuw %struct.SyHash, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %apBucket4, align 8
  %16 = load i32, ptr %iBucket, align 4
  %idxprom5 = zext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds nuw ptr, ptr %15, i64 %idxprom5
  %17 = load ptr, ptr %arrayidx6, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %17, i32 0, i32 8
  store ptr %13, ptr %pPrevCollide, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %pEntry.addr, align 8
  %19 = load ptr, ptr %pHash.addr, align 8
  %apBucket7 = getelementptr inbounds nuw %struct.SyHash, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %apBucket7, align 8
  %21 = load i32, ptr %iBucket, align 4
  %idxprom8 = zext i32 %21 to i64
  %arrayidx9 = getelementptr inbounds nuw ptr, ptr %20, i64 %idxprom8
  store ptr %18, ptr %arrayidx9, align 8
  %22 = load ptr, ptr %pHash.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyHash, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pList, align 8
  %cmp10 = icmp eq ptr %23, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %24 = load ptr, ptr %pEntry.addr, align 8
  %25 = load ptr, ptr %pHash.addr, align 8
  %pList12 = getelementptr inbounds nuw %struct.SyHash, ptr %25, i32 0, i32 3
  store ptr %24, ptr %pList12, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end
  %26 = load ptr, ptr %pHash.addr, align 8
  %pList13 = getelementptr inbounds nuw %struct.SyHash, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pList13, align 8
  %28 = load ptr, ptr %pEntry.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %28, i32 0, i32 5
  store ptr %27, ptr %pNext, align 8
  %29 = load ptr, ptr %pEntry.addr, align 8
  %30 = load ptr, ptr %pHash.addr, align 8
  %pList14 = getelementptr inbounds nuw %struct.SyHash, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %pList14, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %31, i32 0, i32 6
  store ptr %29, ptr %pPrev, align 8
  %32 = load ptr, ptr %pEntry.addr, align 8
  %33 = load ptr, ptr %pHash.addr, align 8
  %pList15 = getelementptr inbounds nuw %struct.SyHash, ptr %33, i32 0, i32 3
  store ptr %32, ptr %pList15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %34 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %nEntry, align 8
  %cmp17 = icmp eq i32 %35, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %36 = load ptr, ptr %pHash.addr, align 8
  %pList19 = getelementptr inbounds nuw %struct.SyHash, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pList19, align 8
  %38 = load ptr, ptr %pHash.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.SyHash, ptr %38, i32 0, i32 4
  store ptr %37, ptr %pCurrent, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %39 = load ptr, ptr %pHash.addr, align 8
  %nEntry21 = getelementptr inbounds nuw %struct.SyHash, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %nEntry21, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %nEntry21, align 8
  ret i32 0
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
