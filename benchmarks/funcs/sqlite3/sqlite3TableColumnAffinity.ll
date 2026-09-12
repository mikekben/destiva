; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden signext i8 @sqlite3TableColumnAffinity(ptr noundef %pTab, i32 noundef %iCol) #0 {
entry:
  %pTab.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load i32, ptr %iCol.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %aCol, align 8
  %3 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %2, i64 %idxprom
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 4
  %4 = load i8, ptr %affinity, align 1
  %conv = sext i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 68, %cond.false ]
  %conv1 = trunc i32 %cond to i8
  ret i8 %conv1
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
