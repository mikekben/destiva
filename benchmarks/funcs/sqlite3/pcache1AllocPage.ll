; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1Alloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1AllocPage(ptr noundef %pCache, i32 noundef %benignMalloc) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCache.addr = alloca ptr, align 8
  %benignMalloc.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pPg = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %benignMalloc, ptr %benignMalloc.addr, align 4
  store ptr null, ptr %p, align 8
  %0 = load ptr, ptr %pCache.addr, align 8
  %pFree = getelementptr inbounds nuw %struct.PCache1, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %pFree, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pCache.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %2, i32 0, i32 12
  %3 = load i32, ptr %nPage, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCache.addr, align 8
  %call = call i32 @pcache1InitBulk(ptr noundef %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pCache.addr, align 8
  %pFree2 = getelementptr inbounds nuw %struct.PCache1, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %pFree2, align 8
  store ptr %6, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pNext, align 8
  %9 = load ptr, ptr %pCache.addr, align 8
  %pFree3 = getelementptr inbounds nuw %struct.PCache1, ptr %9, i32 0, i32 15
  store ptr %8, ptr %pFree3, align 8
  %10 = load ptr, ptr %p, align 8
  %pNext4 = getelementptr inbounds nuw %struct.PgHdr1, ptr %10, i32 0, i32 4
  store ptr null, ptr %pNext4, align 8
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load i32, ptr %benignMalloc.addr, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  call void @sqlite3BeginBenignMalloc()
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  %12 = load ptr, ptr %pCache.addr, align 8
  %szAlloc = getelementptr inbounds nuw %struct.PCache1, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %szAlloc, align 8
  %call7 = call ptr @pcache1Alloc(i32 noundef %13)
  store ptr %call7, ptr %pPg, align 8
  %14 = load ptr, ptr %pPg, align 8
  %15 = load ptr, ptr %pCache.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.PCache1, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %szPage, align 8
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %17 = load i32, ptr %benignMalloc.addr, align 4
  %tobool8 = icmp ne i32 %17, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @sqlite3EndBenignMalloc()
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %18 = load ptr, ptr %pPg, align 8
  %cmp11 = icmp eq ptr %18, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store ptr null, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end10
  %19 = load ptr, ptr %pPg, align 8
  %20 = load ptr, ptr %p, align 8
  %page = getelementptr inbounds nuw %struct.PgHdr1, ptr %20, i32 0, i32 0
  %pBuf = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page, i32 0, i32 0
  store ptr %19, ptr %pBuf, align 8
  %21 = load ptr, ptr %p, align 8
  %arrayidx14 = getelementptr inbounds %struct.PgHdr1, ptr %21, i64 1
  %22 = load ptr, ptr %p, align 8
  %page15 = getelementptr inbounds nuw %struct.PgHdr1, ptr %22, i32 0, i32 0
  %pExtra = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page15, i32 0, i32 1
  store ptr %arrayidx14, ptr %pExtra, align 8
  %23 = load ptr, ptr %p, align 8
  %isBulkLocal = getelementptr inbounds nuw %struct.PgHdr1, ptr %23, i32 0, i32 2
  store i16 0, ptr %isBulkLocal, align 4
  %24 = load ptr, ptr %p, align 8
  %isAnchor = getelementptr inbounds nuw %struct.PgHdr1, ptr %24, i32 0, i32 3
  store i16 0, ptr %isAnchor, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.then
  %25 = load ptr, ptr %pCache.addr, align 8
  %pnPurgeable = getelementptr inbounds nuw %struct.PCache1, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %pnPurgeable, align 8
  %27 = load i32, ptr %26, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %26, align 4
  %28 = load ptr, ptr %p, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then12
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pcache1InitBulk(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
