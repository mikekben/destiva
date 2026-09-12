; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCacheGlobal = type { %struct.PGroup, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@pcache1_g = external hidden global %struct.PCacheGlobal, align 8

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1Create(i32 noundef %szPage, i32 noundef %szExtra, i32 noundef %bPurgeable) #0 {
entry:
  %szPage.addr = alloca i32, align 4
  %szExtra.addr = alloca i32, align 4
  %bPurgeable.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  %sz = alloca i32, align 4
  store i32 %szPage, ptr %szPage.addr, align 4
  store i32 %szExtra, ptr %szExtra.addr, align 4
  store i32 %bPurgeable, ptr %bPurgeable.addr, align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 2), align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 80, %conv
  %add = add i64 88, %mul
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %sz, align 4
  %1 = load i32, ptr %sz, align 4
  %conv2 = sext i32 %1 to i64
  %call = call ptr @sqlite3MallocZero(i64 noundef %conv2)
  store ptr %call, ptr %pCache, align 8
  %2 = load ptr, ptr %pCache, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 2), align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %pCache, align 8
  %arrayidx = getelementptr inbounds %struct.PCache1, ptr %4, i64 1
  store ptr %arrayidx, ptr %pGroup, align 8
  %5 = load ptr, ptr %pGroup, align 8
  %mxPinned = getelementptr inbounds nuw %struct.PGroup, ptr %5, i32 0, i32 3
  store i32 10, ptr %mxPinned, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store ptr @pcache1_g, ptr %pGroup, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %6 = load ptr, ptr %pGroup, align 8
  %lru = getelementptr inbounds nuw %struct.PGroup, ptr %6, i32 0, i32 5
  %isAnchor = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru, i32 0, i32 3
  %7 = load i16, ptr %isAnchor, align 2
  %conv5 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv5, 0
  br i1 %cmp, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %pGroup, align 8
  %lru8 = getelementptr inbounds nuw %struct.PGroup, ptr %8, i32 0, i32 5
  %isAnchor9 = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru8, i32 0, i32 3
  store i16 1, ptr %isAnchor9, align 2
  %9 = load ptr, ptr %pGroup, align 8
  %lru10 = getelementptr inbounds nuw %struct.PGroup, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pGroup, align 8
  %lru11 = getelementptr inbounds nuw %struct.PGroup, ptr %10, i32 0, i32 5
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru11, i32 0, i32 6
  store ptr %lru10, ptr %pLruNext, align 8
  %11 = load ptr, ptr %pGroup, align 8
  %lru12 = getelementptr inbounds nuw %struct.PGroup, ptr %11, i32 0, i32 5
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru12, i32 0, i32 7
  store ptr %lru10, ptr %pLruPrev, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end
  %12 = load ptr, ptr %pGroup, align 8
  %13 = load ptr, ptr %pCache, align 8
  %pGroup14 = getelementptr inbounds nuw %struct.PCache1, ptr %13, i32 0, i32 0
  store ptr %12, ptr %pGroup14, align 8
  %14 = load i32, ptr %szPage.addr, align 4
  %15 = load ptr, ptr %pCache, align 8
  %szPage15 = getelementptr inbounds nuw %struct.PCache1, ptr %15, i32 0, i32 2
  store i32 %14, ptr %szPage15, align 8
  %16 = load i32, ptr %szExtra.addr, align 4
  %17 = load ptr, ptr %pCache, align 8
  %szExtra16 = getelementptr inbounds nuw %struct.PCache1, ptr %17, i32 0, i32 3
  store i32 %16, ptr %szExtra16, align 4
  %18 = load i32, ptr %szPage.addr, align 4
  %19 = load i32, ptr %szExtra.addr, align 4
  %add17 = add nsw i32 %18, %19
  %conv18 = sext i32 %add17 to i64
  %add19 = add i64 %conv18, 56
  %conv20 = trunc i64 %add19 to i32
  %20 = load ptr, ptr %pCache, align 8
  %szAlloc = getelementptr inbounds nuw %struct.PCache1, ptr %20, i32 0, i32 4
  store i32 %conv20, ptr %szAlloc, align 8
  %21 = load i32, ptr %bPurgeable.addr, align 4
  %tobool21 = icmp ne i32 %21, 0
  %22 = zext i1 %tobool21 to i64
  %cond = select i1 %tobool21, i32 1, i32 0
  %23 = load ptr, ptr %pCache, align 8
  %bPurgeable22 = getelementptr inbounds nuw %struct.PCache1, ptr %23, i32 0, i32 5
  store i32 %cond, ptr %bPurgeable22, align 4
  %24 = load ptr, ptr %pCache, align 8
  call void @pcache1ResizeHash(ptr noundef %24)
  %25 = load i32, ptr %bPurgeable.addr, align 4
  %tobool23 = icmp ne i32 %25, 0
  br i1 %tobool23, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.end13
  %26 = load ptr, ptr %pCache, align 8
  %nMin = getelementptr inbounds nuw %struct.PCache1, ptr %26, i32 0, i32 6
  store i32 10, ptr %nMin, align 8
  %27 = load ptr, ptr %pCache, align 8
  %nMin25 = getelementptr inbounds nuw %struct.PCache1, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %nMin25, align 8
  %29 = load ptr, ptr %pGroup, align 8
  %nMinPage = getelementptr inbounds nuw %struct.PGroup, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %nMinPage, align 4
  %add26 = add i32 %30, %28
  store i32 %add26, ptr %nMinPage, align 4
  %31 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %nMaxPage, align 8
  %add27 = add i32 %32, 10
  %33 = load ptr, ptr %pGroup, align 8
  %nMinPage28 = getelementptr inbounds nuw %struct.PGroup, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %nMinPage28, align 4
  %sub = sub i32 %add27, %34
  %35 = load ptr, ptr %pGroup, align 8
  %mxPinned29 = getelementptr inbounds nuw %struct.PGroup, ptr %35, i32 0, i32 3
  store i32 %sub, ptr %mxPinned29, align 8
  %36 = load ptr, ptr %pGroup, align 8
  %nPurgeable = getelementptr inbounds nuw %struct.PGroup, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %pCache, align 8
  %pnPurgeable = getelementptr inbounds nuw %struct.PCache1, ptr %37, i32 0, i32 1
  store ptr %nPurgeable, ptr %pnPurgeable, align 8
  br label %if.end32

if.else30:                                        ; preds = %if.end13
  %38 = load ptr, ptr %pCache, align 8
  %nPurgeableDummy = getelementptr inbounds nuw %struct.PCache1, ptr %38, i32 0, i32 10
  %39 = load ptr, ptr %pCache, align 8
  %pnPurgeable31 = getelementptr inbounds nuw %struct.PCache1, ptr %39, i32 0, i32 1
  store ptr %nPurgeableDummy, ptr %pnPurgeable31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then24
  %40 = load ptr, ptr %pCache, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %40, i32 0, i32 13
  %41 = load i32, ptr %nHash, align 4
  %cmp33 = icmp eq i32 %41, 0
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  %42 = load ptr, ptr %pCache, align 8
  call void @pcache1Destroy(ptr noundef %42)
  store ptr null, ptr %pCache, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %entry
  %43 = load ptr, ptr %pCache, align 8
  ret ptr %43
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1Destroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1ResizeHash(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
