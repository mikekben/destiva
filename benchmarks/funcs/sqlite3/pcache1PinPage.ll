; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1PinPage(ptr noundef %pPage) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %pLruNext, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %pLruPrev, align 8
  %pLruNext1 = getelementptr inbounds nuw %struct.PgHdr1, ptr %3, i32 0, i32 6
  store ptr %1, ptr %pLruNext1, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %pLruPrev2 = getelementptr inbounds nuw %struct.PgHdr1, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %pLruPrev2, align 8
  %6 = load ptr, ptr %pPage.addr, align 8
  %pLruNext3 = getelementptr inbounds nuw %struct.PgHdr1, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %pLruNext3, align 8
  %pLruPrev4 = getelementptr inbounds nuw %struct.PgHdr1, ptr %7, i32 0, i32 7
  store ptr %5, ptr %pLruPrev4, align 8
  %8 = load ptr, ptr %pPage.addr, align 8
  %pLruNext5 = getelementptr inbounds nuw %struct.PgHdr1, ptr %8, i32 0, i32 6
  store ptr null, ptr %pLruNext5, align 8
  %9 = load ptr, ptr %pPage.addr, align 8
  %pCache = getelementptr inbounds nuw %struct.PgHdr1, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pCache, align 8
  %nRecyclable = getelementptr inbounds nuw %struct.PCache1, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %nRecyclable, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %nRecyclable, align 4
  %12 = load ptr, ptr %pPage.addr, align 8
  ret ptr %12
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
