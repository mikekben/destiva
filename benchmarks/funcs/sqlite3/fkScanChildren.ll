; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereBegin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @fkScanChildren(ptr noundef %pParse, ptr noundef %pSrc, ptr noundef %pTab, ptr noundef %pIdx, ptr noundef %pFKey, ptr noundef %aiCol, i32 noundef %regData, i32 noundef %nIncr) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %pFKey.addr = alloca ptr, align 8
  %aiCol.addr = alloca ptr, align 8
  %regData.addr = alloca i32, align 4
  %nIncr.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %pWhere = alloca ptr, align 8
  %sNameContext = alloca %struct.NameContext, align 8
  %pWInfo = alloca ptr, align 8
  %iFkIfZero = alloca i32, align 4
  %v = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pEq = alloca ptr, align 8
  %iCol = alloca i16, align 2
  %zCol = alloca ptr, align 8
  %pNe = alloca ptr, align 8
  %pLeft29 = alloca ptr, align 8
  %pRight30 = alloca ptr, align 8
  %pEq38 = alloca ptr, align 8
  %pAll = alloca ptr, align 8
  %iCol44 = alloca i16, align 2
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store ptr %pFKey, ptr %pFKey.addr, align 8
  store ptr %aiCol, ptr %aiCol.addr, align 8
  store i32 %regData, ptr %regData.addr, align 4
  store i32 %nIncr, ptr %nIncr.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pWhere, align 8
  store i32 0, ptr %iFkIfZero, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load i32, ptr %nIncr.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %v, align 8
  %5 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred = getelementptr inbounds nuw %struct.FKey, ptr %5, i32 0, i32 6
  %6 = load i8, ptr %isDeferred, align 4
  %conv = zext i8 %6 to i32
  %call2 = call i32 @sqlite3VdbeAddOp2(ptr noundef %4, i32 noundef 46, i32 noundef %conv, i32 noundef 0)
  store i32 %call2, ptr %iFkIfZero, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %pFKey.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nCol, align 8
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pIdx.addr, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %aiColumn, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i16, ptr %12, i64 %idxprom
  %14 = load i16, ptr %arrayidx, align 2
  %conv5 = sext i16 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ -1, %cond.false ]
  %conv6 = trunc i32 %cond to i16
  store i16 %conv6, ptr %iCol, align 2
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pTab.addr, align 8
  %17 = load i32, ptr %regData.addr, align 4
  %18 = load i16, ptr %iCol, align 2
  %call7 = call ptr @exprTableRegister(ptr noundef %15, ptr noundef %16, i32 noundef %17, i16 noundef signext %18)
  store ptr %call7, ptr %pLeft, align 8
  %19 = load ptr, ptr %aiCol.addr, align 8
  %tobool8 = icmp ne ptr %19, null
  br i1 %tobool8, label %cond.true9, label %cond.false12

cond.true9:                                       ; preds = %cond.end
  %20 = load ptr, ptr %aiCol.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 %idxprom10
  %22 = load i32, ptr %arrayidx11, align 4
  br label %cond.end14

cond.false12:                                     ; preds = %cond.end
  %23 = load ptr, ptr %pFKey.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %23, i32 0, i32 9
  %arrayidx13 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 0
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx13, i32 0, i32 0
  %24 = load i32, ptr %iFrom, align 8
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false12, %cond.true9
  %cond15 = phi i32 [ %22, %cond.true9 ], [ %24, %cond.false12 ]
  %conv16 = trunc i32 %cond15 to i16
  store i16 %conv16, ptr %iCol, align 2
  %25 = load ptr, ptr %pFKey.addr, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pFrom, align 8
  %aCol17 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %aCol17, align 8
  %28 = load i16, ptr %iCol, align 2
  %idxprom18 = sext i16 %28 to i64
  %arrayidx19 = getelementptr inbounds %struct.Column, ptr %27, i64 %idxprom18
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx19, i32 0, i32 0
  %29 = load ptr, ptr %zName, align 8
  store ptr %29, ptr %zCol, align 8
  %30 = load ptr, ptr %db, align 8
  %31 = load ptr, ptr %zCol, align 8
  %call20 = call ptr @sqlite3Expr(ptr noundef %30, i32 noundef 59, ptr noundef %31)
  store ptr %call20, ptr %pRight, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %pLeft, align 8
  %34 = load ptr, ptr %pRight, align 8
  %call21 = call ptr @sqlite3PExpr(ptr noundef %32, i32 noundef 53, ptr noundef %33, ptr noundef %34)
  store ptr %call21, ptr %pEq, align 8
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pWhere, align 8
  %37 = load ptr, ptr %pEq, align 8
  %call22 = call ptr @sqlite3ExprAnd(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  store ptr %call22, ptr %pWhere, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end14
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %pTab.addr, align 8
  %40 = load ptr, ptr %pFKey.addr, align 8
  %pFrom23 = getelementptr inbounds nuw %struct.FKey, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pFrom23, align 8
  %cmp24 = icmp eq ptr %39, %41
  br i1 %cmp24, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %for.end
  %42 = load i32, ptr %nIncr.addr, align 4
  %cmp26 = icmp sgt i32 %42, 0
  br i1 %cmp26, label %if.then28, label %if.end62

if.then28:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %43, i32 0, i32 9
  %44 = load i32, ptr %tabFlags, align 8
  %and = and i32 %44, 32
  %cmp31 = icmp eq i32 %and, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then28
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pTab.addr, align 8
  %47 = load i32, ptr %regData.addr, align 4
  %call34 = call ptr @exprTableRegister(ptr noundef %45, ptr noundef %46, i32 noundef %47, i16 noundef signext -1)
  store ptr %call34, ptr %pLeft29, align 8
  %48 = load ptr, ptr %db, align 8
  %49 = load ptr, ptr %pTab.addr, align 8
  %50 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %50, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx35, i32 0, i32 10
  %51 = load i32, ptr %iCursor, align 8
  %call36 = call ptr @exprTableColumn(ptr noundef %48, ptr noundef %49, i32 noundef %51, i16 noundef signext -1)
  store ptr %call36, ptr %pRight30, align 8
  %52 = load ptr, ptr %pParse.addr, align 8
  %53 = load ptr, ptr %pLeft29, align 8
  %54 = load ptr, ptr %pRight30, align 8
  %call37 = call ptr @sqlite3PExpr(ptr noundef %52, i32 noundef 52, ptr noundef %53, ptr noundef %54)
  store ptr %call37, ptr %pNe, align 8
  br label %if.end60

if.else:                                          ; preds = %if.then28
  store ptr null, ptr %pAll, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc56, %if.else
  %55 = load i32, ptr %i, align 4
  %56 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %56, i32 0, i32 13
  %57 = load i16, ptr %nKeyCol, align 2
  %conv40 = zext i16 %57 to i32
  %cmp41 = icmp slt i32 %55, %conv40
  br i1 %cmp41, label %for.body43, label %for.end58

for.body43:                                       ; preds = %for.cond39
  %58 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn45 = getelementptr inbounds nuw %struct.Index, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %aiColumn45, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %60 to i64
  %arrayidx47 = getelementptr inbounds i16, ptr %59, i64 %idxprom46
  %61 = load i16, ptr %arrayidx47, align 2
  store i16 %61, ptr %iCol44, align 2
  %62 = load ptr, ptr %pParse.addr, align 8
  %63 = load ptr, ptr %pTab.addr, align 8
  %64 = load i32, ptr %regData.addr, align 4
  %65 = load i16, ptr %iCol44, align 2
  %call48 = call ptr @exprTableRegister(ptr noundef %62, ptr noundef %63, i32 noundef %64, i16 noundef signext %65)
  store ptr %call48, ptr %pLeft29, align 8
  %66 = load ptr, ptr %db, align 8
  %67 = load ptr, ptr %pTab.addr, align 8
  %aCol49 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %aCol49, align 8
  %69 = load i16, ptr %iCol44, align 2
  %idxprom50 = sext i16 %69 to i64
  %arrayidx51 = getelementptr inbounds %struct.Column, ptr %68, i64 %idxprom50
  %zName52 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx51, i32 0, i32 0
  %70 = load ptr, ptr %zName52, align 8
  %call53 = call ptr @sqlite3Expr(ptr noundef %66, i32 noundef 59, ptr noundef %70)
  store ptr %call53, ptr %pRight30, align 8
  %71 = load ptr, ptr %pParse.addr, align 8
  %72 = load ptr, ptr %pLeft29, align 8
  %73 = load ptr, ptr %pRight30, align 8
  %call54 = call ptr @sqlite3PExpr(ptr noundef %71, i32 noundef 45, ptr noundef %72, ptr noundef %73)
  store ptr %call54, ptr %pEq38, align 8
  %74 = load ptr, ptr %pParse.addr, align 8
  %75 = load ptr, ptr %pAll, align 8
  %76 = load ptr, ptr %pEq38, align 8
  %call55 = call ptr @sqlite3ExprAnd(ptr noundef %74, ptr noundef %75, ptr noundef %76)
  store ptr %call55, ptr %pAll, align 8
  br label %for.inc56

for.inc56:                                        ; preds = %for.body43
  %77 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %77, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond39, !llvm.loop !8

for.end58:                                        ; preds = %for.cond39
  %78 = load ptr, ptr %pParse.addr, align 8
  %79 = load ptr, ptr %pAll, align 8
  %call59 = call ptr @sqlite3PExpr(ptr noundef %78, i32 noundef 19, ptr noundef %79, ptr noundef null)
  store ptr %call59, ptr %pNe, align 8
  br label %if.end60

if.end60:                                         ; preds = %for.end58, %if.then33
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load ptr, ptr %pWhere, align 8
  %82 = load ptr, ptr %pNe, align 8
  %call61 = call ptr @sqlite3ExprAnd(ptr noundef %80, ptr noundef %81, ptr noundef %82)
  store ptr %call61, ptr %pWhere, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %land.lhs.true, %for.end
  call void @llvm.memset.p0.i64(ptr align 8 %sNameContext, i8 0, i64 56, i1 false)
  %83 = load ptr, ptr %pSrc.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNameContext, i32 0, i32 1
  store ptr %83, ptr %pSrcList, align 8
  %84 = load ptr, ptr %pParse.addr, align 8
  %pParse63 = getelementptr inbounds nuw %struct.NameContext, ptr %sNameContext, i32 0, i32 0
  store ptr %84, ptr %pParse63, align 8
  %85 = load ptr, ptr %pWhere, align 8
  %call64 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNameContext, ptr noundef %85)
  %86 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %86, i32 0, i32 16
  %87 = load i32, ptr %nErr, align 8
  %cmp65 = icmp eq i32 %87, 0
  br i1 %cmp65, label %if.then67, label %if.end75

if.then67:                                        ; preds = %if.end62
  %88 = load ptr, ptr %pParse.addr, align 8
  %89 = load ptr, ptr %pSrc.addr, align 8
  %90 = load ptr, ptr %pWhere, align 8
  %call68 = call ptr @sqlite3WhereBegin(ptr noundef %88, ptr noundef %89, ptr noundef %90, ptr noundef null, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0)
  store ptr %call68, ptr %pWInfo, align 8
  %91 = load ptr, ptr %v, align 8
  %92 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred69 = getelementptr inbounds nuw %struct.FKey, ptr %92, i32 0, i32 6
  %93 = load i8, ptr %isDeferred69, align 4
  %conv70 = zext i8 %93 to i32
  %94 = load i32, ptr %nIncr.addr, align 4
  %call71 = call i32 @sqlite3VdbeAddOp2(ptr noundef %91, i32 noundef 150, i32 noundef %conv70, i32 noundef %94)
  %95 = load ptr, ptr %pWInfo, align 8
  %tobool72 = icmp ne ptr %95, null
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then67
  %96 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %96)
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.then67
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end62
  %97 = load ptr, ptr %db, align 8
  %98 = load ptr, ptr %pWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %97, ptr noundef %98)
  %99 = load i32, ptr %iFkIfZero, align 4
  %tobool76 = icmp ne i32 %99, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end75
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %iFkIfZero, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %100, i32 noundef %101)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end75
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @exprTableRegister(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @exprTableColumn(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) #1

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
