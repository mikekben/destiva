; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1Unpin(ptr noundef %p, ptr noundef %pPg, i32 noundef %reuseUnlikely) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pPg.addr = alloca ptr, align 8
  %reuseUnlikely.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  %ppFirst = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %reuseUnlikely, ptr %reuseUnlikely.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  %1 = load ptr, ptr %pPg.addr, align 8
  store ptr %1, ptr %pPage, align 8
  %2 = load ptr, ptr %pCache, align 8
  %pGroup1 = getelementptr inbounds nuw %struct.PCache1, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pGroup1, align 8
  store ptr %3, ptr %pGroup, align 8
  %4 = load i32, ptr %reuseUnlikely.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pGroup, align 8
  %nPurgeable = getelementptr inbounds nuw %struct.PGroup, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %nPurgeable, align 4
  %7 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nMaxPage, align 8
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %pPage, align 8
  call void @pcache1RemoveFromHash(ptr noundef %9, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pGroup, align 8
  %lru = getelementptr inbounds nuw %struct.PGroup, ptr %10, i32 0, i32 5
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru, i32 0, i32 6
  store ptr %pLruNext, ptr %ppFirst, align 8
  %11 = load ptr, ptr %pGroup, align 8
  %lru2 = getelementptr inbounds nuw %struct.PGroup, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pPage, align 8
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %12, i32 0, i32 7
  store ptr %lru2, ptr %pLruPrev, align 8
  %13 = load ptr, ptr %pPage, align 8
  %14 = load ptr, ptr %ppFirst, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %pPage, align 8
  %pLruNext3 = getelementptr inbounds nuw %struct.PgHdr1, ptr %16, i32 0, i32 6
  store ptr %15, ptr %pLruNext3, align 8
  %pLruPrev4 = getelementptr inbounds nuw %struct.PgHdr1, ptr %15, i32 0, i32 7
  store ptr %13, ptr %pLruPrev4, align 8
  %17 = load ptr, ptr %pPage, align 8
  %18 = load ptr, ptr %ppFirst, align 8
  store ptr %17, ptr %18, align 8
  %19 = load ptr, ptr %pCache, align 8
  %nRecyclable = getelementptr inbounds nuw %struct.PCache1, ptr %19, i32 0, i32 11
  %20 = load i32, ptr %nRecyclable, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %nRecyclable, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1RemoveFromHash(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
