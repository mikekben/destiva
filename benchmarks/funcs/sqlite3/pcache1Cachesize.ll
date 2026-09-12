; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1Cachesize(ptr noundef %p, i32 noundef %nMax) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nMax.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nMax, ptr %nMax.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  %1 = load ptr, ptr %pCache, align 8
  %bPurgeable = getelementptr inbounds nuw %struct.PCache1, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %bPurgeable, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCache, align 8
  %pGroup1 = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pGroup1, align 8
  store ptr %4, ptr %pGroup, align 8
  %5 = load i32, ptr %nMax.addr, align 4
  %6 = load ptr, ptr %pCache, align 8
  %nMax2 = getelementptr inbounds nuw %struct.PCache1, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %nMax2, align 4
  %sub = sub i32 %5, %7
  %8 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nMaxPage, align 8
  %add = add i32 %9, %sub
  store i32 %add, ptr %nMaxPage, align 8
  %10 = load ptr, ptr %pGroup, align 8
  %nMaxPage3 = getelementptr inbounds nuw %struct.PGroup, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nMaxPage3, align 8
  %add4 = add i32 %11, 10
  %12 = load ptr, ptr %pGroup, align 8
  %nMinPage = getelementptr inbounds nuw %struct.PGroup, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %nMinPage, align 4
  %sub5 = sub i32 %add4, %13
  %14 = load ptr, ptr %pGroup, align 8
  %mxPinned = getelementptr inbounds nuw %struct.PGroup, ptr %14, i32 0, i32 3
  store i32 %sub5, ptr %mxPinned, align 8
  %15 = load i32, ptr %nMax.addr, align 4
  %16 = load ptr, ptr %pCache, align 8
  %nMax6 = getelementptr inbounds nuw %struct.PCache1, ptr %16, i32 0, i32 7
  store i32 %15, ptr %nMax6, align 4
  %17 = load ptr, ptr %pCache, align 8
  %nMax7 = getelementptr inbounds nuw %struct.PCache1, ptr %17, i32 0, i32 7
  %18 = load i32, ptr %nMax7, align 4
  %mul = mul i32 %18, 9
  %div = udiv i32 %mul, 10
  %19 = load ptr, ptr %pCache, align 8
  %n90pct = getelementptr inbounds nuw %struct.PCache1, ptr %19, i32 0, i32 8
  store i32 %div, ptr %n90pct, align 8
  %20 = load ptr, ptr %pCache, align 8
  call void @pcache1EnforceMaxPage(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1EnforceMaxPage(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
