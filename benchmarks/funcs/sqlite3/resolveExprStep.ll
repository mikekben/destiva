; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.566 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.601 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.602 = external hidden unnamed_addr constant [71 x i8], align 1
@.str.603 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.604 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.605 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.606 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.607 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.608 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.609 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.610 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.611 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.612 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.613 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.614 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowLink(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @resolveExprStep(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pNC = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %zColumn = alloca ptr, align 8
  %zTable = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %n = alloca i32, align 4
  %no_such_func = alloca i32, align 4
  %wrong_num_args = alloca i32, align 4
  %is_agg = alloca i32, align 4
  %nId = alloca i32, align 4
  %zId = alloca ptr, align 8
  %pDef = alloca ptr, align 8
  %enc = alloca i8, align 1
  %savedAllowFlags = alloca i32, align 4
  %pWin = alloca ptr, align 8
  %auth = alloca i32, align 4
  %zType = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  %pNC2 = alloca ptr, align 8
  %nRef = alloca i32, align 4
  %pRight307 = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nLeft = alloca i32, align 4
  %nRight = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %pNC, align 8
  %2 = load ptr, ptr %pNC, align 8
  %pParse1 = getelementptr inbounds nuw %struct.NameContext, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse1, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op, align 8
  %conv = zext i8 %5 to i32
  switch i32 %conv, label %sw.epilog [
    i32 59, label %sw.bb
    i32 137, label %sw.bb
    i32 167, label %sw.bb25
    i32 134, label %sw.bb285
    i32 20, label %sw.bb285
    i32 49, label %sw.bb286
    i32 151, label %sw.bb305
    i32 45, label %sw.bb306
    i32 166, label %sw.bb306
    i32 48, label %sw.bb330
    i32 53, label %sw.bb330
    i32 52, label %sw.bb330
    i32 56, label %sw.bb330
    i32 55, label %sw.bb330
    i32 54, label %sw.bb330
    i32 57, label %sw.bb330
  ]

sw.bb:                                            ; preds = %entry, %entry
  %6 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 59
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store ptr null, ptr %zDb, align 8
  store ptr null, ptr %zTable, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %u5 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %u5, align 8
  store ptr %9, ptr %zColumn, align 8
  br label %if.end24

if.else:                                          ; preds = %sw.bb
  %10 = load ptr, ptr %pExpr.addr, align 8
  %pLeft6 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pLeft6, align 8
  store ptr %11, ptr %pLeft, align 8
  %12 = load ptr, ptr %pParse, align 8
  %13 = load ptr, ptr %pNC, align 8
  call void @notValid(ptr noundef %12, ptr noundef %13, ptr noundef @.str.601, i32 noundef 32)
  %14 = load ptr, ptr %pExpr.addr, align 8
  %pRight7 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pRight7, align 8
  store ptr %15, ptr %pRight, align 8
  %16 = load ptr, ptr %pRight, align 8
  %op8 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 0
  %17 = load i8, ptr %op8, align 8
  %conv9 = zext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 59
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  store ptr null, ptr %zDb, align 8
  br label %if.end

if.else13:                                        ; preds = %if.else
  %18 = load ptr, ptr %pLeft, align 8
  %u14 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %u14, align 8
  store ptr %19, ptr %zDb, align 8
  %20 = load ptr, ptr %pRight, align 8
  %pLeft15 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pLeft15, align 8
  store ptr %21, ptr %pLeft, align 8
  %22 = load ptr, ptr %pRight, align 8
  %pRight16 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %pRight16, align 8
  store ptr %23, ptr %pRight, align 8
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %24 = load ptr, ptr %pLeft, align 8
  %u17 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %u17, align 8
  store ptr %25, ptr %zTable, align 8
  %26 = load ptr, ptr %pRight, align 8
  %u18 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %u18, align 8
  store ptr %27, ptr %zColumn, align 8
  %28 = load ptr, ptr %pParse, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %28, i32 0, i32 51
  %29 = load i8, ptr %eParseMode, align 4
  %conv19 = zext i8 %29 to i32
  %cmp20 = icmp sge i32 %conv19, 2
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end
  %30 = load ptr, ptr %pParse, align 8
  %31 = load ptr, ptr %pExpr.addr, align 8
  %32 = load ptr, ptr %pRight, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %30, ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %pParse, align 8
  %34 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 14
  %35 = load ptr, ptr %pLeft, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %33, ptr noundef %y, ptr noundef %35)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %36 = load ptr, ptr %pParse, align 8
  %37 = load ptr, ptr %zDb, align 8
  %38 = load ptr, ptr %zTable, align 8
  %39 = load ptr, ptr %zColumn, align 8
  %40 = load ptr, ptr %pNC, align 8
  %41 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @lookupName(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %entry
  %42 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %x, align 8
  store ptr %43, ptr %pList, align 8
  %44 = load ptr, ptr %pList, align 8
  %tobool = icmp ne ptr %44, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb25
  %45 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %45, i32 0, i32 0
  %46 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %n, align 4
  store i32 0, ptr %no_such_func, align 4
  store i32 0, ptr %wrong_num_args, align 4
  store i32 0, ptr %is_agg, align 4
  %47 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %db, align 8
  %enc26 = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 16
  %49 = load i8, ptr %enc26, align 2
  store i8 %49, ptr %enc, align 1
  %50 = load ptr, ptr %pNC, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %50, i32 0, i32 6
  %51 = load i32, ptr %ncFlags, align 8
  %and = and i32 %51, 16385
  store i32 %and, ptr %savedAllowFlags, align 4
  %52 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %flags, align 4
  %and27 = and i32 %53, 16777216
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %land.lhs.true, label %cond.false36

land.lhs.true:                                    ; preds = %cond.end
  %54 = load ptr, ptr %pExpr.addr, align 8
  %y30 = getelementptr inbounds nuw %struct.Expr, ptr %54, i32 0, i32 14
  %55 = load ptr, ptr %y30, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %55, i32 0, i32 4
  %56 = load i8, ptr %eFrmType, align 8
  %conv31 = zext i8 %56 to i32
  %cmp32 = icmp ne i32 %conv31, 161
  br i1 %cmp32, label %cond.true34, label %cond.false36

cond.true34:                                      ; preds = %land.lhs.true
  %57 = load ptr, ptr %pExpr.addr, align 8
  %y35 = getelementptr inbounds nuw %struct.Expr, ptr %57, i32 0, i32 14
  %58 = load ptr, ptr %y35, align 8
  br label %cond.end37

cond.false36:                                     ; preds = %land.lhs.true, %cond.end
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true34
  %cond38 = phi ptr [ %58, %cond.true34 ], [ null, %cond.false36 ]
  store ptr %cond38, ptr %pWin, align 8
  %59 = load ptr, ptr %pExpr.addr, align 8
  %u39 = getelementptr inbounds nuw %struct.Expr, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %u39, align 8
  store ptr %60, ptr %zId, align 8
  %61 = load ptr, ptr %zId, align 8
  %call40 = call i32 @sqlite3Strlen30(ptr noundef %61)
  store i32 %call40, ptr %nId, align 4
  %62 = load ptr, ptr %pParse, align 8
  %db41 = getelementptr inbounds nuw %struct.Parse, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %db41, align 8
  %64 = load ptr, ptr %zId, align 8
  %65 = load i32, ptr %n, align 4
  %66 = load i8, ptr %enc, align 1
  %call42 = call ptr @sqlite3FindFunction(ptr noundef %63, ptr noundef %64, i32 noundef %65, i8 noundef zeroext %66, i8 noundef zeroext 0)
  store ptr %call42, ptr %pDef, align 8
  %67 = load ptr, ptr %pDef, align 8
  %cmp43 = icmp eq ptr %67, null
  br i1 %cmp43, label %if.then45, label %if.else53

if.then45:                                        ; preds = %cond.end37
  %68 = load ptr, ptr %pParse, align 8
  %db46 = getelementptr inbounds nuw %struct.Parse, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %db46, align 8
  %70 = load ptr, ptr %zId, align 8
  %71 = load i8, ptr %enc, align 1
  %call47 = call ptr @sqlite3FindFunction(ptr noundef %69, ptr noundef %70, i32 noundef -2, i8 noundef zeroext %71, i8 noundef zeroext 0)
  store ptr %call47, ptr %pDef, align 8
  %72 = load ptr, ptr %pDef, align 8
  %cmp48 = icmp eq ptr %72, null
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.then45
  store i32 1, ptr %no_such_func, align 4
  br label %if.end52

if.else51:                                        ; preds = %if.then45
  store i32 1, ptr %wrong_num_args, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then50
  br label %if.end137

if.else53:                                        ; preds = %cond.end37
  %73 = load ptr, ptr %pDef, align 8
  %xFinalize = getelementptr inbounds nuw %struct.FuncDef, ptr %73, i32 0, i32 5
  %74 = load ptr, ptr %xFinalize, align 8
  %cmp54 = icmp ne ptr %74, null
  %conv55 = zext i1 %cmp54 to i32
  store i32 %conv55, ptr %is_agg, align 4
  %75 = load ptr, ptr %pDef, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %funcFlags, align 4
  %and56 = and i32 %76, 1024
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end78

if.then58:                                        ; preds = %if.else53
  %77 = load ptr, ptr %pExpr.addr, align 8
  %flags59 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %flags59, align 4
  %or = or i32 %78, 262144
  store i32 %or, ptr %flags59, align 4
  %79 = load i32, ptr %n, align 4
  %cmp60 = icmp eq i32 %79, 2
  br i1 %cmp60, label %if.then62, label %if.else70

if.then62:                                        ; preds = %if.then58
  %80 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %80, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 1
  %pExpr63 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %81 = load ptr, ptr %pExpr63, align 8
  %call64 = call i32 @exprProbability(ptr noundef %81)
  %82 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 8
  store i32 %call64, ptr %iTable, align 4
  %83 = load ptr, ptr %pExpr.addr, align 8
  %iTable65 = getelementptr inbounds nuw %struct.Expr, ptr %83, i32 0, i32 8
  %84 = load i32, ptr %iTable65, align 4
  %cmp66 = icmp slt i32 %84, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then62
  %85 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %85, ptr noundef @.str.602)
  %86 = load ptr, ptr %pNC, align 8
  %nErr = getelementptr inbounds nuw %struct.NameContext, ptr %86, i32 0, i32 5
  %87 = load i32, ptr %nErr, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, ptr %nErr, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then62
  br label %if.end77

if.else70:                                        ; preds = %if.then58
  %88 = load ptr, ptr %pDef, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %88, i32 0, i32 8
  %89 = load ptr, ptr %zName, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %89, i64 0
  %90 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %90 to i32
  %cmp73 = icmp eq i32 %conv72, 117
  %91 = zext i1 %cmp73 to i64
  %cond75 = select i1 %cmp73, i32 8388608, i32 125829120
  %92 = load ptr, ptr %pExpr.addr, align 8
  %iTable76 = getelementptr inbounds nuw %struct.Expr, ptr %92, i32 0, i32 8
  store i32 %cond75, ptr %iTable76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else70, %if.end69
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.else53
  %93 = load ptr, ptr %pParse, align 8
  %94 = load ptr, ptr %pDef, align 8
  %zName79 = getelementptr inbounds nuw %struct.FuncDef, ptr %94, i32 0, i32 8
  %95 = load ptr, ptr %zName79, align 8
  %call80 = call i32 @sqlite3AuthCheck(ptr noundef %93, i32 noundef 31, ptr noundef null, ptr noundef %95, ptr noundef null)
  store i32 %call80, ptr %auth, align 4
  %96 = load i32, ptr %auth, align 4
  %cmp81 = icmp ne i32 %96, 0
  br i1 %cmp81, label %if.then83, label %if.end92

if.then83:                                        ; preds = %if.end78
  %97 = load i32, ptr %auth, align 4
  %cmp84 = icmp eq i32 %97, 1
  br i1 %cmp84, label %if.then86, label %if.end90

if.then86:                                        ; preds = %if.then83
  %98 = load ptr, ptr %pParse, align 8
  %99 = load ptr, ptr %pDef, align 8
  %zName87 = getelementptr inbounds nuw %struct.FuncDef, ptr %99, i32 0, i32 8
  %100 = load ptr, ptr %zName87, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %98, ptr noundef @.str.603, ptr noundef %100)
  %101 = load ptr, ptr %pNC, align 8
  %nErr88 = getelementptr inbounds nuw %struct.NameContext, ptr %101, i32 0, i32 5
  %102 = load i32, ptr %nErr88, align 4
  %inc89 = add nsw i32 %102, 1
  store i32 %inc89, ptr %nErr88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.then83
  %103 = load ptr, ptr %pExpr.addr, align 8
  %op91 = getelementptr inbounds nuw %struct.Expr, ptr %103, i32 0, i32 0
  store i8 117, ptr %op91, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end78
  %104 = load ptr, ptr %pDef, align 8
  %funcFlags93 = getelementptr inbounds nuw %struct.FuncDef, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %funcFlags93, align 4
  %and94 = and i32 %105, 10240
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.end92
  %106 = load ptr, ptr %pExpr.addr, align 8
  %flags97 = getelementptr inbounds nuw %struct.Expr, ptr %106, i32 0, i32 2
  %107 = load i32, ptr %flags97, align 4
  %or98 = or i32 %107, 524288
  store i32 %or98, ptr %flags97, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then96, %if.end92
  %108 = load ptr, ptr %pDef, align 8
  %funcFlags100 = getelementptr inbounds nuw %struct.FuncDef, ptr %108, i32 0, i32 1
  %109 = load i32, ptr %funcFlags100, align 4
  %and101 = and i32 %109, 2048
  %cmp102 = icmp eq i32 %and101, 0
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.end99
  %110 = load ptr, ptr %pParse, align 8
  %111 = load ptr, ptr %pNC, align 8
  call void @notValid(ptr noundef %110, ptr noundef %111, ptr noundef @.str.604, i32 noundef 34)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %if.end99
  %112 = load ptr, ptr %pDef, align 8
  %funcFlags106 = getelementptr inbounds nuw %struct.FuncDef, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %funcFlags106, align 4
  %and107 = and i32 %113, 262144
  %cmp108 = icmp ne i32 %and107, 0
  br i1 %cmp108, label %land.lhs.true110, label %if.else118

land.lhs.true110:                                 ; preds = %if.end105
  %114 = load ptr, ptr %pParse, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %114, i32 0, i32 6
  %115 = load i8, ptr %nested, align 2
  %conv111 = zext i8 %115 to i32
  %cmp112 = icmp eq i32 %conv111, 0
  br i1 %cmp112, label %land.lhs.true114, label %if.else118

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %116 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 38), align 4
  %cmp115 = icmp eq i32 %116, 0
  br i1 %cmp115, label %if.then117, label %if.else118

if.then117:                                       ; preds = %land.lhs.true114
  store i32 1, ptr %no_such_func, align 4
  store ptr null, ptr %pDef, align 8
  br label %if.end136

if.else118:                                       ; preds = %land.lhs.true114, %land.lhs.true110, %if.end105
  %117 = load ptr, ptr %pDef, align 8
  %funcFlags119 = getelementptr inbounds nuw %struct.FuncDef, ptr %117, i32 0, i32 1
  %118 = load i32, ptr %funcFlags119, align 4
  %and120 = and i32 %118, 524288
  %cmp121 = icmp ne i32 %and120, 0
  br i1 %cmp121, label %land.lhs.true123, label %if.end135

land.lhs.true123:                                 ; preds = %if.else118
  %119 = load ptr, ptr %pExpr.addr, align 8
  %flags124 = getelementptr inbounds nuw %struct.Expr, ptr %119, i32 0, i32 2
  %120 = load i32, ptr %flags124, align 4
  %and125 = and i32 %120, 1073741824
  %cmp126 = icmp ne i32 %and125, 0
  br i1 %cmp126, label %land.lhs.true128, label %if.end135

land.lhs.true128:                                 ; preds = %land.lhs.true123
  %121 = load ptr, ptr %pParse, align 8
  %eParseMode129 = getelementptr inbounds nuw %struct.Parse, ptr %121, i32 0, i32 51
  %122 = load i8, ptr %eParseMode129, align 4
  %conv130 = zext i8 %122 to i32
  %cmp131 = icmp sge i32 %conv130, 2
  br i1 %cmp131, label %if.end135, label %if.then133

if.then133:                                       ; preds = %land.lhs.true128
  %123 = load ptr, ptr %pParse, align 8
  %124 = load ptr, ptr %pDef, align 8
  %zName134 = getelementptr inbounds nuw %struct.FuncDef, ptr %124, i32 0, i32 8
  %125 = load ptr, ptr %zName134, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %123, ptr noundef @.str.605, ptr noundef %125)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %land.lhs.true128, %land.lhs.true123, %if.else118
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then117
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end52
  %126 = load ptr, ptr %pParse, align 8
  %eParseMode138 = getelementptr inbounds nuw %struct.Parse, ptr %126, i32 0, i32 51
  %127 = load i8, ptr %eParseMode138, align 4
  %conv139 = zext i8 %127 to i32
  %cmp140 = icmp sge i32 %conv139, 2
  %conv141 = zext i1 %cmp140 to i32
  %cmp142 = icmp eq i32 0, %conv141
  br i1 %cmp142, label %if.then144, label %if.else227

if.then144:                                       ; preds = %if.end137
  %128 = load ptr, ptr %pDef, align 8
  %tobool145 = icmp ne ptr %128, null
  br i1 %tobool145, label %land.lhs.true146, label %if.else154

land.lhs.true146:                                 ; preds = %if.then144
  %129 = load ptr, ptr %pDef, align 8
  %xValue = getelementptr inbounds nuw %struct.FuncDef, ptr %129, i32 0, i32 6
  %130 = load ptr, ptr %xValue, align 8
  %cmp147 = icmp eq ptr %130, null
  br i1 %cmp147, label %land.lhs.true149, label %if.else154

land.lhs.true149:                                 ; preds = %land.lhs.true146
  %131 = load ptr, ptr %pWin, align 8
  %tobool150 = icmp ne ptr %131, null
  br i1 %tobool150, label %if.then151, label %if.else154

if.then151:                                       ; preds = %land.lhs.true149
  %132 = load ptr, ptr %pParse, align 8
  %133 = load i32, ptr %nId, align 4
  %134 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %132, ptr noundef @.str.606, i32 noundef %133, ptr noundef %134)
  %135 = load ptr, ptr %pNC, align 8
  %nErr152 = getelementptr inbounds nuw %struct.NameContext, ptr %135, i32 0, i32 5
  %136 = load i32, ptr %nErr152, align 4
  %inc153 = add nsw i32 %136, 1
  store i32 %inc153, ptr %nErr152, align 4
  br label %if.end218

if.else154:                                       ; preds = %land.lhs.true149, %land.lhs.true146, %if.then144
  %137 = load i32, ptr %is_agg, align 4
  %tobool155 = icmp ne i32 %137, 0
  br i1 %tobool155, label %land.lhs.true156, label %lor.lhs.false

land.lhs.true156:                                 ; preds = %if.else154
  %138 = load ptr, ptr %pNC, align 8
  %ncFlags157 = getelementptr inbounds nuw %struct.NameContext, ptr %138, i32 0, i32 6
  %139 = load i32, ptr %ncFlags157, align 8
  %and158 = and i32 %139, 1
  %cmp159 = icmp eq i32 %and158, 0
  br i1 %cmp159, label %if.then177, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true156, %if.else154
  %140 = load i32, ptr %is_agg, align 4
  %tobool161 = icmp ne i32 %140, 0
  br i1 %tobool161, label %land.lhs.true162, label %lor.lhs.false168

land.lhs.true162:                                 ; preds = %lor.lhs.false
  %141 = load ptr, ptr %pDef, align 8
  %funcFlags163 = getelementptr inbounds nuw %struct.FuncDef, ptr %141, i32 0, i32 1
  %142 = load i32, ptr %funcFlags163, align 4
  %and164 = and i32 %142, 65536
  %tobool165 = icmp ne i32 %and164, 0
  br i1 %tobool165, label %land.lhs.true166, label %lor.lhs.false168

land.lhs.true166:                                 ; preds = %land.lhs.true162
  %143 = load ptr, ptr %pWin, align 8
  %tobool167 = icmp ne ptr %143, null
  br i1 %tobool167, label %lor.lhs.false168, label %if.then177

lor.lhs.false168:                                 ; preds = %land.lhs.true166, %land.lhs.true162, %lor.lhs.false
  %144 = load i32, ptr %is_agg, align 4
  %tobool169 = icmp ne i32 %144, 0
  br i1 %tobool169, label %land.lhs.true170, label %if.else188

land.lhs.true170:                                 ; preds = %lor.lhs.false168
  %145 = load ptr, ptr %pWin, align 8
  %tobool171 = icmp ne ptr %145, null
  br i1 %tobool171, label %land.lhs.true172, label %if.else188

land.lhs.true172:                                 ; preds = %land.lhs.true170
  %146 = load ptr, ptr %pNC, align 8
  %ncFlags173 = getelementptr inbounds nuw %struct.NameContext, ptr %146, i32 0, i32 6
  %147 = load i32, ptr %ncFlags173, align 8
  %and174 = and i32 %147, 16384
  %cmp175 = icmp eq i32 %and174, 0
  br i1 %cmp175, label %if.then177, label %if.else188

if.then177:                                       ; preds = %land.lhs.true172, %land.lhs.true166, %land.lhs.true156
  %148 = load ptr, ptr %pDef, align 8
  %funcFlags178 = getelementptr inbounds nuw %struct.FuncDef, ptr %148, i32 0, i32 1
  %149 = load i32, ptr %funcFlags178, align 4
  %and179 = and i32 %149, 65536
  %tobool180 = icmp ne i32 %and179, 0
  br i1 %tobool180, label %if.then183, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %if.then177
  %150 = load ptr, ptr %pWin, align 8
  %tobool182 = icmp ne ptr %150, null
  br i1 %tobool182, label %if.then183, label %if.else184

if.then183:                                       ; preds = %lor.lhs.false181, %if.then177
  store ptr @.str.607, ptr %zType, align 8
  br label %if.end185

if.else184:                                       ; preds = %lor.lhs.false181
  store ptr @.str.608, ptr %zType, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.else184, %if.then183
  %151 = load ptr, ptr %pParse, align 8
  %152 = load ptr, ptr %zType, align 8
  %153 = load i32, ptr %nId, align 4
  %154 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %151, ptr noundef @.str.609, ptr noundef %152, i32 noundef %153, ptr noundef %154)
  %155 = load ptr, ptr %pNC, align 8
  %nErr186 = getelementptr inbounds nuw %struct.NameContext, ptr %155, i32 0, i32 5
  %156 = load i32, ptr %nErr186, align 4
  %inc187 = add nsw i32 %156, 1
  store i32 %inc187, ptr %nErr186, align 4
  store i32 0, ptr %is_agg, align 4
  br label %if.end217

if.else188:                                       ; preds = %land.lhs.true172, %land.lhs.true170, %lor.lhs.false168
  %157 = load i32, ptr %no_such_func, align 4
  %tobool189 = icmp ne i32 %157, 0
  br i1 %tobool189, label %land.lhs.true190, label %if.else198

land.lhs.true190:                                 ; preds = %if.else188
  %158 = load ptr, ptr %pParse, align 8
  %db191 = getelementptr inbounds nuw %struct.Parse, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %db191, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %159, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %160 = load i8, ptr %busy, align 1
  %conv192 = zext i8 %160 to i32
  %cmp193 = icmp eq i32 %conv192, 0
  br i1 %cmp193, label %if.then195, label %if.else198

if.then195:                                       ; preds = %land.lhs.true190
  %161 = load ptr, ptr %pParse, align 8
  %162 = load i32, ptr %nId, align 4
  %163 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %161, ptr noundef @.str.610, i32 noundef %162, ptr noundef %163)
  %164 = load ptr, ptr %pNC, align 8
  %nErr196 = getelementptr inbounds nuw %struct.NameContext, ptr %164, i32 0, i32 5
  %165 = load i32, ptr %nErr196, align 4
  %inc197 = add nsw i32 %165, 1
  store i32 %inc197, ptr %nErr196, align 4
  br label %if.end216

if.else198:                                       ; preds = %land.lhs.true190, %if.else188
  %166 = load i32, ptr %wrong_num_args, align 4
  %tobool199 = icmp ne i32 %166, 0
  br i1 %tobool199, label %if.then200, label %if.else203

if.then200:                                       ; preds = %if.else198
  %167 = load ptr, ptr %pParse, align 8
  %168 = load i32, ptr %nId, align 4
  %169 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %167, ptr noundef @.str.611, i32 noundef %168, ptr noundef %169)
  %170 = load ptr, ptr %pNC, align 8
  %nErr201 = getelementptr inbounds nuw %struct.NameContext, ptr %170, i32 0, i32 5
  %171 = load i32, ptr %nErr201, align 4
  %inc202 = add nsw i32 %171, 1
  store i32 %inc202, ptr %nErr201, align 4
  br label %if.end215

if.else203:                                       ; preds = %if.else198
  %172 = load i32, ptr %is_agg, align 4
  %cmp204 = icmp eq i32 %172, 0
  br i1 %cmp204, label %land.lhs.true206, label %if.end214

land.lhs.true206:                                 ; preds = %if.else203
  %173 = load ptr, ptr %pExpr.addr, align 8
  %flags207 = getelementptr inbounds nuw %struct.Expr, ptr %173, i32 0, i32 2
  %174 = load i32, ptr %flags207, align 4
  %and208 = and i32 %174, 16777216
  %cmp209 = icmp ne i32 %and208, 0
  br i1 %cmp209, label %if.then211, label %if.end214

if.then211:                                       ; preds = %land.lhs.true206
  %175 = load ptr, ptr %pParse, align 8
  %176 = load i32, ptr %nId, align 4
  %177 = load ptr, ptr %zId, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %175, ptr noundef @.str.612, i32 noundef %176, ptr noundef %177)
  %178 = load ptr, ptr %pNC, align 8
  %nErr212 = getelementptr inbounds nuw %struct.NameContext, ptr %178, i32 0, i32 5
  %179 = load i32, ptr %nErr212, align 4
  %inc213 = add nsw i32 %179, 1
  store i32 %inc213, ptr %nErr212, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %land.lhs.true206, %if.else203
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then200
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then195
  br label %if.end217

if.end217:                                        ; preds = %if.end216, %if.end185
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.then151
  %180 = load i32, ptr %is_agg, align 4
  %tobool219 = icmp ne i32 %180, 0
  br i1 %tobool219, label %if.then220, label %if.end226

if.then220:                                       ; preds = %if.end218
  %181 = load ptr, ptr %pWin, align 8
  %tobool221 = icmp ne ptr %181, null
  %lnot = xor i1 %tobool221, true
  %182 = zext i1 %lnot to i64
  %cond222 = select i1 %lnot, i32 1, i32 0
  %or223 = or i32 16384, %cond222
  %not = xor i32 %or223, -1
  %183 = load ptr, ptr %pNC, align 8
  %ncFlags224 = getelementptr inbounds nuw %struct.NameContext, ptr %183, i32 0, i32 6
  %184 = load i32, ptr %ncFlags224, align 8
  %and225 = and i32 %184, %not
  store i32 %and225, ptr %ncFlags224, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.then220, %if.end218
  br label %if.end234

if.else227:                                       ; preds = %if.end137
  %185 = load ptr, ptr %pExpr.addr, align 8
  %flags228 = getelementptr inbounds nuw %struct.Expr, ptr %185, i32 0, i32 2
  %186 = load i32, ptr %flags228, align 4
  %and229 = and i32 %186, 16777216
  %cmp230 = icmp ne i32 %and229, 0
  br i1 %cmp230, label %if.then232, label %if.end233

if.then232:                                       ; preds = %if.else227
  store i32 1, ptr %is_agg, align 4
  br label %if.end233

if.end233:                                        ; preds = %if.then232, %if.else227
  br label %if.end234

if.end234:                                        ; preds = %if.end233, %if.end226
  %187 = load ptr, ptr %pWalker.addr, align 8
  %188 = load ptr, ptr %pList, align 8
  %call235 = call i32 @sqlite3WalkExprList(ptr noundef %187, ptr noundef %188)
  %189 = load i32, ptr %is_agg, align 4
  %tobool236 = icmp ne i32 %189, 0
  br i1 %tobool236, label %if.then237, label %if.end284

if.then237:                                       ; preds = %if.end234
  %190 = load ptr, ptr %pWin, align 8
  %tobool238 = icmp ne ptr %190, null
  br i1 %tobool238, label %if.then239, label %if.else253

if.then239:                                       ; preds = %if.then237
  %191 = load ptr, ptr %pNC, align 8
  %pWinSelect = getelementptr inbounds nuw %struct.NameContext, ptr %191, i32 0, i32 7
  %192 = load ptr, ptr %pWinSelect, align 8
  store ptr %192, ptr %pSel, align 8
  %193 = load ptr, ptr %pParse, align 8
  %eParseMode240 = getelementptr inbounds nuw %struct.Parse, ptr %193, i32 0, i32 51
  %194 = load i8, ptr %eParseMode240, align 4
  %conv241 = zext i8 %194 to i32
  %cmp242 = icmp sge i32 %conv241, 2
  %conv243 = zext i1 %cmp242 to i32
  %cmp244 = icmp eq i32 %conv243, 0
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.then239
  %195 = load ptr, ptr %pParse, align 8
  %196 = load ptr, ptr %pSel, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %196, i32 0, i32 18
  %197 = load ptr, ptr %pWinDefn, align 8
  %198 = load ptr, ptr %pWin, align 8
  %199 = load ptr, ptr %pDef, align 8
  call void @sqlite3WindowUpdate(ptr noundef %195, ptr noundef %197, ptr noundef %198, ptr noundef %199)
  br label %if.end247

if.end247:                                        ; preds = %if.then246, %if.then239
  %200 = load ptr, ptr %pWalker.addr, align 8
  %201 = load ptr, ptr %pWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %201, i32 0, i32 2
  %202 = load ptr, ptr %pPartition, align 8
  %call248 = call i32 @sqlite3WalkExprList(ptr noundef %200, ptr noundef %202)
  %203 = load ptr, ptr %pWalker.addr, align 8
  %204 = load ptr, ptr %pWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %204, i32 0, i32 3
  %205 = load ptr, ptr %pOrderBy, align 8
  %call249 = call i32 @sqlite3WalkExprList(ptr noundef %203, ptr noundef %205)
  %206 = load ptr, ptr %pWalker.addr, align 8
  %207 = load ptr, ptr %pWin, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %207, i32 0, i32 13
  %208 = load ptr, ptr %pFilter, align 8
  %call250 = call i32 @sqlite3WalkExpr(ptr noundef %206, ptr noundef %208)
  %209 = load ptr, ptr %pSel, align 8
  %210 = load ptr, ptr %pWin, align 8
  call void @sqlite3WindowLink(ptr noundef %209, ptr noundef %210)
  %211 = load ptr, ptr %pNC, align 8
  %ncFlags251 = getelementptr inbounds nuw %struct.NameContext, ptr %211, i32 0, i32 6
  %212 = load i32, ptr %ncFlags251, align 8
  %or252 = or i32 %212, 32768
  store i32 %or252, ptr %ncFlags251, align 8
  br label %if.end281

if.else253:                                       ; preds = %if.then237
  %213 = load ptr, ptr %pNC, align 8
  store ptr %213, ptr %pNC2, align 8
  %214 = load ptr, ptr %pExpr.addr, align 8
  %op254 = getelementptr inbounds nuw %struct.Expr, ptr %214, i32 0, i32 0
  store i8 -93, ptr %op254, align 8
  %215 = load ptr, ptr %pExpr.addr, align 8
  %op2255 = getelementptr inbounds nuw %struct.Expr, ptr %215, i32 0, i32 12
  store i8 0, ptr %op2255, align 2
  %216 = load ptr, ptr %pExpr.addr, align 8
  %flags256 = getelementptr inbounds nuw %struct.Expr, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %flags256, align 4
  %and257 = and i32 %217, 16777216
  %cmp258 = icmp ne i32 %and257, 0
  br i1 %cmp258, label %if.then260, label %if.end264

if.then260:                                       ; preds = %if.else253
  %218 = load ptr, ptr %pWalker.addr, align 8
  %219 = load ptr, ptr %pExpr.addr, align 8
  %y261 = getelementptr inbounds nuw %struct.Expr, ptr %219, i32 0, i32 14
  %220 = load ptr, ptr %y261, align 8
  %pFilter262 = getelementptr inbounds nuw %struct.Window, ptr %220, i32 0, i32 13
  %221 = load ptr, ptr %pFilter262, align 8
  %call263 = call i32 @sqlite3WalkExpr(ptr noundef %218, ptr noundef %221)
  br label %if.end264

if.end264:                                        ; preds = %if.then260, %if.else253
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end264
  %222 = load ptr, ptr %pNC2, align 8
  %tobool265 = icmp ne ptr %222, null
  br i1 %tobool265, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %223 = load ptr, ptr %pExpr.addr, align 8
  %224 = load ptr, ptr %pNC2, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %224, i32 0, i32 1
  %225 = load ptr, ptr %pSrcList, align 8
  %call266 = call i32 @sqlite3FunctionUsesThisSrc(ptr noundef %223, ptr noundef %225)
  %tobool267 = icmp ne i32 %call266, 0
  %lnot268 = xor i1 %tobool267, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %226 = phi i1 [ false, %while.cond ], [ %lnot268, %land.rhs ]
  br i1 %226, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %227 = load ptr, ptr %pExpr.addr, align 8
  %op2269 = getelementptr inbounds nuw %struct.Expr, ptr %227, i32 0, i32 12
  %228 = load i8, ptr %op2269, align 2
  %inc270 = add i8 %228, 1
  store i8 %inc270, ptr %op2269, align 2
  %229 = load ptr, ptr %pNC2, align 8
  %pNext = getelementptr inbounds nuw %struct.NameContext, ptr %229, i32 0, i32 3
  %230 = load ptr, ptr %pNext, align 8
  store ptr %230, ptr %pNC2, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %231 = load ptr, ptr %pNC2, align 8
  %tobool271 = icmp ne ptr %231, null
  br i1 %tobool271, label %land.lhs.true272, label %if.end280

land.lhs.true272:                                 ; preds = %while.end
  %232 = load ptr, ptr %pDef, align 8
  %tobool273 = icmp ne ptr %232, null
  br i1 %tobool273, label %if.then274, label %if.end280

if.then274:                                       ; preds = %land.lhs.true272
  %233 = load ptr, ptr %pDef, align 8
  %funcFlags275 = getelementptr inbounds nuw %struct.FuncDef, ptr %233, i32 0, i32 1
  %234 = load i32, ptr %funcFlags275, align 4
  %and276 = and i32 %234, 4096
  %or277 = or i32 16, %and276
  %235 = load ptr, ptr %pNC2, align 8
  %ncFlags278 = getelementptr inbounds nuw %struct.NameContext, ptr %235, i32 0, i32 6
  %236 = load i32, ptr %ncFlags278, align 8
  %or279 = or i32 %236, %or277
  store i32 %or279, ptr %ncFlags278, align 8
  br label %if.end280

if.end280:                                        ; preds = %if.then274, %land.lhs.true272, %while.end
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.end247
  %237 = load i32, ptr %savedAllowFlags, align 4
  %238 = load ptr, ptr %pNC, align 8
  %ncFlags282 = getelementptr inbounds nuw %struct.NameContext, ptr %238, i32 0, i32 6
  %239 = load i32, ptr %ncFlags282, align 8
  %or283 = or i32 %239, %237
  store i32 %or283, ptr %ncFlags282, align 8
  br label %if.end284

if.end284:                                        ; preds = %if.end281, %if.end234
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb285:                                         ; preds = %entry, %entry
  br label %sw.bb286

sw.bb286:                                         ; preds = %sw.bb285, %entry
  %240 = load ptr, ptr %pExpr.addr, align 8
  %flags287 = getelementptr inbounds nuw %struct.Expr, ptr %240, i32 0, i32 2
  %241 = load i32, ptr %flags287, align 4
  %and288 = and i32 %241, 2048
  %cmp289 = icmp ne i32 %and288, 0
  br i1 %cmp289, label %if.then291, label %if.end304

if.then291:                                       ; preds = %sw.bb286
  %242 = load ptr, ptr %pNC, align 8
  %nRef292 = getelementptr inbounds nuw %struct.NameContext, ptr %242, i32 0, i32 4
  %243 = load i32, ptr %nRef292, align 8
  store i32 %243, ptr %nRef, align 4
  %244 = load ptr, ptr %pParse, align 8
  %245 = load ptr, ptr %pNC, align 8
  call void @notValid(ptr noundef %244, ptr noundef %245, ptr noundef @.str.613, i32 noundef 38)
  %246 = load ptr, ptr %pWalker.addr, align 8
  %247 = load ptr, ptr %pExpr.addr, align 8
  %x293 = getelementptr inbounds nuw %struct.Expr, ptr %247, i32 0, i32 6
  %248 = load ptr, ptr %x293, align 8
  %call294 = call i32 @sqlite3WalkSelect(ptr noundef %246, ptr noundef %248)
  %249 = load i32, ptr %nRef, align 4
  %250 = load ptr, ptr %pNC, align 8
  %nRef295 = getelementptr inbounds nuw %struct.NameContext, ptr %250, i32 0, i32 4
  %251 = load i32, ptr %nRef295, align 8
  %cmp296 = icmp ne i32 %249, %251
  br i1 %cmp296, label %if.then298, label %if.end303

if.then298:                                       ; preds = %if.then291
  %252 = load ptr, ptr %pExpr.addr, align 8
  %flags299 = getelementptr inbounds nuw %struct.Expr, ptr %252, i32 0, i32 2
  %253 = load i32, ptr %flags299, align 4
  %or300 = or i32 %253, 32
  store i32 %or300, ptr %flags299, align 4
  %254 = load ptr, ptr %pNC, align 8
  %ncFlags301 = getelementptr inbounds nuw %struct.NameContext, ptr %254, i32 0, i32 6
  %255 = load i32, ptr %ncFlags301, align 8
  %or302 = or i32 %255, 64
  store i32 %or302, ptr %ncFlags301, align 8
  br label %if.end303

if.end303:                                        ; preds = %if.then298, %if.then291
  br label %if.end304

if.end304:                                        ; preds = %if.end303, %sw.bb286
  br label %sw.epilog

sw.bb305:                                         ; preds = %entry
  %256 = load ptr, ptr %pParse, align 8
  %257 = load ptr, ptr %pNC, align 8
  call void @notValid(ptr noundef %256, ptr noundef %257, ptr noundef @.str.614, i32 noundef 38)
  br label %sw.epilog

sw.bb306:                                         ; preds = %entry, %entry
  %258 = load ptr, ptr %pExpr.addr, align 8
  %pRight308 = getelementptr inbounds nuw %struct.Expr, ptr %258, i32 0, i32 5
  %259 = load ptr, ptr %pRight308, align 8
  %call309 = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %259)
  store ptr %call309, ptr %pRight307, align 8
  %260 = load ptr, ptr %pRight307, align 8
  %op310 = getelementptr inbounds nuw %struct.Expr, ptr %260, i32 0, i32 0
  %261 = load i8, ptr %op310, align 8
  %conv311 = zext i8 %261 to i32
  %cmp312 = icmp eq i32 %conv311, 59
  br i1 %cmp312, label %if.then314, label %if.end329

if.then314:                                       ; preds = %sw.bb306
  %262 = load ptr, ptr %pWalker.addr, align 8
  %263 = load ptr, ptr %pRight307, align 8
  %call315 = call i32 @resolveExprStep(ptr noundef %262, ptr noundef %263)
  store i32 %call315, ptr %rc, align 4
  %264 = load i32, ptr %rc, align 4
  %cmp316 = icmp eq i32 %264, 2
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.then314
  store i32 2, ptr %retval, align 4
  br label %return

if.end319:                                        ; preds = %if.then314
  %265 = load ptr, ptr %pRight307, align 8
  %op320 = getelementptr inbounds nuw %struct.Expr, ptr %265, i32 0, i32 0
  %266 = load i8, ptr %op320, align 8
  %conv321 = zext i8 %266 to i32
  %cmp322 = icmp eq i32 %conv321, 165
  br i1 %cmp322, label %if.then324, label %if.end328

if.then324:                                       ; preds = %if.end319
  %267 = load ptr, ptr %pExpr.addr, align 8
  %op325 = getelementptr inbounds nuw %struct.Expr, ptr %267, i32 0, i32 0
  %268 = load i8, ptr %op325, align 8
  %269 = load ptr, ptr %pExpr.addr, align 8
  %op2326 = getelementptr inbounds nuw %struct.Expr, ptr %269, i32 0, i32 12
  store i8 %268, ptr %op2326, align 2
  %270 = load ptr, ptr %pExpr.addr, align 8
  %op327 = getelementptr inbounds nuw %struct.Expr, ptr %270, i32 0, i32 0
  store i8 -86, ptr %op327, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end328:                                        ; preds = %if.end319
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %sw.bb306
  br label %sw.bb330

sw.bb330:                                         ; preds = %if.end329, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %271 = load ptr, ptr %pParse, align 8
  %db331 = getelementptr inbounds nuw %struct.Parse, ptr %271, i32 0, i32 0
  %272 = load ptr, ptr %db331, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %272, i32 0, i32 19
  %273 = load i8, ptr %mallocFailed, align 1
  %tobool332 = icmp ne i8 %273, 0
  br i1 %tobool332, label %if.then333, label %if.end334

if.then333:                                       ; preds = %sw.bb330
  br label %sw.epilog

if.end334:                                        ; preds = %sw.bb330
  %274 = load ptr, ptr %pExpr.addr, align 8
  %pLeft335 = getelementptr inbounds nuw %struct.Expr, ptr %274, i32 0, i32 4
  %275 = load ptr, ptr %pLeft335, align 8
  %call336 = call i32 @sqlite3ExprVectorSize(ptr noundef %275)
  store i32 %call336, ptr %nLeft, align 4
  %276 = load ptr, ptr %pExpr.addr, align 8
  %op337 = getelementptr inbounds nuw %struct.Expr, ptr %276, i32 0, i32 0
  %277 = load i8, ptr %op337, align 8
  %conv338 = zext i8 %277 to i32
  %cmp339 = icmp eq i32 %conv338, 48
  br i1 %cmp339, label %if.then341, label %if.else356

if.then341:                                       ; preds = %if.end334
  %278 = load ptr, ptr %pExpr.addr, align 8
  %x342 = getelementptr inbounds nuw %struct.Expr, ptr %278, i32 0, i32 6
  %279 = load ptr, ptr %x342, align 8
  %a343 = getelementptr inbounds nuw %struct.ExprList, ptr %279, i32 0, i32 1
  %arrayidx344 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a343, i64 0, i64 0
  %pExpr345 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx344, i32 0, i32 0
  %280 = load ptr, ptr %pExpr345, align 8
  %call346 = call i32 @sqlite3ExprVectorSize(ptr noundef %280)
  store i32 %call346, ptr %nRight, align 4
  %281 = load i32, ptr %nRight, align 4
  %282 = load i32, ptr %nLeft, align 4
  %cmp347 = icmp eq i32 %281, %282
  br i1 %cmp347, label %if.then349, label %if.end355

if.then349:                                       ; preds = %if.then341
  %283 = load ptr, ptr %pExpr.addr, align 8
  %x350 = getelementptr inbounds nuw %struct.Expr, ptr %283, i32 0, i32 6
  %284 = load ptr, ptr %x350, align 8
  %a351 = getelementptr inbounds nuw %struct.ExprList, ptr %284, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a351, i64 0, i64 1
  %pExpr353 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx352, i32 0, i32 0
  %285 = load ptr, ptr %pExpr353, align 8
  %call354 = call i32 @sqlite3ExprVectorSize(ptr noundef %285)
  store i32 %call354, ptr %nRight, align 4
  br label %if.end355

if.end355:                                        ; preds = %if.then349, %if.then341
  br label %if.end359

if.else356:                                       ; preds = %if.end334
  %286 = load ptr, ptr %pExpr.addr, align 8
  %pRight357 = getelementptr inbounds nuw %struct.Expr, ptr %286, i32 0, i32 5
  %287 = load ptr, ptr %pRight357, align 8
  %call358 = call i32 @sqlite3ExprVectorSize(ptr noundef %287)
  store i32 %call358, ptr %nRight, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.else356, %if.end355
  %288 = load i32, ptr %nLeft, align 4
  %289 = load i32, ptr %nRight, align 4
  %cmp360 = icmp ne i32 %288, %289
  br i1 %cmp360, label %if.then362, label %if.end363

if.then362:                                       ; preds = %if.end359
  %290 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %290, ptr noundef @.str.566)
  br label %if.end363

if.end363:                                        ; preds = %if.then362, %if.end359
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end363, %if.then333, %sw.bb305, %if.end304, %entry
  %291 = load ptr, ptr %pParse, align 8
  %nErr364 = getelementptr inbounds nuw %struct.Parse, ptr %291, i32 0, i32 16
  %292 = load i32, ptr %nErr364, align 8
  %tobool365 = icmp ne i32 %292, 0
  br i1 %tobool365, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.epilog
  %293 = load ptr, ptr %pParse, align 8
  %db366 = getelementptr inbounds nuw %struct.Parse, ptr %293, i32 0, i32 0
  %294 = load ptr, ptr %db366, align 8
  %mallocFailed367 = getelementptr inbounds nuw %struct.sqlite3, ptr %294, i32 0, i32 19
  %295 = load i8, ptr %mallocFailed367, align 1
  %conv368 = zext i8 %295 to i32
  %tobool369 = icmp ne i32 %conv368, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %296 = phi i1 [ true, %sw.epilog ], [ %tobool369, %lor.rhs ]
  %297 = zext i1 %296 to i64
  %cond370 = select i1 %296, i32 2, i32 0
  store i32 %cond370, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then324, %if.then318, %if.end284, %if.end90, %if.end24
  %298 = load i32, ptr %retval, align 4
  ret i32 %298
}

; Function Attrs: nounwind uwtable
declare hidden void @notValid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @lookupName(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprProbability(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FunctionUsesThisSrc(ptr noundef, ptr noundef) #0

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
