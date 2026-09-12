; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1PinPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1FreePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1TruncateUnsafe(ptr noundef %pCache, i32 noundef %iLimit) #0 {
entry:
  %pCache.addr = alloca ptr, align 8
  %iLimit.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %iStop = alloca i32, align 4
  %pp = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %iLimit, ptr %iLimit.addr, align 4
  %0 = load ptr, ptr %pCache.addr, align 8
  %iMaxKey = getelementptr inbounds nuw %struct.PCache1, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %iMaxKey, align 4
  %2 = load i32, ptr %iLimit.addr, align 4
  %sub = sub i32 %1, %2
  %3 = load ptr, ptr %pCache.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %nHash, align 4
  %cmp = icmp ult i32 %sub, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %iLimit.addr, align 4
  %6 = load ptr, ptr %pCache.addr, align 8
  %nHash1 = getelementptr inbounds nuw %struct.PCache1, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %nHash1, align 4
  %rem = urem i32 %5, %7
  store i32 %rem, ptr %h, align 4
  %8 = load ptr, ptr %pCache.addr, align 8
  %iMaxKey2 = getelementptr inbounds nuw %struct.PCache1, ptr %8, i32 0, i32 9
  %9 = load i32, ptr %iMaxKey2, align 4
  %10 = load ptr, ptr %pCache.addr, align 8
  %nHash3 = getelementptr inbounds nuw %struct.PCache1, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %nHash3, align 4
  %rem4 = urem i32 %9, %11
  store i32 %rem4, ptr %iStop, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %pCache.addr, align 8
  %nHash5 = getelementptr inbounds nuw %struct.PCache1, ptr %12, i32 0, i32 13
  %13 = load i32, ptr %nHash5, align 4
  %div = udiv i32 %13, 2
  store i32 %div, ptr %h, align 4
  %14 = load i32, ptr %h, align 4
  %sub6 = sub i32 %14, 1
  store i32 %sub6, ptr %iStop, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %if.end
  %15 = load ptr, ptr %pCache.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %apHash, align 8
  %17 = load i32, ptr %h, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %16, i64 %idxprom
  store ptr %arrayidx, ptr %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %for.cond
  %18 = load ptr, ptr %pp, align 8
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %pPage, align 8
  %cmp7 = icmp ne ptr %19, null
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %pPage, align 8
  %iKey = getelementptr inbounds nuw %struct.PgHdr1, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %iKey, align 8
  %22 = load i32, ptr %iLimit.addr, align 4
  %cmp8 = icmp uge i32 %21, %22
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %while.body
  %23 = load ptr, ptr %pCache.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %23, i32 0, i32 12
  %24 = load i32, ptr %nPage, align 8
  %dec = add i32 %24, -1
  store i32 %dec, ptr %nPage, align 8
  %25 = load ptr, ptr %pPage, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %pNext, align 8
  %27 = load ptr, ptr %pp, align 8
  store ptr %26, ptr %27, align 8
  %28 = load ptr, ptr %pPage, align 8
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %pLruNext, align 8
  %cmp10 = icmp ne ptr %29, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then9
  %30 = load ptr, ptr %pPage, align 8
  %call = call ptr @pcache1PinPage(ptr noundef %30)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then9
  %31 = load ptr, ptr %pPage, align 8
  call void @pcache1FreePage(ptr noundef %31)
  br label %if.end15

if.else13:                                        ; preds = %while.body
  %32 = load ptr, ptr %pPage, align 8
  %pNext14 = getelementptr inbounds nuw %struct.PgHdr1, ptr %32, i32 0, i32 4
  store ptr %pNext14, ptr %pp, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.end12
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %33 = load i32, ptr %h, align 4
  %34 = load i32, ptr %iStop, align 4
  %cmp16 = icmp eq i32 %33, %34
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %while.end
  br label %for.end

if.end18:                                         ; preds = %while.end
  %35 = load i32, ptr %h, align 4
  %add = add i32 %35, 1
  %36 = load ptr, ptr %pCache.addr, align 8
  %nHash19 = getelementptr inbounds nuw %struct.PCache1, ptr %36, i32 0, i32 13
  %37 = load i32, ptr %nHash19, align 4
  %rem20 = urem i32 %add, %37
  store i32 %rem20, ptr %h, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then17
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
