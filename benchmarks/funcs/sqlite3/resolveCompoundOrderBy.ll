; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.anon.12 = type { i16, i16 }

@.str.635 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.667 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.668 = external hidden unnamed_addr constant [61 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @resolveCompoundOrderBy(ptr noundef %pParse, ptr noundef %pSelect) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pOrderBy = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %db = alloca ptr, align 8
  %moreToDo = alloca i32, align 4
  %pItem = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %pE = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i32 1, ptr %moreToDo, align 4
  %0 = load ptr, ptr %pSelect.addr, align 8
  %pOrderBy1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pOrderBy1, align 8
  store ptr %1, ptr %pOrderBy, align 8
  %2 = load ptr, ptr %pOrderBy, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  store ptr %4, ptr %db, align 8
  %5 = load ptr, ptr %pOrderBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %7 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 2
  %8 = load i32, ptr %arrayidx, align 4
  %cmp3 = icmp sgt i32 %6, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %9, ptr noundef @.str.667)
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %pOrderBy, align 8
  %nExpr6 = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nExpr6, align 8
  %cmp7 = icmp slt i32 %10, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pOrderBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %done = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx8, i32 0, i32 4
  %bf.load = load i8, ptr %done, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %done, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %pSelect.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 14
  store ptr null, ptr %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %17 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %pPrior, align 8
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %pSelect.addr, align 8
  %20 = load ptr, ptr %pSelect.addr, align 8
  %pPrior9 = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 13
  %21 = load ptr, ptr %pPrior9, align 8
  %pNext10 = getelementptr inbounds nuw %struct.Select, ptr %21, i32 0, i32 14
  store ptr %19, ptr %pNext10, align 8
  %22 = load ptr, ptr %pSelect.addr, align 8
  %pPrior11 = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 13
  %23 = load ptr, ptr %pPrior11, align 8
  store ptr %23, ptr %pSelect.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %while.cond12

while.cond12:                                     ; preds = %for.end98, %while.end
  %24 = load ptr, ptr %pSelect.addr, align 8
  %tobool13 = icmp ne ptr %24, null
  br i1 %tobool13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond12
  %25 = load i32, ptr %moreToDo, align 4
  %tobool14 = icmp ne i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond12
  %26 = phi i1 [ false, %while.cond12 ], [ %tobool14, %land.rhs ]
  br i1 %26, label %while.body15, label %while.end100

while.body15:                                     ; preds = %land.end
  store i32 0, ptr %moreToDo, align 4
  %27 = load ptr, ptr %pSelect.addr, align 8
  %pEList16 = getelementptr inbounds nuw %struct.Select, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pEList16, align 8
  store ptr %28, ptr %pEList, align 8
  store i32 0, ptr %i, align 4
  %29 = load ptr, ptr %pOrderBy, align 8
  %a17 = getelementptr inbounds nuw %struct.ExprList, ptr %29, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a17, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc96, %while.body15
  %30 = load i32, ptr %i, align 4
  %31 = load ptr, ptr %pOrderBy, align 8
  %nExpr19 = getelementptr inbounds nuw %struct.ExprList, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %nExpr19, align 8
  %cmp20 = icmp slt i32 %30, %32
  br i1 %cmp20, label %for.body21, label %for.end98

for.body21:                                       ; preds = %for.cond18
  store i32 -1, ptr %iCol, align 4
  %33 = load ptr, ptr %pItem, align 8
  %done22 = getelementptr inbounds nuw %struct.ExprList_item, ptr %33, i32 0, i32 4
  %bf.load23 = load i8, ptr %done22, align 1
  %bf.clear24 = and i8 %bf.load23, 1
  %bf.cast = zext i8 %bf.clear24 to i32
  %tobool25 = icmp ne i32 %bf.cast, 0
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body21
  br label %for.inc96

if.end27:                                         ; preds = %for.body21
  %34 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %35)
  store ptr %call, ptr %pE, align 8
  %36 = load ptr, ptr %pE, align 8
  %call28 = call i32 @sqlite3ExprIsInteger(ptr noundef %36, ptr noundef %iCol)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end27
  %37 = load i32, ptr %iCol, align 4
  %cmp31 = icmp sle i32 %37, 0
  br i1 %cmp31, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30
  %38 = load i32, ptr %iCol, align 4
  %39 = load ptr, ptr %pEList, align 8
  %nExpr32 = getelementptr inbounds nuw %struct.ExprList, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %nExpr32, align 8
  %cmp33 = icmp sgt i32 %38, %40
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %lor.lhs.false, %if.then30
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load i32, ptr %i, align 4
  %add = add nsw i32 %42, 1
  %43 = load ptr, ptr %pEList, align 8
  %nExpr35 = getelementptr inbounds nuw %struct.ExprList, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %nExpr35, align 8
  call void @resolveOutOfRangeError(ptr noundef %41, ptr noundef @.str.635, i32 noundef %add, i32 noundef %44)
  store i32 1, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %lor.lhs.false
  br label %if.end57

if.else:                                          ; preds = %if.end27
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pEList, align 8
  %47 = load ptr, ptr %pE, align 8
  %call37 = call i32 @resolveAsName(ptr noundef %45, ptr noundef %46, ptr noundef %47)
  store i32 %call37, ptr %iCol, align 4
  %48 = load i32, ptr %iCol, align 4
  %cmp38 = icmp eq i32 %48, 0
  br i1 %cmp38, label %if.then39, label %if.end56

if.then39:                                        ; preds = %if.else
  %49 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %49, i32 0, i32 51
  %50 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %50 to i32
  %cmp40 = icmp sge i32 %conv, 2
  br i1 %cmp40, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.then39
  %51 = load ptr, ptr %pE, align 8
  store ptr %51, ptr %pDup, align 8
  br label %if.end45

if.else43:                                        ; preds = %if.then39
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %pE, align 8
  %call44 = call ptr @sqlite3ExprDup(ptr noundef %52, ptr noundef %53, i32 noundef 0)
  store ptr %call44, ptr %pDup, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then42
  %54 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %54, i32 0, i32 19
  %55 = load i8, ptr %mallocFailed, align 1
  %tobool46 = icmp ne i8 %55, 0
  br i1 %tobool46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end45
  %56 = load ptr, ptr %pParse.addr, align 8
  %57 = load ptr, ptr %pSelect.addr, align 8
  %58 = load ptr, ptr %pDup, align 8
  %call48 = call i32 @resolveOrderByTermToExprList(ptr noundef %56, ptr noundef %57, ptr noundef %58)
  store i32 %call48, ptr %iCol, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end45
  %59 = load ptr, ptr %pParse.addr, align 8
  %eParseMode50 = getelementptr inbounds nuw %struct.Parse, ptr %59, i32 0, i32 51
  %60 = load i8, ptr %eParseMode50, align 4
  %conv51 = zext i8 %60 to i32
  %cmp52 = icmp sge i32 %conv51, 2
  br i1 %cmp52, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end49
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %pDup, align 8
  call void @sqlite3ExprDelete(ptr noundef %61, ptr noundef %62)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end49
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end36
  %63 = load i32, ptr %iCol, align 4
  %cmp58 = icmp sgt i32 %63, 0
  br i1 %cmp58, label %if.then60, label %if.else94

if.then60:                                        ; preds = %if.end57
  %64 = load ptr, ptr %pParse.addr, align 8
  %eParseMode61 = getelementptr inbounds nuw %struct.Parse, ptr %64, i32 0, i32 51
  %65 = load i8, ptr %eParseMode61, align 4
  %conv62 = zext i8 %65 to i32
  %cmp63 = icmp sge i32 %conv62, 2
  br i1 %cmp63, label %if.end89, label %if.then65

if.then65:                                        ; preds = %if.then60
  %66 = load ptr, ptr %db, align 8
  %call66 = call ptr @sqlite3Expr(ptr noundef %66, i32 noundef 150, ptr noundef null)
  store ptr %call66, ptr %pNew, align 8
  %67 = load ptr, ptr %pNew, align 8
  %cmp67 = icmp eq ptr %67, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.then65
  store i32 1, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.then65
  %68 = load ptr, ptr %pNew, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %flags, align 4
  %or = or i32 %69, 1024
  store i32 %or, ptr %flags, align 4
  %70 = load i32, ptr %iCol, align 4
  %71 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %71, i32 0, i32 3
  store i32 %70, ptr %u, align 8
  %72 = load ptr, ptr %pItem, align 8
  %pExpr71 = getelementptr inbounds nuw %struct.ExprList_item, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %pExpr71, align 8
  %74 = load ptr, ptr %pE, align 8
  %cmp72 = icmp eq ptr %73, %74
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.end70
  %75 = load ptr, ptr %pNew, align 8
  %76 = load ptr, ptr %pItem, align 8
  %pExpr75 = getelementptr inbounds nuw %struct.ExprList_item, ptr %76, i32 0, i32 0
  store ptr %75, ptr %pExpr75, align 8
  br label %if.end86

if.else76:                                        ; preds = %if.end70
  %77 = load ptr, ptr %pItem, align 8
  %pExpr77 = getelementptr inbounds nuw %struct.ExprList_item, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %pExpr77, align 8
  store ptr %78, ptr %pParent, align 8
  br label %while.cond78

while.cond78:                                     ; preds = %while.body82, %if.else76
  %79 = load ptr, ptr %pParent, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %pLeft, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %80, i32 0, i32 0
  %81 = load i8, ptr %op, align 8
  %conv79 = zext i8 %81 to i32
  %cmp80 = icmp eq i32 %conv79, 109
  br i1 %cmp80, label %while.body82, label %while.end84

while.body82:                                     ; preds = %while.cond78
  %82 = load ptr, ptr %pParent, align 8
  %pLeft83 = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %pLeft83, align 8
  store ptr %83, ptr %pParent, align 8
  br label %while.cond78, !llvm.loop !9

while.end84:                                      ; preds = %while.cond78
  %84 = load ptr, ptr %pNew, align 8
  %85 = load ptr, ptr %pParent, align 8
  %pLeft85 = getelementptr inbounds nuw %struct.Expr, ptr %85, i32 0, i32 4
  store ptr %84, ptr %pLeft85, align 8
  br label %if.end86

if.end86:                                         ; preds = %while.end84, %if.then74
  %86 = load ptr, ptr %db, align 8
  %87 = load ptr, ptr %pE, align 8
  call void @sqlite3ExprDelete(ptr noundef %86, ptr noundef %87)
  %88 = load i32, ptr %iCol, align 4
  %conv87 = trunc i32 %88 to i16
  %89 = load ptr, ptr %pItem, align 8
  %u88 = getelementptr inbounds nuw %struct.ExprList_item, ptr %89, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u88, i32 0, i32 0
  store i16 %conv87, ptr %iOrderByCol, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.end86, %if.then60
  %90 = load ptr, ptr %pItem, align 8
  %done90 = getelementptr inbounds nuw %struct.ExprList_item, ptr %90, i32 0, i32 4
  %bf.load91 = load i8, ptr %done90, align 1
  %bf.clear92 = and i8 %bf.load91, -2
  %bf.set93 = or i8 %bf.clear92, 1
  store i8 %bf.set93, ptr %done90, align 1
  br label %if.end95

if.else94:                                        ; preds = %if.end57
  store i32 1, ptr %moreToDo, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.end89
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95, %if.then26
  %91 = load i32, ptr %i, align 4
  %inc97 = add nsw i32 %91, 1
  store i32 %inc97, ptr %i, align 4
  %92 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %92, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond18, !llvm.loop !10

for.end98:                                        ; preds = %for.cond18
  %93 = load ptr, ptr %pSelect.addr, align 8
  %pNext99 = getelementptr inbounds nuw %struct.Select, ptr %93, i32 0, i32 14
  %94 = load ptr, ptr %pNext99, align 8
  store ptr %94, ptr %pSelect.addr, align 8
  br label %while.cond12, !llvm.loop !11

while.end100:                                     ; preds = %land.end
  store i32 0, ptr %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc118, %while.end100
  %95 = load i32, ptr %i, align 4
  %96 = load ptr, ptr %pOrderBy, align 8
  %nExpr102 = getelementptr inbounds nuw %struct.ExprList, ptr %96, i32 0, i32 0
  %97 = load i32, ptr %nExpr102, align 8
  %cmp103 = icmp slt i32 %95, %97
  br i1 %cmp103, label %for.body105, label %for.end120

for.body105:                                      ; preds = %for.cond101
  %98 = load ptr, ptr %pOrderBy, align 8
  %a106 = getelementptr inbounds nuw %struct.ExprList, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %99 to i64
  %arrayidx108 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a106, i64 0, i64 %idxprom107
  %done109 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx108, i32 0, i32 4
  %bf.load110 = load i8, ptr %done109, align 1
  %bf.clear111 = and i8 %bf.load110, 1
  %bf.cast112 = zext i8 %bf.clear111 to i32
  %cmp113 = icmp eq i32 %bf.cast112, 0
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %for.body105
  %100 = load ptr, ptr %pParse.addr, align 8
  %101 = load i32, ptr %i, align 4
  %add116 = add nsw i32 %101, 1
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %100, ptr noundef @.str.668, i32 noundef %add116)
  store i32 1, ptr %retval, align 4
  br label %return

if.end117:                                        ; preds = %for.body105
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %102 = load i32, ptr %i, align 4
  %inc119 = add nsw i32 %102, 1
  store i32 %inc119, ptr %i, align 4
  br label %for.cond101, !llvm.loop !12

for.end120:                                       ; preds = %for.cond101
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end120, %if.then115, %if.then69, %if.then34, %if.then4, %if.then
  %103 = load i32, ptr %retval, align 4
  ret i32 %103
}

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveAsName(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsInteger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveOutOfRangeError(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveOrderByTermToExprList(ptr noundef, ptr noundef, ptr noundef) #0

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
