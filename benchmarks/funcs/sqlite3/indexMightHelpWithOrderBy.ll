; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompareSkip(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @indexMightHelpWithOrderBy(ptr noundef %pBuilder, ptr noundef %pIndex, i32 noundef %iCursor) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %pIndex.addr = alloca ptr, align 8
  %iCursor.addr = alloca i32, align 4
  %pOB = alloca ptr, align 8
  %aColExpr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %pExpr = alloca ptr, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store ptr %pIndex, ptr %pIndex.addr, align 8
  store i32 %iCursor, ptr %iCursor.addr, align 4
  %0 = load ptr, ptr %pIndex.addr, align 8
  %bUnordered = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 16
  %bf.load = load i16, ptr %bUnordered, align 1
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pWInfo, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pOrderBy, align 8
  store ptr %3, ptr %pOB, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %if.end2
  %4 = load i32, ptr %ii, align 4
  %5 = load ptr, ptr %pOB, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %cmp3 = icmp slt i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end63

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pOB, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr4 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %9 = load ptr, ptr %pExpr4, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %9)
  store ptr %call, ptr %pExpr, align 8
  %10 = load ptr, ptr %pExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 0
  %11 = load i8, ptr %op, align 8
  %conv = zext i8 %11 to i32
  %cmp5 = icmp eq i32 %conv, 162
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %pExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %iTable, align 4
  %14 = load i32, ptr %iCursor.addr, align 4
  %cmp7 = icmp eq i32 %13, %14
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %pExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 9
  %16 = load i16, ptr %iColumn, align 8
  %conv10 = sext i16 %16 to i32
  %cmp11 = icmp slt i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  store i32 1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then9
  store i32 0, ptr %jj, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.end14
  %17 = load i32, ptr %jj, align 4
  %18 = load ptr, ptr %pIndex.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 13
  %19 = load i16, ptr %nKeyCol, align 2
  %conv16 = zext i16 %19 to i32
  %cmp17 = icmp slt i32 %17, %conv16
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond15
  %20 = load ptr, ptr %pExpr, align 8
  %iColumn20 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 9
  %21 = load i16, ptr %iColumn20, align 8
  %conv21 = sext i16 %21 to i32
  %22 = load ptr, ptr %pIndex.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %aiColumn, align 8
  %24 = load i32, ptr %jj, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %23, i64 %idxprom22
  %25 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %25 to i32
  %cmp25 = icmp eq i32 %conv21, %conv24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body19
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %for.body19
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %26 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond15, !llvm.loop !6

for.end:                                          ; preds = %for.cond15
  br label %if.end60

if.else:                                          ; preds = %land.lhs.true, %for.body
  %27 = load ptr, ptr %pIndex.addr, align 8
  %aColExpr29 = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %aColExpr29, align 8
  store ptr %28, ptr %aColExpr, align 8
  %cmp30 = icmp ne ptr %28, null
  br i1 %cmp30, label %if.then32, label %if.end59

if.then32:                                        ; preds = %if.else
  store i32 0, ptr %jj, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc56, %if.then32
  %29 = load i32, ptr %jj, align 4
  %30 = load ptr, ptr %pIndex.addr, align 8
  %nKeyCol34 = getelementptr inbounds nuw %struct.Index, ptr %30, i32 0, i32 13
  %31 = load i16, ptr %nKeyCol34, align 2
  %conv35 = zext i16 %31 to i32
  %cmp36 = icmp slt i32 %29, %conv35
  br i1 %cmp36, label %for.body38, label %for.end58

for.body38:                                       ; preds = %for.cond33
  %32 = load ptr, ptr %pIndex.addr, align 8
  %aiColumn39 = getelementptr inbounds nuw %struct.Index, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %aiColumn39, align 8
  %34 = load i32, ptr %jj, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %33, i64 %idxprom40
  %35 = load i16, ptr %arrayidx41, align 2
  %conv42 = sext i16 %35 to i32
  %cmp43 = icmp ne i32 %conv42, -2
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body38
  br label %for.inc56

if.end46:                                         ; preds = %for.body38
  %36 = load ptr, ptr %pExpr, align 8
  %37 = load ptr, ptr %aColExpr, align 8
  %a47 = getelementptr inbounds nuw %struct.ExprList, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %jj, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a47, i64 0, i64 %idxprom48
  %pExpr50 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx49, i32 0, i32 0
  %39 = load ptr, ptr %pExpr50, align 8
  %40 = load i32, ptr %iCursor.addr, align 4
  %call51 = call i32 @sqlite3ExprCompareSkip(ptr noundef %36, ptr noundef %39, i32 noundef %40)
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end46
  store i32 1, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end46
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55, %if.then45
  %41 = load i32, ptr %jj, align 4
  %inc57 = add nsw i32 %41, 1
  store i32 %inc57, ptr %jj, align 4
  br label %for.cond33, !llvm.loop !8

for.end58:                                        ; preds = %for.cond33
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %42 = load i32, ptr %ii, align 4
  %inc62 = add nsw i32 %42, 1
  store i32 %inc62, ptr %ii, align 4
  br label %for.cond, !llvm.loop !9

for.end63:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end63, %if.then54, %if.then27, %if.then13, %if.then1, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
