; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1Rekey(ptr noundef %p, ptr noundef %pPg, i32 noundef %iOld, i32 noundef %iNew) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pPg.addr = alloca ptr, align 8
  %iOld.addr = alloca i32, align 4
  %iNew.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %iOld, ptr %iOld.addr, align 4
  store i32 %iNew, ptr %iNew.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  %1 = load ptr, ptr %pPg.addr, align 8
  store ptr %1, ptr %pPage, align 8
  %2 = load i32, ptr %iOld.addr, align 4
  %3 = load ptr, ptr %pCache, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %nHash, align 4
  %rem = urem i32 %2, %4
  store i32 %rem, ptr %h, align 4
  %5 = load ptr, ptr %pCache, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %apHash, align 8
  %7 = load i32, ptr %h, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %8 = load ptr, ptr %pp, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %pPage, align 8
  %cmp = icmp ne ptr %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %pp, align 8
  %12 = load ptr, ptr %11, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %12, i32 0, i32 4
  store ptr %pNext, ptr %pp, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %pPage, align 8
  %pNext1 = getelementptr inbounds nuw %struct.PgHdr1, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pNext1, align 8
  %15 = load ptr, ptr %pp, align 8
  store ptr %14, ptr %15, align 8
  %16 = load i32, ptr %iNew.addr, align 4
  %17 = load ptr, ptr %pCache, align 8
  %nHash2 = getelementptr inbounds nuw %struct.PCache1, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %nHash2, align 4
  %rem3 = urem i32 %16, %18
  store i32 %rem3, ptr %h, align 4
  %19 = load i32, ptr %iNew.addr, align 4
  %20 = load ptr, ptr %pPage, align 8
  %iKey = getelementptr inbounds nuw %struct.PgHdr1, ptr %20, i32 0, i32 1
  store i32 %19, ptr %iKey, align 8
  %21 = load ptr, ptr %pCache, align 8
  %apHash4 = getelementptr inbounds nuw %struct.PCache1, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %apHash4, align 8
  %23 = load i32, ptr %h, align 4
  %idxprom5 = zext i32 %23 to i64
  %arrayidx6 = getelementptr inbounds nuw ptr, ptr %22, i64 %idxprom5
  %24 = load ptr, ptr %arrayidx6, align 8
  %25 = load ptr, ptr %pPage, align 8
  %pNext7 = getelementptr inbounds nuw %struct.PgHdr1, ptr %25, i32 0, i32 4
  store ptr %24, ptr %pNext7, align 8
  %26 = load ptr, ptr %pPage, align 8
  %27 = load ptr, ptr %pCache, align 8
  %apHash8 = getelementptr inbounds nuw %struct.PCache1, ptr %27, i32 0, i32 14
  %28 = load ptr, ptr %apHash8, align 8
  %29 = load i32, ptr %h, align 4
  %idxprom9 = zext i32 %29 to i64
  %arrayidx10 = getelementptr inbounds nuw ptr, ptr %28, i64 %idxprom9
  store ptr %26, ptr %arrayidx10, align 8
  %30 = load i32, ptr %iNew.addr, align 4
  %31 = load ptr, ptr %pCache, align 8
  %iMaxKey = getelementptr inbounds nuw %struct.PCache1, ptr %31, i32 0, i32 9
  %32 = load i32, ptr %iMaxKey, align 4
  %cmp11 = icmp ugt i32 %30, %32
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %33 = load i32, ptr %iNew.addr, align 4
  %34 = load ptr, ptr %pCache, align 8
  %iMaxKey12 = getelementptr inbounds nuw %struct.PCache1, ptr %34, i32 0, i32 9
  store i32 %33, ptr %iMaxKey12, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
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
