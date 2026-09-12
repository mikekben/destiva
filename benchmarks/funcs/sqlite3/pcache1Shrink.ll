; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1Shrink(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCache = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  %savedMaxPage = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
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
  %5 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nMaxPage, align 8
  store i32 %6, ptr %savedMaxPage, align 4
  %7 = load ptr, ptr %pGroup, align 8
  %nMaxPage2 = getelementptr inbounds nuw %struct.PGroup, ptr %7, i32 0, i32 1
  store i32 0, ptr %nMaxPage2, align 8
  %8 = load ptr, ptr %pCache, align 8
  call void @pcache1EnforceMaxPage(ptr noundef %8)
  %9 = load i32, ptr %savedMaxPage, align 4
  %10 = load ptr, ptr %pGroup, align 8
  %nMaxPage3 = getelementptr inbounds nuw %struct.PGroup, ptr %10, i32 0, i32 1
  store i32 %9, ptr %nMaxPage3, align 8
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
