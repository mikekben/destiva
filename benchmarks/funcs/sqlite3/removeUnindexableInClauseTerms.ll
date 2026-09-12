; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @removeUnindexableInClauseTerms(ptr noundef %pParse, i32 noundef %iEq, ptr noundef %pLoop, ptr noundef %pX) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iEq.addr = alloca i32, align 4
  %pLoop.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pOrigRhs = alloca ptr, align 8
  %pOrigLhs = alloca ptr, align 8
  %pRhs = alloca ptr, align 8
  %pLhs = alloca ptr, align 8
  %i = alloca i32, align 4
  %pSelect = alloca ptr, align 8
  %iField = alloca i32, align 4
  %p = alloca ptr, align 8
  %pOrderBy58 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iEq, ptr %iEq.addr, align 4
  store ptr %pLoop, ptr %pLoop.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pX.addr, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %2, ptr noundef %3, i32 noundef 0)
  store ptr %call, ptr %pNew, align 8
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end72

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pNew, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pEList, align 8
  store ptr %8, ptr %pOrigRhs, align 8
  %9 = load ptr, ptr %pNew, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pLeft, align 8
  %x3 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x3, align 8
  store ptr %11, ptr %pOrigLhs, align 8
  store ptr null, ptr %pRhs, align 8
  store ptr null, ptr %pLhs, align 8
  %12 = load i32, ptr %iEq.addr, align 4
  store i32 %12, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %pLoop.addr, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %14, i32 0, i32 9
  %15 = load i16, ptr %nLTerm, align 4
  %conv4 = zext i16 %15 to i32
  %cmp5 = icmp slt i32 %13, %conv4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pLoop.addr, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %aLTerm, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pExpr, align 8
  %21 = load ptr, ptr %pX.addr, align 8
  %cmp7 = icmp eq ptr %20, %21
  br i1 %cmp7, label %if.then9, label %if.end38

if.then9:                                         ; preds = %for.body
  %22 = load ptr, ptr %pLoop.addr, align 8
  %aLTerm10 = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %aLTerm10, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %24 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %23, i64 %idxprom11
  %25 = load ptr, ptr %arrayidx12, align 8
  %iField13 = getelementptr inbounds nuw %struct.WhereTerm, ptr %25, i32 0, i32 9
  %26 = load i32, ptr %iField13, align 8
  %sub = sub nsw i32 %26, 1
  store i32 %sub, ptr %iField, align 4
  %27 = load ptr, ptr %pOrigRhs, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %iField, align 4
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom14
  %pExpr16 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx15, i32 0, i32 0
  %29 = load ptr, ptr %pExpr16, align 8
  %cmp17 = icmp eq ptr %29, null
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then9
  br label %for.inc

if.end:                                           ; preds = %if.then9
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pRhs, align 8
  %32 = load ptr, ptr %pOrigRhs, align 8
  %a20 = getelementptr inbounds nuw %struct.ExprList, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %iField, align 4
  %idxprom21 = sext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a20, i64 0, i64 %idxprom21
  %pExpr23 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx22, i32 0, i32 0
  %34 = load ptr, ptr %pExpr23, align 8
  %call24 = call ptr @sqlite3ExprListAppend(ptr noundef %30, ptr noundef %31, ptr noundef %34)
  store ptr %call24, ptr %pRhs, align 8
  %35 = load ptr, ptr %pOrigRhs, align 8
  %a25 = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %iField, align 4
  %idxprom26 = sext i32 %36 to i64
  %arrayidx27 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a25, i64 0, i64 %idxprom26
  %pExpr28 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx27, i32 0, i32 0
  store ptr null, ptr %pExpr28, align 8
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load ptr, ptr %pLhs, align 8
  %39 = load ptr, ptr %pOrigLhs, align 8
  %a29 = getelementptr inbounds nuw %struct.ExprList, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %iField, align 4
  %idxprom30 = sext i32 %40 to i64
  %arrayidx31 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a29, i64 0, i64 %idxprom30
  %pExpr32 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx31, i32 0, i32 0
  %41 = load ptr, ptr %pExpr32, align 8
  %call33 = call ptr @sqlite3ExprListAppend(ptr noundef %37, ptr noundef %38, ptr noundef %41)
  store ptr %call33, ptr %pLhs, align 8
  %42 = load ptr, ptr %pOrigLhs, align 8
  %a34 = getelementptr inbounds nuw %struct.ExprList, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %iField, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a34, i64 0, i64 %idxprom35
  %pExpr37 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx36, i32 0, i32 0
  store ptr null, ptr %pExpr37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.then19
  %44 = load i32, ptr %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %45 = load ptr, ptr %db, align 8
  %46 = load ptr, ptr %pOrigRhs, align 8
  call void @sqlite3ExprListDelete(ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %db, align 8
  %48 = load ptr, ptr %pOrigLhs, align 8
  call void @sqlite3ExprListDelete(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %pLhs, align 8
  %50 = load ptr, ptr %pNew, align 8
  %pLeft39 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %pLeft39, align 8
  %x40 = getelementptr inbounds nuw %struct.Expr, ptr %51, i32 0, i32 6
  store ptr %49, ptr %x40, align 8
  %52 = load ptr, ptr %pRhs, align 8
  %53 = load ptr, ptr %pNew, align 8
  %x41 = getelementptr inbounds nuw %struct.Expr, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %x41, align 8
  %pEList42 = getelementptr inbounds nuw %struct.Select, ptr %54, i32 0, i32 0
  store ptr %52, ptr %pEList42, align 8
  %55 = load ptr, ptr %pLhs, align 8
  %tobool = icmp ne ptr %55, null
  br i1 %tobool, label %land.lhs.true, label %if.end54

land.lhs.true:                                    ; preds = %for.end
  %56 = load ptr, ptr %pLhs, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %nExpr, align 8
  %cmp43 = icmp eq i32 %57, 1
  br i1 %cmp43, label %if.then45, label %if.end54

if.then45:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %pLhs, align 8
  %a46 = getelementptr inbounds nuw %struct.ExprList, ptr %58, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a46, i64 0, i64 0
  %pExpr48 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx47, i32 0, i32 0
  %59 = load ptr, ptr %pExpr48, align 8
  store ptr %59, ptr %p, align 8
  %60 = load ptr, ptr %pLhs, align 8
  %a49 = getelementptr inbounds nuw %struct.ExprList, ptr %60, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a49, i64 0, i64 0
  %pExpr51 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx50, i32 0, i32 0
  store ptr null, ptr %pExpr51, align 8
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %pNew, align 8
  %pLeft52 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %pLeft52, align 8
  call void @sqlite3ExprDelete(ptr noundef %61, ptr noundef %63)
  %64 = load ptr, ptr %p, align 8
  %65 = load ptr, ptr %pNew, align 8
  %pLeft53 = getelementptr inbounds nuw %struct.Expr, ptr %65, i32 0, i32 4
  store ptr %64, ptr %pLeft53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then45, %land.lhs.true, %for.end
  %66 = load ptr, ptr %pNew, align 8
  %x55 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 6
  %67 = load ptr, ptr %x55, align 8
  store ptr %67, ptr %pSelect, align 8
  %68 = load ptr, ptr %pSelect, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %68, i32 0, i32 12
  %69 = load ptr, ptr %pOrderBy, align 8
  %tobool56 = icmp ne ptr %69, null
  br i1 %tobool56, label %if.then57, label %if.end71

if.then57:                                        ; preds = %if.end54
  %70 = load ptr, ptr %pSelect, align 8
  %pOrderBy59 = getelementptr inbounds nuw %struct.Select, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pOrderBy59, align 8
  store ptr %71, ptr %pOrderBy58, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc68, %if.then57
  %72 = load i32, ptr %i, align 4
  %73 = load ptr, ptr %pOrderBy58, align 8
  %nExpr61 = getelementptr inbounds nuw %struct.ExprList, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %nExpr61, align 8
  %cmp62 = icmp slt i32 %72, %74
  br i1 %cmp62, label %for.body64, label %for.end70

for.body64:                                       ; preds = %for.cond60
  %75 = load ptr, ptr %pOrderBy58, align 8
  %a65 = getelementptr inbounds nuw %struct.ExprList, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %76 to i64
  %arrayidx67 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a65, i64 0, i64 %idxprom66
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx67, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  store i16 0, ptr %iOrderByCol, align 4
  br label %for.inc68

for.inc68:                                        ; preds = %for.body64
  %77 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %77, 1
  store i32 %inc69, ptr %i, align 4
  br label %for.cond60, !llvm.loop !8

for.end70:                                        ; preds = %for.cond60
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %if.end54
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %entry
  %78 = load ptr, ptr %pNew, align 8
  ret ptr %78
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
