; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.558 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListCompare(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ResultSetOfSelect(ptr noundef, ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListAssignCursors(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WindowRewrite(ptr noundef %pParse, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pWhere = alloca ptr, align 8
  %pGroupBy = alloca ptr, align 8
  %pHaving = alloca ptr, align 8
  %pSort = alloca ptr, align 8
  %pSublist = alloca ptr, align 8
  %pMWin = alloca ptr, align 8
  %pWin7 = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %nSave = alloca i32, align 4
  %pArgs = alloca ptr, align 8
  %pFilter68 = alloca ptr, align 8
  %pTab2 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end122

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pPrior, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end122

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %4)
  store ptr %call, ptr %v, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db1, align 8
  store ptr %6, ptr %db, align 8
  store ptr null, ptr %pSub, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %pSrc2 = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %pSrc2, align 8
  store ptr %8, ptr %pSrc, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %pWhere3 = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %pWhere3, align 8
  store ptr %10, ptr %pWhere, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %pGroupBy4 = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %pGroupBy4, align 8
  store ptr %12, ptr %pGroupBy, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %pHaving5 = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 11
  %14 = load ptr, ptr %pHaving5, align 8
  store ptr %14, ptr %pHaving, align 8
  store ptr null, ptr %pSort, align 8
  store ptr null, ptr %pSublist, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pWin6 = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %pWin6, align 8
  store ptr %16, ptr %pMWin, align 8
  %17 = load ptr, ptr %db, align 8
  %call8 = call ptr @sqlite3DbMallocZero(ptr noundef %17, i64 noundef 128)
  store ptr %call8, ptr %pTab, align 8
  %18 = load ptr, ptr %pTab, align 8
  %cmp9 = icmp eq ptr %18, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load ptr, ptr %p.addr, align 8
  %pSrc11 = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 8
  store ptr null, ptr %pSrc11, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %pWhere12 = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 9
  store ptr null, ptr %pWhere12, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %pGroupBy13 = getelementptr inbounds nuw %struct.Select, ptr %21, i32 0, i32 10
  store ptr null, ptr %pGroupBy13, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %pHaving14 = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 11
  store ptr null, ptr %pHaving14, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %selFlags, align 4
  %and = and i32 %24, -9
  store i32 %and, ptr %selFlags, align 4
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pMWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pPartition, align 8
  %call15 = call ptr @sqlite3ExprListDup(ptr noundef %25, ptr noundef %27, i32 noundef 0)
  store ptr %call15, ptr %pSort, align 8
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pSort, align 8
  %30 = load ptr, ptr %pMWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %pOrderBy, align 8
  %call16 = call ptr @exprListAppendList(ptr noundef %28, ptr noundef %29, ptr noundef %31, i32 noundef 1)
  store ptr %call16, ptr %pSort, align 8
  %32 = load ptr, ptr %pSort, align 8
  %tobool17 = icmp ne ptr %32, null
  br i1 %tobool17, label %land.lhs.true18, label %if.end38

land.lhs.true18:                                  ; preds = %if.end
  %33 = load ptr, ptr %p.addr, align 8
  %pOrderBy19 = getelementptr inbounds nuw %struct.Select, ptr %33, i32 0, i32 12
  %34 = load ptr, ptr %pOrderBy19, align 8
  %tobool20 = icmp ne ptr %34, null
  br i1 %tobool20, label %land.lhs.true21, label %if.end38

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %35 = load ptr, ptr %p.addr, align 8
  %pOrderBy22 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pOrderBy22, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %nExpr, align 8
  %38 = load ptr, ptr %pSort, align 8
  %nExpr23 = getelementptr inbounds nuw %struct.ExprList, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %nExpr23, align 8
  %cmp24 = icmp sle i32 %37, %39
  br i1 %cmp24, label %if.then25, label %if.end38

if.then25:                                        ; preds = %land.lhs.true21
  %40 = load ptr, ptr %pSort, align 8
  %nExpr26 = getelementptr inbounds nuw %struct.ExprList, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %nExpr26, align 8
  store i32 %41, ptr %nSave, align 4
  %42 = load ptr, ptr %p.addr, align 8
  %pOrderBy27 = getelementptr inbounds nuw %struct.Select, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pOrderBy27, align 8
  %nExpr28 = getelementptr inbounds nuw %struct.ExprList, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %nExpr28, align 8
  %45 = load ptr, ptr %pSort, align 8
  %nExpr29 = getelementptr inbounds nuw %struct.ExprList, ptr %45, i32 0, i32 0
  store i32 %44, ptr %nExpr29, align 8
  %46 = load ptr, ptr %pSort, align 8
  %47 = load ptr, ptr %p.addr, align 8
  %pOrderBy30 = getelementptr inbounds nuw %struct.Select, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pOrderBy30, align 8
  %call31 = call i32 @sqlite3ExprListCompare(ptr noundef %46, ptr noundef %48, i32 noundef -1)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.then25
  %49 = load ptr, ptr %db, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %pOrderBy34 = getelementptr inbounds nuw %struct.Select, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pOrderBy34, align 8
  call void @sqlite3ExprListDelete(ptr noundef %49, ptr noundef %51)
  %52 = load ptr, ptr %p.addr, align 8
  %pOrderBy35 = getelementptr inbounds nuw %struct.Select, ptr %52, i32 0, i32 12
  store ptr null, ptr %pOrderBy35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then25
  %53 = load i32, ptr %nSave, align 4
  %54 = load ptr, ptr %pSort, align 8
  %nExpr37 = getelementptr inbounds nuw %struct.ExprList, ptr %54, i32 0, i32 0
  store i32 %53, ptr %nExpr37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %land.lhs.true21, %land.lhs.true18, %if.end
  %55 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %55, i32 0, i32 17
  %56 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr %nTab, align 4
  %57 = load ptr, ptr %pMWin, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %57, i32 0, i32 15
  store i32 %56, ptr %iEphCsr, align 8
  %58 = load ptr, ptr %pParse.addr, align 8
  %nTab39 = getelementptr inbounds nuw %struct.Parse, ptr %58, i32 0, i32 17
  %59 = load i32, ptr %nTab39, align 4
  %add = add nsw i32 %59, 3
  store i32 %add, ptr %nTab39, align 4
  %60 = load ptr, ptr %pParse.addr, align 8
  %61 = load ptr, ptr %pMWin, align 8
  %62 = load ptr, ptr %pSrc, align 8
  %63 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %pEList, align 8
  %65 = load ptr, ptr %pTab, align 8
  call void @selectWindowRewriteEList(ptr noundef %60, ptr noundef %61, ptr noundef %62, ptr noundef %64, ptr noundef %65, ptr noundef %pSublist)
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pMWin, align 8
  %68 = load ptr, ptr %pSrc, align 8
  %69 = load ptr, ptr %p.addr, align 8
  %pOrderBy40 = getelementptr inbounds nuw %struct.Select, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pOrderBy40, align 8
  %71 = load ptr, ptr %pTab, align 8
  call void @selectWindowRewriteEList(ptr noundef %66, ptr noundef %67, ptr noundef %68, ptr noundef %70, ptr noundef %71, ptr noundef %pSublist)
  %72 = load ptr, ptr %pSublist, align 8
  %tobool41 = icmp ne ptr %72, null
  br i1 %tobool41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end38
  %73 = load ptr, ptr %pSublist, align 8
  %nExpr42 = getelementptr inbounds nuw %struct.ExprList, ptr %73, i32 0, i32 0
  %74 = load i32, ptr %nExpr42, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %74, %cond.true ], [ 0, %cond.false ]
  %75 = load ptr, ptr %pMWin, align 8
  %nBufferCol = getelementptr inbounds nuw %struct.Window, ptr %75, i32 0, i32 22
  store i32 %cond, ptr %nBufferCol, align 8
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %pSublist, align 8
  %78 = load ptr, ptr %pMWin, align 8
  %pPartition43 = getelementptr inbounds nuw %struct.Window, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %pPartition43, align 8
  %call44 = call ptr @exprListAppendList(ptr noundef %76, ptr noundef %77, ptr noundef %79, i32 noundef 0)
  store ptr %call44, ptr %pSublist, align 8
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load ptr, ptr %pSublist, align 8
  %82 = load ptr, ptr %pMWin, align 8
  %pOrderBy45 = getelementptr inbounds nuw %struct.Window, ptr %82, i32 0, i32 3
  %83 = load ptr, ptr %pOrderBy45, align 8
  %call46 = call ptr @exprListAppendList(ptr noundef %80, ptr noundef %81, ptr noundef %83, i32 noundef 0)
  store ptr %call46, ptr %pSublist, align 8
  %84 = load ptr, ptr %pMWin, align 8
  store ptr %84, ptr %pWin7, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %85 = load ptr, ptr %pWin7, align 8
  %tobool47 = icmp ne ptr %85, null
  br i1 %tobool47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %86 = load ptr, ptr %pWin7, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %86, i32 0, i32 21
  %87 = load ptr, ptr %pOwner, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %87, i32 0, i32 6
  %88 = load ptr, ptr %x, align 8
  store ptr %88, ptr %pArgs, align 8
  %89 = load ptr, ptr %pWin7, align 8
  %pFunc = getelementptr inbounds nuw %struct.Window, ptr %89, i32 0, i32 14
  %90 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %funcFlags, align 4
  %and48 = and i32 %91, 1048576
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.else

if.then50:                                        ; preds = %for.body
  %92 = load ptr, ptr %pParse.addr, align 8
  %93 = load ptr, ptr %pMWin, align 8
  %94 = load ptr, ptr %pSrc, align 8
  %95 = load ptr, ptr %pArgs, align 8
  %96 = load ptr, ptr %pTab, align 8
  call void @selectWindowRewriteEList(ptr noundef %92, ptr noundef %93, ptr noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef %pSublist)
  %97 = load ptr, ptr %pSublist, align 8
  %tobool51 = icmp ne ptr %97, null
  br i1 %tobool51, label %cond.true52, label %cond.false54

cond.true52:                                      ; preds = %if.then50
  %98 = load ptr, ptr %pSublist, align 8
  %nExpr53 = getelementptr inbounds nuw %struct.ExprList, ptr %98, i32 0, i32 0
  %99 = load i32, ptr %nExpr53, align 8
  br label %cond.end55

cond.false54:                                     ; preds = %if.then50
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.true52
  %cond56 = phi i32 [ %99, %cond.true52 ], [ 0, %cond.false54 ]
  %100 = load ptr, ptr %pWin7, align 8
  %iArgCol = getelementptr inbounds nuw %struct.Window, ptr %100, i32 0, i32 23
  store i32 %cond56, ptr %iArgCol, align 4
  %101 = load ptr, ptr %pWin7, align 8
  %bExprArgs = getelementptr inbounds nuw %struct.Window, ptr %101, i32 0, i32 27
  store i8 1, ptr %bExprArgs, align 4
  br label %if.end65

if.else:                                          ; preds = %for.body
  %102 = load ptr, ptr %pSublist, align 8
  %tobool57 = icmp ne ptr %102, null
  br i1 %tobool57, label %cond.true58, label %cond.false60

cond.true58:                                      ; preds = %if.else
  %103 = load ptr, ptr %pSublist, align 8
  %nExpr59 = getelementptr inbounds nuw %struct.ExprList, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %nExpr59, align 8
  br label %cond.end61

cond.false60:                                     ; preds = %if.else
  br label %cond.end61

cond.end61:                                       ; preds = %cond.false60, %cond.true58
  %cond62 = phi i32 [ %104, %cond.true58 ], [ 0, %cond.false60 ]
  %105 = load ptr, ptr %pWin7, align 8
  %iArgCol63 = getelementptr inbounds nuw %struct.Window, ptr %105, i32 0, i32 23
  store i32 %cond62, ptr %iArgCol63, align 4
  %106 = load ptr, ptr %pParse.addr, align 8
  %107 = load ptr, ptr %pSublist, align 8
  %108 = load ptr, ptr %pArgs, align 8
  %call64 = call ptr @exprListAppendList(ptr noundef %106, ptr noundef %107, ptr noundef %108, i32 noundef 0)
  store ptr %call64, ptr %pSublist, align 8
  br label %if.end65

if.end65:                                         ; preds = %cond.end61, %cond.end55
  %109 = load ptr, ptr %pWin7, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %109, i32 0, i32 13
  %110 = load ptr, ptr %pFilter, align 8
  %tobool66 = icmp ne ptr %110, null
  br i1 %tobool66, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end65
  %111 = load ptr, ptr %db, align 8
  %112 = load ptr, ptr %pWin7, align 8
  %pFilter69 = getelementptr inbounds nuw %struct.Window, ptr %112, i32 0, i32 13
  %113 = load ptr, ptr %pFilter69, align 8
  %call70 = call ptr @sqlite3ExprDup(ptr noundef %111, ptr noundef %113, i32 noundef 0)
  store ptr %call70, ptr %pFilter68, align 8
  %114 = load ptr, ptr %pParse.addr, align 8
  %115 = load ptr, ptr %pSublist, align 8
  %116 = load ptr, ptr %pFilter68, align 8
  %call71 = call ptr @sqlite3ExprListAppend(ptr noundef %114, ptr noundef %115, ptr noundef %116)
  store ptr %call71, ptr %pSublist, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then67, %if.end65
  %117 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %117, i32 0, i32 18
  %118 = load i32, ptr %nMem, align 8
  %inc73 = add nsw i32 %118, 1
  store i32 %inc73, ptr %nMem, align 8
  %119 = load ptr, ptr %pWin7, align 8
  %regAccum = getelementptr inbounds nuw %struct.Window, ptr %119, i32 0, i32 16
  store i32 %inc73, ptr %regAccum, align 4
  %120 = load ptr, ptr %pParse.addr, align 8
  %nMem74 = getelementptr inbounds nuw %struct.Parse, ptr %120, i32 0, i32 18
  %121 = load i32, ptr %nMem74, align 8
  %inc75 = add nsw i32 %121, 1
  store i32 %inc75, ptr %nMem74, align 8
  %122 = load ptr, ptr %pWin7, align 8
  %regResult = getelementptr inbounds nuw %struct.Window, ptr %122, i32 0, i32 17
  store i32 %inc75, ptr %regResult, align 8
  %123 = load ptr, ptr %v, align 8
  %124 = load ptr, ptr %pWin7, align 8
  %regAccum76 = getelementptr inbounds nuw %struct.Window, ptr %124, i32 0, i32 16
  %125 = load i32, ptr %regAccum76, align 4
  %call77 = call i32 @sqlite3VdbeAddOp2(ptr noundef %123, i32 noundef 73, i32 noundef 0, i32 noundef %125)
  br label %for.inc

for.inc:                                          ; preds = %if.end72
  %126 = load ptr, ptr %pWin7, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %126, i32 0, i32 12
  %127 = load ptr, ptr %pNextWin, align 8
  store ptr %127, ptr %pWin7, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %128 = load ptr, ptr %pSublist, align 8
  %cmp78 = icmp eq ptr %128, null
  br i1 %cmp78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %for.end
  %129 = load ptr, ptr %pParse.addr, align 8
  %130 = load ptr, ptr %db, align 8
  %call80 = call ptr @sqlite3Expr(ptr noundef %130, i32 noundef 150, ptr noundef @.str.558)
  %call81 = call ptr @sqlite3ExprListAppend(ptr noundef %129, ptr noundef null, ptr noundef %call80)
  store ptr %call81, ptr %pSublist, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %for.end
  %131 = load ptr, ptr %pParse.addr, align 8
  %132 = load ptr, ptr %pSublist, align 8
  %133 = load ptr, ptr %pSrc, align 8
  %134 = load ptr, ptr %pWhere, align 8
  %135 = load ptr, ptr %pGroupBy, align 8
  %136 = load ptr, ptr %pHaving, align 8
  %137 = load ptr, ptr %pSort, align 8
  %call83 = call ptr @sqlite3SelectNew(ptr noundef %131, ptr noundef %132, ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %136, ptr noundef %137, i32 noundef 0, ptr noundef null)
  store ptr %call83, ptr %pSub, align 8
  %138 = load ptr, ptr %pParse.addr, align 8
  %call84 = call ptr @sqlite3SrcListAppend(ptr noundef %138, ptr noundef null, ptr noundef null, ptr noundef null)
  %139 = load ptr, ptr %p.addr, align 8
  %pSrc85 = getelementptr inbounds nuw %struct.Select, ptr %139, i32 0, i32 8
  store ptr %call84, ptr %pSrc85, align 8
  %140 = load ptr, ptr %p.addr, align 8
  %pSrc86 = getelementptr inbounds nuw %struct.Select, ptr %140, i32 0, i32 8
  %141 = load ptr, ptr %pSrc86, align 8
  %tobool87 = icmp ne ptr %141, null
  br i1 %tobool87, label %if.then88, label %if.else117

if.then88:                                        ; preds = %if.end82
  %142 = load ptr, ptr %pSub, align 8
  %143 = load ptr, ptr %p.addr, align 8
  %pSrc89 = getelementptr inbounds nuw %struct.Select, ptr %143, i32 0, i32 8
  %144 = load ptr, ptr %pSrc89, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %144, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  store ptr %142, ptr %pSelect, align 8
  %145 = load ptr, ptr %pParse.addr, align 8
  %146 = load ptr, ptr %p.addr, align 8
  %pSrc90 = getelementptr inbounds nuw %struct.Select, ptr %146, i32 0, i32 8
  %147 = load ptr, ptr %pSrc90, align 8
  call void @sqlite3SrcListAssignCursors(ptr noundef %145, ptr noundef %147)
  %148 = load ptr, ptr %pSub, align 8
  %selFlags91 = getelementptr inbounds nuw %struct.Select, ptr %148, i32 0, i32 3
  %149 = load i32, ptr %selFlags91, align 4
  %or = or i32 %149, 64
  store i32 %or, ptr %selFlags91, align 4
  %150 = load ptr, ptr %pParse.addr, align 8
  %151 = load ptr, ptr %pSub, align 8
  %call92 = call ptr @sqlite3ResultSetOfSelect(ptr noundef %150, ptr noundef %151, i8 noundef signext 64)
  store ptr %call92, ptr %pTab2, align 8
  %152 = load ptr, ptr %pTab2, align 8
  %cmp93 = icmp eq ptr %152, null
  br i1 %cmp93, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.then88
  store i32 7, ptr %rc, align 4
  br label %if.end101

if.else95:                                        ; preds = %if.then88
  %153 = load ptr, ptr %pTab, align 8
  %154 = load ptr, ptr %pTab2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %153, ptr align 8 %154, i64 128, i1 false)
  %155 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %155, i32 0, i32 9
  %156 = load i32, ptr %tabFlags, align 8
  %or96 = or i32 %156, 2
  store i32 %or96, ptr %tabFlags, align 8
  %157 = load ptr, ptr %pTab, align 8
  %158 = load ptr, ptr %p.addr, align 8
  %pSrc97 = getelementptr inbounds nuw %struct.Select, ptr %158, i32 0, i32 8
  %159 = load ptr, ptr %pSrc97, align 8
  %a98 = getelementptr inbounds nuw %struct.SrcList, ptr %159, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a98, i64 0, i64 0
  %pTab100 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx99, i32 0, i32 4
  store ptr %157, ptr %pTab100, align 8
  %160 = load ptr, ptr %pTab2, align 8
  store ptr %160, ptr %pTab, align 8
  br label %if.end101

if.end101:                                        ; preds = %if.else95, %if.then94
  %161 = load ptr, ptr %v, align 8
  %162 = load ptr, ptr %pMWin, align 8
  %iEphCsr102 = getelementptr inbounds nuw %struct.Window, ptr %162, i32 0, i32 15
  %163 = load i32, ptr %iEphCsr102, align 8
  %164 = load ptr, ptr %pSublist, align 8
  %nExpr103 = getelementptr inbounds nuw %struct.ExprList, ptr %164, i32 0, i32 0
  %165 = load i32, ptr %nExpr103, align 8
  %call104 = call i32 @sqlite3VdbeAddOp2(ptr noundef %161, i32 noundef 112, i32 noundef %163, i32 noundef %165)
  %166 = load ptr, ptr %v, align 8
  %167 = load ptr, ptr %pMWin, align 8
  %iEphCsr105 = getelementptr inbounds nuw %struct.Window, ptr %167, i32 0, i32 15
  %168 = load i32, ptr %iEphCsr105, align 8
  %add106 = add nsw i32 %168, 1
  %169 = load ptr, ptr %pMWin, align 8
  %iEphCsr107 = getelementptr inbounds nuw %struct.Window, ptr %169, i32 0, i32 15
  %170 = load i32, ptr %iEphCsr107, align 8
  %call108 = call i32 @sqlite3VdbeAddOp2(ptr noundef %166, i32 noundef 109, i32 noundef %add106, i32 noundef %170)
  %171 = load ptr, ptr %v, align 8
  %172 = load ptr, ptr %pMWin, align 8
  %iEphCsr109 = getelementptr inbounds nuw %struct.Window, ptr %172, i32 0, i32 15
  %173 = load i32, ptr %iEphCsr109, align 8
  %add110 = add nsw i32 %173, 2
  %174 = load ptr, ptr %pMWin, align 8
  %iEphCsr111 = getelementptr inbounds nuw %struct.Window, ptr %174, i32 0, i32 15
  %175 = load i32, ptr %iEphCsr111, align 8
  %call112 = call i32 @sqlite3VdbeAddOp2(ptr noundef %171, i32 noundef 109, i32 noundef %add110, i32 noundef %175)
  %176 = load ptr, ptr %v, align 8
  %177 = load ptr, ptr %pMWin, align 8
  %iEphCsr113 = getelementptr inbounds nuw %struct.Window, ptr %177, i32 0, i32 15
  %178 = load i32, ptr %iEphCsr113, align 8
  %add114 = add nsw i32 %178, 3
  %179 = load ptr, ptr %pMWin, align 8
  %iEphCsr115 = getelementptr inbounds nuw %struct.Window, ptr %179, i32 0, i32 15
  %180 = load i32, ptr %iEphCsr115, align 8
  %call116 = call i32 @sqlite3VdbeAddOp2(ptr noundef %176, i32 noundef 109, i32 noundef %add114, i32 noundef %180)
  br label %if.end118

if.else117:                                       ; preds = %if.end82
  %181 = load ptr, ptr %db, align 8
  %182 = load ptr, ptr %pSub, align 8
  call void @sqlite3SelectDelete(ptr noundef %181, ptr noundef %182)
  br label %if.end118

if.end118:                                        ; preds = %if.else117, %if.end101
  %183 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %183, i32 0, i32 19
  %184 = load i8, ptr %mallocFailed, align 1
  %tobool119 = icmp ne i8 %184, 0
  br i1 %tobool119, label %if.then120, label %if.end121

if.then120:                                       ; preds = %if.end118
  store i32 7, ptr %rc, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %if.end118
  %185 = load ptr, ptr %db, align 8
  %186 = load ptr, ptr %pTab, align 8
  call void @sqlite3DbFree(ptr noundef %185, ptr noundef %186)
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %land.lhs.true, %entry
  %187 = load i32, ptr %rc, align 4
  store i32 %187, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %if.then10
  %188 = load i32, ptr %retval, align 4
  ret i32 %188
}

; Function Attrs: nounwind uwtable
declare hidden ptr @exprListAppendList(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @selectWindowRewriteEList(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
