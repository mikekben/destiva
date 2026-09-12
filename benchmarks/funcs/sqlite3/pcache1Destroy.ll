; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1Destroy(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCache = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  %1 = load ptr, ptr %pCache, align 8
  %pGroup1 = getelementptr inbounds nuw %struct.PCache1, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pGroup1, align 8
  store ptr %2, ptr %pGroup, align 8
  %3 = load ptr, ptr %pCache, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 12
  %4 = load i32, ptr %nPage, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pCache, align 8
  call void @pcache1TruncateUnsafe(ptr noundef %5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %pCache, align 8
  %nMax = getelementptr inbounds nuw %struct.PCache1, ptr %6, i32 0, i32 7
  %7 = load i32, ptr %nMax, align 4
  %8 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nMaxPage, align 8
  %sub = sub i32 %9, %7
  store i32 %sub, ptr %nMaxPage, align 8
  %10 = load ptr, ptr %pCache, align 8
  %nMin = getelementptr inbounds nuw %struct.PCache1, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nMin, align 8
  %12 = load ptr, ptr %pGroup, align 8
  %nMinPage = getelementptr inbounds nuw %struct.PGroup, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %nMinPage, align 4
  %sub2 = sub i32 %13, %11
  store i32 %sub2, ptr %nMinPage, align 4
  %14 = load ptr, ptr %pGroup, align 8
  %nMaxPage3 = getelementptr inbounds nuw %struct.PGroup, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nMaxPage3, align 8
  %add = add i32 %15, 10
  %16 = load ptr, ptr %pGroup, align 8
  %nMinPage4 = getelementptr inbounds nuw %struct.PGroup, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %nMinPage4, align 4
  %sub5 = sub i32 %add, %17
  %18 = load ptr, ptr %pGroup, align 8
  %mxPinned = getelementptr inbounds nuw %struct.PGroup, ptr %18, i32 0, i32 3
  store i32 %sub5, ptr %mxPinned, align 8
  %19 = load ptr, ptr %pCache, align 8
  call void @pcache1EnforceMaxPage(ptr noundef %19)
  %20 = load ptr, ptr %pCache, align 8
  %pBulk = getelementptr inbounds nuw %struct.PCache1, ptr %20, i32 0, i32 16
  %21 = load ptr, ptr %pBulk, align 8
  call void @sqlite3_free(ptr noundef %21)
  %22 = load ptr, ptr %pCache, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %apHash, align 8
  call void @sqlite3_free(ptr noundef %23)
  %24 = load ptr, ptr %pCache, align 8
  call void @sqlite3_free(ptr noundef %24)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1EnforceMaxPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1TruncateUnsafe(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
