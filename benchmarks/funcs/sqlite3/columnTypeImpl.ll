; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.29 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ColumnType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @columnTypeImpl(ptr noundef %pNC, ptr noundef %pExpr) #0 {
entry:
  %pNC.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %zType = alloca ptr, align 8
  %j = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pS = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %pTabList = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %p = alloca ptr, align 8
  %sNC49 = alloca %struct.NameContext, align 8
  %pS50 = alloca ptr, align 8
  %p51 = alloca ptr, align 8
  store ptr %pNC, ptr %pNC.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr null, ptr %zType, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  switch i32 %conv, label %sw.epilog [
    i32 162, label %sw.bb
    i32 134, label %sw.bb48
  ]

sw.bb:                                            ; preds = %entry
  store ptr null, ptr %pTab, align 8
  store ptr null, ptr %pS, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 9
  %3 = load i16, ptr %iColumn, align 8
  %conv1 = sext i16 %3 to i32
  store i32 %conv1, ptr %iCol, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %sw.bb
  %4 = load ptr, ptr %pNC.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %pTab, align 8
  %tobool2 = icmp ne ptr %5, null
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %pNC.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pSrcList, align 8
  store ptr %8, ptr %pTabList, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load i32, ptr %j, align 4
  %10 = load ptr, ptr %pTabList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nSrc, align 8
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %land.rhs4, label %land.end7

land.rhs4:                                        ; preds = %for.cond
  %12 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %j, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %14 = load i32, ptr %iCursor, align 8
  %15 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %iTable, align 4
  %cmp5 = icmp ne i32 %14, %16
  br label %land.end7

land.end7:                                        ; preds = %land.rhs4, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs4 ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end7
  %19 = load i32, ptr %j, align 4
  %20 = load ptr, ptr %pTabList, align 8
  %nSrc8 = getelementptr inbounds nuw %struct.SrcList, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %nSrc8, align 8
  %cmp9 = icmp slt i32 %19, %21
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %22 = load ptr, ptr %pTabList, align 8
  %a11 = getelementptr inbounds nuw %struct.SrcList, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a11, i64 0, i64 %idxprom12
  %pTab14 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx13, i32 0, i32 4
  %24 = load ptr, ptr %pTab14, align 8
  store ptr %24, ptr %pTab, align 8
  %25 = load ptr, ptr %pTabList, align 8
  %a15 = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a15, i64 0, i64 %idxprom16
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx17, i32 0, i32 5
  %27 = load ptr, ptr %pSelect, align 8
  store ptr %27, ptr %pS, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %28 = load ptr, ptr %pNC.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.NameContext, ptr %28, i32 0, i32 3
  %29 = load ptr, ptr %pNext, align 8
  store ptr %29, ptr %pNC.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %30 = load ptr, ptr %pTab, align 8
  %cmp18 = icmp eq ptr %30, null
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  br label %sw.epilog

if.end21:                                         ; preds = %while.end
  %31 = load ptr, ptr %pS, align 8
  %tobool22 = icmp ne ptr %31, null
  br i1 %tobool22, label %if.then23, label %if.else38

if.then23:                                        ; preds = %if.end21
  %32 = load i32, ptr %iCol, align 4
  %cmp24 = icmp sge i32 %32, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then23
  %33 = load i32, ptr %iCol, align 4
  %34 = load ptr, ptr %pS, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nExpr, align 8
  %cmp26 = icmp slt i32 %33, %36
  br i1 %cmp26, label %if.then28, label %if.end37

if.then28:                                        ; preds = %land.lhs.true
  %37 = load ptr, ptr %pS, align 8
  %pEList29 = getelementptr inbounds nuw %struct.Select, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pEList29, align 8
  %a30 = getelementptr inbounds nuw %struct.ExprList, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %iCol, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a30, i64 0, i64 %idxprom31
  %pExpr33 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx32, i32 0, i32 0
  %40 = load ptr, ptr %pExpr33, align 8
  store ptr %40, ptr %p, align 8
  %41 = load ptr, ptr %pS, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %41, i32 0, i32 8
  %42 = load ptr, ptr %pSrc, align 8
  %pSrcList34 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %42, ptr %pSrcList34, align 8
  %43 = load ptr, ptr %pNC.addr, align 8
  %pNext35 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 3
  store ptr %43, ptr %pNext35, align 8
  %44 = load ptr, ptr %pNC.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.NameContext, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pParse, align 8
  %pParse36 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %45, ptr %pParse36, align 8
  %46 = load ptr, ptr %p, align 8
  %call = call ptr @columnTypeImpl(ptr noundef %sNC, ptr noundef %46)
  store ptr %call, ptr %zType, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %land.lhs.true, %if.then23
  br label %if.end47

if.else38:                                        ; preds = %if.end21
  %47 = load i32, ptr %iCol, align 4
  %cmp39 = icmp slt i32 %47, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store ptr @.str.29, ptr %zType, align 8
  br label %if.end46

if.else42:                                        ; preds = %if.else38
  %48 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %aCol, align 8
  %50 = load i32, ptr %iCol, align 4
  %idxprom43 = sext i32 %50 to i64
  %arrayidx44 = getelementptr inbounds %struct.Column, ptr %49, i64 %idxprom43
  %call45 = call ptr @sqlite3ColumnType(ptr noundef %arrayidx44, ptr noundef null)
  store ptr %call45, ptr %zType, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end37
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  %51 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %51, i32 0, i32 6
  %52 = load ptr, ptr %x, align 8
  store ptr %52, ptr %pS50, align 8
  %53 = load ptr, ptr %pS50, align 8
  %pEList52 = getelementptr inbounds nuw %struct.Select, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pEList52, align 8
  %a53 = getelementptr inbounds nuw %struct.ExprList, ptr %54, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a53, i64 0, i64 0
  %pExpr55 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx54, i32 0, i32 0
  %55 = load ptr, ptr %pExpr55, align 8
  store ptr %55, ptr %p51, align 8
  %56 = load ptr, ptr %pS50, align 8
  %pSrc56 = getelementptr inbounds nuw %struct.Select, ptr %56, i32 0, i32 8
  %57 = load ptr, ptr %pSrc56, align 8
  %pSrcList57 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC49, i32 0, i32 1
  store ptr %57, ptr %pSrcList57, align 8
  %58 = load ptr, ptr %pNC.addr, align 8
  %pNext58 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC49, i32 0, i32 3
  store ptr %58, ptr %pNext58, align 8
  %59 = load ptr, ptr %pNC.addr, align 8
  %pParse59 = getelementptr inbounds nuw %struct.NameContext, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pParse59, align 8
  %pParse60 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC49, i32 0, i32 0
  store ptr %60, ptr %pParse60, align 8
  %61 = load ptr, ptr %p51, align 8
  %call61 = call ptr @columnTypeImpl(ptr noundef %sNC49, ptr noundef %61)
  store ptr %call61, ptr %zType, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %if.end47, %if.then20, %entry
  %62 = load ptr, ptr %zType, align 8
  ret ptr %62
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
