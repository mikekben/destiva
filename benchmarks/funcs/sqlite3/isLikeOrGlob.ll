; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP3(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetVarmask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetBoundValue(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @isLikeOrGlob(ptr noundef %pParse, ptr noundef %pExpr, ptr noundef %ppPrefix, ptr noundef %pisComplete, ptr noundef %pnoCase) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %ppPrefix.addr = alloca ptr, align 8
  %pisComplete.addr = alloca ptr, align 8
  %pnoCase.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %c = alloca i8, align 1
  %cnt = alloca i32, align 4
  %wc = alloca [4 x i8], align 1
  %db = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %op = alloca i32, align 4
  %rc = alloca i32, align 4
  %pReprepare = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %pPrefix = alloca ptr, align 8
  %iFrom = alloca i32, align 4
  %iTo = alloca i32, align 4
  %zNew = alloca ptr, align 8
  %isNum = alloca i32, align 4
  %rDummy = alloca double, align 8
  %v = alloca ptr, align 8
  %r1 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %ppPrefix, ptr %ppPrefix.addr, align 8
  store ptr %pisComplete, ptr %pisComplete.addr, align 8
  store ptr %pnoCase, ptr %pnoCase.addr, align 8
  store ptr null, ptr %z, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pVal, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %4 = load ptr, ptr %pnoCase.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 0
  %call = call i32 @sqlite3IsLikeFunction(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %arraydecay)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pList, align 8
  %7 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 1
  %pExpr2 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %8 = load ptr, ptr %pExpr2, align 8
  store ptr %8, ptr %pLeft, align 8
  %9 = load ptr, ptr %pList, align 8
  %a3 = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a3, i64 0, i64 0
  %pExpr5 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx4, i32 0, i32 0
  %10 = load ptr, ptr %pExpr5, align 8
  %call6 = call ptr @sqlite3ExprSkipCollate(ptr noundef %10)
  store ptr %call6, ptr %pRight, align 8
  %11 = load ptr, ptr %pRight, align 8
  %op7 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %op7, align 8
  %conv = zext i8 %12 to i32
  store i32 %conv, ptr %op, align 4
  %13 = load i32, ptr %op, align 4
  %cmp = icmp eq i32 %13, 151
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %14 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 7
  %15 = load i64, ptr %flags, align 8
  %and = and i64 %15, 8388608
  %cmp9 = icmp eq i64 %and, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr %pParse.addr, align 8
  %pReprepare12 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 56
  %17 = load ptr, ptr %pReprepare12, align 8
  store ptr %17, ptr %pReprepare, align 8
  %18 = load ptr, ptr %pRight, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 9
  %19 = load i16, ptr %iColumn, align 8
  %conv13 = sext i16 %19 to i32
  store i32 %conv13, ptr %iCol, align 4
  %20 = load ptr, ptr %pReprepare, align 8
  %21 = load i32, ptr %iCol, align 4
  %call14 = call ptr @sqlite3VdbeGetBoundValue(ptr noundef %20, i32 noundef %21, i8 noundef zeroext 65)
  store ptr %call14, ptr %pVal, align 8
  %22 = load ptr, ptr %pVal, align 8
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end22

land.lhs.true16:                                  ; preds = %if.then11
  %23 = load ptr, ptr %pVal, align 8
  %call17 = call i32 @sqlite3_value_type(ptr noundef %23)
  %cmp18 = icmp eq i32 %call17, 3
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %land.lhs.true16
  %24 = load ptr, ptr %pVal, align 8
  %call21 = call ptr @sqlite3_value_text(ptr noundef %24)
  store ptr %call21, ptr %z, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true16, %if.then11
  %25 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %pVdbe, align 8
  %27 = load i32, ptr %iCol, align 4
  call void @sqlite3VdbeSetVarmask(ptr noundef %26, i32 noundef %27)
  br label %if.end27

if.else:                                          ; preds = %land.lhs.true, %if.end
  %28 = load i32, ptr %op, align 4
  %cmp23 = icmp eq i32 %28, 113
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.else
  %29 = load ptr, ptr %pRight, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %u, align 8
  store ptr %30, ptr %z, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end22
  %31 = load ptr, ptr %z, align 8
  %tobool28 = icmp ne ptr %31, null
  br i1 %tobool28, label %if.then29, label %if.end183

if.then29:                                        ; preds = %if.end27
  store i32 0, ptr %cnt, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end64, %if.then29
  %32 = load ptr, ptr %z, align 8
  %33 = load i32, ptr %cnt, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %32, i64 %idxprom
  %34 = load i8, ptr %arrayidx30, align 1
  store i8 %34, ptr %c, align 1
  %conv31 = zext i8 %34 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  br i1 %cmp32, label %land.lhs.true34, label %land.end

land.lhs.true34:                                  ; preds = %while.cond
  %35 = load i8, ptr %c, align 1
  %conv35 = zext i8 %35 to i32
  %arrayidx36 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 0
  %36 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %36 to i32
  %cmp38 = icmp ne i32 %conv35, %conv37
  br i1 %cmp38, label %land.lhs.true40, label %land.end

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %37 = load i8, ptr %c, align 1
  %conv41 = zext i8 %37 to i32
  %arrayidx42 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 1
  %38 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %38 to i32
  %cmp44 = icmp ne i32 %conv41, %conv43
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true40
  %39 = load i8, ptr %c, align 1
  %conv46 = zext i8 %39 to i32
  %arrayidx47 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 2
  %40 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %40 to i32
  %cmp49 = icmp ne i32 %conv46, %conv48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true40, %land.lhs.true34, %while.cond
  %41 = phi i1 [ false, %land.lhs.true40 ], [ false, %land.lhs.true34 ], [ false, %while.cond ], [ %cmp49, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %cnt, align 4
  %43 = load i8, ptr %c, align 1
  %conv51 = zext i8 %43 to i32
  %arrayidx52 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 3
  %44 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %44 to i32
  %cmp54 = icmp eq i32 %conv51, %conv53
  br i1 %cmp54, label %land.lhs.true56, label %if.end64

land.lhs.true56:                                  ; preds = %while.body
  %45 = load ptr, ptr %z, align 8
  %46 = load i32, ptr %cnt, align 4
  %idxprom57 = sext i32 %46 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %45, i64 %idxprom57
  %47 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %47 to i32
  %cmp60 = icmp ne i32 %conv59, 0
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true56
  %48 = load i32, ptr %cnt, align 4
  %inc63 = add nsw i32 %48, 1
  store i32 %inc63, ptr %cnt, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true56, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %49 = load i32, ptr %cnt, align 4
  %cmp65 = icmp ne i32 %49, 0
  br i1 %cmp65, label %land.lhs.true67, label %if.else181

land.lhs.true67:                                  ; preds = %while.end
  %50 = load ptr, ptr %z, align 8
  %51 = load i32, ptr %cnt, align 4
  %sub = sub nsw i32 %51, 1
  %idxprom68 = sext i32 %sub to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %50, i64 %idxprom68
  %52 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %52 to i32
  %cmp71 = icmp ne i32 255, %conv70
  br i1 %cmp71, label %land.lhs.true73, label %if.else181

land.lhs.true73:                                  ; preds = %land.lhs.true67
  %53 = load i32, ptr %cnt, align 4
  %cmp74 = icmp sgt i32 %53, 1
  br i1 %cmp74, label %if.then82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true73
  %54 = load ptr, ptr %z, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %55 to i32
  %arrayidx78 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 3
  %56 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %56 to i32
  %cmp80 = icmp ne i32 %conv77, %conv79
  br i1 %cmp80, label %if.then82, label %if.else181

if.then82:                                        ; preds = %lor.lhs.false, %land.lhs.true73
  %57 = load i8, ptr %c, align 1
  %conv83 = zext i8 %57 to i32
  %arrayidx84 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 0
  %58 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %58 to i32
  %cmp86 = icmp eq i32 %conv83, %conv85
  br i1 %cmp86, label %land.rhs88, label %land.end94

land.rhs88:                                       ; preds = %if.then82
  %59 = load ptr, ptr %z, align 8
  %60 = load i32, ptr %cnt, align 4
  %add = add nsw i32 %60, 1
  %idxprom89 = sext i32 %add to i64
  %arrayidx90 = getelementptr inbounds i8, ptr %59, i64 %idxprom89
  %61 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %61 to i32
  %cmp92 = icmp eq i32 %conv91, 0
  br label %land.end94

land.end94:                                       ; preds = %land.rhs88, %if.then82
  %62 = phi i1 [ false, %if.then82 ], [ %cmp92, %land.rhs88 ]
  %land.ext = zext i1 %62 to i32
  %63 = load ptr, ptr %pisComplete.addr, align 8
  store i32 %land.ext, ptr %63, align 4
  %64 = load ptr, ptr %db, align 8
  %65 = load ptr, ptr %z, align 8
  %call95 = call ptr @sqlite3Expr(ptr noundef %64, i32 noundef 113, ptr noundef %65)
  store ptr %call95, ptr %pPrefix, align 8
  %66 = load ptr, ptr %pPrefix, align 8
  %tobool96 = icmp ne ptr %66, null
  br i1 %tobool96, label %if.then97, label %if.end161

if.then97:                                        ; preds = %land.end94
  %67 = load ptr, ptr %pPrefix, align 8
  %u98 = getelementptr inbounds nuw %struct.Expr, ptr %67, i32 0, i32 3
  %68 = load ptr, ptr %u98, align 8
  store ptr %68, ptr %zNew, align 8
  %69 = load ptr, ptr %zNew, align 8
  %70 = load i32, ptr %cnt, align 4
  %idxprom99 = sext i32 %70 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %69, i64 %idxprom99
  store i8 0, ptr %arrayidx100, align 1
  store i32 0, ptr %iTo, align 4
  store i32 0, ptr %iFrom, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then97
  %71 = load i32, ptr %iFrom, align 4
  %72 = load i32, ptr %cnt, align 4
  %cmp101 = icmp slt i32 %71, %72
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load ptr, ptr %zNew, align 8
  %74 = load i32, ptr %iFrom, align 4
  %idxprom103 = sext i32 %74 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %73, i64 %idxprom103
  %75 = load i8, ptr %arrayidx104, align 1
  %conv105 = sext i8 %75 to i32
  %arrayidx106 = getelementptr inbounds [4 x i8], ptr %wc, i64 0, i64 3
  %76 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %76 to i32
  %cmp108 = icmp eq i32 %conv105, %conv107
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %for.body
  %77 = load i32, ptr %iFrom, align 4
  %inc111 = add nsw i32 %77, 1
  store i32 %inc111, ptr %iFrom, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %for.body
  %78 = load ptr, ptr %zNew, align 8
  %79 = load i32, ptr %iFrom, align 4
  %idxprom113 = sext i32 %79 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %78, i64 %idxprom113
  %80 = load i8, ptr %arrayidx114, align 1
  %81 = load ptr, ptr %zNew, align 8
  %82 = load i32, ptr %iTo, align 4
  %inc115 = add nsw i32 %82, 1
  store i32 %inc115, ptr %iTo, align 4
  %idxprom116 = sext i32 %82 to i64
  %arrayidx117 = getelementptr inbounds i8, ptr %81, i64 %idxprom116
  store i8 %80, ptr %arrayidx117, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end112
  %83 = load i32, ptr %iFrom, align 4
  %inc118 = add nsw i32 %83, 1
  store i32 %inc118, ptr %iFrom, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %84 = load ptr, ptr %zNew, align 8
  %85 = load i32, ptr %iTo, align 4
  %idxprom119 = sext i32 %85 to i64
  %arrayidx120 = getelementptr inbounds i8, ptr %84, i64 %idxprom119
  store i8 0, ptr %arrayidx120, align 1
  %86 = load ptr, ptr %pLeft, align 8
  %op121 = getelementptr inbounds nuw %struct.Expr, ptr %86, i32 0, i32 0
  %87 = load i8, ptr %op121, align 8
  %conv122 = zext i8 %87 to i32
  %cmp123 = icmp ne i32 %conv122, 162
  br i1 %cmp123, label %if.then132, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %for.end
  %88 = load ptr, ptr %pLeft, align 8
  %call126 = call signext i8 @sqlite3ExprAffinity(ptr noundef %88)
  %conv127 = sext i8 %call126 to i32
  %cmp128 = icmp ne i32 %conv127, 66
  br i1 %cmp128, label %if.then132, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %lor.lhs.false125
  %89 = load ptr, ptr %pLeft, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %89, i32 0, i32 14
  %90 = load ptr, ptr %y, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %90, i32 0, i32 16
  %91 = load i32, ptr %nModuleArg, align 4
  %tobool131 = icmp ne i32 %91, 0
  br i1 %tobool131, label %if.then132, label %if.end160

if.then132:                                       ; preds = %lor.lhs.false130, %lor.lhs.false125, %for.end
  %92 = load ptr, ptr %zNew, align 8
  %93 = load i32, ptr %iTo, align 4
  %call133 = call i32 @sqlite3AtoF(ptr noundef %92, ptr noundef %rDummy, i32 noundef %93, i8 noundef zeroext 1)
  store i32 %call133, ptr %isNum, align 4
  %94 = load i32, ptr %isNum, align 4
  %cmp134 = icmp sle i32 %94, 0
  br i1 %cmp134, label %if.then136, label %if.end155

if.then136:                                       ; preds = %if.then132
  %95 = load i32, ptr %iTo, align 4
  %cmp137 = icmp eq i32 %95, 1
  br i1 %cmp137, label %land.lhs.true139, label %if.else145

land.lhs.true139:                                 ; preds = %if.then136
  %96 = load ptr, ptr %zNew, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %96, i64 0
  %97 = load i8, ptr %arrayidx140, align 1
  %conv141 = sext i8 %97 to i32
  %cmp142 = icmp eq i32 %conv141, 45
  br i1 %cmp142, label %if.then144, label %if.else145

if.then144:                                       ; preds = %land.lhs.true139
  store i32 1, ptr %isNum, align 4
  br label %if.end154

if.else145:                                       ; preds = %land.lhs.true139, %if.then136
  %98 = load ptr, ptr %zNew, align 8
  %99 = load i32, ptr %iTo, align 4
  %sub146 = sub nsw i32 %99, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds i8, ptr %98, i64 %idxprom147
  %100 = load i8, ptr %arrayidx148, align 1
  %inc149 = add i8 %100, 1
  store i8 %inc149, ptr %arrayidx148, align 1
  %101 = load ptr, ptr %zNew, align 8
  %102 = load i32, ptr %iTo, align 4
  %call150 = call i32 @sqlite3AtoF(ptr noundef %101, ptr noundef %rDummy, i32 noundef %102, i8 noundef zeroext 1)
  store i32 %call150, ptr %isNum, align 4
  %103 = load ptr, ptr %zNew, align 8
  %104 = load i32, ptr %iTo, align 4
  %sub151 = sub nsw i32 %104, 1
  %idxprom152 = sext i32 %sub151 to i64
  %arrayidx153 = getelementptr inbounds i8, ptr %103, i64 %idxprom152
  %105 = load i8, ptr %arrayidx153, align 1
  %dec = add i8 %105, -1
  store i8 %dec, ptr %arrayidx153, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.else145, %if.then144
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.then132
  %106 = load i32, ptr %isNum, align 4
  %cmp156 = icmp sgt i32 %106, 0
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end155
  %107 = load ptr, ptr %db, align 8
  %108 = load ptr, ptr %pPrefix, align 8
  call void @sqlite3ExprDelete(ptr noundef %107, ptr noundef %108)
  %109 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %109)
  store i32 0, ptr %retval, align 4
  br label %return

if.end159:                                        ; preds = %if.end155
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %lor.lhs.false130
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %land.end94
  %110 = load ptr, ptr %pPrefix, align 8
  %111 = load ptr, ptr %ppPrefix.addr, align 8
  store ptr %110, ptr %111, align 8
  %112 = load i32, ptr %op, align 4
  %cmp162 = icmp eq i32 %112, 151
  br i1 %cmp162, label %if.then164, label %if.end180

if.then164:                                       ; preds = %if.end161
  %113 = load ptr, ptr %pParse.addr, align 8
  %pVdbe165 = getelementptr inbounds nuw %struct.Parse, ptr %113, i32 0, i32 2
  %114 = load ptr, ptr %pVdbe165, align 8
  store ptr %114, ptr %v, align 8
  %115 = load ptr, ptr %v, align 8
  %116 = load ptr, ptr %pRight, align 8
  %iColumn166 = getelementptr inbounds nuw %struct.Expr, ptr %116, i32 0, i32 9
  %117 = load i16, ptr %iColumn166, align 8
  %conv167 = sext i16 %117 to i32
  call void @sqlite3VdbeSetVarmask(ptr noundef %115, i32 noundef %conv167)
  %118 = load ptr, ptr %pisComplete.addr, align 8
  %119 = load i32, ptr %118, align 4
  %tobool168 = icmp ne i32 %119, 0
  br i1 %tobool168, label %land.lhs.true169, label %if.end179

land.lhs.true169:                                 ; preds = %if.then164
  %120 = load ptr, ptr %pRight, align 8
  %u170 = getelementptr inbounds nuw %struct.Expr, ptr %120, i32 0, i32 3
  %121 = load ptr, ptr %u170, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %121, i64 1
  %122 = load i8, ptr %arrayidx171, align 1
  %conv172 = sext i8 %122 to i32
  %tobool173 = icmp ne i32 %conv172, 0
  br i1 %tobool173, label %if.then174, label %if.end179

if.then174:                                       ; preds = %land.lhs.true169
  %123 = load ptr, ptr %pParse.addr, align 8
  %call175 = call i32 @sqlite3GetTempReg(ptr noundef %123)
  store i32 %call175, ptr %r1, align 4
  %124 = load ptr, ptr %pParse.addr, align 8
  %125 = load ptr, ptr %pRight, align 8
  %126 = load i32, ptr %r1, align 4
  %call176 = call i32 @sqlite3ExprCodeTarget(ptr noundef %124, ptr noundef %125, i32 noundef %126)
  %127 = load ptr, ptr %v, align 8
  %128 = load ptr, ptr %v, align 8
  %call177 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %128)
  %sub178 = sub nsw i32 %call177, 1
  call void @sqlite3VdbeChangeP3(ptr noundef %127, i32 noundef %sub178, i32 noundef 0)
  %129 = load ptr, ptr %pParse.addr, align 8
  %130 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %129, i32 noundef %130)
  br label %if.end179

if.end179:                                        ; preds = %if.then174, %land.lhs.true169, %if.then164
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.end161
  br label %if.end182

if.else181:                                       ; preds = %lor.lhs.false, %land.lhs.true67, %while.end
  store ptr null, ptr %z, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.else181, %if.end180
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end27
  %131 = load ptr, ptr %z, align 8
  %cmp184 = icmp ne ptr %131, null
  %conv185 = zext i1 %cmp184 to i32
  store i32 %conv185, ptr %rc, align 4
  %132 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %132)
  %133 = load i32, ptr %rc, align 4
  store i32 %133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end183, %if.then158, %if.then
  %134 = load i32, ptr %retval, align 4
  ret i32 %134
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsLikeFunction(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
