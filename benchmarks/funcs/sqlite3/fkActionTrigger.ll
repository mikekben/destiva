; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.106 = external hidden unnamed_addr constant [30 x i8], align 1
@__const.fkActionTrigger.tOld = external hidden unnamed_addr constant { ptr, i32, [4 x i8] }, align 8
@__const.fkActionTrigger.tNew = external hidden unnamed_addr constant { ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @fkTriggerDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetName(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TokenInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkLocateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @fkActionTrigger(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pFKey, ptr noundef %pChanges) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pFKey.addr = alloca ptr, align 8
  %pChanges.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %action = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %iAction = alloca i32, align 4
  %zFrom = alloca ptr, align 8
  %nFrom = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %aiCol = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  %pWhere = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %pSelect = alloca ptr, align 8
  %i = alloca i32, align 4
  %pWhen = alloca ptr, align 8
  %tOld = alloca %struct.Token, align 8
  %tNew = alloca %struct.Token, align 8
  %tFromCol = alloca %struct.Token, align 8
  %tToCol = alloca %struct.Token, align 8
  %iFromCol = alloca i32, align 4
  %pEq = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pDflt = alloca ptr, align 8
  %tFrom = alloca %struct.Token, align 8
  %pRaise = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pFKey, ptr %pFKey.addr, align 8
  store ptr %pChanges, ptr %pChanges.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pChanges.addr, align 8
  %cmp = icmp ne ptr %2, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %iAction, align 4
  %3 = load ptr, ptr %pFKey.addr, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %iAction, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, ptr %action, align 4
  %6 = load i32, ptr %action, align 4
  %cmp3 = icmp eq i32 %6, 7
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 7
  %8 = load i64, ptr %flags, align 8
  %and = and i64 %8, 524288
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %pFKey.addr, align 8
  %apTrigger = getelementptr inbounds nuw %struct.FKey, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %iAction, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [2 x ptr], ptr %apTrigger, i64 0, i64 %idxprom5
  %11 = load ptr, ptr %arrayidx6, align 8
  store ptr %11, ptr %pTrigger, align 8
  %12 = load i32, ptr %action, align 4
  %cmp7 = icmp ne i32 %12, 0
  br i1 %cmp7, label %land.lhs.true9, label %if.end145

land.lhs.true9:                                   ; preds = %if.end
  %13 = load ptr, ptr %pTrigger, align 8
  %tobool10 = icmp ne ptr %13, null
  br i1 %tobool10, label %if.end145, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  store ptr null, ptr %pIdx, align 8
  store ptr null, ptr %aiCol, align 8
  store ptr null, ptr %pStep, align 8
  store ptr null, ptr %pWhere, align 8
  store ptr null, ptr %pList, align 8
  store ptr null, ptr %pSelect, align 8
  store ptr null, ptr %pWhen, align 8
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pTab.addr, align 8
  %16 = load ptr, ptr %pFKey.addr, align 8
  %call = call i32 @sqlite3FkLocateIndex(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %pIdx, ptr noundef %aiCol)
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  store ptr null, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.then11
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %pFKey.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nCol, align 8
  %cmp15 = icmp slt i32 %17, %19
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tOld, ptr align 8 @__const.fkActionTrigger.tOld, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tNew, ptr align 8 @__const.fkActionTrigger.tNew, i64 16, i1 false)
  %20 = load ptr, ptr %aiCol, align 8
  %tobool17 = icmp ne ptr %20, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %21 = load ptr, ptr %aiCol, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %21, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %24 = load ptr, ptr %pFKey.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %24, i32 0, i32 9
  %arrayidx20 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 0
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx20, i32 0, i32 0
  %25 = load i32, ptr %iFrom, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ]
  store i32 %cond, ptr %iFromCol, align 4
  %26 = load ptr, ptr %pTab.addr, align 8
  %aCol21 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %aCol21, align 8
  %28 = load ptr, ptr %pIdx, align 8
  %tobool22 = icmp ne ptr %28, null
  br i1 %tobool22, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %cond.end
  %29 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %aiColumn, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds i16, ptr %30, i64 %idxprom24
  %32 = load i16, ptr %arrayidx25, align 2
  %conv26 = sext i16 %32 to i32
  br label %cond.end29

cond.false27:                                     ; preds = %cond.end
  %33 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 10
  %34 = load i16, ptr %iPKey, align 4
  %conv28 = sext i16 %34 to i32
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false27, %cond.true23
  %cond30 = phi i32 [ %conv26, %cond.true23 ], [ %conv28, %cond.false27 ]
  %idxprom31 = sext i32 %cond30 to i64
  %arrayidx32 = getelementptr inbounds %struct.Column, ptr %27, i64 %idxprom31
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx32, i32 0, i32 0
  %35 = load ptr, ptr %zName, align 8
  call void @sqlite3TokenInit(ptr noundef %tToCol, ptr noundef %35)
  %36 = load ptr, ptr %pFKey.addr, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pFrom, align 8
  %aCol33 = getelementptr inbounds nuw %struct.Table, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %aCol33, align 8
  %39 = load i32, ptr %iFromCol, align 4
  %idxprom34 = sext i32 %39 to i64
  %arrayidx35 = getelementptr inbounds %struct.Column, ptr %38, i64 %idxprom34
  %zName36 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx35, i32 0, i32 0
  %40 = load ptr, ptr %zName36, align 8
  call void @sqlite3TokenInit(ptr noundef %tFromCol, ptr noundef %40)
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load ptr, ptr %pParse.addr, align 8
  %43 = load ptr, ptr %db, align 8
  %call37 = call ptr @sqlite3ExprAlloc(ptr noundef %43, i32 noundef 59, ptr noundef %tOld, i32 noundef 0)
  %44 = load ptr, ptr %db, align 8
  %call38 = call ptr @sqlite3ExprAlloc(ptr noundef %44, i32 noundef 59, ptr noundef %tToCol, i32 noundef 0)
  %call39 = call ptr @sqlite3PExpr(ptr noundef %42, i32 noundef 137, ptr noundef %call37, ptr noundef %call38)
  %45 = load ptr, ptr %db, align 8
  %call40 = call ptr @sqlite3ExprAlloc(ptr noundef %45, i32 noundef 59, ptr noundef %tFromCol, i32 noundef 0)
  %call41 = call ptr @sqlite3PExpr(ptr noundef %41, i32 noundef 53, ptr noundef %call39, ptr noundef %call40)
  store ptr %call41, ptr %pEq, align 8
  %46 = load ptr, ptr %pParse.addr, align 8
  %47 = load ptr, ptr %pWhere, align 8
  %48 = load ptr, ptr %pEq, align 8
  %call42 = call ptr @sqlite3ExprAnd(ptr noundef %46, ptr noundef %47, ptr noundef %48)
  store ptr %call42, ptr %pWhere, align 8
  %49 = load ptr, ptr %pChanges.addr, align 8
  %tobool43 = icmp ne ptr %49, null
  br i1 %tobool43, label %if.then44, label %if.end53

if.then44:                                        ; preds = %cond.end29
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pParse.addr, align 8
  %52 = load ptr, ptr %db, align 8
  %call45 = call ptr @sqlite3ExprAlloc(ptr noundef %52, i32 noundef 59, ptr noundef %tOld, i32 noundef 0)
  %53 = load ptr, ptr %db, align 8
  %call46 = call ptr @sqlite3ExprAlloc(ptr noundef %53, i32 noundef 59, ptr noundef %tToCol, i32 noundef 0)
  %call47 = call ptr @sqlite3PExpr(ptr noundef %51, i32 noundef 137, ptr noundef %call45, ptr noundef %call46)
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %db, align 8
  %call48 = call ptr @sqlite3ExprAlloc(ptr noundef %55, i32 noundef 59, ptr noundef %tNew, i32 noundef 0)
  %56 = load ptr, ptr %db, align 8
  %call49 = call ptr @sqlite3ExprAlloc(ptr noundef %56, i32 noundef 59, ptr noundef %tToCol, i32 noundef 0)
  %call50 = call ptr @sqlite3PExpr(ptr noundef %54, i32 noundef 137, ptr noundef %call48, ptr noundef %call49)
  %call51 = call ptr @sqlite3PExpr(ptr noundef %50, i32 noundef 45, ptr noundef %call47, ptr noundef %call50)
  store ptr %call51, ptr %pEq, align 8
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load ptr, ptr %pWhen, align 8
  %59 = load ptr, ptr %pEq, align 8
  %call52 = call ptr @sqlite3ExprAnd(ptr noundef %57, ptr noundef %58, ptr noundef %59)
  store ptr %call52, ptr %pWhen, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %cond.end29
  %60 = load i32, ptr %action, align 4
  %cmp54 = icmp ne i32 %60, 7
  br i1 %cmp54, label %land.lhs.true56, label %if.end86

land.lhs.true56:                                  ; preds = %if.end53
  %61 = load i32, ptr %action, align 4
  %cmp57 = icmp ne i32 %61, 10
  br i1 %cmp57, label %if.then60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true56
  %62 = load ptr, ptr %pChanges.addr, align 8
  %tobool59 = icmp ne ptr %62, null
  br i1 %tobool59, label %if.then60, label %if.end86

if.then60:                                        ; preds = %lor.lhs.false, %land.lhs.true56
  %63 = load i32, ptr %action, align 4
  %cmp61 = icmp eq i32 %63, 10
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.then60
  %64 = load ptr, ptr %pParse.addr, align 8
  %65 = load ptr, ptr %db, align 8
  %call64 = call ptr @sqlite3ExprAlloc(ptr noundef %65, i32 noundef 59, ptr noundef %tNew, i32 noundef 0)
  %66 = load ptr, ptr %db, align 8
  %call65 = call ptr @sqlite3ExprAlloc(ptr noundef %66, i32 noundef 59, ptr noundef %tToCol, i32 noundef 0)
  %call66 = call ptr @sqlite3PExpr(ptr noundef %64, i32 noundef 137, ptr noundef %call64, ptr noundef %call65)
  store ptr %call66, ptr %pNew, align 8
  br label %if.end84

if.else:                                          ; preds = %if.then60
  %67 = load i32, ptr %action, align 4
  %cmp67 = icmp eq i32 %67, 9
  br i1 %cmp67, label %if.then69, label %if.else81

if.then69:                                        ; preds = %if.else
  %68 = load ptr, ptr %pFKey.addr, align 8
  %pFrom70 = getelementptr inbounds nuw %struct.FKey, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pFrom70, align 8
  %aCol71 = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %aCol71, align 8
  %71 = load i32, ptr %iFromCol, align 4
  %idxprom72 = sext i32 %71 to i64
  %arrayidx73 = getelementptr inbounds %struct.Column, ptr %70, i64 %idxprom72
  %pDflt74 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx73, i32 0, i32 1
  %72 = load ptr, ptr %pDflt74, align 8
  store ptr %72, ptr %pDflt, align 8
  %73 = load ptr, ptr %pDflt, align 8
  %tobool75 = icmp ne ptr %73, null
  br i1 %tobool75, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.then69
  %74 = load ptr, ptr %db, align 8
  %75 = load ptr, ptr %pDflt, align 8
  %call77 = call ptr @sqlite3ExprDup(ptr noundef %74, ptr noundef %75, i32 noundef 0)
  store ptr %call77, ptr %pNew, align 8
  br label %if.end80

if.else78:                                        ; preds = %if.then69
  %76 = load ptr, ptr %db, align 8
  %call79 = call ptr @sqlite3ExprAlloc(ptr noundef %76, i32 noundef 117, ptr noundef null, i32 noundef 0)
  store ptr %call79, ptr %pNew, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  br label %if.end83

if.else81:                                        ; preds = %if.else
  %77 = load ptr, ptr %db, align 8
  %call82 = call ptr @sqlite3ExprAlloc(ptr noundef %77, i32 noundef 117, ptr noundef null, i32 noundef 0)
  store ptr %call82, ptr %pNew, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.end80
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.then63
  %78 = load ptr, ptr %pParse.addr, align 8
  %79 = load ptr, ptr %pList, align 8
  %80 = load ptr, ptr %pNew, align 8
  %call85 = call ptr @sqlite3ExprListAppend(ptr noundef %78, ptr noundef %79, ptr noundef %80)
  store ptr %call85, ptr %pList, align 8
  %81 = load ptr, ptr %pParse.addr, align 8
  %82 = load ptr, ptr %pList, align 8
  call void @sqlite3ExprListSetName(ptr noundef %81, ptr noundef %82, ptr noundef %tFromCol, i32 noundef 0)
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %lor.lhs.false, %if.end53
  br label %for.inc

for.inc:                                          ; preds = %if.end86
  %83 = load i32, ptr %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %84 = load ptr, ptr %db, align 8
  %85 = load ptr, ptr %aiCol, align 8
  call void @sqlite3DbFree(ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %pFKey.addr, align 8
  %pFrom87 = getelementptr inbounds nuw %struct.FKey, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %pFrom87, align 8
  %zName88 = getelementptr inbounds nuw %struct.Table, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %zName88, align 8
  store ptr %88, ptr %zFrom, align 8
  %89 = load ptr, ptr %zFrom, align 8
  %call89 = call i32 @sqlite3Strlen30(ptr noundef %89)
  store i32 %call89, ptr %nFrom, align 4
  %90 = load i32, ptr %action, align 4
  %cmp90 = icmp eq i32 %90, 7
  br i1 %cmp90, label %if.then92, label %if.end100

if.then92:                                        ; preds = %for.end
  %91 = load ptr, ptr %zFrom, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %tFrom, i32 0, i32 0
  store ptr %91, ptr %z, align 8
  %92 = load i32, ptr %nFrom, align 4
  %n = getelementptr inbounds nuw %struct.Token, ptr %tFrom, i32 0, i32 1
  store i32 %92, ptr %n, align 8
  %93 = load ptr, ptr %db, align 8
  %call93 = call ptr @sqlite3Expr(ptr noundef %93, i32 noundef 71, ptr noundef @.str.106)
  store ptr %call93, ptr %pRaise, align 8
  %94 = load ptr, ptr %pRaise, align 8
  %tobool94 = icmp ne ptr %94, null
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.then92
  %95 = load ptr, ptr %pRaise, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %95, i32 0, i32 1
  store i8 2, ptr %affExpr, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.then92
  %96 = load ptr, ptr %pParse.addr, align 8
  %97 = load ptr, ptr %pParse.addr, align 8
  %98 = load ptr, ptr %pRaise, align 8
  %call97 = call ptr @sqlite3ExprListAppend(ptr noundef %97, ptr noundef null, ptr noundef %98)
  %99 = load ptr, ptr %pParse.addr, align 8
  %call98 = call ptr @sqlite3SrcListAppend(ptr noundef %99, ptr noundef null, ptr noundef %tFrom, ptr noundef null)
  %100 = load ptr, ptr %pWhere, align 8
  %call99 = call ptr @sqlite3SelectNew(ptr noundef %96, ptr noundef %call97, ptr noundef %call98, ptr noundef %100, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call99, ptr %pSelect, align 8
  store ptr null, ptr %pWhere, align 8
  br label %if.end100

if.end100:                                        ; preds = %if.end96, %for.end
  %101 = load ptr, ptr %db, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %101, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 0
  %102 = load i32, ptr %bDisable, align 8
  %inc101 = add i32 %102, 1
  store i32 %inc101, ptr %bDisable, align 8
  %103 = load ptr, ptr %db, align 8
  %104 = load i32, ptr %nFrom, align 4
  %conv102 = sext i32 %104 to i64
  %add = add i64 160, %conv102
  %add103 = add i64 %add, 1
  %call104 = call ptr @sqlite3DbMallocZero(ptr noundef %103, i64 noundef %add103)
  store ptr %call104, ptr %pTrigger, align 8
  %105 = load ptr, ptr %pTrigger, align 8
  %tobool105 = icmp ne ptr %105, null
  br i1 %tobool105, label %if.then106, label %if.end122

if.then106:                                       ; preds = %if.end100
  %106 = load ptr, ptr %pTrigger, align 8
  %arrayidx107 = getelementptr inbounds %struct.Trigger, ptr %106, i64 1
  %107 = load ptr, ptr %pTrigger, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %107, i32 0, i32 8
  store ptr %arrayidx107, ptr %step_list, align 8
  store ptr %arrayidx107, ptr %pStep, align 8
  %108 = load ptr, ptr %pStep, align 8
  %arrayidx108 = getelementptr inbounds %struct.TriggerStep, ptr %108, i64 1
  %109 = load ptr, ptr %pStep, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %109, i32 0, i32 4
  store ptr %arrayidx108, ptr %zTarget, align 8
  %110 = load ptr, ptr %pStep, align 8
  %zTarget109 = getelementptr inbounds nuw %struct.TriggerStep, ptr %110, i32 0, i32 4
  %111 = load ptr, ptr %zTarget109, align 8
  %112 = load ptr, ptr %zFrom, align 8
  %113 = load i32, ptr %nFrom, align 4
  %conv110 = sext i32 %113 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 %conv110, i1 false)
  %114 = load ptr, ptr %db, align 8
  %115 = load ptr, ptr %pWhere, align 8
  %call111 = call ptr @sqlite3ExprDup(ptr noundef %114, ptr noundef %115, i32 noundef 1)
  %116 = load ptr, ptr %pStep, align 8
  %pWhere112 = getelementptr inbounds nuw %struct.TriggerStep, ptr %116, i32 0, i32 5
  store ptr %call111, ptr %pWhere112, align 8
  %117 = load ptr, ptr %db, align 8
  %118 = load ptr, ptr %pList, align 8
  %call113 = call ptr @sqlite3ExprListDup(ptr noundef %117, ptr noundef %118, i32 noundef 1)
  %119 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %119, i32 0, i32 6
  store ptr %call113, ptr %pExprList, align 8
  %120 = load ptr, ptr %db, align 8
  %121 = load ptr, ptr %pSelect, align 8
  %call114 = call ptr @sqlite3SelectDup(ptr noundef %120, ptr noundef %121, i32 noundef 1)
  %122 = load ptr, ptr %pStep, align 8
  %pSelect115 = getelementptr inbounds nuw %struct.TriggerStep, ptr %122, i32 0, i32 3
  store ptr %call114, ptr %pSelect115, align 8
  %123 = load ptr, ptr %pWhen, align 8
  %tobool116 = icmp ne ptr %123, null
  br i1 %tobool116, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.then106
  %124 = load ptr, ptr %pParse.addr, align 8
  %125 = load ptr, ptr %pWhen, align 8
  %call118 = call ptr @sqlite3PExpr(ptr noundef %124, i32 noundef 19, ptr noundef %125, ptr noundef null)
  store ptr %call118, ptr %pWhen, align 8
  %126 = load ptr, ptr %db, align 8
  %127 = load ptr, ptr %pWhen, align 8
  %call119 = call ptr @sqlite3ExprDup(ptr noundef %126, ptr noundef %127, i32 noundef 1)
  %128 = load ptr, ptr %pTrigger, align 8
  %pWhen120 = getelementptr inbounds nuw %struct.Trigger, ptr %128, i32 0, i32 4
  store ptr %call119, ptr %pWhen120, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.then106
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end100
  %129 = load ptr, ptr %db, align 8
  %lookaside123 = getelementptr inbounds nuw %struct.sqlite3, ptr %129, i32 0, i32 61
  %bDisable124 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside123, i32 0, i32 0
  %130 = load i32, ptr %bDisable124, align 8
  %dec = add i32 %130, -1
  store i32 %dec, ptr %bDisable124, align 8
  %131 = load ptr, ptr %db, align 8
  %132 = load ptr, ptr %pWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %131, ptr noundef %132)
  %133 = load ptr, ptr %db, align 8
  %134 = load ptr, ptr %pWhen, align 8
  call void @sqlite3ExprDelete(ptr noundef %133, ptr noundef %134)
  %135 = load ptr, ptr %db, align 8
  %136 = load ptr, ptr %pList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %135, ptr noundef %136)
  %137 = load ptr, ptr %db, align 8
  %138 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %137, ptr noundef %138)
  %139 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %139, i32 0, i32 19
  %140 = load i8, ptr %mallocFailed, align 1
  %conv125 = zext i8 %140 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %if.end122
  %141 = load ptr, ptr %db, align 8
  %142 = load ptr, ptr %pTrigger, align 8
  call void @fkTriggerDelete(ptr noundef %141, ptr noundef %142)
  store ptr null, ptr %retval, align 8
  br label %return

if.end129:                                        ; preds = %if.end122
  %143 = load i32, ptr %action, align 4
  switch i32 %143, label %sw.default [
    i32 7, label %sw.bb
    i32 10, label %sw.bb130
  ]

sw.bb:                                            ; preds = %if.end129
  %144 = load ptr, ptr %pStep, align 8
  %op = getelementptr inbounds nuw %struct.TriggerStep, ptr %144, i32 0, i32 0
  store i8 -122, ptr %op, align 8
  br label %sw.epilog

sw.bb130:                                         ; preds = %if.end129
  %145 = load ptr, ptr %pChanges.addr, align 8
  %tobool131 = icmp ne ptr %145, null
  br i1 %tobool131, label %if.end134, label %if.then132

if.then132:                                       ; preds = %sw.bb130
  %146 = load ptr, ptr %pStep, align 8
  %op133 = getelementptr inbounds nuw %struct.TriggerStep, ptr %146, i32 0, i32 0
  store i8 124, ptr %op133, align 8
  br label %sw.epilog

if.end134:                                        ; preds = %sw.bb130
  br label %sw.default

sw.default:                                       ; preds = %if.end134, %if.end129
  %147 = load ptr, ptr %pStep, align 8
  %op135 = getelementptr inbounds nuw %struct.TriggerStep, ptr %147, i32 0, i32 0
  store i8 125, ptr %op135, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then132, %sw.bb
  %148 = load ptr, ptr %pTrigger, align 8
  %149 = load ptr, ptr %pStep, align 8
  %pTrig = getelementptr inbounds nuw %struct.TriggerStep, ptr %149, i32 0, i32 2
  store ptr %148, ptr %pTrig, align 8
  %150 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %150, i32 0, i32 20
  %151 = load ptr, ptr %pSchema, align 8
  %152 = load ptr, ptr %pTrigger, align 8
  %pSchema136 = getelementptr inbounds nuw %struct.Trigger, ptr %152, i32 0, i32 6
  store ptr %151, ptr %pSchema136, align 8
  %153 = load ptr, ptr %pTab.addr, align 8
  %pSchema137 = getelementptr inbounds nuw %struct.Table, ptr %153, i32 0, i32 20
  %154 = load ptr, ptr %pSchema137, align 8
  %155 = load ptr, ptr %pTrigger, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %155, i32 0, i32 7
  store ptr %154, ptr %pTabSchema, align 8
  %156 = load ptr, ptr %pTrigger, align 8
  %157 = load ptr, ptr %pFKey.addr, align 8
  %apTrigger138 = getelementptr inbounds nuw %struct.FKey, ptr %157, i32 0, i32 8
  %158 = load i32, ptr %iAction, align 4
  %idxprom139 = sext i32 %158 to i64
  %arrayidx140 = getelementptr inbounds [2 x ptr], ptr %apTrigger138, i64 0, i64 %idxprom139
  store ptr %156, ptr %arrayidx140, align 8
  %159 = load ptr, ptr %pChanges.addr, align 8
  %tobool141 = icmp ne ptr %159, null
  %160 = zext i1 %tobool141 to i64
  %cond142 = select i1 %tobool141, i32 125, i32 124
  %conv143 = trunc i32 %cond142 to i8
  %161 = load ptr, ptr %pTrigger, align 8
  %op144 = getelementptr inbounds nuw %struct.Trigger, ptr %161, i32 0, i32 2
  store i8 %conv143, ptr %op144, align 8
  br label %if.end145

if.end145:                                        ; preds = %sw.epilog, %land.lhs.true9, %if.end
  %162 = load ptr, ptr %pTrigger, align 8
  store ptr %162, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end145, %if.then128, %if.then13, %if.then
  %163 = load ptr, ptr %retval, align 8
  ret ptr %163
}

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
