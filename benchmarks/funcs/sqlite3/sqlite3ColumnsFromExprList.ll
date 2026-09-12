; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash = type { i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.510 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.650 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.651 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ColumnsFromExprList(ptr noundef %pParse, ptr noundef %pEList, ptr noundef %pnCol, ptr noundef %paCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %pnCol.addr = alloca ptr, align 8
  %paCol.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cnt = alloca i32, align 4
  %aCol = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %zName = alloca ptr, align 8
  %nName = alloca i32, align 4
  %ht = alloca %struct.Hash, align 8
  %pColExpr = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store ptr %pnCol, ptr %pnCol.addr, align 8
  store ptr %paCol, ptr %paCol.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  call void @sqlite3HashInit(ptr noundef %ht)
  %2 = load ptr, ptr %pEList.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pEList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  store i32 %4, ptr %nCol, align 4
  %5 = load ptr, ptr %db, align 8
  %6 = load i32, ptr %nCol, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 32, %conv
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %5, i64 noundef %mul)
  store ptr %call, ptr %aCol, align 8
  %7 = load i32, ptr %nCol, align 4
  %cmp = icmp sgt i32 %7, 32767
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 32767, ptr %nCol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.else:                                          ; preds = %entry
  store i32 0, ptr %nCol, align 4
  store ptr null, ptr %aCol, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %8 = load i32, ptr %nCol, align 4
  %conv5 = trunc i32 %8 to i16
  %9 = load ptr, ptr %pnCol.addr, align 8
  store i16 %conv5, ptr %9, align 2
  %10 = load ptr, ptr %aCol, align 8
  %11 = load ptr, ptr %paCol.addr, align 8
  store ptr %10, ptr %11, align 8
  store i32 0, ptr %i, align 4
  %12 = load ptr, ptr %aCol, align 8
  store ptr %12, ptr %pCol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc102, %if.end4
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %nCol, align 4
  %cmp6 = icmp slt i32 %13, %14
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 19
  %16 = load i8, ptr %mallocFailed, align 1
  %tobool8 = icmp ne i8 %16, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %17, label %for.body, label %for.end104

for.body:                                         ; preds = %land.end
  %18 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %zName9 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 1
  %20 = load ptr, ptr %zName9, align 8
  store ptr %20, ptr %zName, align 8
  %cmp10 = icmp ne ptr %20, null
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %for.body
  br label %if.end50

if.else13:                                        ; preds = %for.body
  %21 = load ptr, ptr %pEList.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.ExprList, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a14, i64 0, i64 %idxprom15
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx16, i32 0, i32 0
  %23 = load ptr, ptr %pExpr, align 8
  %call17 = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %23)
  store ptr %call17, ptr %pColExpr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else13
  %24 = load ptr, ptr %pColExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 0
  %25 = load i8, ptr %op, align 8
  %conv18 = zext i8 %25 to i32
  %cmp19 = icmp eq i32 %conv18, 137
  br i1 %cmp19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %pColExpr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pRight, align 8
  store ptr %27, ptr %pColExpr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %28 = load ptr, ptr %pColExpr, align 8
  %op21 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 0
  %29 = load i8, ptr %op21, align 8
  %conv22 = zext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 162
  br i1 %cmp23, label %if.then25, label %if.else38

if.then25:                                        ; preds = %while.end
  %30 = load ptr, ptr %pColExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 9
  %31 = load i16, ptr %iColumn, align 8
  %conv26 = sext i16 %31 to i32
  store i32 %conv26, ptr %iCol, align 4
  %32 = load ptr, ptr %pColExpr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %y, align 8
  store ptr %33, ptr %pTab, align 8
  %34 = load i32, ptr %iCol, align 4
  %cmp27 = icmp slt i32 %34, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then25
  %35 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 10
  %36 = load i16, ptr %iPKey, align 4
  %conv30 = sext i16 %36 to i32
  store i32 %conv30, ptr %iCol, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then25
  %37 = load i32, ptr %iCol, align 4
  %cmp32 = icmp sge i32 %37, 0
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end31
  %38 = load ptr, ptr %pTab, align 8
  %aCol34 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %aCol34, align 8
  %40 = load i32, ptr %iCol, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds %struct.Column, ptr %39, i64 %idxprom35
  %zName37 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx36, i32 0, i32 0
  %41 = load ptr, ptr %zName37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %41, %cond.true ], [ @.str.510, %cond.false ]
  store ptr %cond, ptr %zName, align 8
  br label %if.end49

if.else38:                                        ; preds = %while.end
  %42 = load ptr, ptr %pColExpr, align 8
  %op39 = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 0
  %43 = load i8, ptr %op39, align 8
  %conv40 = zext i8 %43 to i32
  %cmp41 = icmp eq i32 %conv40, 59
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else38
  %44 = load ptr, ptr %pColExpr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %u, align 8
  store ptr %45, ptr %zName, align 8
  br label %if.end48

if.else44:                                        ; preds = %if.else38
  %46 = load ptr, ptr %pEList.addr, align 8
  %a45 = getelementptr inbounds nuw %struct.ExprList, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %47 to i64
  %arrayidx47 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a45, i64 0, i64 %idxprom46
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx47, i32 0, i32 2
  %48 = load ptr, ptr %zSpan, align 8
  store ptr %48, ptr %zName, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %if.then43
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %cond.end
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then12
  %49 = load ptr, ptr %zName, align 8
  %tobool51 = icmp ne ptr %49, null
  br i1 %tobool51, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.end50
  %50 = load ptr, ptr %db, align 8
  %51 = load ptr, ptr %zName, align 8
  %call53 = call ptr @sqlite3DbStrDup(ptr noundef %50, ptr noundef %51)
  store ptr %call53, ptr %zName, align 8
  br label %if.end56

if.else54:                                        ; preds = %if.end50
  %52 = load ptr, ptr %db, align 8
  %53 = load i32, ptr %i, align 4
  %add = add nsw i32 %53, 1
  %call55 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %52, ptr noundef @.str.650, i32 noundef %add)
  store ptr %call55, ptr %zName, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then52
  store i32 0, ptr %cnt, align 4
  br label %while.cond57

while.cond57:                                     ; preds = %if.end93, %if.end56
  %54 = load ptr, ptr %zName, align 8
  %tobool58 = icmp ne ptr %54, null
  br i1 %tobool58, label %land.rhs59, label %land.end63

land.rhs59:                                       ; preds = %while.cond57
  %55 = load ptr, ptr %zName, align 8
  %call60 = call ptr @sqlite3HashFind(ptr noundef %ht, ptr noundef %55)
  %cmp61 = icmp ne ptr %call60, null
  br label %land.end63

land.end63:                                       ; preds = %land.rhs59, %while.cond57
  %56 = phi i1 [ false, %while.cond57 ], [ %cmp61, %land.rhs59 ]
  br i1 %56, label %while.body64, label %while.end94

while.body64:                                     ; preds = %land.end63
  %57 = load ptr, ptr %zName, align 8
  %call65 = call i32 @sqlite3Strlen30(ptr noundef %57)
  store i32 %call65, ptr %nName, align 4
  %58 = load i32, ptr %nName, align 4
  %cmp66 = icmp sgt i32 %58, 0
  br i1 %cmp66, label %if.then68, label %if.end88

if.then68:                                        ; preds = %while.body64
  %59 = load i32, ptr %nName, align 4
  %sub = sub nsw i32 %59, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc, %if.then68
  %60 = load i32, ptr %j, align 4
  %cmp70 = icmp sgt i32 %60, 0
  br i1 %cmp70, label %land.rhs72, label %land.end79

land.rhs72:                                       ; preds = %for.cond69
  %61 = load ptr, ptr %zName, align 8
  %62 = load i32, ptr %j, align 4
  %idxprom73 = sext i32 %62 to i64
  %arrayidx74 = getelementptr inbounds i8, ptr %61, i64 %idxprom73
  %63 = load i8, ptr %arrayidx74, align 1
  %idxprom75 = zext i8 %63 to i64
  %arrayidx76 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom75
  %64 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %64 to i32
  %and = and i32 %conv77, 4
  %tobool78 = icmp ne i32 %and, 0
  br label %land.end79

land.end79:                                       ; preds = %land.rhs72, %for.cond69
  %65 = phi i1 [ false, %for.cond69 ], [ %tobool78, %land.rhs72 ]
  br i1 %65, label %for.body80, label %for.end

for.body80:                                       ; preds = %land.end79
  br label %for.inc

for.inc:                                          ; preds = %for.body80
  %66 = load i32, ptr %j, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond69, !llvm.loop !8

for.end:                                          ; preds = %land.end79
  %67 = load ptr, ptr %zName, align 8
  %68 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %68 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %67, i64 %idxprom81
  %69 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %69 to i32
  %cmp84 = icmp eq i32 %conv83, 58
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %for.end
  %70 = load i32, ptr %j, align 4
  store i32 %70, ptr %nName, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %for.end
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %while.body64
  %71 = load ptr, ptr %db, align 8
  %72 = load i32, ptr %nName, align 4
  %73 = load ptr, ptr %zName, align 8
  %74 = load i32, ptr %cnt, align 4
  %inc = add i32 %74, 1
  store i32 %inc, ptr %cnt, align 4
  %call89 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %71, ptr noundef @.str.651, i32 noundef %72, ptr noundef %73, i32 noundef %inc)
  store ptr %call89, ptr %zName, align 8
  %75 = load i32, ptr %cnt, align 4
  %cmp90 = icmp ugt i32 %75, 3
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %cnt)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end88
  br label %while.cond57, !llvm.loop !9

while.end94:                                      ; preds = %land.end63
  %76 = load ptr, ptr %zName, align 8
  %77 = load ptr, ptr %pCol, align 8
  %zName95 = getelementptr inbounds nuw %struct.Column, ptr %77, i32 0, i32 0
  store ptr %76, ptr %zName95, align 8
  %78 = load ptr, ptr %zName, align 8
  %tobool96 = icmp ne ptr %78, null
  br i1 %tobool96, label %land.lhs.true, label %if.end101

land.lhs.true:                                    ; preds = %while.end94
  %79 = load ptr, ptr %zName, align 8
  %80 = load ptr, ptr %pCol, align 8
  %call97 = call ptr @sqlite3HashInsert(ptr noundef %ht, ptr noundef %79, ptr noundef %80)
  %81 = load ptr, ptr %pCol, align 8
  %cmp98 = icmp eq ptr %call97, %81
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %land.lhs.true
  %82 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %82)
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %land.lhs.true, %while.end94
  br label %for.inc102

for.inc102:                                       ; preds = %if.end101
  %83 = load i32, ptr %i, align 4
  %inc103 = add nsw i32 %83, 1
  store i32 %inc103, ptr %i, align 4
  %84 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %84, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond, !llvm.loop !10

for.end104:                                       ; preds = %land.end
  call void @sqlite3HashClear(ptr noundef %ht)
  %85 = load ptr, ptr %db, align 8
  %mallocFailed105 = getelementptr inbounds nuw %struct.sqlite3, ptr %85, i32 0, i32 19
  %86 = load i8, ptr %mallocFailed105, align 1
  %tobool106 = icmp ne i8 %86, 0
  br i1 %tobool106, label %if.then107, label %if.end118

if.then107:                                       ; preds = %for.end104
  store i32 0, ptr %j, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc115, %if.then107
  %87 = load i32, ptr %j, align 4
  %88 = load i32, ptr %i, align 4
  %cmp109 = icmp slt i32 %87, %88
  br i1 %cmp109, label %for.body111, label %for.end117

for.body111:                                      ; preds = %for.cond108
  %89 = load ptr, ptr %db, align 8
  %90 = load ptr, ptr %aCol, align 8
  %91 = load i32, ptr %j, align 4
  %idxprom112 = sext i32 %91 to i64
  %arrayidx113 = getelementptr inbounds %struct.Column, ptr %90, i64 %idxprom112
  %zName114 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx113, i32 0, i32 0
  %92 = load ptr, ptr %zName114, align 8
  call void @sqlite3DbFree(ptr noundef %89, ptr noundef %92)
  br label %for.inc115

for.inc115:                                       ; preds = %for.body111
  %93 = load i32, ptr %j, align 4
  %inc116 = add nsw i32 %93, 1
  store i32 %inc116, ptr %j, align 4
  br label %for.cond108, !llvm.loop !11

for.end117:                                       ; preds = %for.cond108
  %94 = load ptr, ptr %db, align 8
  %95 = load ptr, ptr %aCol, align 8
  call void @sqlite3DbFree(ptr noundef %94, ptr noundef %95)
  %96 = load ptr, ptr %paCol.addr, align 8
  store ptr null, ptr %96, align 8
  %97 = load ptr, ptr %pnCol.addr, align 8
  store i16 0, ptr %97, align 2
  store i32 7, ptr %retval, align 4
  br label %return

if.end118:                                        ; preds = %for.end104
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end118, %for.end117
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
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
!11 = distinct !{!11, !7}
