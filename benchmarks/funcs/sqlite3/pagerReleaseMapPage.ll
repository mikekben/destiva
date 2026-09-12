; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pagerReleaseMapPage(ptr noundef %pPg) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPager, align 8
  %nMmapOut = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 40
  %3 = load i32, ptr %nMmapOut, align 8
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %nMmapOut, align 8
  %4 = load ptr, ptr %pPager, align 8
  %pMmapFreelist = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 42
  %5 = load ptr, ptr %pMmapFreelist, align 8
  %6 = load ptr, ptr %pPg.addr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pDirty, align 8
  %7 = load ptr, ptr %pPg.addr, align 8
  %8 = load ptr, ptr %pPager, align 8
  %pMmapFreelist2 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 42
  store ptr %7, ptr %pMmapFreelist2, align 8
  %9 = load ptr, ptr %pPager, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 30
  %10 = load ptr, ptr %fd, align 8
  %11 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %pgno, align 8
  %sub = sub i32 %12, 1
  %conv = zext i32 %sub to i64
  %13 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 47
  %14 = load i32, ptr %pageSize, align 4
  %conv3 = sext i32 %14 to i64
  %mul = mul nsw i64 %conv, %conv3
  %15 = load ptr, ptr %pPg.addr, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pData, align 8
  %call = call i32 @sqlite3OsUnfetch(ptr noundef %10, i64 noundef %mul, ptr noundef %16)
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
