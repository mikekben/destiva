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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthReadCol(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fkChildIsModified(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fkParentIsModified(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FkCheck(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %regOld, i32 noundef %regNew, ptr noundef %aChange, i32 noundef %bChngRowid) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %regOld.addr = alloca i32, align 4
  %regNew.addr = alloca i32, align 4
  %aChange.addr = alloca ptr, align 8
  %bChngRowid.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %pFKey = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %isIgnoreErrors = alloca i32, align 4
  %pTo = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %aiFree = alloca ptr, align 8
  %aiCol = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %i = alloca i32, align 4
  %bIgnore = alloca i32, align 4
  %v = alloca ptr, align 8
  %iJump = alloca i32, align 4
  %iReg = alloca i32, align 4
  %rcauth = alloca i32, align 4
  %zCol = alloca ptr, align 8
  %pIdx112 = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %aiCol113 = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %eAction = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %regOld, ptr %regOld.addr, align 4
  store i32 %regNew, ptr %regNew.addr, align 4
  store ptr %aChange, ptr %aChange.addr, align 8
  store i32 %bChngRowid, ptr %bChngRowid.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 44
  %3 = load i8, ptr %disableTriggers, align 2
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %isIgnoreErrors, align 4
  %4 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 7
  %5 = load i64, ptr %flags, align 8
  %and = and i64 %5, 16384
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end181

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 20
  %8 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %6, ptr noundef %8)
  store i32 %call, ptr %iDb, align 4
  %9 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %aDb, align 8
  %11 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %10, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %12 = load ptr, ptr %zDbSName, align 8
  store ptr %12, ptr %zDb, align 8
  %13 = load ptr, ptr %pTab.addr, align 8
  %pFKey3 = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pFKey3, align 8
  store ptr %14, ptr %pFKey, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc106, %if.end
  %15 = load ptr, ptr %pFKey, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %for.body, label %for.end107

for.body:                                         ; preds = %for.cond
  store ptr null, ptr %pIdx, align 8
  store ptr null, ptr %aiFree, align 8
  store i32 0, ptr %bIgnore, align 4
  %16 = load ptr, ptr %aChange.addr, align 8
  %tobool4 = icmp ne ptr %16, null
  br i1 %tobool4, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %17 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zName, align 8
  %19 = load ptr, ptr %pFKey, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %zTo, align 8
  %call5 = call i32 @sqlite3_stricmp(ptr noundef %18, ptr noundef %20)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true8, label %if.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %21 = load ptr, ptr %pTab.addr, align 8
  %22 = load ptr, ptr %pFKey, align 8
  %23 = load ptr, ptr %aChange.addr, align 8
  %24 = load i32, ptr %bChngRowid.addr, align 4
  %call9 = call i32 @fkChildIsModified(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %24)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true8
  br label %for.inc106

if.end13:                                         ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  %25 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers14 = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 44
  %26 = load i8, ptr %disableTriggers14, align 2
  %tobool15 = icmp ne i8 %26, 0
  br i1 %tobool15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %27 = load ptr, ptr %db, align 8
  %28 = load ptr, ptr %pFKey, align 8
  %zTo17 = getelementptr inbounds nuw %struct.FKey, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %zTo17, align 8
  %30 = load ptr, ptr %zDb, align 8
  %call18 = call ptr @sqlite3FindTable(ptr noundef %27, ptr noundef %29, ptr noundef %30)
  store ptr %call18, ptr %pTo, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end13
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pFKey, align 8
  %zTo19 = getelementptr inbounds nuw %struct.FKey, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %zTo19, align 8
  %34 = load ptr, ptr %zDb, align 8
  %call20 = call ptr @sqlite3LocateTable(ptr noundef %31, i32 noundef 0, ptr noundef %33, ptr noundef %34)
  store ptr %call20, ptr %pTo, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %35 = load ptr, ptr %pTo, align 8
  %tobool22 = icmp ne ptr %35, null
  br i1 %tobool22, label %lor.lhs.false, label %if.then25

lor.lhs.false:                                    ; preds = %if.end21
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load ptr, ptr %pTo, align 8
  %38 = load ptr, ptr %pFKey, align 8
  %call23 = call i32 @sqlite3FkLocateIndex(ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %pIdx, ptr noundef %aiFree)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end51

if.then25:                                        ; preds = %lor.lhs.false, %if.end21
  %39 = load i32, ptr %isIgnoreErrors, align 4
  %tobool26 = icmp ne i32 %39, 0
  br i1 %tobool26, label %lor.lhs.false27, label %if.then30

lor.lhs.false27:                                  ; preds = %if.then25
  %40 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 19
  %41 = load i8, ptr %mallocFailed, align 1
  %conv28 = zext i8 %41 to i32
  %tobool29 = icmp ne i32 %conv28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27, %if.then25
  br label %for.end181

if.end31:                                         ; preds = %lor.lhs.false27
  %42 = load ptr, ptr %pTo, align 8
  %cmp32 = icmp eq ptr %42, null
  br i1 %cmp32, label %if.then34, label %if.end50

if.then34:                                        ; preds = %if.end31
  %43 = load ptr, ptr %pParse.addr, align 8
  %call35 = call ptr @sqlite3GetVdbe(ptr noundef %43)
  store ptr %call35, ptr %v, align 8
  %44 = load ptr, ptr %v, align 8
  %call36 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %44)
  %45 = load ptr, ptr %pFKey, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %nCol, align 8
  %add = add nsw i32 %call36, %46
  %add37 = add nsw i32 %add, 1
  store i32 %add37, ptr %iJump, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.then34
  %47 = load i32, ptr %i, align 4
  %48 = load ptr, ptr %pFKey, align 8
  %nCol39 = getelementptr inbounds nuw %struct.FKey, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %nCol39, align 8
  %cmp40 = icmp slt i32 %47, %49
  br i1 %cmp40, label %for.body42, label %for.end

for.body42:                                       ; preds = %for.cond38
  %50 = load ptr, ptr %pFKey, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %50, i32 0, i32 9
  %51 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 %idxprom43
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx44, i32 0, i32 0
  %52 = load i32, ptr %iFrom, align 8
  %53 = load i32, ptr %regOld.addr, align 4
  %add45 = add nsw i32 %52, %53
  %add46 = add nsw i32 %add45, 1
  store i32 %add46, ptr %iReg, align 4
  %54 = load ptr, ptr %v, align 8
  %55 = load i32, ptr %iReg, align 4
  %56 = load i32, ptr %iJump, align 4
  %call47 = call i32 @sqlite3VdbeAddOp2(ptr noundef %54, i32 noundef 50, i32 noundef %55, i32 noundef %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body42
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond38, !llvm.loop !6

for.end:                                          ; preds = %for.cond38
  %58 = load ptr, ptr %v, align 8
  %59 = load ptr, ptr %pFKey, align 8
  %isDeferred = getelementptr inbounds nuw %struct.FKey, ptr %59, i32 0, i32 6
  %60 = load i8, ptr %isDeferred, align 4
  %conv48 = zext i8 %60 to i32
  %call49 = call i32 @sqlite3VdbeAddOp2(ptr noundef %58, i32 noundef 150, i32 noundef %conv48, i32 noundef -1)
  br label %if.end50

if.end50:                                         ; preds = %for.end, %if.end31
  br label %for.inc106

if.end51:                                         ; preds = %lor.lhs.false
  %61 = load ptr, ptr %aiFree, align 8
  %tobool52 = icmp ne ptr %61, null
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.end51
  %62 = load ptr, ptr %aiFree, align 8
  store ptr %62, ptr %aiCol, align 8
  br label %if.end58

if.else54:                                        ; preds = %if.end51
  %63 = load ptr, ptr %pFKey, align 8
  %aCol55 = getelementptr inbounds nuw %struct.FKey, ptr %63, i32 0, i32 9
  %arrayidx56 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol55, i64 0, i64 0
  %iFrom57 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx56, i32 0, i32 0
  %64 = load i32, ptr %iFrom57, align 8
  store i32 %64, ptr %iCol, align 4
  store ptr %iCol, ptr %aiCol, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then53
  store i32 0, ptr %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc90, %if.end58
  %65 = load i32, ptr %i, align 4
  %66 = load ptr, ptr %pFKey, align 8
  %nCol60 = getelementptr inbounds nuw %struct.FKey, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %nCol60, align 8
  %cmp61 = icmp slt i32 %65, %67
  br i1 %cmp61, label %for.body63, label %for.end92

for.body63:                                       ; preds = %for.cond59
  %68 = load ptr, ptr %aiCol, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %69 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %68, i64 %idxprom64
  %70 = load i32, ptr %arrayidx65, align 4
  %71 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %71, i32 0, i32 10
  %72 = load i16, ptr %iPKey, align 4
  %conv66 = sext i16 %72 to i32
  %cmp67 = icmp eq i32 %70, %conv66
  br i1 %cmp67, label %if.then69, label %if.end72

if.then69:                                        ; preds = %for.body63
  %73 = load ptr, ptr %aiCol, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %74 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %73, i64 %idxprom70
  store i32 -1, ptr %arrayidx71, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %for.body63
  %75 = load ptr, ptr %db, align 8
  %xAuth = getelementptr inbounds nuw %struct.sqlite3, ptr %75, i32 0, i32 62
  %76 = load ptr, ptr %xAuth, align 8
  %tobool73 = icmp ne ptr %76, null
  br i1 %tobool73, label %if.then74, label %if.end89

if.then74:                                        ; preds = %if.end72
  %77 = load ptr, ptr %pTo, align 8
  %aCol75 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %aCol75, align 8
  %79 = load ptr, ptr %pIdx, align 8
  %tobool76 = icmp ne ptr %79, null
  br i1 %tobool76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then74
  %80 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %aiColumn, align 8
  %82 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %82 to i64
  %arrayidx78 = getelementptr inbounds i16, ptr %81, i64 %idxprom77
  %83 = load i16, ptr %arrayidx78, align 2
  %conv79 = sext i16 %83 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then74
  %84 = load ptr, ptr %pTo, align 8
  %iPKey80 = getelementptr inbounds nuw %struct.Table, ptr %84, i32 0, i32 10
  %85 = load i16, ptr %iPKey80, align 4
  %conv81 = sext i16 %85 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv79, %cond.true ], [ %conv81, %cond.false ]
  %idxprom82 = sext i32 %cond to i64
  %arrayidx83 = getelementptr inbounds %struct.Column, ptr %78, i64 %idxprom82
  %zName84 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx83, i32 0, i32 0
  %86 = load ptr, ptr %zName84, align 8
  store ptr %86, ptr %zCol, align 8
  %87 = load ptr, ptr %pParse.addr, align 8
  %88 = load ptr, ptr %pTo, align 8
  %zName85 = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %zName85, align 8
  %90 = load ptr, ptr %zCol, align 8
  %91 = load i32, ptr %iDb, align 4
  %call86 = call i32 @sqlite3AuthReadCol(ptr noundef %87, ptr noundef %89, ptr noundef %90, i32 noundef %91)
  store i32 %call86, ptr %rcauth, align 4
  %92 = load i32, ptr %rcauth, align 4
  %cmp87 = icmp eq i32 %92, 2
  %conv88 = zext i1 %cmp87 to i32
  store i32 %conv88, ptr %bIgnore, align 4
  br label %if.end89

if.end89:                                         ; preds = %cond.end, %if.end72
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %93 = load i32, ptr %i, align 4
  %inc91 = add nsw i32 %93, 1
  store i32 %inc91, ptr %i, align 4
  br label %for.cond59, !llvm.loop !8

for.end92:                                        ; preds = %for.cond59
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load i32, ptr %iDb, align 4
  %96 = load ptr, ptr %pTo, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %96, i32 0, i32 7
  %97 = load i32, ptr %tnum, align 8
  %98 = load ptr, ptr %pTo, align 8
  %zName93 = getelementptr inbounds nuw %struct.Table, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %zName93, align 8
  call void @sqlite3TableLock(ptr noundef %94, i32 noundef %95, i32 noundef %97, i8 noundef zeroext 0, ptr noundef %99)
  %100 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %100, i32 0, i32 17
  %101 = load i32, ptr %nTab, align 4
  %inc94 = add nsw i32 %101, 1
  store i32 %inc94, ptr %nTab, align 4
  %102 = load i32, ptr %regOld.addr, align 4
  %cmp95 = icmp ne i32 %102, 0
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %for.end92
  %103 = load ptr, ptr %pParse.addr, align 8
  %104 = load i32, ptr %iDb, align 4
  %105 = load ptr, ptr %pTo, align 8
  %106 = load ptr, ptr %pIdx, align 8
  %107 = load ptr, ptr %pFKey, align 8
  %108 = load ptr, ptr %aiCol, align 8
  %109 = load i32, ptr %regOld.addr, align 4
  %110 = load i32, ptr %bIgnore, align 4
  call void @fkLookupParent(ptr noundef %103, i32 noundef %104, ptr noundef %105, ptr noundef %106, ptr noundef %107, ptr noundef %108, i32 noundef %109, i32 noundef -1, i32 noundef %110)
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %for.end92
  %111 = load i32, ptr %regNew.addr, align 4
  %cmp99 = icmp ne i32 %111, 0
  br i1 %cmp99, label %land.lhs.true101, label %if.end105

land.lhs.true101:                                 ; preds = %if.end98
  %112 = load ptr, ptr %pParse.addr, align 8
  %113 = load ptr, ptr %pFKey, align 8
  %call102 = call i32 @isSetNullAction(ptr noundef %112, ptr noundef %113)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end105, label %if.then104

if.then104:                                       ; preds = %land.lhs.true101
  %114 = load ptr, ptr %pParse.addr, align 8
  %115 = load i32, ptr %iDb, align 4
  %116 = load ptr, ptr %pTo, align 8
  %117 = load ptr, ptr %pIdx, align 8
  %118 = load ptr, ptr %pFKey, align 8
  %119 = load ptr, ptr %aiCol, align 8
  %120 = load i32, ptr %regNew.addr, align 4
  %121 = load i32, ptr %bIgnore, align 4
  call void @fkLookupParent(ptr noundef %114, i32 noundef %115, ptr noundef %116, ptr noundef %117, ptr noundef %118, ptr noundef %119, i32 noundef %120, i32 noundef 1, i32 noundef %121)
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %land.lhs.true101, %if.end98
  %122 = load ptr, ptr %db, align 8
  %123 = load ptr, ptr %aiFree, align 8
  call void @sqlite3DbFree(ptr noundef %122, ptr noundef %123)
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105, %if.end50, %if.then12
  %124 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %pNextFrom, align 8
  store ptr %125, ptr %pFKey, align 8
  br label %for.cond, !llvm.loop !9

for.end107:                                       ; preds = %for.cond
  %126 = load ptr, ptr %pTab.addr, align 8
  %call108 = call ptr @sqlite3FkReferences(ptr noundef %126)
  store ptr %call108, ptr %pFKey, align 8
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc180, %for.end107
  %127 = load ptr, ptr %pFKey, align 8
  %tobool110 = icmp ne ptr %127, null
  br i1 %tobool110, label %for.body111, label %for.end181

for.body111:                                      ; preds = %for.cond109
  store ptr null, ptr %pIdx112, align 8
  store ptr null, ptr %aiCol113, align 8
  %128 = load ptr, ptr %aChange.addr, align 8
  %tobool114 = icmp ne ptr %128, null
  br i1 %tobool114, label %land.lhs.true115, label %if.end120

land.lhs.true115:                                 ; preds = %for.body111
  %129 = load ptr, ptr %pTab.addr, align 8
  %130 = load ptr, ptr %pFKey, align 8
  %131 = load ptr, ptr %aChange.addr, align 8
  %132 = load i32, ptr %bChngRowid.addr, align 4
  %call116 = call i32 @fkParentIsModified(ptr noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132)
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then119, label %if.end120

if.then119:                                       ; preds = %land.lhs.true115
  br label %for.inc180

if.end120:                                        ; preds = %land.lhs.true115, %for.body111
  %133 = load ptr, ptr %pFKey, align 8
  %isDeferred121 = getelementptr inbounds nuw %struct.FKey, ptr %133, i32 0, i32 6
  %134 = load i8, ptr %isDeferred121, align 4
  %tobool122 = icmp ne i8 %134, 0
  br i1 %tobool122, label %if.end132, label %land.lhs.true123

land.lhs.true123:                                 ; preds = %if.end120
  %135 = load ptr, ptr %db, align 8
  %flags124 = getelementptr inbounds nuw %struct.sqlite3, ptr %135, i32 0, i32 7
  %136 = load i64, ptr %flags124, align 8
  %and125 = and i64 %136, 524288
  %tobool126 = icmp ne i64 %and125, 0
  br i1 %tobool126, label %if.end132, label %land.lhs.true127

land.lhs.true127:                                 ; preds = %land.lhs.true123
  %137 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %137, i32 0, i32 35
  %138 = load ptr, ptr %pToplevel, align 8
  %tobool128 = icmp ne ptr %138, null
  br i1 %tobool128, label %if.end132, label %land.lhs.true129

land.lhs.true129:                                 ; preds = %land.lhs.true127
  %139 = load ptr, ptr %pParse.addr, align 8
  %isMultiWrite = getelementptr inbounds nuw %struct.Parse, ptr %139, i32 0, i32 8
  %140 = load i8, ptr %isMultiWrite, align 8
  %tobool130 = icmp ne i8 %140, 0
  br i1 %tobool130, label %if.end132, label %if.then131

if.then131:                                       ; preds = %land.lhs.true129
  br label %for.inc180

if.end132:                                        ; preds = %land.lhs.true129, %land.lhs.true127, %land.lhs.true123, %if.end120
  %141 = load ptr, ptr %pParse.addr, align 8
  %142 = load ptr, ptr %pTab.addr, align 8
  %143 = load ptr, ptr %pFKey, align 8
  %call133 = call i32 @sqlite3FkLocateIndex(ptr noundef %141, ptr noundef %142, ptr noundef %143, ptr noundef %pIdx112, ptr noundef %aiCol113)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then135, label %if.end143

if.then135:                                       ; preds = %if.end132
  %144 = load i32, ptr %isIgnoreErrors, align 4
  %tobool136 = icmp ne i32 %144, 0
  br i1 %tobool136, label %lor.lhs.false137, label %if.then141

lor.lhs.false137:                                 ; preds = %if.then135
  %145 = load ptr, ptr %db, align 8
  %mallocFailed138 = getelementptr inbounds nuw %struct.sqlite3, ptr %145, i32 0, i32 19
  %146 = load i8, ptr %mallocFailed138, align 1
  %conv139 = zext i8 %146 to i32
  %tobool140 = icmp ne i32 %conv139, 0
  br i1 %tobool140, label %if.then141, label %if.end142

if.then141:                                       ; preds = %lor.lhs.false137, %if.then135
  br label %for.end181

if.end142:                                        ; preds = %lor.lhs.false137
  br label %for.inc180

if.end143:                                        ; preds = %if.end132
  %147 = load ptr, ptr %pParse.addr, align 8
  %call144 = call ptr @sqlite3SrcListAppend(ptr noundef %147, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %call144, ptr %pSrc, align 8
  %148 = load ptr, ptr %pSrc, align 8
  %tobool145 = icmp ne ptr %148, null
  br i1 %tobool145, label %if.then146, label %if.end179

if.then146:                                       ; preds = %if.end143
  %149 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %149, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %150 = load ptr, ptr %pFKey, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %pFrom, align 8
  %152 = load ptr, ptr %pItem, align 8
  %pTab147 = getelementptr inbounds nuw %struct.SrcList_item, ptr %152, i32 0, i32 4
  store ptr %151, ptr %pTab147, align 8
  %153 = load ptr, ptr %pFKey, align 8
  %pFrom148 = getelementptr inbounds nuw %struct.FKey, ptr %153, i32 0, i32 0
  %154 = load ptr, ptr %pFrom148, align 8
  %zName149 = getelementptr inbounds nuw %struct.Table, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %zName149, align 8
  %156 = load ptr, ptr %pItem, align 8
  %zName150 = getelementptr inbounds nuw %struct.SrcList_item, ptr %156, i32 0, i32 2
  store ptr %155, ptr %zName150, align 8
  %157 = load ptr, ptr %pItem, align 8
  %pTab151 = getelementptr inbounds nuw %struct.SrcList_item, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %pTab151, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %158, i32 0, i32 8
  %159 = load i32, ptr %nTabRef, align 4
  %inc152 = add i32 %159, 1
  store i32 %inc152, ptr %nTabRef, align 4
  %160 = load ptr, ptr %pParse.addr, align 8
  %nTab153 = getelementptr inbounds nuw %struct.Parse, ptr %160, i32 0, i32 17
  %161 = load i32, ptr %nTab153, align 4
  %inc154 = add nsw i32 %161, 1
  store i32 %inc154, ptr %nTab153, align 4
  %162 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %162, i32 0, i32 10
  store i32 %161, ptr %iCursor, align 8
  %163 = load i32, ptr %regNew.addr, align 4
  %cmp155 = icmp ne i32 %163, 0
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %if.then146
  %164 = load ptr, ptr %pParse.addr, align 8
  %165 = load ptr, ptr %pSrc, align 8
  %166 = load ptr, ptr %pTab.addr, align 8
  %167 = load ptr, ptr %pIdx112, align 8
  %168 = load ptr, ptr %pFKey, align 8
  %169 = load ptr, ptr %aiCol113, align 8
  %170 = load i32, ptr %regNew.addr, align 4
  call void @fkScanChildren(ptr noundef %164, ptr noundef %165, ptr noundef %166, ptr noundef %167, ptr noundef %168, ptr noundef %169, i32 noundef %170, i32 noundef -1)
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.then146
  %171 = load i32, ptr %regOld.addr, align 4
  %cmp159 = icmp ne i32 %171, 0
  br i1 %cmp159, label %if.then161, label %if.end177

if.then161:                                       ; preds = %if.end158
  %172 = load ptr, ptr %pFKey, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %172, i32 0, i32 7
  %173 = load ptr, ptr %aChange.addr, align 8
  %cmp162 = icmp ne ptr %173, null
  %conv163 = zext i1 %cmp162 to i32
  %idxprom164 = sext i32 %conv163 to i64
  %arrayidx165 = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 %idxprom164
  %174 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %174 to i32
  store i32 %conv166, ptr %eAction, align 4
  %175 = load ptr, ptr %pParse.addr, align 8
  %176 = load ptr, ptr %pSrc, align 8
  %177 = load ptr, ptr %pTab.addr, align 8
  %178 = load ptr, ptr %pIdx112, align 8
  %179 = load ptr, ptr %pFKey, align 8
  %180 = load ptr, ptr %aiCol113, align 8
  %181 = load i32, ptr %regOld.addr, align 4
  call void @fkScanChildren(ptr noundef %175, ptr noundef %176, ptr noundef %177, ptr noundef %178, ptr noundef %179, ptr noundef %180, i32 noundef %181, i32 noundef 1)
  %182 = load ptr, ptr %pFKey, align 8
  %isDeferred167 = getelementptr inbounds nuw %struct.FKey, ptr %182, i32 0, i32 6
  %183 = load i8, ptr %isDeferred167, align 4
  %tobool168 = icmp ne i8 %183, 0
  br i1 %tobool168, label %if.end176, label %land.lhs.true169

land.lhs.true169:                                 ; preds = %if.then161
  %184 = load i32, ptr %eAction, align 4
  %cmp170 = icmp ne i32 %184, 10
  br i1 %cmp170, label %land.lhs.true172, label %if.end176

land.lhs.true172:                                 ; preds = %land.lhs.true169
  %185 = load i32, ptr %eAction, align 4
  %cmp173 = icmp ne i32 %185, 8
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %land.lhs.true172
  %186 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %186)
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %land.lhs.true172, %land.lhs.true169, %if.then161
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end158
  %187 = load ptr, ptr %pItem, align 8
  %zName178 = getelementptr inbounds nuw %struct.SrcList_item, ptr %187, i32 0, i32 2
  store ptr null, ptr %zName178, align 8
  %188 = load ptr, ptr %db, align 8
  %189 = load ptr, ptr %pSrc, align 8
  call void @sqlite3SrcListDelete(ptr noundef %188, ptr noundef %189)
  br label %if.end179

if.end179:                                        ; preds = %if.end177, %if.end143
  %190 = load ptr, ptr %db, align 8
  %191 = load ptr, ptr %aiCol113, align 8
  call void @sqlite3DbFree(ptr noundef %190, ptr noundef %191)
  br label %for.inc180

for.inc180:                                       ; preds = %if.end179, %if.end142, %if.then131, %if.then119
  %192 = load ptr, ptr %pFKey, align 8
  %pNextTo = getelementptr inbounds nuw %struct.FKey, ptr %192, i32 0, i32 3
  %193 = load ptr, ptr %pNextTo, align 8
  store ptr %193, ptr %pFKey, align 8
  br label %for.cond109, !llvm.loop !10

for.end181:                                       ; preds = %if.then141, %for.cond109, %if.then30, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkLocateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @fkLookupParent(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isSetNullAction(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @fkScanChildren(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
