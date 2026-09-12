; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
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
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.HiddenIndexInfo = type { ptr, ptr }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.sqlite3_index_orderby = type { i32, i8 }

@.str.329 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @allocateIndexInfo(ptr noundef %pParse, ptr noundef %pWC, i64 noundef %mUnusable, ptr noundef %pSrc, ptr noundef %pOrderBy, ptr noundef %pmNoOmit) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %mUnusable.addr = alloca i64, align 8
  %pSrc.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pmNoOmit.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nTerm = alloca i32, align 4
  %pIdxCons = alloca ptr, align 8
  %pIdxOrderBy = alloca ptr, align 8
  %pUsage = alloca ptr, align 8
  %pHidden = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %nOrderBy = alloca i32, align 4
  %pIdxInfo = alloca ptr, align 8
  %mNoOmit = alloca i16, align 2
  %n = alloca i32, align 4
  %pExpr = alloca ptr, align 8
  %op72 = alloca i16, align 2
  %pExpr195 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store i64 %mUnusable, ptr %mUnusable.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pmNoOmit, ptr %pmNoOmit.addr, align 8
  store i16 0, ptr %mNoOmit, align 2
  store i32 0, ptr %nTerm, align 4
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %a, align 8
  store ptr %1, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pWC.addr, align 8
  %nTerm1 = getelementptr inbounds nuw %struct.WhereClause, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %nTerm1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %leftCursor, align 4
  %7 = load ptr, ptr %pSrc.addr, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %iCursor, align 8
  %cmp2 = icmp ne i32 %6, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %pTerm, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %9, i32 0, i32 11
  %10 = load i64, ptr %prereqRight, align 8
  %11 = load i64, ptr %mUnusable.addr, align 8
  %and = and i64 %10, %11
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 4
  %13 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %13 to i32
  %and5 = and i32 %conv, -2049
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  br label %for.inc

if.end9:                                          ; preds = %if.end4
  %14 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %wtFlags, align 2
  %conv10 = zext i16 %15 to i32
  %and11 = and i32 %conv10, 0
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %16 = load i32, ptr %nTerm, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %nTerm, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %if.then13, %if.then8, %if.then3, %if.then
  %17 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, ptr %i, align 4
  %18 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %nOrderBy, align 4
  %19 = load ptr, ptr %pOrderBy.addr, align 8
  %tobool16 = icmp ne ptr %19, null
  br i1 %tobool16, label %if.then17, label %if.end47

if.then17:                                        ; preds = %for.end
  %20 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %nExpr, align 8
  store i32 %21, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc40, %if.then17
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %n, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %pOrderBy.addr, align 8
  %a22 = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %i, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a22, i64 0, i64 %idxprom
  %pExpr23 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %26 = load ptr, ptr %pExpr23, align 8
  store ptr %26, ptr %pExpr, align 8
  %27 = load ptr, ptr %pExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 0
  %28 = load i8, ptr %op, align 8
  %conv24 = zext i8 %28 to i32
  %cmp25 = icmp ne i32 %conv24, 162
  br i1 %cmp25, label %if.then30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body21
  %29 = load ptr, ptr %pExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %iTable, align 4
  %31 = load ptr, ptr %pSrc.addr, align 8
  %iCursor27 = getelementptr inbounds nuw %struct.SrcList_item, ptr %31, i32 0, i32 10
  %32 = load i32, ptr %iCursor27, align 8
  %cmp28 = icmp ne i32 %30, %32
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false, %for.body21
  br label %for.end42

if.end31:                                         ; preds = %lor.lhs.false
  %33 = load ptr, ptr %pOrderBy.addr, align 8
  %a32 = getelementptr inbounds nuw %struct.ExprList, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a32, i64 0, i64 %idxprom33
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx34, i32 0, i32 3
  %35 = load i8, ptr %sortFlags, align 8
  %conv35 = zext i8 %35 to i32
  %and36 = and i32 %conv35, 2
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end31
  br label %for.end42

if.end39:                                         ; preds = %if.end31
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %36 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %36, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end42:                                        ; preds = %if.then38, %if.then30, %for.cond18
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %n, align 4
  %cmp43 = icmp eq i32 %37, %38
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.end42
  %39 = load i32, ptr %n, align 4
  store i32 %39, ptr %nOrderBy, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %for.end42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %for.end
  %40 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %db, align 8
  %42 = load i32, ptr %nTerm, align 4
  %conv48 = sext i32 %42 to i64
  %mul = mul i64 20, %conv48
  %add = add i64 96, %mul
  %43 = load i32, ptr %nOrderBy, align 4
  %conv49 = sext i32 %43 to i64
  %mul50 = mul i64 8, %conv49
  %add51 = add i64 %add, %mul50
  %add52 = add i64 %add51, 16
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %41, i64 noundef %add52)
  store ptr %call, ptr %pIdxInfo, align 8
  %44 = load ptr, ptr %pIdxInfo, align 8
  %cmp53 = icmp eq ptr %44, null
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end47
  %45 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %45, ptr noundef @.str.329)
  store ptr null, ptr %retval, align 8
  br label %return

if.end56:                                         ; preds = %if.end47
  %46 = load ptr, ptr %pIdxInfo, align 8
  %arrayidx57 = getelementptr inbounds %struct.sqlite3_index_info, ptr %46, i64 1
  store ptr %arrayidx57, ptr %pHidden, align 8
  %47 = load ptr, ptr %pHidden, align 8
  %arrayidx58 = getelementptr inbounds %struct.HiddenIndexInfo, ptr %47, i64 1
  store ptr %arrayidx58, ptr %pIdxCons, align 8
  %48 = load ptr, ptr %pIdxCons, align 8
  %49 = load i32, ptr %nTerm, align 4
  %idxprom59 = sext i32 %49 to i64
  %arrayidx60 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %48, i64 %idxprom59
  store ptr %arrayidx60, ptr %pIdxOrderBy, align 8
  %50 = load ptr, ptr %pIdxOrderBy, align 8
  %51 = load i32, ptr %nOrderBy, align 4
  %idxprom61 = sext i32 %51 to i64
  %arrayidx62 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %50, i64 %idxprom61
  store ptr %arrayidx62, ptr %pUsage, align 8
  %52 = load i32, ptr %nTerm, align 4
  %53 = load ptr, ptr %pIdxInfo, align 8
  %nConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %53, i32 0, i32 0
  store i32 %52, ptr %nConstraint, align 8
  %54 = load i32, ptr %nOrderBy, align 4
  %55 = load ptr, ptr %pIdxInfo, align 8
  %nOrderBy63 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %55, i32 0, i32 2
  store i32 %54, ptr %nOrderBy63, align 8
  %56 = load ptr, ptr %pIdxCons, align 8
  %57 = load ptr, ptr %pIdxInfo, align 8
  %aConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %57, i32 0, i32 1
  store ptr %56, ptr %aConstraint, align 8
  %58 = load ptr, ptr %pIdxOrderBy, align 8
  %59 = load ptr, ptr %pIdxInfo, align 8
  %aOrderBy = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %59, i32 0, i32 3
  store ptr %58, ptr %aOrderBy, align 8
  %60 = load ptr, ptr %pUsage, align 8
  %61 = load ptr, ptr %pIdxInfo, align 8
  %aConstraintUsage = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %61, i32 0, i32 4
  store ptr %60, ptr %aConstraintUsage, align 8
  %62 = load ptr, ptr %pWC.addr, align 8
  %63 = load ptr, ptr %pHidden, align 8
  %pWC64 = getelementptr inbounds nuw %struct.HiddenIndexInfo, ptr %63, i32 0, i32 0
  store ptr %62, ptr %pWC64, align 8
  %64 = load ptr, ptr %pParse.addr, align 8
  %65 = load ptr, ptr %pHidden, align 8
  %pParse65 = getelementptr inbounds nuw %struct.HiddenIndexInfo, ptr %65, i32 0, i32 1
  store ptr %64, ptr %pParse65, align 8
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  %66 = load ptr, ptr %pWC.addr, align 8
  %a66 = getelementptr inbounds nuw %struct.WhereClause, ptr %66, i32 0, i32 6
  %67 = load ptr, ptr %a66, align 8
  store ptr %67, ptr %pTerm, align 8
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc187, %if.end56
  %68 = load i32, ptr %i, align 4
  %69 = load ptr, ptr %pWC.addr, align 8
  %nTerm68 = getelementptr inbounds nuw %struct.WhereClause, ptr %69, i32 0, i32 4
  %70 = load i32, ptr %nTerm68, align 4
  %cmp69 = icmp slt i32 %68, %70
  br i1 %cmp69, label %for.body71, label %for.end190

for.body71:                                       ; preds = %for.cond67
  %71 = load ptr, ptr %pTerm, align 8
  %leftCursor73 = getelementptr inbounds nuw %struct.WhereTerm, ptr %71, i32 0, i32 8
  %72 = load i32, ptr %leftCursor73, align 4
  %73 = load ptr, ptr %pSrc.addr, align 8
  %iCursor74 = getelementptr inbounds nuw %struct.SrcList_item, ptr %73, i32 0, i32 10
  %74 = load i32, ptr %iCursor74, align 8
  %cmp75 = icmp ne i32 %72, %74
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %for.body71
  br label %for.inc187

if.end78:                                         ; preds = %for.body71
  %75 = load ptr, ptr %pTerm, align 8
  %prereqRight79 = getelementptr inbounds nuw %struct.WhereTerm, ptr %75, i32 0, i32 11
  %76 = load i64, ptr %prereqRight79, align 8
  %77 = load i64, ptr %mUnusable.addr, align 8
  %and80 = and i64 %76, %77
  %tobool81 = icmp ne i64 %and80, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  br label %for.inc187

if.end83:                                         ; preds = %if.end78
  %78 = load ptr, ptr %pTerm, align 8
  %eOperator84 = getelementptr inbounds nuw %struct.WhereTerm, ptr %78, i32 0, i32 4
  %79 = load i16, ptr %eOperator84, align 4
  %conv85 = zext i16 %79 to i32
  %and86 = and i32 %conv85, -2049
  %cmp87 = icmp eq i32 %and86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end83
  br label %for.inc187

if.end90:                                         ; preds = %if.end83
  %80 = load ptr, ptr %pTerm, align 8
  %wtFlags91 = getelementptr inbounds nuw %struct.WhereTerm, ptr %80, i32 0, i32 3
  %81 = load i16, ptr %wtFlags91, align 2
  %conv92 = zext i16 %81 to i32
  %and93 = and i32 %conv92, 0
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.end90
  br label %for.inc187

if.end96:                                         ; preds = %if.end90
  %82 = load ptr, ptr %pSrc.addr, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %82, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %83 = load i8, ptr %jointype, align 4
  %conv97 = zext i8 %83 to i32
  %and98 = and i32 %conv97, 8
  %cmp99 = icmp ne i32 %and98, 0
  br i1 %cmp99, label %land.lhs.true, label %if.end111

land.lhs.true:                                    ; preds = %if.end96
  %84 = load ptr, ptr %pTerm, align 8
  %pExpr101 = getelementptr inbounds nuw %struct.WhereTerm, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %pExpr101, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %flags, align 4
  %and102 = and i32 %86, 1
  %cmp103 = icmp ne i32 %and102, 0
  br i1 %cmp103, label %if.end111, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %land.lhs.true
  %87 = load ptr, ptr %pTerm, align 8
  %eOperator106 = getelementptr inbounds nuw %struct.WhereTerm, ptr %87, i32 0, i32 4
  %88 = load i16, ptr %eOperator106, align 4
  %conv107 = zext i16 %88 to i32
  %and108 = and i32 %conv107, 384
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %land.lhs.true105
  br label %for.inc187

if.end111:                                        ; preds = %land.lhs.true105, %land.lhs.true, %if.end96
  %89 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %89, i32 0, i32 10
  %90 = load i32, ptr %u, align 8
  %91 = load ptr, ptr %pIdxCons, align 8
  %92 = load i32, ptr %j, align 4
  %idxprom112 = sext i32 %92 to i64
  %arrayidx113 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %91, i64 %idxprom112
  %iColumn = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx113, i32 0, i32 0
  store i32 %90, ptr %iColumn, align 4
  %93 = load i32, ptr %i, align 4
  %94 = load ptr, ptr %pIdxCons, align 8
  %95 = load i32, ptr %j, align 4
  %idxprom114 = sext i32 %95 to i64
  %arrayidx115 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %94, i64 %idxprom114
  %iTermOffset = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx115, i32 0, i32 3
  store i32 %93, ptr %iTermOffset, align 4
  %96 = load ptr, ptr %pTerm, align 8
  %eOperator116 = getelementptr inbounds nuw %struct.WhereTerm, ptr %96, i32 0, i32 4
  %97 = load i16, ptr %eOperator116, align 4
  %conv117 = zext i16 %97 to i32
  %and118 = and i32 %conv117, 8191
  %conv119 = trunc i32 %and118 to i16
  store i16 %conv119, ptr %op72, align 2
  %98 = load i16, ptr %op72, align 2
  %conv120 = zext i16 %98 to i32
  %cmp121 = icmp eq i32 %conv120, 1
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.end111
  store i16 2, ptr %op72, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.end111
  %99 = load i16, ptr %op72, align 2
  %conv125 = zext i16 %99 to i32
  %cmp126 = icmp eq i32 %conv125, 64
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.end124
  %100 = load ptr, ptr %pTerm, align 8
  %eMatchOp = getelementptr inbounds nuw %struct.WhereTerm, ptr %100, i32 0, i32 6
  %101 = load i8, ptr %eMatchOp, align 1
  %102 = load ptr, ptr %pIdxCons, align 8
  %103 = load i32, ptr %j, align 4
  %idxprom129 = sext i32 %103 to i64
  %arrayidx130 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %102, i64 %idxprom129
  %op131 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx130, i32 0, i32 1
  store i8 %101, ptr %op131, align 4
  br label %if.end185

if.else:                                          ; preds = %if.end124
  %104 = load i16, ptr %op72, align 2
  %conv132 = zext i16 %104 to i32
  %and133 = and i32 %conv132, 384
  %tobool134 = icmp ne i32 %and133, 0
  br i1 %tobool134, label %if.then135, label %if.else148

if.then135:                                       ; preds = %if.else
  %105 = load i16, ptr %op72, align 2
  %conv136 = zext i16 %105 to i32
  %cmp137 = icmp eq i32 %conv136, 256
  br i1 %cmp137, label %if.then139, label %if.else143

if.then139:                                       ; preds = %if.then135
  %106 = load ptr, ptr %pIdxCons, align 8
  %107 = load i32, ptr %j, align 4
  %idxprom140 = sext i32 %107 to i64
  %arrayidx141 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %106, i64 %idxprom140
  %op142 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx141, i32 0, i32 1
  store i8 71, ptr %op142, align 4
  br label %if.end147

if.else143:                                       ; preds = %if.then135
  %108 = load ptr, ptr %pIdxCons, align 8
  %109 = load i32, ptr %j, align 4
  %idxprom144 = sext i32 %109 to i64
  %arrayidx145 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %108, i64 %idxprom144
  %op146 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx145, i32 0, i32 1
  store i8 72, ptr %op146, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.else143, %if.then139
  br label %if.end184

if.else148:                                       ; preds = %if.else
  %110 = load i16, ptr %op72, align 2
  %conv149 = trunc i16 %110 to i8
  %111 = load ptr, ptr %pIdxCons, align 8
  %112 = load i32, ptr %j, align 4
  %idxprom150 = sext i32 %112 to i64
  %arrayidx151 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %111, i64 %idxprom150
  %op152 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx151, i32 0, i32 1
  store i8 %conv149, ptr %op152, align 4
  %113 = load i16, ptr %op72, align 2
  %conv153 = zext i16 %113 to i32
  %and154 = and i32 %conv153, 60
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %land.lhs.true156, label %if.end183

land.lhs.true156:                                 ; preds = %if.else148
  %114 = load ptr, ptr %pTerm, align 8
  %pExpr157 = getelementptr inbounds nuw %struct.WhereTerm, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %pExpr157, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %115, i32 0, i32 5
  %116 = load ptr, ptr %pRight, align 8
  %call158 = call i32 @sqlite3ExprIsVector(ptr noundef %116)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.end183

if.then160:                                       ; preds = %land.lhs.true156
  %117 = load i32, ptr %i, align 4
  %cmp161 = icmp slt i32 %117, 16
  br i1 %cmp161, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.then160
  %118 = load i32, ptr %i, align 4
  %shl = shl i32 1, %118
  %119 = load i16, ptr %mNoOmit, align 2
  %conv164 = zext i16 %119 to i32
  %or = or i32 %conv164, %shl
  %conv165 = trunc i32 %or to i16
  store i16 %conv165, ptr %mNoOmit, align 2
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.then160
  %120 = load i16, ptr %op72, align 2
  %conv167 = zext i16 %120 to i32
  %cmp168 = icmp eq i32 %conv167, 16
  br i1 %cmp168, label %if.then170, label %if.end174

if.then170:                                       ; preds = %if.end166
  %121 = load ptr, ptr %pIdxCons, align 8
  %122 = load i32, ptr %j, align 4
  %idxprom171 = sext i32 %122 to i64
  %arrayidx172 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %121, i64 %idxprom171
  %op173 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx172, i32 0, i32 1
  store i8 8, ptr %op173, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then170, %if.end166
  %123 = load i16, ptr %op72, align 2
  %conv175 = zext i16 %123 to i32
  %cmp176 = icmp eq i32 %conv175, 4
  br i1 %cmp176, label %if.then178, label %if.end182

if.then178:                                       ; preds = %if.end174
  %124 = load ptr, ptr %pIdxCons, align 8
  %125 = load i32, ptr %j, align 4
  %idxprom179 = sext i32 %125 to i64
  %arrayidx180 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %124, i64 %idxprom179
  %op181 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx180, i32 0, i32 1
  store i8 32, ptr %op181, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %if.end174
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %land.lhs.true156, %if.else148
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end147
  br label %if.end185

if.end185:                                        ; preds = %if.end184, %if.then128
  %126 = load i32, ptr %j, align 4
  %inc186 = add nsw i32 %126, 1
  store i32 %inc186, ptr %j, align 4
  br label %for.inc187

for.inc187:                                       ; preds = %if.end185, %if.then110, %if.then95, %if.then89, %if.then82, %if.then77
  %127 = load i32, ptr %i, align 4
  %inc188 = add nsw i32 %127, 1
  store i32 %inc188, ptr %i, align 4
  %128 = load ptr, ptr %pTerm, align 8
  %incdec.ptr189 = getelementptr inbounds nuw %struct.WhereTerm, ptr %128, i32 1
  store ptr %incdec.ptr189, ptr %pTerm, align 8
  br label %for.cond67, !llvm.loop !9

for.end190:                                       ; preds = %for.cond67
  store i32 0, ptr %i, align 4
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc214, %for.end190
  %129 = load i32, ptr %i, align 4
  %130 = load i32, ptr %nOrderBy, align 4
  %cmp192 = icmp slt i32 %129, %130
  br i1 %cmp192, label %for.body194, label %for.end216

for.body194:                                      ; preds = %for.cond191
  %131 = load ptr, ptr %pOrderBy.addr, align 8
  %a196 = getelementptr inbounds nuw %struct.ExprList, ptr %131, i32 0, i32 1
  %132 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %132 to i64
  %arrayidx198 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a196, i64 0, i64 %idxprom197
  %pExpr199 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx198, i32 0, i32 0
  %133 = load ptr, ptr %pExpr199, align 8
  store ptr %133, ptr %pExpr195, align 8
  %134 = load ptr, ptr %pExpr195, align 8
  %iColumn200 = getelementptr inbounds nuw %struct.Expr, ptr %134, i32 0, i32 9
  %135 = load i16, ptr %iColumn200, align 8
  %conv201 = sext i16 %135 to i32
  %136 = load ptr, ptr %pIdxOrderBy, align 8
  %137 = load i32, ptr %i, align 4
  %idxprom202 = sext i32 %137 to i64
  %arrayidx203 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %136, i64 %idxprom202
  %iColumn204 = getelementptr inbounds nuw %struct.sqlite3_index_orderby, ptr %arrayidx203, i32 0, i32 0
  store i32 %conv201, ptr %iColumn204, align 4
  %138 = load ptr, ptr %pOrderBy.addr, align 8
  %a205 = getelementptr inbounds nuw %struct.ExprList, ptr %138, i32 0, i32 1
  %139 = load i32, ptr %i, align 4
  %idxprom206 = sext i32 %139 to i64
  %arrayidx207 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a205, i64 0, i64 %idxprom206
  %sortFlags208 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx207, i32 0, i32 3
  %140 = load i8, ptr %sortFlags208, align 8
  %conv209 = zext i8 %140 to i32
  %and210 = and i32 %conv209, 1
  %conv211 = trunc i32 %and210 to i8
  %141 = load ptr, ptr %pIdxOrderBy, align 8
  %142 = load i32, ptr %i, align 4
  %idxprom212 = sext i32 %142 to i64
  %arrayidx213 = getelementptr inbounds %struct.sqlite3_index_orderby, ptr %141, i64 %idxprom212
  %desc = getelementptr inbounds nuw %struct.sqlite3_index_orderby, ptr %arrayidx213, i32 0, i32 1
  store i8 %conv211, ptr %desc, align 4
  br label %for.inc214

for.inc214:                                       ; preds = %for.body194
  %143 = load i32, ptr %i, align 4
  %inc215 = add nsw i32 %143, 1
  store i32 %inc215, ptr %i, align 4
  br label %for.cond191, !llvm.loop !10

for.end216:                                       ; preds = %for.cond191
  %144 = load i16, ptr %mNoOmit, align 2
  %145 = load ptr, ptr %pmNoOmit.addr, align 8
  store i16 %144, ptr %145, align 2
  %146 = load ptr, ptr %pIdxInfo, align 8
  store ptr %146, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end216, %if.then55
  %147 = load ptr, ptr %retval, align 8
  ret ptr %147
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
!10 = distinct !{!10, !7}
