; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3StatType = type { [10 x i64], [10 x i64] }

@sqlite3Stat = external hidden global %struct.sqlite3StatType, align 8

; Function Attrs: nounwind uwtable
define hidden void @sqlite3StatusUp(i32 noundef %op, i32 noundef %N) #0 {
entry:
  %op.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i32, ptr %op.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i64], ptr @sqlite3Stat, i64 0, i64 %idxprom
  %2 = load i64, ptr %arrayidx, align 8
  %add = add nsw i64 %2, %conv
  store i64 %add, ptr %arrayidx, align 8
  %3 = load i32, ptr %op.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [10 x i64], ptr @sqlite3Stat, i64 0, i64 %idxprom1
  %4 = load i64, ptr %arrayidx2, align 8
  %5 = load i32, ptr %op.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom3
  %6 = load i64, ptr %arrayidx4, align 8
  %cmp = icmp sgt i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %op.addr, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i64], ptr @sqlite3Stat, i64 0, i64 %idxprom6
  %8 = load i64, ptr %arrayidx7, align 8
  %9 = load i32, ptr %op.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom8
  store i64 %8, ptr %arrayidx9, align 8
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
