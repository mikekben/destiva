; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PagerCacheStat(ptr noundef %pPager, i32 noundef %eStat, i32 noundef %reset, ptr noundef %pnVal) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %eStat.addr = alloca i32, align 4
  %reset.addr = alloca i32, align 4
  %pnVal.addr = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %eStat, ptr %eStat.addr, align 4
  store i32 %reset, ptr %reset.addr, align 4
  store ptr %pnVal, ptr %pnVal.addr, align 8
  %0 = load i32, ptr %eStat.addr, align 4
  %sub = sub nsw i32 %0, 7
  store i32 %sub, ptr %eStat.addr, align 4
  %1 = load ptr, ptr %pPager.addr, align 8
  %aStat = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 54
  %2 = load i32, ptr %eStat.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %aStat, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load ptr, ptr %pnVal.addr, align 8
  %5 = load i32, ptr %4, align 4
  %add = add nsw i32 %5, %3
  store i32 %add, ptr %4, align 4
  %6 = load i32, ptr %reset.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pPager.addr, align 8
  %aStat1 = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 54
  %8 = load i32, ptr %eStat.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %aStat1, i64 0, i64 %idxprom2
  store i32 0, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
