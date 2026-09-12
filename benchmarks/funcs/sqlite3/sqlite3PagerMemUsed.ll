; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerMemUsed(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %perPageSize = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 47
  %1 = load i32, ptr %pageSize, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %nExtra = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 43
  %3 = load i16, ptr %nExtra, align 8
  %conv = zext i16 %3 to i32
  %add = add nsw i32 %1, %conv
  %conv1 = sext i32 %add to i64
  %add2 = add i64 %conv1, 72
  %add3 = add i64 %add2, 40
  %conv4 = trunc i64 %add3 to i32
  store i32 %conv4, ptr %perPageSize, align 4
  %4 = load i32, ptr %perPageSize, align 4
  %5 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 58
  %6 = load ptr, ptr %pPCache, align 8
  %call = call i32 @sqlite3PcachePagecount(ptr noundef %6)
  %mul = mul nsw i32 %4, %call
  %7 = load ptr, ptr %pPager.addr, align 8
  %call5 = call i32 @sqlite3MallocSize(ptr noundef %7)
  %add6 = add nsw i32 %mul, %call5
  %8 = load ptr, ptr %pPager.addr, align 8
  %pageSize7 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 47
  %9 = load i32, ptr %pageSize7, align 4
  %add8 = add nsw i32 %add6, %9
  ret i32 %add8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcachePagecount(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
