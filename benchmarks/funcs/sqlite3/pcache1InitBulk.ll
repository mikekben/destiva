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
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @pcache1InitBulk(ptr noundef %pCache) #0 {
entry:
  %retval = alloca i32, align 4
  %pCache.addr = alloca ptr, align 8
  %szBulk = alloca i64, align 8
  %zBulk = alloca ptr, align 8
  %nBulk = alloca i32, align 4
  %pX = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 3), align 8
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pCache.addr, align 8
  %nMax = getelementptr inbounds nuw %struct.PCache1, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %nMax, align 4
  %cmp1 = icmp ult i32 %2, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  call void @sqlite3BeginBenignMalloc()
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 3), align 8
  %cmp4 = icmp sgt i32 %3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %pCache.addr, align 8
  %szAlloc = getelementptr inbounds nuw %struct.PCache1, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %szAlloc, align 8
  %conv = sext i32 %5 to i64
  %6 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 3), align 8
  %conv6 = sext i32 %6 to i64
  %mul = mul nsw i64 %conv, %conv6
  store i64 %mul, ptr %szBulk, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end3
  %7 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 3), align 8
  %conv7 = sext i32 %7 to i64
  %mul8 = mul nsw i64 -1024, %conv7
  store i64 %mul8, ptr %szBulk, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %8 = load i64, ptr %szBulk, align 8
  %9 = load ptr, ptr %pCache.addr, align 8
  %szAlloc10 = getelementptr inbounds nuw %struct.PCache1, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %szAlloc10, align 8
  %conv11 = sext i32 %10 to i64
  %11 = load ptr, ptr %pCache.addr, align 8
  %nMax12 = getelementptr inbounds nuw %struct.PCache1, ptr %11, i32 0, i32 7
  %12 = load i32, ptr %nMax12, align 4
  %conv13 = zext i32 %12 to i64
  %mul14 = mul nsw i64 %conv11, %conv13
  %cmp15 = icmp sgt i64 %8, %mul14
  br i1 %cmp15, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end9
  %13 = load ptr, ptr %pCache.addr, align 8
  %szAlloc18 = getelementptr inbounds nuw %struct.PCache1, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %szAlloc18, align 8
  %conv19 = sext i32 %14 to i64
  %15 = load ptr, ptr %pCache.addr, align 8
  %nMax20 = getelementptr inbounds nuw %struct.PCache1, ptr %15, i32 0, i32 7
  %16 = load i32, ptr %nMax20, align 4
  %conv21 = zext i32 %16 to i64
  %mul22 = mul nsw i64 %conv19, %conv21
  store i64 %mul22, ptr %szBulk, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end9
  %17 = load i64, ptr %szBulk, align 8
  %call = call ptr @sqlite3Malloc(i64 noundef %17)
  %18 = load ptr, ptr %pCache.addr, align 8
  %pBulk = getelementptr inbounds nuw %struct.PCache1, ptr %18, i32 0, i32 16
  store ptr %call, ptr %pBulk, align 8
  store ptr %call, ptr %zBulk, align 8
  call void @sqlite3EndBenignMalloc()
  %19 = load ptr, ptr %zBulk, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end23
  %20 = load ptr, ptr %zBulk, align 8
  %call25 = call i32 @sqlite3MallocSize(ptr noundef %20)
  %21 = load ptr, ptr %pCache.addr, align 8
  %szAlloc26 = getelementptr inbounds nuw %struct.PCache1, ptr %21, i32 0, i32 4
  %22 = load i32, ptr %szAlloc26, align 8
  %div = sdiv i32 %call25, %22
  store i32 %div, ptr %nBulk, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then24
  %23 = load ptr, ptr %zBulk, align 8
  %24 = load ptr, ptr %pCache.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.PCache1, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %szPage, align 8
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  store ptr %arrayidx, ptr %pX, align 8
  %26 = load ptr, ptr %zBulk, align 8
  %27 = load ptr, ptr %pX, align 8
  %page = getelementptr inbounds nuw %struct.PgHdr1, ptr %27, i32 0, i32 0
  %pBuf = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page, i32 0, i32 0
  store ptr %26, ptr %pBuf, align 8
  %28 = load ptr, ptr %pX, align 8
  %arrayidx27 = getelementptr inbounds %struct.PgHdr1, ptr %28, i64 1
  %29 = load ptr, ptr %pX, align 8
  %page28 = getelementptr inbounds nuw %struct.PgHdr1, ptr %29, i32 0, i32 0
  %pExtra = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page28, i32 0, i32 1
  store ptr %arrayidx27, ptr %pExtra, align 8
  %30 = load ptr, ptr %pX, align 8
  %isBulkLocal = getelementptr inbounds nuw %struct.PgHdr1, ptr %30, i32 0, i32 2
  store i16 1, ptr %isBulkLocal, align 4
  %31 = load ptr, ptr %pX, align 8
  %isAnchor = getelementptr inbounds nuw %struct.PgHdr1, ptr %31, i32 0, i32 3
  store i16 0, ptr %isAnchor, align 2
  %32 = load ptr, ptr %pCache.addr, align 8
  %pFree = getelementptr inbounds nuw %struct.PCache1, ptr %32, i32 0, i32 15
  %33 = load ptr, ptr %pFree, align 8
  %34 = load ptr, ptr %pX, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %34, i32 0, i32 4
  store ptr %33, ptr %pNext, align 8
  %35 = load ptr, ptr %pX, align 8
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %35, i32 0, i32 7
  store ptr null, ptr %pLruPrev, align 8
  %36 = load ptr, ptr %pX, align 8
  %37 = load ptr, ptr %pCache.addr, align 8
  %pFree29 = getelementptr inbounds nuw %struct.PCache1, ptr %37, i32 0, i32 15
  store ptr %36, ptr %pFree29, align 8
  %38 = load ptr, ptr %pCache.addr, align 8
  %szAlloc30 = getelementptr inbounds nuw %struct.PCache1, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %szAlloc30, align 8
  %40 = load ptr, ptr %zBulk, align 8
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds i8, ptr %40, i64 %idx.ext
  store ptr %add.ptr, ptr %zBulk, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %41 = load i32, ptr %nBulk, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, ptr %nBulk, align 4
  %tobool31 = icmp ne i32 %dec, 0
  br i1 %tobool31, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end23
  %42 = load ptr, ptr %pCache.addr, align 8
  %pFree33 = getelementptr inbounds nuw %struct.PCache1, ptr %42, i32 0, i32 15
  %43 = load ptr, ptr %pFree33, align 8
  %cmp34 = icmp ne ptr %43, null
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then2, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
