; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @estLog(i16 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden signext i16 @whereSortingCost(ptr noundef %pWInfo, i16 noundef signext %nRow, i32 noundef %nOrderBy, i32 noundef %nSorted) #0 {
entry:
  %pWInfo.addr = alloca ptr, align 8
  %nRow.addr = alloca i16, align 2
  %nOrderBy.addr = alloca i32, align 4
  %nSorted.addr = alloca i32, align 4
  %rScale = alloca i16, align 2
  %rSortCost = alloca i16, align 2
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store i16 %nRow, ptr %nRow.addr, align 2
  store i32 %nOrderBy, ptr %nOrderBy.addr, align 4
  store i32 %nSorted, ptr %nSorted.addr, align 4
  %0 = load i32, ptr %nOrderBy.addr, align 4
  %1 = load i32, ptr %nSorted.addr, align 4
  %sub = sub nsw i32 %0, %1
  %mul = mul nsw i32 %sub, 100
  %2 = load i32, ptr %nOrderBy.addr, align 4
  %div = sdiv i32 %mul, %2
  %conv = sext i32 %div to i64
  %call = call signext i16 @sqlite3LogEst(i64 noundef %conv)
  %conv1 = sext i16 %call to i32
  %sub2 = sub nsw i32 %conv1, 66
  %conv3 = trunc i32 %sub2 to i16
  store i16 %conv3, ptr %rScale, align 2
  %3 = load i16, ptr %nRow.addr, align 2
  %conv4 = sext i16 %3 to i32
  %4 = load i16, ptr %rScale, align 2
  %conv5 = sext i16 %4 to i32
  %add = add nsw i32 %conv4, %conv5
  %add6 = add nsw i32 %add, 16
  %conv7 = trunc i32 %add6 to i16
  store i16 %conv7, ptr %rSortCost, align 2
  %5 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %5, i32 0, i32 10
  %6 = load i16, ptr %wctrlFlags, align 8
  %conv8 = zext i16 %6 to i32
  %and = and i32 %conv8, 16384
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %pWInfo.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.WhereInfo, ptr %7, i32 0, i32 5
  %8 = load i16, ptr %iLimit, align 8
  %conv10 = sext i16 %8 to i32
  %9 = load i16, ptr %nRow.addr, align 2
  %conv11 = sext i16 %9 to i32
  %cmp12 = icmp slt i32 %conv10, %conv11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %pWInfo.addr, align 8
  %iLimit14 = getelementptr inbounds nuw %struct.WhereInfo, ptr %10, i32 0, i32 5
  %11 = load i16, ptr %iLimit14, align 8
  store i16 %11, ptr %nRow.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i16, ptr %nRow.addr, align 2
  %call15 = call signext i16 @estLog(i16 noundef signext %12)
  %conv16 = sext i16 %call15 to i32
  %13 = load i16, ptr %rSortCost, align 2
  %conv17 = sext i16 %13 to i32
  %add18 = add nsw i32 %conv17, %conv16
  %conv19 = trunc i32 %add18 to i16
  store i16 %conv19, ptr %rSortCost, align 2
  %14 = load i16, ptr %rSortCost, align 2
  ret i16 %14
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
