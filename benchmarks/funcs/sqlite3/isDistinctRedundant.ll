; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @isDistinctRedundant(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pWC, ptr noundef %pDistinct) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %pDistinct.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %i = alloca i32, align 4
  %iBase = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pDistinct, ptr %pDistinct.addr, align 8
  %0 = load ptr, ptr %pTabList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nSrc, align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %3 = load i32, ptr %iCursor, align 8
  store i32 %3, ptr %iBase, align 4
  %4 = load ptr, ptr %pTabList.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.SrcList, ptr %4, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a1, i64 0, i64 0
  %pTab3 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx2, i32 0, i32 4
  %5 = load ptr, ptr %pTab3, align 8
  store ptr %5, ptr %pTab, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %pDistinct.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nExpr, align 8
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pDistinct.addr, align 8
  %a5 = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a5, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx6, i32 0, i32 0
  %11 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %11)
  store ptr %call, ptr %p, align 8
  %12 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 0
  %13 = load i8, ptr %op, align 8
  %conv = zext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv, 162
  br i1 %cmp7, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %p, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %iTable, align 4
  %16 = load i32, ptr %iBase, align 4
  %cmp9 = icmp eq i32 %15, %16
  br i1 %cmp9, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %17 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 9
  %18 = load i16, ptr %iColumn, align 8
  %conv12 = sext i16 %18 to i32
  %cmp13 = icmp slt i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true11
  store i32 1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pIndex, align 8
  store ptr %21, ptr %pIdx, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc53, %for.end
  %22 = load ptr, ptr %pIdx, align 8
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %for.body18, label %for.end54

for.body18:                                       ; preds = %for.cond17
  %23 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 15
  %24 = load i8, ptr %onError, align 2
  %conv19 = zext i8 %24 to i32
  %cmp20 = icmp ne i32 %conv19, 0
  br i1 %cmp20, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.body18
  br label %for.inc53

if.end23:                                         ; preds = %for.body18
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %if.end23
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 13
  %27 = load i16, ptr %nKeyCol, align 2
  %conv25 = zext i16 %27 to i32
  %cmp26 = icmp slt i32 %25, %conv25
  br i1 %cmp26, label %for.body28, label %for.end46

for.body28:                                       ; preds = %for.cond24
  %28 = load ptr, ptr %pWC.addr, align 8
  %29 = load i32, ptr %iBase, align 4
  %30 = load i32, ptr %i, align 4
  %31 = load ptr, ptr %pIdx, align 8
  %call29 = call ptr @sqlite3WhereFindTerm(ptr noundef %28, i32 noundef %29, i32 noundef %30, i64 noundef -1, i32 noundef 2, ptr noundef %31)
  %cmp30 = icmp eq ptr null, %call29
  br i1 %cmp30, label %if.then32, label %if.end43

if.then32:                                        ; preds = %for.body28
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %pDistinct.addr, align 8
  %34 = load i32, ptr %iBase, align 4
  %35 = load ptr, ptr %pIdx, align 8
  %36 = load i32, ptr %i, align 4
  %call33 = call i32 @findIndexCol(ptr noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef %35, i32 noundef %36)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then32
  br label %for.end46

if.end37:                                         ; preds = %if.then32
  %37 = load ptr, ptr %pIdx, align 8
  %38 = load i32, ptr %i, align 4
  %call38 = call i32 @indexColumnNotNull(ptr noundef %37, i32 noundef %38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  br label %for.end46

if.end42:                                         ; preds = %if.end37
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %for.body28
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %39 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %39, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond24, !llvm.loop !8

for.end46:                                        ; preds = %if.then41, %if.then36, %for.cond24
  %40 = load i32, ptr %i, align 4
  %41 = load ptr, ptr %pIdx, align 8
  %nKeyCol47 = getelementptr inbounds nuw %struct.Index, ptr %41, i32 0, i32 13
  %42 = load i16, ptr %nKeyCol47, align 2
  %conv48 = zext i16 %42 to i32
  %cmp49 = icmp eq i32 %40, %conv48
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end46
  store i32 1, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %for.end46
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52, %if.then22
  %43 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %pNext, align 8
  store ptr %44, ptr %pIdx, align 8
  br label %for.cond17, !llvm.loop !9

for.end54:                                        ; preds = %for.cond17
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end54, %if.then51, %if.then15, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereFindTerm(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @findIndexCol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @indexColumnNotNull(ptr noundef, i32 noundef) #0

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
