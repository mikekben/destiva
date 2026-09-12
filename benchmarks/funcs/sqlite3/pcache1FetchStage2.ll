; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @pcache1ResizeHash(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1PinPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1RemoveFromHash(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1FreePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1FetchStage2(ptr noundef %pCache, i32 noundef %iKey, i32 noundef %createFlag) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCache.addr = alloca ptr, align 8
  %iKey.addr = alloca i32, align 4
  %createFlag.addr = alloca i32, align 4
  %nPinned = alloca i32, align 4
  %pGroup = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  %pOther = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %iKey, ptr %iKey.addr, align 4
  store i32 %createFlag, ptr %createFlag.addr, align 4
  %0 = load ptr, ptr %pCache.addr, align 8
  %pGroup1 = getelementptr inbounds nuw %struct.PCache1, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pGroup1, align 8
  store ptr %1, ptr %pGroup, align 8
  store ptr null, ptr %pPage, align 8
  %2 = load ptr, ptr %pCache.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %2, i32 0, i32 12
  %3 = load i32, ptr %nPage, align 8
  %4 = load ptr, ptr %pCache.addr, align 8
  %nRecyclable = getelementptr inbounds nuw %struct.PCache1, ptr %4, i32 0, i32 11
  %5 = load i32, ptr %nRecyclable, align 4
  %sub = sub i32 %3, %5
  store i32 %sub, ptr %nPinned, align 4
  %6 = load i32, ptr %createFlag.addr, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr %nPinned, align 4
  %8 = load ptr, ptr %pGroup, align 8
  %mxPinned = getelementptr inbounds nuw %struct.PGroup, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %mxPinned, align 8
  %cmp2 = icmp uge i32 %7, %9
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, ptr %nPinned, align 4
  %11 = load ptr, ptr %pCache.addr, align 8
  %n90pct = getelementptr inbounds nuw %struct.PCache1, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %n90pct, align 8
  %cmp3 = icmp uge i32 %10, %12
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pCache.addr, align 8
  %call = call i32 @pcache1UnderMemoryPressure(ptr noundef %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %lor.lhs.false4
  %14 = load ptr, ptr %pCache.addr, align 8
  %nRecyclable6 = getelementptr inbounds nuw %struct.PCache1, ptr %14, i32 0, i32 11
  %15 = load i32, ptr %nRecyclable6, align 4
  %16 = load i32, ptr %nPinned, align 4
  %cmp7 = icmp ult i32 %15, %16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5, %lor.lhs.false, %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true5, %lor.lhs.false4, %entry
  %17 = load ptr, ptr %pCache.addr, align 8
  %nPage8 = getelementptr inbounds nuw %struct.PCache1, ptr %17, i32 0, i32 12
  %18 = load i32, ptr %nPage8, align 8
  %19 = load ptr, ptr %pCache.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %19, i32 0, i32 13
  %20 = load i32, ptr %nHash, align 4
  %cmp9 = icmp uge i32 %18, %20
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %21 = load ptr, ptr %pCache.addr, align 8
  call void @pcache1ResizeHash(ptr noundef %21)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %22 = load ptr, ptr %pCache.addr, align 8
  %bPurgeable = getelementptr inbounds nuw %struct.PCache1, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %bPurgeable, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %land.lhs.true13, label %if.end34

land.lhs.true13:                                  ; preds = %if.end11
  %24 = load ptr, ptr %pGroup, align 8
  %lru = getelementptr inbounds nuw %struct.PGroup, ptr %24, i32 0, i32 5
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru, i32 0, i32 7
  %25 = load ptr, ptr %pLruPrev, align 8
  %isAnchor = getelementptr inbounds nuw %struct.PgHdr1, ptr %25, i32 0, i32 3
  %26 = load i16, ptr %isAnchor, align 2
  %tobool14 = icmp ne i16 %26, 0
  br i1 %tobool14, label %if.end34, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %27 = load ptr, ptr %pCache.addr, align 8
  %nPage16 = getelementptr inbounds nuw %struct.PCache1, ptr %27, i32 0, i32 12
  %28 = load i32, ptr %nPage16, align 8
  %add = add i32 %28, 1
  %29 = load ptr, ptr %pCache.addr, align 8
  %nMax = getelementptr inbounds nuw %struct.PCache1, ptr %29, i32 0, i32 7
  %30 = load i32, ptr %nMax, align 4
  %cmp17 = icmp uge i32 %add, %30
  br i1 %cmp17, label %if.then21, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %land.lhs.true15
  %31 = load ptr, ptr %pCache.addr, align 8
  %call19 = call i32 @pcache1UnderMemoryPressure(ptr noundef %31)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end34

if.then21:                                        ; preds = %lor.lhs.false18, %land.lhs.true15
  %32 = load ptr, ptr %pGroup, align 8
  %lru22 = getelementptr inbounds nuw %struct.PGroup, ptr %32, i32 0, i32 5
  %pLruPrev23 = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru22, i32 0, i32 7
  %33 = load ptr, ptr %pLruPrev23, align 8
  store ptr %33, ptr %pPage, align 8
  %34 = load ptr, ptr %pPage, align 8
  call void @pcache1RemoveFromHash(ptr noundef %34, i32 noundef 0)
  %35 = load ptr, ptr %pPage, align 8
  %call24 = call ptr @pcache1PinPage(ptr noundef %35)
  %36 = load ptr, ptr %pPage, align 8
  %pCache25 = getelementptr inbounds nuw %struct.PgHdr1, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %pCache25, align 8
  store ptr %37, ptr %pOther, align 8
  %38 = load ptr, ptr %pOther, align 8
  %szAlloc = getelementptr inbounds nuw %struct.PCache1, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %szAlloc, align 8
  %40 = load ptr, ptr %pCache.addr, align 8
  %szAlloc26 = getelementptr inbounds nuw %struct.PCache1, ptr %40, i32 0, i32 4
  %41 = load i32, ptr %szAlloc26, align 8
  %cmp27 = icmp ne i32 %39, %41
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then21
  %42 = load ptr, ptr %pPage, align 8
  call void @pcache1FreePage(ptr noundef %42)
  store ptr null, ptr %pPage, align 8
  br label %if.end33

if.else:                                          ; preds = %if.then21
  %43 = load ptr, ptr %pOther, align 8
  %bPurgeable29 = getelementptr inbounds nuw %struct.PCache1, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %bPurgeable29, align 4
  %45 = load ptr, ptr %pCache.addr, align 8
  %bPurgeable30 = getelementptr inbounds nuw %struct.PCache1, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %bPurgeable30, align 4
  %sub31 = sub nsw i32 %44, %46
  %47 = load ptr, ptr %pGroup, align 8
  %nPurgeable = getelementptr inbounds nuw %struct.PGroup, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %nPurgeable, align 4
  %sub32 = sub i32 %48, %sub31
  store i32 %sub32, ptr %nPurgeable, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %lor.lhs.false18, %land.lhs.true13, %if.end11
  %49 = load ptr, ptr %pPage, align 8
  %tobool35 = icmp ne ptr %49, null
  br i1 %tobool35, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end34
  %50 = load ptr, ptr %pCache.addr, align 8
  %51 = load i32, ptr %createFlag.addr, align 4
  %cmp37 = icmp eq i32 %51, 1
  %conv = zext i1 %cmp37 to i32
  %call38 = call ptr @pcache1AllocPage(ptr noundef %50, i32 noundef %conv)
  store ptr %call38, ptr %pPage, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34
  %52 = load ptr, ptr %pPage, align 8
  %tobool40 = icmp ne ptr %52, null
  br i1 %tobool40, label %if.then41, label %if.end54

if.then41:                                        ; preds = %if.end39
  %53 = load i32, ptr %iKey.addr, align 4
  %54 = load ptr, ptr %pCache.addr, align 8
  %nHash42 = getelementptr inbounds nuw %struct.PCache1, ptr %54, i32 0, i32 13
  %55 = load i32, ptr %nHash42, align 4
  %rem = urem i32 %53, %55
  store i32 %rem, ptr %h, align 4
  %56 = load ptr, ptr %pCache.addr, align 8
  %nPage43 = getelementptr inbounds nuw %struct.PCache1, ptr %56, i32 0, i32 12
  %57 = load i32, ptr %nPage43, align 8
  %inc = add i32 %57, 1
  store i32 %inc, ptr %nPage43, align 8
  %58 = load i32, ptr %iKey.addr, align 4
  %59 = load ptr, ptr %pPage, align 8
  %iKey44 = getelementptr inbounds nuw %struct.PgHdr1, ptr %59, i32 0, i32 1
  store i32 %58, ptr %iKey44, align 8
  %60 = load ptr, ptr %pCache.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %60, i32 0, i32 14
  %61 = load ptr, ptr %apHash, align 8
  %62 = load i32, ptr %h, align 4
  %idxprom = zext i32 %62 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %61, i64 %idxprom
  %63 = load ptr, ptr %arrayidx, align 8
  %64 = load ptr, ptr %pPage, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %64, i32 0, i32 4
  store ptr %63, ptr %pNext, align 8
  %65 = load ptr, ptr %pCache.addr, align 8
  %66 = load ptr, ptr %pPage, align 8
  %pCache45 = getelementptr inbounds nuw %struct.PgHdr1, ptr %66, i32 0, i32 5
  store ptr %65, ptr %pCache45, align 8
  %67 = load ptr, ptr %pPage, align 8
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %67, i32 0, i32 6
  store ptr null, ptr %pLruNext, align 8
  %68 = load ptr, ptr %pPage, align 8
  %page = getelementptr inbounds nuw %struct.PgHdr1, ptr %68, i32 0, i32 0
  %pExtra = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page, i32 0, i32 1
  %69 = load ptr, ptr %pExtra, align 8
  store ptr null, ptr %69, align 8
  %70 = load ptr, ptr %pPage, align 8
  %71 = load ptr, ptr %pCache.addr, align 8
  %apHash46 = getelementptr inbounds nuw %struct.PCache1, ptr %71, i32 0, i32 14
  %72 = load ptr, ptr %apHash46, align 8
  %73 = load i32, ptr %h, align 4
  %idxprom47 = zext i32 %73 to i64
  %arrayidx48 = getelementptr inbounds nuw ptr, ptr %72, i64 %idxprom47
  store ptr %70, ptr %arrayidx48, align 8
  %74 = load i32, ptr %iKey.addr, align 4
  %75 = load ptr, ptr %pCache.addr, align 8
  %iMaxKey = getelementptr inbounds nuw %struct.PCache1, ptr %75, i32 0, i32 9
  %76 = load i32, ptr %iMaxKey, align 4
  %cmp49 = icmp ugt i32 %74, %76
  br i1 %cmp49, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.then41
  %77 = load i32, ptr %iKey.addr, align 4
  %78 = load ptr, ptr %pCache.addr, align 8
  %iMaxKey52 = getelementptr inbounds nuw %struct.PCache1, ptr %78, i32 0, i32 9
  store i32 %77, ptr %iMaxKey52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then41
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end39
  %79 = load ptr, ptr %pPage, align 8
  store ptr %79, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end54, %if.then
  %80 = load ptr, ptr %retval, align 8
  ret ptr %80
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pcache1UnderMemoryPressure(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1AllocPage(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
