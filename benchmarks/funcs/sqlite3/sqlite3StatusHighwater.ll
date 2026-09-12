; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3StatType = type { [10 x i64], [10 x i64] }

@sqlite3Stat = external hidden global %struct.sqlite3StatType, align 8

; Function Attrs: nounwind uwtable
define hidden void @sqlite3StatusHighwater(i32 noundef %op, i32 noundef %X) #0 {
entry:
  %op.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %newValue = alloca i64, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %X, ptr %X.addr, align 4
  %0 = load i32, ptr %X.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, ptr %newValue, align 8
  %1 = load i64, ptr %newValue, align 8
  %2 = load i32, ptr %op.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8
  %cmp = icmp sgt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %newValue, align 8
  %5 = load i32, ptr %op.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [10 x i64], ptr getelementptr inbounds nuw (%struct.sqlite3StatType, ptr @sqlite3Stat, i32 0, i32 1), i64 0, i64 %idxprom2
  store i64 %4, ptr %arrayidx3, align 8
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
