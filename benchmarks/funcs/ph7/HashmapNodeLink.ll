; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden void @HashmapNodeLink(ptr noundef %pMap, ptr noundef %pNode, i32 noundef %nBucketIdx) #0 {
entry:
  %pMap.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %nBucketIdx.addr = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %nBucketIdx, ptr %nBucketIdx.addr, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %apBucket, align 8
  %2 = load i32, ptr %nBucketIdx.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pMap.addr, align 8
  %apBucket1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %apBucket1, align 8
  %6 = load i32, ptr %nBucketIdx.addr, align 4
  %idxprom2 = zext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom2
  %7 = load ptr, ptr %arrayidx3, align 8
  %8 = load ptr, ptr %pNode.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 8
  store ptr %7, ptr %pNextCollide, align 8
  %9 = load ptr, ptr %pNode.addr, align 8
  %10 = load ptr, ptr %pMap.addr, align 8
  %apBucket4 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %apBucket4, align 8
  %12 = load i32, ptr %nBucketIdx.addr, align 4
  %idxprom5 = zext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds nuw ptr, ptr %11, i64 %idxprom5
  %13 = load ptr, ptr %arrayidx6, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %13, i32 0, i32 9
  store ptr %9, ptr %pPrevCollide, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %pNode.addr, align 8
  %15 = load ptr, ptr %pMap.addr, align 8
  %apBucket7 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %apBucket7, align 8
  %17 = load i32, ptr %nBucketIdx.addr, align 4
  %idxprom8 = zext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds nuw ptr, ptr %16, i64 %idxprom8
  store ptr %14, ptr %arrayidx9, align 8
  %18 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pFirst, align 8
  %cmp10 = icmp eq ptr %19, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %20 = load ptr, ptr %pNode.addr, align 8
  %21 = load ptr, ptr %pMap.addr, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %21, i32 0, i32 3
  store ptr %20, ptr %pLast, align 8
  %22 = load ptr, ptr %pMap.addr, align 8
  %pFirst12 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %22, i32 0, i32 2
  store ptr %20, ptr %pFirst12, align 8
  %23 = load ptr, ptr %pNode.addr, align 8
  %24 = load ptr, ptr %pMap.addr, align 8
  %pCur = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %24, i32 0, i32 4
  store ptr %23, ptr %pCur, align 8
  br label %if.end22

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %pMap.addr, align 8
  %pLast13 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %pLast13, align 8
  %cmp14 = icmp eq ptr %26, null
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %27 = load ptr, ptr %pNode.addr, align 8
  %28 = load ptr, ptr %pMap.addr, align 8
  %pLast16 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %28, i32 0, i32 3
  store ptr %27, ptr %pLast16, align 8
  br label %if.end21

if.else17:                                        ; preds = %if.else
  %29 = load ptr, ptr %pMap.addr, align 8
  %pLast18 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pLast18, align 8
  %31 = load ptr, ptr %pNode.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 6
  store ptr %30, ptr %pNext, align 8
  %32 = load ptr, ptr %pNode.addr, align 8
  %33 = load ptr, ptr %pMap.addr, align 8
  %pLast19 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %pLast19, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %34, i32 0, i32 7
  store ptr %32, ptr %pPrev, align 8
  %35 = load ptr, ptr %pNode.addr, align 8
  %36 = load ptr, ptr %pMap.addr, align 8
  %pLast20 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %36, i32 0, i32 3
  store ptr %35, ptr %pLast20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  %37 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %nEntry, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %nEntry, align 4
  ret void
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
