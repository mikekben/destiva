; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
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
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListCompare(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AutoincrementEnd(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RowidConstraint(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @xferOptimization(ptr noundef %pParse, ptr noundef %pDest, ptr noundef %pSelect, i32 noundef %onError, i32 noundef %iDbDest) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %iDbDest.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pSrcIdx = alloca ptr, align 8
  %pDestIdx = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %i = alloca i32, align 4
  %iDbSrc = alloca i32, align 4
  %iSrc = alloca i32, align 4
  %iDest = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %addr2 = alloca i32, align 4
  %emptyDestTest = alloca i32, align 4
  %emptySrcTest = alloca i32, align 4
  %v = alloca ptr, align 8
  %regAutoinc = alloca i32, align 4
  %destHasUniqueIdx = alloca i32, align 4
  %regData = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %pDestCol = alloca ptr, align 8
  %pSrcCol = alloca ptr, align 8
  %insFlags = alloca i8, align 1
  %idxInsFlags = alloca i8, align 1
  %zColl334 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store i32 %iDbDest, ptr %iDbDest.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 0, ptr %emptyDestTest, align 4
  store i32 0, ptr %emptySrcTest, align 4
  store i32 0, ptr %destHasUniqueIdx, align 4
  %2 = load ptr, ptr %pSelect.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 66
  %4 = load ptr, ptr %pWith, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load ptr, ptr %pSelect.addr, align 8
  %pWith2 = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 16
  %6 = load ptr, ptr %pWith2, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pDest.addr, align 8
  %call = call ptr @sqlite3TriggerList(ptr noundef %7, ptr noundef %8)
  %tobool6 = icmp ne ptr %call, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %9 = load ptr, ptr %pDest.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %nModuleArg, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end8
  %11 = load i32, ptr %onError.addr, align 4
  %cmp12 = icmp eq i32 %11, 11
  br i1 %cmp12, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end11
  %12 = load ptr, ptr %pDest.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 10
  %13 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %13 to i32
  %cmp14 = icmp sge i32 %conv, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %14 = load ptr, ptr %pDest.addr, align 8
  %keyConf = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 14
  %15 = load i8, ptr %keyConf, align 4
  %conv17 = zext i8 %15 to i32
  store i32 %conv17, ptr %onError.addr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13
  %16 = load i32, ptr %onError.addr, align 4
  %cmp19 = icmp eq i32 %16, 11
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  store i32 2, ptr %onError.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end11
  %17 = load ptr, ptr %pSelect.addr, align 8
  %pSrc24 = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %pSrc24, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %nSrc, align 8
  %cmp25 = icmp ne i32 %19, 1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end23
  %20 = load ptr, ptr %pSelect.addr, align 8
  %pSrc29 = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %pSrc29, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %21, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pSelect30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  %22 = load ptr, ptr %pSelect30, align 8
  %tobool31 = icmp ne ptr %22, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end28
  %23 = load ptr, ptr %pSelect.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %pWhere, align 8
  %tobool34 = icmp ne ptr %24, null
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end33
  %25 = load ptr, ptr %pSelect.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 12
  %26 = load ptr, ptr %pOrderBy, align 8
  %tobool37 = icmp ne ptr %26, null
  br i1 %tobool37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end36
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end36
  %27 = load ptr, ptr %pSelect.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %pGroupBy, align 8
  %tobool40 = icmp ne ptr %28, null
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end39
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end39
  %29 = load ptr, ptr %pSelect.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 15
  %30 = load ptr, ptr %pLimit, align 8
  %tobool43 = icmp ne ptr %30, null
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end42
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end42
  %31 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 13
  %32 = load ptr, ptr %pPrior, align 8
  %tobool46 = icmp ne ptr %32, null
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  store i32 0, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.end45
  %33 = load ptr, ptr %pSelect.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %selFlags, align 4
  %and = and i32 %34, 1
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end48
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end48
  %35 = load ptr, ptr %pSelect.addr, align 8
  %pEList52 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pEList52, align 8
  store ptr %36, ptr %pEList, align 8
  %37 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %37, i32 0, i32 0
  %38 = load i32, ptr %nExpr, align 8
  %cmp53 = icmp ne i32 %38, 1
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end51
  %39 = load ptr, ptr %pEList, align 8
  %a57 = getelementptr inbounds nuw %struct.ExprList, ptr %39, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a57, i64 0, i64 0
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx58, i32 0, i32 0
  %40 = load ptr, ptr %pExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %40, i32 0, i32 0
  %41 = load i8, ptr %op, align 8
  %conv59 = zext i8 %41 to i32
  %cmp60 = icmp ne i32 %conv59, 175
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end56
  store i32 0, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end56
  %42 = load ptr, ptr %pSelect.addr, align 8
  %pSrc64 = getelementptr inbounds nuw %struct.Select, ptr %42, i32 0, i32 8
  %43 = load ptr, ptr %pSrc64, align 8
  %a65 = getelementptr inbounds nuw %struct.SrcList, ptr %43, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a65, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %pItem, align 8
  %call66 = call ptr @sqlite3LocateTableItem(ptr noundef %44, i32 noundef 0, ptr noundef %45)
  store ptr %call66, ptr %pSrc, align 8
  %46 = load ptr, ptr %pSrc, align 8
  %cmp67 = icmp eq ptr %46, null
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  store i32 0, ptr %retval, align 4
  br label %return

if.end70:                                         ; preds = %if.end63
  %47 = load ptr, ptr %pSrc, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 7
  %48 = load i32, ptr %tnum, align 8
  %49 = load ptr, ptr %pDest.addr, align 8
  %tnum71 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 7
  %50 = load i32, ptr %tnum71, align 8
  %cmp72 = icmp eq i32 %48, %50
  br i1 %cmp72, label %land.lhs.true, label %if.end78

land.lhs.true:                                    ; preds = %if.end70
  %51 = load ptr, ptr %pSrc, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %51, i32 0, i32 20
  %52 = load ptr, ptr %pSchema, align 8
  %53 = load ptr, ptr %pDest.addr, align 8
  %pSchema74 = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 20
  %54 = load ptr, ptr %pSchema74, align 8
  %cmp75 = icmp eq ptr %52, %54
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %land.lhs.true, %if.end70
  %55 = load ptr, ptr %pDest.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %55, i32 0, i32 9
  %56 = load i32, ptr %tabFlags, align 8
  %and79 = and i32 %56, 32
  %cmp80 = icmp eq i32 %and79, 0
  %conv81 = zext i1 %cmp80 to i32
  %57 = load ptr, ptr %pSrc, align 8
  %tabFlags82 = getelementptr inbounds nuw %struct.Table, ptr %57, i32 0, i32 9
  %58 = load i32, ptr %tabFlags82, align 8
  %and83 = and i32 %58, 32
  %cmp84 = icmp eq i32 %and83, 0
  %conv85 = zext i1 %cmp84 to i32
  %cmp86 = icmp ne i32 %conv81, %conv85
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end78
  store i32 0, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end78
  %59 = load ptr, ptr %pSrc, align 8
  %nModuleArg90 = getelementptr inbounds nuw %struct.Table, ptr %59, i32 0, i32 16
  %60 = load i32, ptr %nModuleArg90, align 4
  %tobool91 = icmp ne i32 %60, 0
  br i1 %tobool91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end89
  store i32 0, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.end89
  %61 = load ptr, ptr %pSrc, align 8
  %pSelect94 = getelementptr inbounds nuw %struct.Table, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %pSelect94, align 8
  %tobool95 = icmp ne ptr %62, null
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.end93
  store i32 0, ptr %retval, align 4
  br label %return

if.end97:                                         ; preds = %if.end93
  %63 = load ptr, ptr %pDest.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %63, i32 0, i32 11
  %64 = load i16, ptr %nCol, align 2
  %conv98 = sext i16 %64 to i32
  %65 = load ptr, ptr %pSrc, align 8
  %nCol99 = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 11
  %66 = load i16, ptr %nCol99, align 2
  %conv100 = sext i16 %66 to i32
  %cmp101 = icmp ne i32 %conv98, %conv100
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end97
  store i32 0, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end97
  %67 = load ptr, ptr %pDest.addr, align 8
  %iPKey105 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 10
  %68 = load i16, ptr %iPKey105, align 4
  %conv106 = sext i16 %68 to i32
  %69 = load ptr, ptr %pSrc, align 8
  %iPKey107 = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 10
  %70 = load i16, ptr %iPKey107, align 4
  %conv108 = sext i16 %70 to i32
  %cmp109 = icmp ne i32 %conv106, %conv108
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end104
  store i32 0, ptr %retval, align 4
  br label %return

if.end112:                                        ; preds = %if.end104
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end112
  %71 = load i32, ptr %i, align 4
  %72 = load ptr, ptr %pDest.addr, align 8
  %nCol113 = getelementptr inbounds nuw %struct.Table, ptr %72, i32 0, i32 11
  %73 = load i16, ptr %nCol113, align 2
  %conv114 = sext i16 %73 to i32
  %cmp115 = icmp slt i32 %71, %conv114
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load ptr, ptr %pDest.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %aCol, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom = sext i32 %76 to i64
  %arrayidx117 = getelementptr inbounds %struct.Column, ptr %75, i64 %idxprom
  store ptr %arrayidx117, ptr %pDestCol, align 8
  %77 = load ptr, ptr %pSrc, align 8
  %aCol118 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %aCol118, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %79 to i64
  %arrayidx120 = getelementptr inbounds %struct.Column, ptr %78, i64 %idxprom119
  store ptr %arrayidx120, ptr %pSrcCol, align 8
  %80 = load ptr, ptr %pDestCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %80, i32 0, i32 4
  %81 = load i8, ptr %affinity, align 1
  %conv121 = sext i8 %81 to i32
  %82 = load ptr, ptr %pSrcCol, align 8
  %affinity122 = getelementptr inbounds nuw %struct.Column, ptr %82, i32 0, i32 4
  %83 = load i8, ptr %affinity122, align 1
  %conv123 = sext i8 %83 to i32
  %cmp124 = icmp ne i32 %conv121, %conv123
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end127:                                        ; preds = %for.body
  %84 = load ptr, ptr %pDestCol, align 8
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %84, i32 0, i32 2
  %85 = load ptr, ptr %zColl, align 8
  %86 = load ptr, ptr %pSrcCol, align 8
  %zColl128 = getelementptr inbounds nuw %struct.Column, ptr %86, i32 0, i32 2
  %87 = load ptr, ptr %zColl128, align 8
  %call129 = call i32 @sqlite3_stricmp(ptr noundef %85, ptr noundef %87)
  %cmp130 = icmp ne i32 %call129, 0
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.end127
  store i32 0, ptr %retval, align 4
  br label %return

if.end133:                                        ; preds = %if.end127
  %88 = load ptr, ptr %pDestCol, align 8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %88, i32 0, i32 3
  %89 = load i8, ptr %notNull, align 8
  %conv134 = zext i8 %89 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.lhs.true136, label %if.end140

land.lhs.true136:                                 ; preds = %if.end133
  %90 = load ptr, ptr %pSrcCol, align 8
  %notNull137 = getelementptr inbounds nuw %struct.Column, ptr %90, i32 0, i32 3
  %91 = load i8, ptr %notNull137, align 8
  %tobool138 = icmp ne i8 %91, 0
  br i1 %tobool138, label %if.end140, label %if.then139

if.then139:                                       ; preds = %land.lhs.true136
  store i32 0, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %land.lhs.true136, %if.end133
  %92 = load i32, ptr %i, align 4
  %cmp141 = icmp sgt i32 %92, 0
  br i1 %cmp141, label %if.then143, label %if.end163

if.then143:                                       ; preds = %if.end140
  %93 = load ptr, ptr %pDestCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %pDflt, align 8
  %cmp144 = icmp eq ptr %94, null
  %conv145 = zext i1 %cmp144 to i32
  %95 = load ptr, ptr %pSrcCol, align 8
  %pDflt146 = getelementptr inbounds nuw %struct.Column, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %pDflt146, align 8
  %cmp147 = icmp eq ptr %96, null
  %conv148 = zext i1 %cmp147 to i32
  %cmp149 = icmp ne i32 %conv145, %conv148
  br i1 %cmp149, label %if.then161, label %lor.lhs.false151

lor.lhs.false151:                                 ; preds = %if.then143
  %97 = load ptr, ptr %pDestCol, align 8
  %pDflt152 = getelementptr inbounds nuw %struct.Column, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %pDflt152, align 8
  %tobool153 = icmp ne ptr %98, null
  br i1 %tobool153, label %land.lhs.true154, label %if.end162

land.lhs.true154:                                 ; preds = %lor.lhs.false151
  %99 = load ptr, ptr %pDestCol, align 8
  %pDflt155 = getelementptr inbounds nuw %struct.Column, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %pDflt155, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %100, i32 0, i32 3
  %101 = load ptr, ptr %u, align 8
  %102 = load ptr, ptr %pSrcCol, align 8
  %pDflt156 = getelementptr inbounds nuw %struct.Column, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %pDflt156, align 8
  %u157 = getelementptr inbounds nuw %struct.Expr, ptr %103, i32 0, i32 3
  %104 = load ptr, ptr %u157, align 8
  %call158 = call i32 @strcmp(ptr noundef %101, ptr noundef %104) #2
  %cmp159 = icmp ne i32 %call158, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %land.lhs.true154, %if.then143
  store i32 0, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %land.lhs.true154, %lor.lhs.false151
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end140
  br label %for.inc

for.inc:                                          ; preds = %if.end163
  %105 = load i32, ptr %i, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %106 = load ptr, ptr %pDest.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %pIndex, align 8
  store ptr %107, ptr %pDestIdx, align 8
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc202, %for.end
  %108 = load ptr, ptr %pDestIdx, align 8
  %tobool165 = icmp ne ptr %108, null
  br i1 %tobool165, label %for.body166, label %for.end204

for.body166:                                      ; preds = %for.cond164
  %109 = load ptr, ptr %pDestIdx, align 8
  %onError167 = getelementptr inbounds nuw %struct.Index, ptr %109, i32 0, i32 15
  %110 = load i8, ptr %onError167, align 2
  %conv168 = zext i8 %110 to i32
  %cmp169 = icmp ne i32 %conv168, 0
  br i1 %cmp169, label %if.then171, label %if.end172

if.then171:                                       ; preds = %for.body166
  store i32 1, ptr %destHasUniqueIdx, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then171, %for.body166
  %111 = load ptr, ptr %pSrc, align 8
  %pIndex173 = getelementptr inbounds nuw %struct.Table, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %pIndex173, align 8
  store ptr %112, ptr %pSrcIdx, align 8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc181, %if.end172
  %113 = load ptr, ptr %pSrcIdx, align 8
  %tobool175 = icmp ne ptr %113, null
  br i1 %tobool175, label %for.body176, label %for.end182

for.body176:                                      ; preds = %for.cond174
  %114 = load ptr, ptr %pDestIdx, align 8
  %115 = load ptr, ptr %pSrcIdx, align 8
  %call177 = call i32 @xferCompatibleIndex(ptr noundef %114, ptr noundef %115)
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.then179, label %if.end180

if.then179:                                       ; preds = %for.body176
  br label %for.end182

if.end180:                                        ; preds = %for.body176
  br label %for.inc181

for.inc181:                                       ; preds = %if.end180
  %116 = load ptr, ptr %pSrcIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %116, i32 0, i32 5
  %117 = load ptr, ptr %pNext, align 8
  store ptr %117, ptr %pSrcIdx, align 8
  br label %for.cond174, !llvm.loop !8

for.end182:                                       ; preds = %if.then179, %for.cond174
  %118 = load ptr, ptr %pSrcIdx, align 8
  %cmp183 = icmp eq ptr %118, null
  br i1 %cmp183, label %if.then185, label %if.end186

if.then185:                                       ; preds = %for.end182
  store i32 0, ptr %retval, align 4
  br label %return

if.end186:                                        ; preds = %for.end182
  %119 = load ptr, ptr %pSrcIdx, align 8
  %tnum187 = getelementptr inbounds nuw %struct.Index, ptr %119, i32 0, i32 11
  %120 = load i32, ptr %tnum187, align 8
  %121 = load ptr, ptr %pDestIdx, align 8
  %tnum188 = getelementptr inbounds nuw %struct.Index, ptr %121, i32 0, i32 11
  %122 = load i32, ptr %tnum188, align 8
  %cmp189 = icmp eq i32 %120, %122
  br i1 %cmp189, label %land.lhs.true191, label %if.end201

land.lhs.true191:                                 ; preds = %if.end186
  %123 = load ptr, ptr %pSrc, align 8
  %pSchema192 = getelementptr inbounds nuw %struct.Table, ptr %123, i32 0, i32 20
  %124 = load ptr, ptr %pSchema192, align 8
  %125 = load ptr, ptr %pDest.addr, align 8
  %pSchema193 = getelementptr inbounds nuw %struct.Table, ptr %125, i32 0, i32 20
  %126 = load ptr, ptr %pSchema193, align 8
  %cmp194 = icmp eq ptr %124, %126
  br i1 %cmp194, label %land.lhs.true196, label %if.end201

land.lhs.true196:                                 ; preds = %land.lhs.true191
  %call197 = call i32 @sqlite3FaultSim(i32 noundef 411)
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.end201

if.then200:                                       ; preds = %land.lhs.true196
  store i32 0, ptr %retval, align 4
  br label %return

if.end201:                                        ; preds = %land.lhs.true196, %land.lhs.true191, %if.end186
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %127 = load ptr, ptr %pDestIdx, align 8
  %pNext203 = getelementptr inbounds nuw %struct.Index, ptr %127, i32 0, i32 5
  %128 = load ptr, ptr %pNext203, align 8
  store ptr %128, ptr %pDestIdx, align 8
  br label %for.cond164, !llvm.loop !9

for.end204:                                       ; preds = %for.cond164
  %129 = load ptr, ptr %pDest.addr, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %129, i32 0, i32 6
  %130 = load ptr, ptr %pCheck, align 8
  %tobool205 = icmp ne ptr %130, null
  br i1 %tobool205, label %land.lhs.true206, label %if.end212

land.lhs.true206:                                 ; preds = %for.end204
  %131 = load ptr, ptr %pSrc, align 8
  %pCheck207 = getelementptr inbounds nuw %struct.Table, ptr %131, i32 0, i32 6
  %132 = load ptr, ptr %pCheck207, align 8
  %133 = load ptr, ptr %pDest.addr, align 8
  %pCheck208 = getelementptr inbounds nuw %struct.Table, ptr %133, i32 0, i32 6
  %134 = load ptr, ptr %pCheck208, align 8
  %call209 = call i32 @sqlite3ExprListCompare(ptr noundef %132, ptr noundef %134, i32 noundef -1)
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.end212

if.then211:                                       ; preds = %land.lhs.true206
  store i32 0, ptr %retval, align 4
  br label %return

if.end212:                                        ; preds = %land.lhs.true206, %for.end204
  %135 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %135, i32 0, i32 7
  %136 = load i64, ptr %flags, align 8
  %and213 = and i64 %136, 16384
  %cmp214 = icmp ne i64 %and213, 0
  br i1 %cmp214, label %land.lhs.true216, label %if.end220

land.lhs.true216:                                 ; preds = %if.end212
  %137 = load ptr, ptr %pDest.addr, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %137, i32 0, i32 4
  %138 = load ptr, ptr %pFKey, align 8
  %cmp217 = icmp ne ptr %138, null
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %land.lhs.true216
  store i32 0, ptr %retval, align 4
  br label %return

if.end220:                                        ; preds = %land.lhs.true216, %if.end212
  %139 = load ptr, ptr %db, align 8
  %flags221 = getelementptr inbounds nuw %struct.sqlite3, ptr %139, i32 0, i32 7
  %140 = load i64, ptr %flags221, align 8
  %and222 = and i64 %140, 128
  %cmp223 = icmp ne i64 %and222, 0
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end220
  store i32 0, ptr %retval, align 4
  br label %return

if.end226:                                        ; preds = %if.end220
  %141 = load ptr, ptr %db, align 8
  %142 = load ptr, ptr %pSrc, align 8
  %pSchema227 = getelementptr inbounds nuw %struct.Table, ptr %142, i32 0, i32 20
  %143 = load ptr, ptr %pSchema227, align 8
  %call228 = call i32 @sqlite3SchemaToIndex(ptr noundef %141, ptr noundef %143)
  store i32 %call228, ptr %iDbSrc, align 4
  %144 = load ptr, ptr %pParse.addr, align 8
  %call229 = call ptr @sqlite3GetVdbe(ptr noundef %144)
  store ptr %call229, ptr %v, align 8
  %145 = load ptr, ptr %pParse.addr, align 8
  %146 = load i32, ptr %iDbSrc, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %145, i32 noundef %146)
  %147 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %147, i32 0, i32 17
  %148 = load i32, ptr %nTab, align 4
  %inc230 = add nsw i32 %148, 1
  store i32 %inc230, ptr %nTab, align 4
  store i32 %148, ptr %iSrc, align 4
  %149 = load ptr, ptr %pParse.addr, align 8
  %nTab231 = getelementptr inbounds nuw %struct.Parse, ptr %149, i32 0, i32 17
  %150 = load i32, ptr %nTab231, align 4
  %inc232 = add nsw i32 %150, 1
  store i32 %inc232, ptr %nTab231, align 4
  store i32 %150, ptr %iDest, align 4
  %151 = load ptr, ptr %pParse.addr, align 8
  %152 = load i32, ptr %iDbDest.addr, align 4
  %153 = load ptr, ptr %pDest.addr, align 8
  %call233 = call i32 @autoIncBegin(ptr noundef %151, i32 noundef %152, ptr noundef %153)
  store i32 %call233, ptr %regAutoinc, align 4
  %154 = load ptr, ptr %pParse.addr, align 8
  %call234 = call i32 @sqlite3GetTempReg(ptr noundef %154)
  store i32 %call234, ptr %regData, align 4
  %155 = load ptr, ptr %pParse.addr, align 8
  %call235 = call i32 @sqlite3GetTempReg(ptr noundef %155)
  store i32 %call235, ptr %regRowid, align 4
  %156 = load ptr, ptr %pParse.addr, align 8
  %157 = load i32, ptr %iDest, align 4
  %158 = load i32, ptr %iDbDest.addr, align 4
  %159 = load ptr, ptr %pDest.addr, align 8
  call void @sqlite3OpenTable(ptr noundef %156, i32 noundef %157, i32 noundef %158, ptr noundef %159, i32 noundef 98)
  %160 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %160, i32 0, i32 6
  %161 = load i32, ptr %mDbFlags, align 4
  %and236 = and i32 %161, 4
  %cmp237 = icmp eq i32 %and236, 0
  br i1 %cmp237, label %land.lhs.true239, label %if.end259

land.lhs.true239:                                 ; preds = %if.end226
  %162 = load ptr, ptr %pDest.addr, align 8
  %iPKey240 = getelementptr inbounds nuw %struct.Table, ptr %162, i32 0, i32 10
  %163 = load i16, ptr %iPKey240, align 4
  %conv241 = sext i16 %163 to i32
  %cmp242 = icmp slt i32 %conv241, 0
  br i1 %cmp242, label %land.lhs.true244, label %lor.lhs.false248

land.lhs.true244:                                 ; preds = %land.lhs.true239
  %164 = load ptr, ptr %pDest.addr, align 8
  %pIndex245 = getelementptr inbounds nuw %struct.Table, ptr %164, i32 0, i32 2
  %165 = load ptr, ptr %pIndex245, align 8
  %cmp246 = icmp ne ptr %165, null
  br i1 %cmp246, label %if.then256, label %lor.lhs.false248

lor.lhs.false248:                                 ; preds = %land.lhs.true244, %land.lhs.true239
  %166 = load i32, ptr %destHasUniqueIdx, align 4
  %tobool249 = icmp ne i32 %166, 0
  br i1 %tobool249, label %if.then256, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %lor.lhs.false248
  %167 = load i32, ptr %onError.addr, align 4
  %cmp251 = icmp ne i32 %167, 2
  br i1 %cmp251, label %land.lhs.true253, label %if.end259

land.lhs.true253:                                 ; preds = %lor.lhs.false250
  %168 = load i32, ptr %onError.addr, align 4
  %cmp254 = icmp ne i32 %168, 1
  br i1 %cmp254, label %if.then256, label %if.end259

if.then256:                                       ; preds = %land.lhs.true253, %lor.lhs.false248, %land.lhs.true244
  %169 = load ptr, ptr %v, align 8
  %170 = load i32, ptr %iDest, align 4
  %call257 = call i32 @sqlite3VdbeAddOp2(ptr noundef %169, i32 noundef 36, i32 noundef %170, i32 noundef 0)
  store i32 %call257, ptr %addr1, align 4
  %171 = load ptr, ptr %v, align 8
  %call258 = call i32 @sqlite3VdbeAddOp0(ptr noundef %171, i32 noundef 11)
  store i32 %call258, ptr %emptyDestTest, align 4
  %172 = load ptr, ptr %v, align 8
  %173 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %172, i32 noundef %173)
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %land.lhs.true253, %lor.lhs.false250, %if.end226
  %174 = load ptr, ptr %pSrc, align 8
  %tabFlags260 = getelementptr inbounds nuw %struct.Table, ptr %174, i32 0, i32 9
  %175 = load i32, ptr %tabFlags260, align 8
  %and261 = and i32 %175, 32
  %cmp262 = icmp eq i32 %and261, 0
  br i1 %cmp262, label %if.then264, label %if.else299

if.then264:                                       ; preds = %if.end259
  %176 = load ptr, ptr %pParse.addr, align 8
  %177 = load i32, ptr %iSrc, align 4
  %178 = load i32, ptr %iDbSrc, align 4
  %179 = load ptr, ptr %pSrc, align 8
  call void @sqlite3OpenTable(ptr noundef %176, i32 noundef %177, i32 noundef %178, ptr noundef %179, i32 noundef 97)
  %180 = load ptr, ptr %v, align 8
  %181 = load i32, ptr %iSrc, align 4
  %call265 = call i32 @sqlite3VdbeAddOp2(ptr noundef %180, i32 noundef 36, i32 noundef %181, i32 noundef 0)
  store i32 %call265, ptr %emptySrcTest, align 4
  %182 = load ptr, ptr %pDest.addr, align 8
  %iPKey266 = getelementptr inbounds nuw %struct.Table, ptr %182, i32 0, i32 10
  %183 = load i16, ptr %iPKey266, align 4
  %conv267 = sext i16 %183 to i32
  %cmp268 = icmp sge i32 %conv267, 0
  br i1 %cmp268, label %if.then270, label %if.else

if.then270:                                       ; preds = %if.then264
  %184 = load ptr, ptr %v, align 8
  %185 = load i32, ptr %iSrc, align 4
  %186 = load i32, ptr %regRowid, align 4
  %call271 = call i32 @sqlite3VdbeAddOp2(ptr noundef %184, i32 noundef 128, i32 noundef %185, i32 noundef %186)
  store i32 %call271, ptr %addr1, align 4
  %187 = load ptr, ptr %v, align 8
  %188 = load i32, ptr %iDest, align 4
  %189 = load i32, ptr %regRowid, align 4
  %call272 = call i32 @sqlite3VdbeAddOp3(ptr noundef %187, i32 noundef 31, i32 noundef %188, i32 noundef 0, i32 noundef %189)
  store i32 %call272, ptr %addr2, align 4
  %190 = load ptr, ptr %pParse.addr, align 8
  %191 = load i32, ptr %onError.addr, align 4
  %192 = load ptr, ptr %pDest.addr, align 8
  call void @sqlite3RowidConstraint(ptr noundef %190, i32 noundef %191, ptr noundef %192)
  %193 = load ptr, ptr %v, align 8
  %194 = load i32, ptr %addr2, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %193, i32 noundef %194)
  %195 = load ptr, ptr %pParse.addr, align 8
  %196 = load i32, ptr %regAutoinc, align 4
  %197 = load i32, ptr %regRowid, align 4
  call void @autoIncStep(ptr noundef %195, i32 noundef %196, i32 noundef %197)
  br label %if.end285

if.else:                                          ; preds = %if.then264
  %198 = load ptr, ptr %pDest.addr, align 8
  %pIndex273 = getelementptr inbounds nuw %struct.Table, ptr %198, i32 0, i32 2
  %199 = load ptr, ptr %pIndex273, align 8
  %cmp274 = icmp eq ptr %199, null
  br i1 %cmp274, label %land.lhs.true276, label %if.else282

land.lhs.true276:                                 ; preds = %if.else
  %200 = load ptr, ptr %db, align 8
  %mDbFlags277 = getelementptr inbounds nuw %struct.sqlite3, ptr %200, i32 0, i32 6
  %201 = load i32, ptr %mDbFlags277, align 4
  %and278 = and i32 %201, 8
  %tobool279 = icmp ne i32 %and278, 0
  br i1 %tobool279, label %if.else282, label %if.then280

if.then280:                                       ; preds = %land.lhs.true276
  %202 = load ptr, ptr %v, align 8
  %203 = load i32, ptr %iDest, align 4
  %204 = load i32, ptr %regRowid, align 4
  %call281 = call i32 @sqlite3VdbeAddOp2(ptr noundef %202, i32 noundef 121, i32 noundef %203, i32 noundef %204)
  store i32 %call281, ptr %addr1, align 4
  br label %if.end284

if.else282:                                       ; preds = %land.lhs.true276, %if.else
  %205 = load ptr, ptr %v, align 8
  %206 = load i32, ptr %iSrc, align 4
  %207 = load i32, ptr %regRowid, align 4
  %call283 = call i32 @sqlite3VdbeAddOp2(ptr noundef %205, i32 noundef 128, i32 noundef %206, i32 noundef %207)
  store i32 %call283, ptr %addr1, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.else282, %if.then280
  br label %if.end285

if.end285:                                        ; preds = %if.end284, %if.then270
  %208 = load ptr, ptr %v, align 8
  %209 = load i32, ptr %iSrc, align 4
  %210 = load i32, ptr %regData, align 4
  %call286 = call i32 @sqlite3VdbeAddOp3(ptr noundef %208, i32 noundef 127, i32 noundef %209, i32 noundef %210, i32 noundef 1)
  %211 = load ptr, ptr %db, align 8
  %mDbFlags287 = getelementptr inbounds nuw %struct.sqlite3, ptr %211, i32 0, i32 6
  %212 = load i32, ptr %mDbFlags287, align 4
  %and288 = and i32 %212, 4
  %tobool289 = icmp ne i32 %and288, 0
  br i1 %tobool289, label %if.then290, label %if.else292

if.then290:                                       ; preds = %if.end285
  %213 = load ptr, ptr %v, align 8
  %214 = load i32, ptr %iDest, align 4
  %call291 = call i32 @sqlite3VdbeAddOp1(ptr noundef %213, i32 noundef 130, i32 noundef %214)
  store i8 57, ptr %insFlags, align 1
  br label %if.end293

if.else292:                                       ; preds = %if.end285
  store i8 41, ptr %insFlags, align 1
  br label %if.end293

if.end293:                                        ; preds = %if.else292, %if.then290
  %215 = load ptr, ptr %v, align 8
  %216 = load i32, ptr %iDest, align 4
  %217 = load i32, ptr %regData, align 4
  %218 = load i32, ptr %regRowid, align 4
  %219 = load ptr, ptr %pDest.addr, align 8
  %call294 = call i32 @sqlite3VdbeAddOp4(ptr noundef %215, i32 noundef 122, i32 noundef %216, i32 noundef %217, i32 noundef %218, ptr noundef %219, i32 noundef -6)
  %220 = load ptr, ptr %v, align 8
  %221 = load i8, ptr %insFlags, align 1
  %conv295 = zext i8 %221 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %220, i16 noundef zeroext %conv295)
  %222 = load ptr, ptr %v, align 8
  %223 = load i32, ptr %iSrc, align 4
  %224 = load i32, ptr %addr1, align 4
  %call296 = call i32 @sqlite3VdbeAddOp2(ptr noundef %222, i32 noundef 5, i32 noundef %223, i32 noundef %224)
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %iSrc, align 4
  %call297 = call i32 @sqlite3VdbeAddOp2(ptr noundef %225, i32 noundef 117, i32 noundef %226, i32 noundef 0)
  %227 = load ptr, ptr %v, align 8
  %228 = load i32, ptr %iDest, align 4
  %call298 = call i32 @sqlite3VdbeAddOp2(ptr noundef %227, i32 noundef 117, i32 noundef %228, i32 noundef 0)
  br label %if.end303

if.else299:                                       ; preds = %if.end259
  %229 = load ptr, ptr %pParse.addr, align 8
  %230 = load i32, ptr %iDbDest.addr, align 4
  %231 = load ptr, ptr %pDest.addr, align 8
  %tnum300 = getelementptr inbounds nuw %struct.Table, ptr %231, i32 0, i32 7
  %232 = load i32, ptr %tnum300, align 8
  %233 = load ptr, ptr %pDest.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %233, i32 0, i32 0
  %234 = load ptr, ptr %zName, align 8
  call void @sqlite3TableLock(ptr noundef %229, i32 noundef %230, i32 noundef %232, i8 noundef zeroext 1, ptr noundef %234)
  %235 = load ptr, ptr %pParse.addr, align 8
  %236 = load i32, ptr %iDbSrc, align 4
  %237 = load ptr, ptr %pSrc, align 8
  %tnum301 = getelementptr inbounds nuw %struct.Table, ptr %237, i32 0, i32 7
  %238 = load i32, ptr %tnum301, align 8
  %239 = load ptr, ptr %pSrc, align 8
  %zName302 = getelementptr inbounds nuw %struct.Table, ptr %239, i32 0, i32 0
  %240 = load ptr, ptr %zName302, align 8
  call void @sqlite3TableLock(ptr noundef %235, i32 noundef %236, i32 noundef %238, i8 noundef zeroext 0, ptr noundef %240)
  br label %if.end303

if.end303:                                        ; preds = %if.else299, %if.end293
  %241 = load ptr, ptr %pDest.addr, align 8
  %pIndex304 = getelementptr inbounds nuw %struct.Table, ptr %241, i32 0, i32 2
  %242 = load ptr, ptr %pIndex304, align 8
  store ptr %242, ptr %pDestIdx, align 8
  br label %for.cond305

for.cond305:                                      ; preds = %for.inc370, %if.end303
  %243 = load ptr, ptr %pDestIdx, align 8
  %tobool306 = icmp ne ptr %243, null
  br i1 %tobool306, label %for.body307, label %for.end372

for.body307:                                      ; preds = %for.cond305
  store i8 0, ptr %idxInsFlags, align 1
  %244 = load ptr, ptr %pSrc, align 8
  %pIndex308 = getelementptr inbounds nuw %struct.Table, ptr %244, i32 0, i32 2
  %245 = load ptr, ptr %pIndex308, align 8
  store ptr %245, ptr %pSrcIdx, align 8
  br label %for.cond309

for.cond309:                                      ; preds = %for.inc316, %for.body307
  %246 = load ptr, ptr %pSrcIdx, align 8
  %tobool310 = icmp ne ptr %246, null
  br i1 %tobool310, label %for.body311, label %for.end318

for.body311:                                      ; preds = %for.cond309
  %247 = load ptr, ptr %pDestIdx, align 8
  %248 = load ptr, ptr %pSrcIdx, align 8
  %call312 = call i32 @xferCompatibleIndex(ptr noundef %247, ptr noundef %248)
  %tobool313 = icmp ne i32 %call312, 0
  br i1 %tobool313, label %if.then314, label %if.end315

if.then314:                                       ; preds = %for.body311
  br label %for.end318

if.end315:                                        ; preds = %for.body311
  br label %for.inc316

for.inc316:                                       ; preds = %if.end315
  %249 = load ptr, ptr %pSrcIdx, align 8
  %pNext317 = getelementptr inbounds nuw %struct.Index, ptr %249, i32 0, i32 5
  %250 = load ptr, ptr %pNext317, align 8
  store ptr %250, ptr %pSrcIdx, align 8
  br label %for.cond309, !llvm.loop !10

for.end318:                                       ; preds = %if.then314, %for.cond309
  %251 = load ptr, ptr %v, align 8
  %252 = load i32, ptr %iSrc, align 4
  %253 = load ptr, ptr %pSrcIdx, align 8
  %tnum319 = getelementptr inbounds nuw %struct.Index, ptr %253, i32 0, i32 11
  %254 = load i32, ptr %tnum319, align 8
  %255 = load i32, ptr %iDbSrc, align 4
  %call320 = call i32 @sqlite3VdbeAddOp3(ptr noundef %251, i32 noundef 97, i32 noundef %252, i32 noundef %254, i32 noundef %255)
  %256 = load ptr, ptr %pParse.addr, align 8
  %257 = load ptr, ptr %pSrcIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %256, ptr noundef %257)
  %258 = load ptr, ptr %v, align 8
  %259 = load i32, ptr %iDest, align 4
  %260 = load ptr, ptr %pDestIdx, align 8
  %tnum321 = getelementptr inbounds nuw %struct.Index, ptr %260, i32 0, i32 11
  %261 = load i32, ptr %tnum321, align 8
  %262 = load i32, ptr %iDbDest.addr, align 4
  %call322 = call i32 @sqlite3VdbeAddOp3(ptr noundef %258, i32 noundef 98, i32 noundef %259, i32 noundef %261, i32 noundef %262)
  %263 = load ptr, ptr %pParse.addr, align 8
  %264 = load ptr, ptr %pDestIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %263, ptr noundef %264)
  %265 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %265, i16 noundef zeroext 1)
  %266 = load ptr, ptr %v, align 8
  %267 = load i32, ptr %iSrc, align 4
  %call323 = call i32 @sqlite3VdbeAddOp2(ptr noundef %266, i32 noundef 36, i32 noundef %267, i32 noundef 0)
  store i32 %call323, ptr %addr1, align 4
  %268 = load ptr, ptr %v, align 8
  %269 = load i32, ptr %iSrc, align 4
  %270 = load i32, ptr %regData, align 4
  %call324 = call i32 @sqlite3VdbeAddOp3(ptr noundef %268, i32 noundef 127, i32 noundef %269, i32 noundef %270, i32 noundef 1)
  %271 = load ptr, ptr %db, align 8
  %mDbFlags325 = getelementptr inbounds nuw %struct.sqlite3, ptr %271, i32 0, i32 6
  %272 = load i32, ptr %mDbFlags325, align 4
  %and326 = and i32 %272, 4
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %if.then328, label %if.end351

if.then328:                                       ; preds = %for.end318
  store i32 0, ptr %i, align 4
  br label %for.cond329

for.cond329:                                      ; preds = %for.inc341, %if.then328
  %273 = load i32, ptr %i, align 4
  %274 = load ptr, ptr %pSrcIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %274, i32 0, i32 14
  %275 = load i16, ptr %nColumn, align 8
  %conv330 = zext i16 %275 to i32
  %cmp331 = icmp slt i32 %273, %conv330
  br i1 %cmp331, label %for.body333, label %for.end343

for.body333:                                      ; preds = %for.cond329
  %276 = load ptr, ptr %pSrcIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %276, i32 0, i32 8
  %277 = load ptr, ptr %azColl, align 8
  %278 = load i32, ptr %i, align 4
  %idxprom335 = sext i32 %278 to i64
  %arrayidx336 = getelementptr inbounds ptr, ptr %277, i64 %idxprom335
  %279 = load ptr, ptr %arrayidx336, align 8
  store ptr %279, ptr %zColl334, align 8
  %280 = load ptr, ptr %zColl334, align 8
  %call337 = call i32 @sqlite3_stricmp(ptr noundef @sqlite3StrBINARY, ptr noundef %280)
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then339, label %if.end340

if.then339:                                       ; preds = %for.body333
  br label %for.end343

if.end340:                                        ; preds = %for.body333
  br label %for.inc341

for.inc341:                                       ; preds = %if.end340
  %281 = load i32, ptr %i, align 4
  %inc342 = add nsw i32 %281, 1
  store i32 %inc342, ptr %i, align 4
  br label %for.cond329, !llvm.loop !11

for.end343:                                       ; preds = %if.then339, %for.cond329
  %282 = load i32, ptr %i, align 4
  %283 = load ptr, ptr %pSrcIdx, align 8
  %nColumn344 = getelementptr inbounds nuw %struct.Index, ptr %283, i32 0, i32 14
  %284 = load i16, ptr %nColumn344, align 8
  %conv345 = zext i16 %284 to i32
  %cmp346 = icmp eq i32 %282, %conv345
  br i1 %cmp346, label %if.then348, label %if.end350

if.then348:                                       ; preds = %for.end343
  store i8 16, ptr %idxInsFlags, align 1
  %285 = load ptr, ptr %v, align 8
  %286 = load i32, ptr %iDest, align 4
  %call349 = call i32 @sqlite3VdbeAddOp1(ptr noundef %285, i32 noundef 130, i32 noundef %286)
  br label %if.end350

if.end350:                                        ; preds = %if.then348, %for.end343
  br label %if.end351

if.end351:                                        ; preds = %if.end350, %for.end318
  %287 = load ptr, ptr %pSrc, align 8
  %tabFlags352 = getelementptr inbounds nuw %struct.Table, ptr %287, i32 0, i32 9
  %288 = load i32, ptr %tabFlags352, align 8
  %and353 = and i32 %288, 32
  %cmp354 = icmp eq i32 %and353, 0
  br i1 %cmp354, label %if.end362, label %land.lhs.true356

land.lhs.true356:                                 ; preds = %if.end351
  %289 = load ptr, ptr %pDestIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %289, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp357 = icmp eq i32 %bf.cast, 2
  br i1 %cmp357, label %if.then359, label %if.end362

if.then359:                                       ; preds = %land.lhs.true356
  %290 = load i8, ptr %idxInsFlags, align 1
  %conv360 = zext i8 %290 to i32
  %or = or i32 %conv360, 1
  %conv361 = trunc i32 %or to i8
  store i8 %conv361, ptr %idxInsFlags, align 1
  br label %if.end362

if.end362:                                        ; preds = %if.then359, %land.lhs.true356, %if.end351
  %291 = load ptr, ptr %v, align 8
  %292 = load i32, ptr %iDest, align 4
  %293 = load i32, ptr %regData, align 4
  %call363 = call i32 @sqlite3VdbeAddOp2(ptr noundef %291, i32 noundef 132, i32 noundef %292, i32 noundef %293)
  %294 = load ptr, ptr %v, align 8
  %295 = load i8, ptr %idxInsFlags, align 1
  %conv364 = zext i8 %295 to i32
  %or365 = or i32 %conv364, 8
  %conv366 = trunc i32 %or365 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %294, i16 noundef zeroext %conv366)
  %296 = load ptr, ptr %v, align 8
  %297 = load i32, ptr %iSrc, align 4
  %298 = load i32, ptr %addr1, align 4
  %add = add nsw i32 %298, 1
  %call367 = call i32 @sqlite3VdbeAddOp2(ptr noundef %296, i32 noundef 5, i32 noundef %297, i32 noundef %add)
  %299 = load ptr, ptr %v, align 8
  %300 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %299, i32 noundef %300)
  %301 = load ptr, ptr %v, align 8
  %302 = load i32, ptr %iSrc, align 4
  %call368 = call i32 @sqlite3VdbeAddOp2(ptr noundef %301, i32 noundef 117, i32 noundef %302, i32 noundef 0)
  %303 = load ptr, ptr %v, align 8
  %304 = load i32, ptr %iDest, align 4
  %call369 = call i32 @sqlite3VdbeAddOp2(ptr noundef %303, i32 noundef 117, i32 noundef %304, i32 noundef 0)
  br label %for.inc370

for.inc370:                                       ; preds = %if.end362
  %305 = load ptr, ptr %pDestIdx, align 8
  %pNext371 = getelementptr inbounds nuw %struct.Index, ptr %305, i32 0, i32 5
  %306 = load ptr, ptr %pNext371, align 8
  store ptr %306, ptr %pDestIdx, align 8
  br label %for.cond305, !llvm.loop !12

for.end372:                                       ; preds = %for.cond305
  %307 = load i32, ptr %emptySrcTest, align 4
  %tobool373 = icmp ne i32 %307, 0
  br i1 %tobool373, label %if.then374, label %if.end375

if.then374:                                       ; preds = %for.end372
  %308 = load ptr, ptr %v, align 8
  %309 = load i32, ptr %emptySrcTest, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %308, i32 noundef %309)
  br label %if.end375

if.end375:                                        ; preds = %if.then374, %for.end372
  %310 = load ptr, ptr %pParse.addr, align 8
  %311 = load i32, ptr %regRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %310, i32 noundef %311)
  %312 = load ptr, ptr %pParse.addr, align 8
  %313 = load i32, ptr %regData, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %312, i32 noundef %313)
  %314 = load i32, ptr %emptyDestTest, align 4
  %tobool376 = icmp ne i32 %314, 0
  br i1 %tobool376, label %if.then377, label %if.else380

if.then377:                                       ; preds = %if.end375
  %315 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3AutoincrementEnd(ptr noundef %315)
  %316 = load ptr, ptr %v, align 8
  %call378 = call i32 @sqlite3VdbeAddOp2(ptr noundef %316, i32 noundef 69, i32 noundef 0, i32 noundef 0)
  %317 = load ptr, ptr %v, align 8
  %318 = load i32, ptr %emptyDestTest, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %317, i32 noundef %318)
  %319 = load ptr, ptr %v, align 8
  %320 = load i32, ptr %iDest, align 4
  %call379 = call i32 @sqlite3VdbeAddOp2(ptr noundef %319, i32 noundef 117, i32 noundef %320, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else380:                                       ; preds = %if.end375
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else380, %if.then377, %if.then225, %if.then219, %if.then211, %if.then200, %if.then185, %if.then161, %if.then139, %if.then132, %if.then126, %if.then111, %if.then103, %if.then96, %if.then92, %if.then88, %if.then77, %if.then69, %if.then62, %if.then55, %if.then50, %if.then47, %if.then44, %if.then41, %if.then38, %if.then35, %if.then32, %if.then27, %if.then10, %if.then7, %if.then4, %if.then
  %321 = load i32, ptr %retval, align 4
  ret i32 %321
}

; Function Attrs: nounwind uwtable
declare hidden i32 @autoIncBegin(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @autoIncStep(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @xferCompatibleIndex(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
