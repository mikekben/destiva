; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @findIndexCol(ptr noundef %pParse, ptr noundef %pList, i32 noundef %iBase, ptr noundef %pIdx, i32 noundef %iCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %iBase.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %zColl = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %iBase, ptr %iBase.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %azColl, align 8
  %2 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8
  store ptr %3, ptr %zColl, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom1
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx2, i32 0, i32 0
  %9 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %9)
  store ptr %call, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 0
  %11 = load i8, ptr %op, align 8
  %conv = zext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv, 162
  br i1 %cmp3, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 9
  %13 = load i16, ptr %iColumn, align 8
  %conv5 = sext i16 %13 to i32
  %14 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %aiColumn, align 8
  %16 = load i32, ptr %iCol.addr, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %15, i64 %idxprom6
  %17 = load i16, ptr %arrayidx7, align 2
  %conv8 = sext i16 %17 to i32
  %cmp9 = icmp eq i32 %conv5, %conv8
  br i1 %cmp9, label %land.lhs.true11, label %if.end23

land.lhs.true11:                                  ; preds = %land.lhs.true
  %18 = load ptr, ptr %p, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %iTable, align 4
  %20 = load i32, ptr %iBase.addr, align 4
  %cmp12 = icmp eq i32 %19, %20
  br i1 %cmp12, label %if.then, label %if.end23

if.then:                                          ; preds = %land.lhs.true11
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pList.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a14, i64 0, i64 %idxprom15
  %pExpr17 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx16, i32 0, i32 0
  %24 = load ptr, ptr %pExpr17, align 8
  %call18 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %21, ptr noundef %24)
  store ptr %call18, ptr %pColl, align 8
  %25 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zName, align 8
  %27 = load ptr, ptr %zColl, align 8
  %call19 = call i32 @sqlite3StrICmp(ptr noundef %26, ptr noundef %27)
  %cmp20 = icmp eq i32 0, %call19
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.then
  %28 = load i32, ptr %i, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end23

if.end23:                                         ; preds = %if.end, %land.lhs.true11, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then22
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
