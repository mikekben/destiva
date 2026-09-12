; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashDeleteEntry(ptr noundef %pHash, ptr noundef %pEntry, ptr noundef %ppUserData) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %ppUserData.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %ppUserData, ptr %ppUserData.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pPrevCollide, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %pNextCollide, align 8
  %4 = load ptr, ptr %pHash.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.SyHash, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %apBucket, align 8
  %6 = load ptr, ptr %pEntry.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %nHash, align 8
  %8 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %nBucketSize, align 8
  %sub = sub i32 %9, 1
  %and = and i32 %7, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  store ptr %3, ptr %arrayidx, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide1 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %10, i32 0, i32 7
  %11 = load ptr, ptr %pNextCollide1, align 8
  %12 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide2 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %pPrevCollide2, align 8
  %pNextCollide3 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %13, i32 0, i32 7
  store ptr %11, ptr %pNextCollide3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide4 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %pNextCollide4, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %16 = load ptr, ptr %pEntry.addr, align 8
  %pPrevCollide6 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %pPrevCollide6, align 8
  %18 = load ptr, ptr %pEntry.addr, align 8
  %pNextCollide7 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %18, i32 0, i32 7
  %19 = load ptr, ptr %pNextCollide7, align 8
  %pPrevCollide8 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %19, i32 0, i32 8
  store ptr %17, ptr %pPrevCollide8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %20 = load ptr, ptr %pHash.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyHash, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pList, align 8
  %22 = load ptr, ptr %pEntry.addr, align 8
  %cmp10 = icmp eq ptr %21, %22
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %23 = load ptr, ptr %pHash.addr, align 8
  %pList12 = getelementptr inbounds nuw %struct.SyHash, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pList12, align 8
  %pNext = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %24, i32 0, i32 5
  %25 = load ptr, ptr %pNext, align 8
  %26 = load ptr, ptr %pHash.addr, align 8
  %pList13 = getelementptr inbounds nuw %struct.SyHash, ptr %26, i32 0, i32 3
  store ptr %25, ptr %pList13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %27 = load ptr, ptr %pEntry.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %pPrev, align 8
  %tobool15 = icmp ne ptr %28, null
  br i1 %tobool15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end14
  %29 = load ptr, ptr %pEntry.addr, align 8
  %pNext17 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %pNext17, align 8
  %31 = load ptr, ptr %pEntry.addr, align 8
  %pPrev18 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %pPrev18, align 8
  %pNext19 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %32, i32 0, i32 5
  store ptr %30, ptr %pNext19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14
  %33 = load ptr, ptr %pEntry.addr, align 8
  %pNext21 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %pNext21, align 8
  %tobool22 = icmp ne ptr %34, null
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  %35 = load ptr, ptr %pEntry.addr, align 8
  %pPrev24 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %35, i32 0, i32 6
  %36 = load ptr, ptr %pPrev24, align 8
  %37 = load ptr, ptr %pEntry.addr, align 8
  %pNext25 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %pNext25, align 8
  %pPrev26 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %38, i32 0, i32 6
  store ptr %36, ptr %pPrev26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end20
  %39 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %39, i32 0, i32 5
  %40 = load i32, ptr %nEntry, align 8
  %dec = add i32 %40, -1
  store i32 %dec, ptr %nEntry, align 8
  %41 = load ptr, ptr %ppUserData.addr, align 8
  %tobool28 = icmp ne ptr %41, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  %42 = load ptr, ptr %pEntry.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pUserData, align 8
  %44 = load ptr, ptr %ppUserData.addr, align 8
  store ptr %43, ptr %44, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %45 = load ptr, ptr %pHash.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyHash, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pAllocator, align 8
  %47 = load ptr, ptr %pEntry.addr, align 8
  %call = call i32 @SyMemBackendPoolFree(ptr noundef %46, ptr noundef %47)
  store i32 %call, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  ret i32 %48
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
