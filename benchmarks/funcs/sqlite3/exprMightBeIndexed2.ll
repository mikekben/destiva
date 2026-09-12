; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @exprMightBeIndexed2(ptr noundef %pFrom, i64 noundef %mPrereq, ptr noundef %aiCurCol, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pFrom.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %aiCurCol.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %i = alloca i32, align 4
  %iCur = alloca i32, align 4
  store ptr %pFrom, ptr %pFrom.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store ptr %aiCurCol, ptr %aiCurCol.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %mPrereq.addr, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %2 = load i64, ptr %mPrereq.addr, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, ptr %mPrereq.addr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %pFrom.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %5 = load i32, ptr %iCursor, align 8
  store i32 %5, ptr %iCur, align 4
  %6 = load ptr, ptr %pFrom.addr, align 8
  %a1 = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a1, i64 0, i64 %idxprom2
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx3, i32 0, i32 4
  %8 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pIndex, align 8
  store ptr %9, ptr %pIdx, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc32, %for.end
  %10 = load ptr, ptr %pIdx, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body5, label %for.end33

for.body5:                                        ; preds = %for.cond4
  %11 = load ptr, ptr %pIdx, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %aColExpr, align 8
  %cmp6 = icmp eq ptr %12, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %for.inc32

if.end:                                           ; preds = %for.body5
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc29, %if.end
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 13
  %15 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %15 to i32
  %cmp8 = icmp slt i32 %13, %conv
  br i1 %cmp8, label %for.body10, label %for.end31

for.body10:                                       ; preds = %for.cond7
  %16 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %aiColumn, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %17, i64 %idxprom11
  %19 = load i16, ptr %arrayidx12, align 2
  %conv13 = sext i16 %19 to i32
  %cmp14 = icmp ne i32 %conv13, -2
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body10
  br label %for.inc29

if.end17:                                         ; preds = %for.body10
  %20 = load ptr, ptr %pExpr.addr, align 8
  %21 = load ptr, ptr %pIdx, align 8
  %aColExpr18 = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 10
  %22 = load ptr, ptr %aColExpr18, align 8
  %a19 = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a19, i64 0, i64 %idxprom20
  %pExpr22 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx21, i32 0, i32 0
  %24 = load ptr, ptr %pExpr22, align 8
  %25 = load i32, ptr %iCur, align 4
  %call = call i32 @sqlite3ExprCompareSkip(ptr noundef %20, ptr noundef %24, i32 noundef %25)
  %cmp23 = icmp eq i32 %call, 0
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end17
  %26 = load i32, ptr %iCur, align 4
  %27 = load ptr, ptr %aiCurCol.addr, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %27, i64 0
  store i32 %26, ptr %arrayidx26, align 4
  %28 = load ptr, ptr %aiCurCol.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 -2, ptr %arrayidx27, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end17
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28, %if.then16
  %29 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond7, !llvm.loop !8

for.end31:                                        ; preds = %for.cond7
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31, %if.then
  %30 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %pNext, align 8
  store ptr %31, ptr %pIdx, align 8
  br label %for.cond4, !llvm.loop !9

for.end33:                                        ; preds = %for.cond4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end33, %if.then25
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompareSkip(ptr noundef, ptr noundef, i32 noundef) #0

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
