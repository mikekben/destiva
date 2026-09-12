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
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.812 = external hidden unnamed_addr constant [71 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprListNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3UpsertAnalyzeTarget(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pUpsert) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pUpsert.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iCursor = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %pTarget = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %sCol = alloca [2 x %struct.Expr], align 16
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %nn = alloca i32, align 4
  %pExpr66 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pUpsert, ptr %pUpsert.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %0 = load ptr, ptr %pParse.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %0, ptr %pParse1, align 8
  %1 = load ptr, ptr %pTabList.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %1, ptr %pSrcList, align 8
  %2 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pUpsertTarget, align 8
  %call = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pUpsertTargetWhere, align 8
  %call2 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %7)
  store i32 %call2, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pTab6 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 4
  %11 = load ptr, ptr %pTab6, align 8
  store ptr %11, ptr %pTab, align 8
  %12 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTarget7 = getelementptr inbounds nuw %struct.Upsert, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pUpsertTarget7, align 8
  store ptr %13, ptr %pTarget, align 8
  %14 = load ptr, ptr %pTabList.addr, align 8
  %a8 = getelementptr inbounds nuw %struct.SrcList, ptr %14, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a8, i64 0, i64 0
  %iCursor10 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx9, i32 0, i32 10
  %15 = load i32, ptr %iCursor10, align 8
  store i32 %15, ptr %iCursor, align 4
  %16 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %tabFlags, align 8
  %and = and i32 %17, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end5
  %18 = load ptr, ptr %pTarget, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nExpr, align 8
  %cmp11 = icmp eq i32 %19, 1
  br i1 %cmp11, label %land.lhs.true12, label %if.end22

land.lhs.true12:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %pTarget, align 8
  %a13 = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a13, i64 0, i64 0
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx14, i32 0, i32 0
  %21 = load ptr, ptr %pExpr, align 8
  store ptr %21, ptr %pTerm, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 0
  %22 = load i8, ptr %op, align 8
  %conv = zext i8 %22 to i32
  %cmp15 = icmp eq i32 %conv, 162
  br i1 %cmp15, label %land.lhs.true17, label %if.end22

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %23 = load ptr, ptr %pTerm, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 9
  %24 = load i16, ptr %iColumn, align 8
  %conv18 = sext i16 %24 to i32
  %cmp19 = icmp eq i32 %conv18, -1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true17
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %land.lhs.true17, %land.lhs.true12, %land.lhs.true, %if.end5
  %arraydecay = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 144, i1 false)
  %arrayidx23 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  %op24 = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx23, i32 0, i32 0
  store i8 109, ptr %op24, align 16
  %arrayidx25 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 1
  %arrayidx26 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx26, i32 0, i32 4
  store ptr %arrayidx25, ptr %pLeft, align 16
  %arrayidx27 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 1
  %op28 = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx27, i32 0, i32 0
  store i8 -94, ptr %op28, align 8
  %25 = load ptr, ptr %pTabList.addr, align 8
  %a29 = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a29, i64 0, i64 0
  %iCursor31 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx30, i32 0, i32 10
  %26 = load i32, ptr %iCursor31, align 8
  %arrayidx32 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 1
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx32, i32 0, i32 8
  store i32 %26, ptr %iTable, align 4
  %27 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pIndex, align 8
  store ptr %28, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc122, %if.end22
  %29 = load ptr, ptr %pIdx, align 8
  %tobool33 = icmp ne ptr %29, null
  br i1 %tobool33, label %for.body, label %for.end123

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %30, i32 0, i32 15
  %31 = load i8, ptr %onError, align 2
  %conv34 = zext i8 %31 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.end38, label %if.then37

if.then37:                                        ; preds = %for.body
  br label %for.inc122

if.end38:                                         ; preds = %for.body
  %32 = load ptr, ptr %pTarget, align 8
  %nExpr39 = getelementptr inbounds nuw %struct.ExprList, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %nExpr39, align 8
  %34 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 13
  %35 = load i16, ptr %nKeyCol, align 2
  %conv40 = zext i16 %35 to i32
  %cmp41 = icmp ne i32 %33, %conv40
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  br label %for.inc122

if.end44:                                         ; preds = %if.end38
  %36 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %36, i32 0, i32 9
  %37 = load ptr, ptr %pPartIdxWhere, align 8
  %tobool45 = icmp ne ptr %37, null
  br i1 %tobool45, label %if.then46, label %if.end59

if.then46:                                        ; preds = %if.end44
  %38 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTargetWhere47 = getelementptr inbounds nuw %struct.Upsert, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %pUpsertTargetWhere47, align 8
  %cmp48 = icmp eq ptr %39, null
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then46
  br label %for.inc122

if.end51:                                         ; preds = %if.then46
  %40 = load ptr, ptr %pParse.addr, align 8
  %41 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTargetWhere52 = getelementptr inbounds nuw %struct.Upsert, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %pUpsertTargetWhere52, align 8
  %43 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere53 = getelementptr inbounds nuw %struct.Index, ptr %43, i32 0, i32 9
  %44 = load ptr, ptr %pPartIdxWhere53, align 8
  %45 = load i32, ptr %iCursor, align 4
  %call54 = call i32 @sqlite3ExprCompare(ptr noundef %40, ptr noundef %42, ptr noundef %44, i32 noundef %45)
  %cmp55 = icmp ne i32 %call54, 0
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end51
  br label %for.inc122

if.end58:                                         ; preds = %if.end51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end44
  %46 = load ptr, ptr %pIdx, align 8
  %nKeyCol60 = getelementptr inbounds nuw %struct.Index, ptr %46, i32 0, i32 13
  %47 = load i16, ptr %nKeyCol60, align 2
  %conv61 = zext i16 %47 to i32
  store i32 %conv61, ptr %nn, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc115, %if.end59
  %48 = load i32, ptr %ii, align 4
  %49 = load i32, ptr %nn, align 4
  %cmp63 = icmp slt i32 %48, %49
  br i1 %cmp63, label %for.body65, label %for.end117

for.body65:                                       ; preds = %for.cond62
  %50 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %50, i32 0, i32 8
  %51 = load ptr, ptr %azColl, align 8
  %52 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %52 to i64
  %arrayidx67 = getelementptr inbounds ptr, ptr %51, i64 %idxprom
  %53 = load ptr, ptr %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  %u = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx68, i32 0, i32 3
  store ptr %53, ptr %u, align 8
  %54 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %aiColumn, align 8
  %56 = load i32, ptr %ii, align 4
  %idxprom69 = sext i32 %56 to i64
  %arrayidx70 = getelementptr inbounds i16, ptr %55, i64 %idxprom69
  %57 = load i16, ptr %arrayidx70, align 2
  %conv71 = sext i16 %57 to i32
  %cmp72 = icmp eq i32 %conv71, -2
  br i1 %cmp72, label %if.then74, label %if.else

if.then74:                                        ; preds = %for.body65
  %58 = load ptr, ptr %pIdx, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %58, i32 0, i32 10
  %59 = load ptr, ptr %aColExpr, align 8
  %a75 = getelementptr inbounds nuw %struct.ExprList, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %ii, align 4
  %idxprom76 = sext i32 %60 to i64
  %arrayidx77 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a75, i64 0, i64 %idxprom76
  %pExpr78 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx77, i32 0, i32 0
  %61 = load ptr, ptr %pExpr78, align 8
  store ptr %61, ptr %pExpr66, align 8
  %62 = load ptr, ptr %pExpr66, align 8
  %op79 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 0
  %63 = load i8, ptr %op79, align 8
  %conv80 = zext i8 %63 to i32
  %cmp81 = icmp ne i32 %conv80, 109
  br i1 %cmp81, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.then74
  %64 = load ptr, ptr %pExpr66, align 8
  %arrayidx84 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  %pLeft85 = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx84, i32 0, i32 4
  store ptr %64, ptr %pLeft85, align 16
  %arrayidx86 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  store ptr %arrayidx86, ptr %pExpr66, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.then74
  br label %if.end97

if.else:                                          ; preds = %for.body65
  %arrayidx88 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 1
  %arrayidx89 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  %pLeft90 = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx89, i32 0, i32 4
  store ptr %arrayidx88, ptr %pLeft90, align 16
  %65 = load ptr, ptr %pIdx, align 8
  %aiColumn91 = getelementptr inbounds nuw %struct.Index, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %aiColumn91, align 8
  %67 = load i32, ptr %ii, align 4
  %idxprom92 = sext i32 %67 to i64
  %arrayidx93 = getelementptr inbounds i16, ptr %66, i64 %idxprom92
  %68 = load i16, ptr %arrayidx93, align 2
  %arrayidx94 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 1
  %iColumn95 = getelementptr inbounds nuw %struct.Expr, ptr %arrayidx94, i32 0, i32 9
  store i16 %68, ptr %iColumn95, align 8
  %arrayidx96 = getelementptr inbounds [2 x %struct.Expr], ptr %sCol, i64 0, i64 0
  store ptr %arrayidx96, ptr %pExpr66, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.end87
  store i32 0, ptr %jj, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc, %if.end97
  %69 = load i32, ptr %jj, align 4
  %70 = load i32, ptr %nn, align 4
  %cmp99 = icmp slt i32 %69, %70
  br i1 %cmp99, label %for.body101, label %for.end

for.body101:                                      ; preds = %for.cond98
  %71 = load ptr, ptr %pParse.addr, align 8
  %72 = load ptr, ptr %pTarget, align 8
  %a102 = getelementptr inbounds nuw %struct.ExprList, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %jj, align 4
  %idxprom103 = sext i32 %73 to i64
  %arrayidx104 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a102, i64 0, i64 %idxprom103
  %pExpr105 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx104, i32 0, i32 0
  %74 = load ptr, ptr %pExpr105, align 8
  %75 = load ptr, ptr %pExpr66, align 8
  %76 = load i32, ptr %iCursor, align 4
  %call106 = call i32 @sqlite3ExprCompare(ptr noundef %71, ptr noundef %74, ptr noundef %75, i32 noundef %76)
  %cmp107 = icmp slt i32 %call106, 2
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.body101
  br label %for.end

if.end110:                                        ; preds = %for.body101
  br label %for.inc

for.inc:                                          ; preds = %if.end110
  %77 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond98, !llvm.loop !6

for.end:                                          ; preds = %if.then109, %for.cond98
  %78 = load i32, ptr %jj, align 4
  %79 = load i32, ptr %nn, align 4
  %cmp111 = icmp sge i32 %78, %79
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %for.end
  br label %for.end117

if.end114:                                        ; preds = %for.end
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %80 = load i32, ptr %ii, align 4
  %inc116 = add nsw i32 %80, 1
  store i32 %inc116, ptr %ii, align 4
  br label %for.cond62, !llvm.loop !8

for.end117:                                       ; preds = %if.then113, %for.cond62
  %81 = load i32, ptr %ii, align 4
  %82 = load i32, ptr %nn, align 4
  %cmp118 = icmp slt i32 %81, %82
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %for.end117
  br label %for.inc122

if.end121:                                        ; preds = %for.end117
  %83 = load ptr, ptr %pIdx, align 8
  %84 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertIdx = getelementptr inbounds nuw %struct.Upsert, ptr %84, i32 0, i32 4
  store ptr %83, ptr %pUpsertIdx, align 8
  store i32 0, ptr %retval, align 4
  br label %return

for.inc122:                                       ; preds = %if.then120, %if.then57, %if.then50, %if.then43, %if.then37
  %85 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %85, i32 0, i32 5
  %86 = load ptr, ptr %pNext, align 8
  store ptr %86, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !9

for.end123:                                       ; preds = %for.cond
  %87 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %87, ptr noundef @.str.812)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end123, %if.end121, %if.then21, %if.then4, %if.then
  %88 = load i32, ptr %retval, align 4
  ret i32 %88
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
