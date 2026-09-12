; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HaltConstraint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfTrue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableAffinity(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MultiWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UniqueConstraint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalseDup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeCopy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggersExist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkRequired(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateRowDelete(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateRowIndexDelete(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3GenerateConstraintChecks(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %aRegIdx, i32 noundef %iDataCur, i32 noundef %iIdxCur, i32 noundef %regNewData, i32 noundef %regOldData, i8 noundef zeroext %pkChng, i8 noundef zeroext %overrideError, i32 noundef %ignoreDest, ptr noundef %pbMayReplace, ptr noundef %aiChng, ptr noundef %pUpsert) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %aRegIdx.addr = alloca ptr, align 8
  %iDataCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %regNewData.addr = alloca i32, align 4
  %regOldData.addr = alloca i32, align 4
  %pkChng.addr = alloca i8, align 1
  %overrideError.addr = alloca i8, align 1
  %ignoreDest.addr = alloca i32, align 4
  %pbMayReplace.addr = alloca ptr, align 8
  %aiChng.addr = alloca ptr, align 8
  %pUpsert.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %ix = alloca i32, align 4
  %nCol = alloca i32, align 4
  %onError = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %seenReplace = alloca i32, align 4
  %nPkField = alloca i32, align 4
  %pUpIdx = alloca ptr, align 8
  %isUpdate = alloca i8, align 1
  %bAffinityDone = alloca i8, align 1
  %upsertBypass = alloca i32, align 4
  %upsertJump = alloca i32, align 4
  %ipkTop = alloca i32, align 4
  %ipkBottom = alloca i32, align 4
  %zMsg = alloca ptr, align 8
  %pCheck82 = alloca ptr, align 8
  %allOk = alloca i32, align 4
  %pExpr = alloca ptr, align 8
  %zName109 = alloca ptr, align 8
  %addrRowidOk = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %regIdx = alloca i32, align 4
  %regR = alloca i32, align 4
  %iThisCur = alloca i32, align 4
  %addrUniqueOk = alloca i32, align 4
  %iField = alloca i32, align 4
  %x = alloca i32, align 4
  %x410 = alloca i32, align 4
  %addrJump = alloca i32, align 4
  %op = alloca i32, align 4
  %regCmp = alloca i32, align 4
  %p4 = alloca ptr, align 8
  %pTrigger479 = alloca ptr, align 8
  %regRec = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %aRegIdx, ptr %aRegIdx.addr, align 8
  store i32 %iDataCur, ptr %iDataCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  store i32 %regNewData, ptr %regNewData.addr, align 4
  store i32 %regOldData, ptr %regOldData.addr, align 4
  store i8 %pkChng, ptr %pkChng.addr, align 1
  store i8 %overrideError, ptr %overrideError.addr, align 1
  store i32 %ignoreDest, ptr %ignoreDest.addr, align 4
  store ptr %pbMayReplace, ptr %pbMayReplace.addr, align 8
  store ptr %aiChng, ptr %aiChng.addr, align 8
  store ptr %pUpsert, ptr %pUpsert.addr, align 8
  store ptr null, ptr %pPk, align 8
  store i32 0, ptr %seenReplace, align 4
  store ptr null, ptr %pUpIdx, align 8
  store i8 0, ptr %bAffinityDone, align 1
  store i32 0, ptr %upsertBypass, align 4
  store i32 0, ptr %upsertJump, align 4
  store i32 0, ptr %ipkTop, align 4
  store i32 0, ptr %ipkBottom, align 4
  %0 = load i32, ptr %regOldData.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  %conv1 = trunc i32 %conv to i8
  store i8 %conv1, ptr %isUpdate, align 1
  %1 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %db2, align 8
  store ptr %2, ptr %db, align 8
  %3 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %3)
  store ptr %call, ptr %v, align 8
  %4 = load ptr, ptr %pTab.addr, align 8
  %nCol3 = getelementptr inbounds nuw %struct.Table, ptr %4, i32 0, i32 11
  %5 = load i16, ptr %nCol3, align 2
  %conv4 = sext i16 %5 to i32
  store i32 %conv4, ptr %nCol, align 4
  %6 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %tabFlags, align 8
  %and = and i32 %7, 32
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr null, ptr %pPk, align 8
  store i32 1, ptr %nPkField, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pTab.addr, align 8
  %call7 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %8)
  store ptr %call7, ptr %pPk, align 8
  %9 = load ptr, ptr %pPk, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 13
  %10 = load i16, ptr %nKeyCol, align 2
  %conv8 = zext i16 %10 to i32
  store i32 %conv8, ptr %nPkField, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nCol, align 4
  %cmp9 = icmp slt i32 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 10
  %15 = load i16, ptr %iPKey, align 4
  %conv11 = sext i16 %15 to i32
  %cmp12 = icmp eq i32 %13, %conv11
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %16 = load ptr, ptr %aiChng.addr, align 8
  %tobool = icmp ne ptr %16, null
  br i1 %tobool, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end15
  %17 = load ptr, ptr %aiChng.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %17, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4
  %cmp16 = icmp slt i32 %19, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true, %if.end15
  %20 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %aCol, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.Column, ptr %21, i64 %idxprom20
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx21, i32 0, i32 3
  %23 = load i8, ptr %notNull, align 8
  %conv22 = zext i8 %23 to i32
  store i32 %conv22, ptr %onError, align 4
  %24 = load i32, ptr %onError, align 4
  %cmp23 = icmp eq i32 %24, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end19
  br label %for.inc

if.end26:                                         ; preds = %if.end19
  %25 = load i8, ptr %overrideError.addr, align 1
  %conv27 = zext i8 %25 to i32
  %cmp28 = icmp ne i32 %conv27, 11
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.end26
  %26 = load i8, ptr %overrideError.addr, align 1
  %conv31 = zext i8 %26 to i32
  store i32 %conv31, ptr %onError, align 4
  br label %if.end37

if.else32:                                        ; preds = %if.end26
  %27 = load i32, ptr %onError, align 4
  %cmp33 = icmp eq i32 %27, 11
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else32
  store i32 2, ptr %onError, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.else32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then30
  %28 = load i32, ptr %onError, align 4
  %cmp38 = icmp eq i32 %28, 5
  br i1 %cmp38, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.end37
  %29 = load ptr, ptr %pTab.addr, align 8
  %aCol41 = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %aCol41, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %31 to i64
  %arrayidx43 = getelementptr inbounds %struct.Column, ptr %30, i64 %idxprom42
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %arrayidx43, i32 0, i32 1
  %32 = load ptr, ptr %pDflt, align 8
  %cmp44 = icmp eq ptr %32, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %land.lhs.true40
  store i32 2, ptr %onError, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %land.lhs.true40, %if.end37
  store i32 0, ptr %addr1, align 4
  %33 = load i32, ptr %onError, align 4
  switch i32 %33, label %sw.default [
    i32 5, label %sw.bb
    i32 2, label %sw.bb60
    i32 1, label %sw.bb61
    i32 3, label %sw.bb61
  ]

sw.bb:                                            ; preds = %if.end47
  %34 = load ptr, ptr %pParse.addr, align 8
  %call48 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %34)
  store i32 %call48, ptr %addr1, align 4
  %35 = load ptr, ptr %v, align 8
  %36 = load i32, ptr %regNewData.addr, align 4
  %add = add nsw i32 %36, 1
  %37 = load i32, ptr %i, align 4
  %add49 = add nsw i32 %add, %37
  %38 = load i32, ptr %addr1, align 4
  %call50 = call i32 @sqlite3VdbeAddOp2(ptr noundef %35, i32 noundef 51, i32 noundef %add49, i32 noundef %38)
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load ptr, ptr %pTab.addr, align 8
  %aCol51 = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aCol51, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds %struct.Column, ptr %41, i64 %idxprom52
  %pDflt54 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx53, i32 0, i32 1
  %43 = load ptr, ptr %pDflt54, align 8
  %44 = load i32, ptr %regNewData.addr, align 4
  %add55 = add nsw i32 %44, 1
  %45 = load i32, ptr %i, align 4
  %add56 = add nsw i32 %add55, %45
  call void @sqlite3ExprCode(ptr noundef %39, ptr noundef %43, i32 noundef %add56)
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %regNewData.addr, align 4
  %add57 = add nsw i32 %47, 1
  %48 = load i32, ptr %i, align 4
  %add58 = add nsw i32 %add57, %48
  %49 = load i32, ptr %addr1, align 4
  %call59 = call i32 @sqlite3VdbeAddOp2(ptr noundef %46, i32 noundef 51, i32 noundef %add58, i32 noundef %49)
  store i32 2, ptr %onError, align 4
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb, %if.end47
  %50 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %50)
  br label %sw.bb61

sw.bb61:                                          ; preds = %sw.bb60, %if.end47, %if.end47
  %51 = load ptr, ptr %db, align 8
  %52 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %zName, align 8
  %54 = load ptr, ptr %pTab.addr, align 8
  %aCol62 = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %aCol62, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %56 to i64
  %arrayidx64 = getelementptr inbounds %struct.Column, ptr %55, i64 %idxprom63
  %zName65 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx64, i32 0, i32 0
  %57 = load ptr, ptr %zName65, align 8
  %call66 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %51, ptr noundef @.str.530, ptr noundef %53, ptr noundef %57)
  store ptr %call66, ptr %zMsg, align 8
  %58 = load ptr, ptr %v, align 8
  %59 = load i32, ptr %onError, align 4
  %60 = load i32, ptr %regNewData.addr, align 4
  %add67 = add nsw i32 %60, 1
  %61 = load i32, ptr %i, align 4
  %add68 = add nsw i32 %add67, %61
  %call69 = call i32 @sqlite3VdbeAddOp3(ptr noundef %58, i32 noundef 68, i32 noundef 1299, i32 noundef %59, i32 noundef %add68)
  %62 = load ptr, ptr %v, align 8
  %63 = load ptr, ptr %zMsg, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %62, ptr noundef %63, i32 noundef -7)
  %64 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %64, i16 noundef zeroext 1)
  %65 = load i32, ptr %addr1, align 4
  %tobool70 = icmp ne i32 %65, 0
  br i1 %tobool70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %sw.bb61
  %66 = load ptr, ptr %v, align 8
  %67 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %66, i32 noundef %67)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %sw.bb61
  br label %sw.epilog

sw.default:                                       ; preds = %if.end47
  %68 = load ptr, ptr %v, align 8
  %69 = load i32, ptr %regNewData.addr, align 4
  %add73 = add nsw i32 %69, 1
  %70 = load i32, ptr %i, align 4
  %add74 = add nsw i32 %add73, %70
  %71 = load i32, ptr %ignoreDest.addr, align 4
  %call75 = call i32 @sqlite3VdbeAddOp2(ptr noundef %68, i32 noundef 50, i32 noundef %add74, i32 noundef %71)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end72
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then25, %if.then18, %if.then14
  %72 = load i32, ptr %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %73 = load ptr, ptr %pTab.addr, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %73, i32 0, i32 6
  %74 = load ptr, ptr %pCheck, align 8
  %tobool76 = icmp ne ptr %74, null
  br i1 %tobool76, label %land.lhs.true77, label %if.end128

land.lhs.true77:                                  ; preds = %for.end
  %75 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %75, i32 0, i32 7
  %76 = load i64, ptr %flags, align 8
  %and78 = and i64 %76, 512
  %cmp79 = icmp eq i64 %and78, 0
  br i1 %cmp79, label %if.then81, label %if.end128

if.then81:                                        ; preds = %land.lhs.true77
  %77 = load ptr, ptr %pTab.addr, align 8
  %pCheck83 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %pCheck83, align 8
  store ptr %78, ptr %pCheck82, align 8
  %79 = load i32, ptr %regNewData.addr, align 4
  %add84 = add nsw i32 %79, 1
  %sub = sub nsw i32 0, %add84
  %80 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %80, i32 0, i32 20
  store i32 %sub, ptr %iSelfTab, align 8
  %81 = load i8, ptr %overrideError.addr, align 1
  %conv85 = zext i8 %81 to i32
  %cmp86 = icmp ne i32 %conv85, 11
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then81
  %82 = load i8, ptr %overrideError.addr, align 1
  %conv88 = zext i8 %82 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then81
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv88, %cond.true ], [ 2, %cond.false ]
  store i32 %cond, ptr %onError, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc124, %cond.end
  %83 = load i32, ptr %i, align 4
  %84 = load ptr, ptr %pCheck82, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %nExpr, align 8
  %cmp90 = icmp slt i32 %83, %85
  br i1 %cmp90, label %for.body92, label %for.end126

for.body92:                                       ; preds = %for.cond89
  %86 = load ptr, ptr %pCheck82, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %86, i32 0, i32 1
  %87 = load i32, ptr %i, align 4
  %idxprom93 = sext i32 %87 to i64
  %arrayidx94 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom93
  %pExpr95 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx94, i32 0, i32 0
  %88 = load ptr, ptr %pExpr95, align 8
  store ptr %88, ptr %pExpr, align 8
  %89 = load ptr, ptr %aiChng.addr, align 8
  %tobool96 = icmp ne ptr %89, null
  br i1 %tobool96, label %land.lhs.true97, label %if.end102

land.lhs.true97:                                  ; preds = %for.body92
  %90 = load ptr, ptr %pExpr, align 8
  %91 = load ptr, ptr %aiChng.addr, align 8
  %92 = load i8, ptr %pkChng.addr, align 1
  %conv98 = zext i8 %92 to i32
  %call99 = call i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef %90, ptr noundef %91, i32 noundef %conv98)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end102, label %if.then101

if.then101:                                       ; preds = %land.lhs.true97
  br label %for.inc124

if.end102:                                        ; preds = %land.lhs.true97, %for.body92
  %93 = load ptr, ptr %pParse.addr, align 8
  %call103 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %93)
  store i32 %call103, ptr %allOk, align 4
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load ptr, ptr %pExpr, align 8
  %96 = load i32, ptr %allOk, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %94, ptr noundef %95, i32 noundef %96, i32 noundef 16)
  %97 = load i32, ptr %onError, align 4
  %cmp104 = icmp eq i32 %97, 4
  br i1 %cmp104, label %if.then106, label %if.else108

if.then106:                                       ; preds = %if.end102
  %98 = load ptr, ptr %v, align 8
  %99 = load i32, ptr %ignoreDest.addr, align 4
  %call107 = call i32 @sqlite3VdbeGoto(ptr noundef %98, i32 noundef %99)
  br label %if.end123

if.else108:                                       ; preds = %if.end102
  %100 = load ptr, ptr %pCheck82, align 8
  %a110 = getelementptr inbounds nuw %struct.ExprList, ptr %100, i32 0, i32 1
  %101 = load i32, ptr %i, align 4
  %idxprom111 = sext i32 %101 to i64
  %arrayidx112 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a110, i64 0, i64 %idxprom111
  %zName113 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx112, i32 0, i32 1
  %102 = load ptr, ptr %zName113, align 8
  store ptr %102, ptr %zName109, align 8
  %103 = load ptr, ptr %zName109, align 8
  %cmp114 = icmp eq ptr %103, null
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.else108
  %104 = load ptr, ptr %pTab.addr, align 8
  %zName117 = getelementptr inbounds nuw %struct.Table, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %zName117, align 8
  store ptr %105, ptr %zName109, align 8
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.else108
  %106 = load i32, ptr %onError, align 4
  %cmp119 = icmp eq i32 %106, 5
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end118
  store i32 2, ptr %onError, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end118
  %107 = load ptr, ptr %pParse.addr, align 8
  %108 = load i32, ptr %onError, align 4
  %109 = load ptr, ptr %zName109, align 8
  call void @sqlite3HaltConstraint(ptr noundef %107, i32 noundef 275, i32 noundef %108, ptr noundef %109, i8 noundef signext 0, i8 noundef zeroext 3)
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then106
  %110 = load ptr, ptr %v, align 8
  %111 = load i32, ptr %allOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %110, i32 noundef %111)
  br label %for.inc124

for.inc124:                                       ; preds = %if.end123, %if.then101
  %112 = load i32, ptr %i, align 4
  %inc125 = add nsw i32 %112, 1
  store i32 %inc125, ptr %i, align 4
  br label %for.cond89, !llvm.loop !8

for.end126:                                       ; preds = %for.cond89
  %113 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab127 = getelementptr inbounds nuw %struct.Parse, ptr %113, i32 0, i32 20
  store i32 0, ptr %iSelfTab127, align 8
  br label %if.end128

if.end128:                                        ; preds = %for.end126, %land.lhs.true77, %for.end
  %114 = load ptr, ptr %pUpsert.addr, align 8
  %tobool129 = icmp ne ptr %114, null
  br i1 %tobool129, label %if.then130, label %if.end141

if.then130:                                       ; preds = %if.end128
  %115 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %pUpsertTarget, align 8
  %cmp131 = icmp eq ptr %116, null
  br i1 %cmp131, label %if.then133, label %if.else134

if.then133:                                       ; preds = %if.then130
  store i8 4, ptr %overrideError.addr, align 1
  store ptr null, ptr %pUpsert.addr, align 8
  br label %if.end140

if.else134:                                       ; preds = %if.then130
  %117 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertIdx = getelementptr inbounds nuw %struct.Upsert, ptr %117, i32 0, i32 4
  %118 = load ptr, ptr %pUpsertIdx, align 8
  store ptr %118, ptr %pUpIdx, align 8
  %cmp135 = icmp ne ptr %118, null
  br i1 %cmp135, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.else134
  %119 = load ptr, ptr %v, align 8
  %call138 = call i32 @sqlite3VdbeAddOp0(ptr noundef %119, i32 noundef 11)
  store i32 %call138, ptr %upsertJump, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.else134
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then133
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end128
  %120 = load i8, ptr %pkChng.addr, align 1
  %conv142 = zext i8 %120 to i32
  %tobool143 = icmp ne i32 %conv142, 0
  br i1 %tobool143, label %land.lhs.true144, label %if.end218

land.lhs.true144:                                 ; preds = %if.end141
  %121 = load ptr, ptr %pPk, align 8
  %cmp145 = icmp eq ptr %121, null
  br i1 %cmp145, label %if.then147, label %if.end218

if.then147:                                       ; preds = %land.lhs.true144
  %122 = load ptr, ptr %pParse.addr, align 8
  %call148 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %122)
  store i32 %call148, ptr %addrRowidOk, align 4
  %123 = load ptr, ptr %pTab.addr, align 8
  %keyConf = getelementptr inbounds nuw %struct.Table, ptr %123, i32 0, i32 14
  %124 = load i8, ptr %keyConf, align 4
  %conv149 = zext i8 %124 to i32
  store i32 %conv149, ptr %onError, align 4
  %125 = load i8, ptr %overrideError.addr, align 1
  %conv150 = zext i8 %125 to i32
  %cmp151 = icmp ne i32 %conv150, 11
  br i1 %cmp151, label %if.then153, label %if.else155

if.then153:                                       ; preds = %if.then147
  %126 = load i8, ptr %overrideError.addr, align 1
  %conv154 = zext i8 %126 to i32
  store i32 %conv154, ptr %onError, align 4
  br label %if.end160

if.else155:                                       ; preds = %if.then147
  %127 = load i32, ptr %onError, align 4
  %cmp156 = icmp eq i32 %127, 11
  br i1 %cmp156, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.else155
  store i32 2, ptr %onError, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.else155
  br label %if.end160

if.end160:                                        ; preds = %if.end159, %if.then153
  %128 = load ptr, ptr %pUpsert.addr, align 8
  %tobool161 = icmp ne ptr %128, null
  br i1 %tobool161, label %land.lhs.true162, label %if.end172

land.lhs.true162:                                 ; preds = %if.end160
  %129 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertIdx163 = getelementptr inbounds nuw %struct.Upsert, ptr %129, i32 0, i32 4
  %130 = load ptr, ptr %pUpsertIdx163, align 8
  %cmp164 = icmp eq ptr %130, null
  br i1 %cmp164, label %if.then166, label %if.end172

if.then166:                                       ; preds = %land.lhs.true162
  %131 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %131, i32 0, i32 2
  %132 = load ptr, ptr %pUpsertSet, align 8
  %cmp167 = icmp eq ptr %132, null
  br i1 %cmp167, label %if.then169, label %if.else170

if.then169:                                       ; preds = %if.then166
  store i32 4, ptr %onError, align 4
  br label %if.end171

if.else170:                                       ; preds = %if.then166
  store i32 6, ptr %onError, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.else170, %if.then169
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %land.lhs.true162, %if.end160
  %133 = load i32, ptr %onError, align 4
  %cmp173 = icmp eq i32 %133, 5
  br i1 %cmp173, label %land.lhs.true175, label %if.end184

land.lhs.true175:                                 ; preds = %if.end172
  %134 = load i32, ptr %onError, align 4
  %135 = load i8, ptr %overrideError.addr, align 1
  %conv176 = zext i8 %135 to i32
  %cmp177 = icmp ne i32 %134, %conv176
  br i1 %cmp177, label %land.lhs.true179, label %if.end184

land.lhs.true179:                                 ; preds = %land.lhs.true175
  %136 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %136, i32 0, i32 2
  %137 = load ptr, ptr %pIndex, align 8
  %tobool180 = icmp ne ptr %137, null
  br i1 %tobool180, label %if.then181, label %if.end184

if.then181:                                       ; preds = %land.lhs.true179
  %138 = load ptr, ptr %v, align 8
  %call182 = call i32 @sqlite3VdbeAddOp0(ptr noundef %138, i32 noundef 11)
  %add183 = add nsw i32 %call182, 1
  store i32 %add183, ptr %ipkTop, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %land.lhs.true179, %land.lhs.true175, %if.end172
  %139 = load i8, ptr %isUpdate, align 1
  %tobool185 = icmp ne i8 %139, 0
  br i1 %tobool185, label %if.then186, label %if.end188

if.then186:                                       ; preds = %if.end184
  %140 = load ptr, ptr %v, align 8
  %141 = load i32, ptr %regNewData.addr, align 4
  %142 = load i32, ptr %addrRowidOk, align 4
  %143 = load i32, ptr %regOldData.addr, align 4
  %call187 = call i32 @sqlite3VdbeAddOp3(ptr noundef %140, i32 noundef 53, i32 noundef %141, i32 noundef %142, i32 noundef %143)
  %144 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %144, i16 noundef zeroext 144)
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %if.end184
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %iDataCur.addr, align 4
  %147 = load i32, ptr %addrRowidOk, align 4
  %148 = load i32, ptr %regNewData.addr, align 4
  %call189 = call i32 @sqlite3VdbeAddOp3(ptr noundef %145, i32 noundef 31, i32 noundef %146, i32 noundef %147, i32 noundef %148)
  %149 = load i32, ptr %onError, align 4
  switch i32 %149, label %sw.default190 [
    i32 1, label %sw.bb191
    i32 2, label %sw.bb191
    i32 3, label %sw.bb191
    i32 5, label %sw.bb192
    i32 6, label %sw.bb209
    i32 4, label %sw.bb210
  ]

sw.default190:                                    ; preds = %if.end188
  store i32 2, ptr %onError, align 4
  br label %sw.bb191

sw.bb191:                                         ; preds = %sw.default190, %if.end188, %if.end188, %if.end188
  %150 = load ptr, ptr %pParse.addr, align 8
  %151 = load i32, ptr %onError, align 4
  %152 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3RowidConstraint(ptr noundef %150, i32 noundef %151, ptr noundef %152)
  br label %sw.epilog212

sw.bb192:                                         ; preds = %if.end188
  store ptr null, ptr %pTrigger, align 8
  %153 = load ptr, ptr %db, align 8
  %flags193 = getelementptr inbounds nuw %struct.sqlite3, ptr %153, i32 0, i32 7
  %154 = load i64, ptr %flags193, align 8
  %and194 = and i64 %154, 8192
  %tobool195 = icmp ne i64 %and194, 0
  br i1 %tobool195, label %if.then196, label %if.end198

if.then196:                                       ; preds = %sw.bb192
  %155 = load ptr, ptr %pParse.addr, align 8
  %156 = load ptr, ptr %pTab.addr, align 8
  %call197 = call ptr @sqlite3TriggersExist(ptr noundef %155, ptr noundef %156, i32 noundef 124, ptr noundef null, ptr noundef null)
  store ptr %call197, ptr %pTrigger, align 8
  br label %if.end198

if.end198:                                        ; preds = %if.then196, %sw.bb192
  %157 = load ptr, ptr %pTrigger, align 8
  %tobool199 = icmp ne ptr %157, null
  br i1 %tobool199, label %if.then202, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end198
  %158 = load ptr, ptr %pParse.addr, align 8
  %159 = load ptr, ptr %pTab.addr, align 8
  %call200 = call i32 @sqlite3FkRequired(ptr noundef %158, ptr noundef %159, ptr noundef null, i32 noundef 0)
  %tobool201 = icmp ne i32 %call200, 0
  br i1 %tobool201, label %if.then202, label %if.else203

if.then202:                                       ; preds = %lor.lhs.false, %if.end198
  %160 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %160)
  %161 = load ptr, ptr %pParse.addr, align 8
  %162 = load ptr, ptr %pTab.addr, align 8
  %163 = load ptr, ptr %pTrigger, align 8
  %164 = load i32, ptr %iDataCur.addr, align 4
  %165 = load i32, ptr %iIdxCur.addr, align 4
  %166 = load i32, ptr %regNewData.addr, align 4
  call void @sqlite3GenerateRowDelete(ptr noundef %161, ptr noundef %162, ptr noundef %163, i32 noundef %164, i32 noundef %165, i32 noundef %166, i16 noundef signext 1, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef -1)
  br label %if.end208

if.else203:                                       ; preds = %lor.lhs.false
  %167 = load ptr, ptr %pTab.addr, align 8
  %pIndex204 = getelementptr inbounds nuw %struct.Table, ptr %167, i32 0, i32 2
  %168 = load ptr, ptr %pIndex204, align 8
  %tobool205 = icmp ne ptr %168, null
  br i1 %tobool205, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.else203
  %169 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %169)
  %170 = load ptr, ptr %pParse.addr, align 8
  %171 = load ptr, ptr %pTab.addr, align 8
  %172 = load i32, ptr %iDataCur.addr, align 4
  %173 = load i32, ptr %iIdxCur.addr, align 4
  call void @sqlite3GenerateRowIndexDelete(ptr noundef %170, ptr noundef %171, i32 noundef %172, i32 noundef %173, ptr noundef null, i32 noundef -1)
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %if.else203
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.then202
  store i32 1, ptr %seenReplace, align 4
  br label %sw.epilog212

sw.bb209:                                         ; preds = %if.end188
  %174 = load ptr, ptr %pParse.addr, align 8
  %175 = load ptr, ptr %pUpsert.addr, align 8
  %176 = load ptr, ptr %pTab.addr, align 8
  %177 = load i32, ptr %iDataCur.addr, align 4
  call void @sqlite3UpsertDoUpdate(ptr noundef %174, ptr noundef %175, ptr noundef %176, ptr noundef null, i32 noundef %177)
  br label %sw.bb210

sw.bb210:                                         ; preds = %sw.bb209, %if.end188
  %178 = load ptr, ptr %v, align 8
  %179 = load i32, ptr %ignoreDest.addr, align 4
  %call211 = call i32 @sqlite3VdbeGoto(ptr noundef %178, i32 noundef %179)
  br label %sw.epilog212

sw.epilog212:                                     ; preds = %sw.bb210, %if.end208, %sw.bb191
  %180 = load ptr, ptr %v, align 8
  %181 = load i32, ptr %addrRowidOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %180, i32 noundef %181)
  %182 = load i32, ptr %ipkTop, align 4
  %tobool213 = icmp ne i32 %182, 0
  br i1 %tobool213, label %if.then214, label %if.end217

if.then214:                                       ; preds = %sw.epilog212
  %183 = load ptr, ptr %v, align 8
  %call215 = call i32 @sqlite3VdbeAddOp0(ptr noundef %183, i32 noundef 11)
  store i32 %call215, ptr %ipkBottom, align 4
  %184 = load ptr, ptr %v, align 8
  %185 = load i32, ptr %ipkTop, align 4
  %sub216 = sub nsw i32 %185, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %184, i32 noundef %sub216)
  br label %if.end217

if.end217:                                        ; preds = %if.then214, %sw.epilog212
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %land.lhs.true144, %if.end141
  store i32 0, ptr %ix, align 4
  %186 = load ptr, ptr %pTab.addr, align 8
  %pIndex219 = getelementptr inbounds nuw %struct.Table, ptr %186, i32 0, i32 2
  %187 = load ptr, ptr %pIndex219, align 8
  store ptr %187, ptr %pIdx, align 8
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc509, %if.end218
  %188 = load ptr, ptr %pIdx, align 8
  %tobool221 = icmp ne ptr %188, null
  br i1 %tobool221, label %for.body222, label %for.end512

for.body222:                                      ; preds = %for.cond220
  %189 = load ptr, ptr %aRegIdx.addr, align 8
  %190 = load i32, ptr %ix, align 4
  %idxprom223 = sext i32 %190 to i64
  %arrayidx224 = getelementptr inbounds i32, ptr %189, i64 %idxprom223
  %191 = load i32, ptr %arrayidx224, align 4
  %cmp225 = icmp eq i32 %191, 0
  br i1 %cmp225, label %if.then227, label %if.end228

if.then227:                                       ; preds = %for.body222
  br label %for.inc509

if.end228:                                        ; preds = %for.body222
  %192 = load ptr, ptr %pUpIdx, align 8
  %193 = load ptr, ptr %pIdx, align 8
  %cmp229 = icmp eq ptr %192, %193
  br i1 %cmp229, label %if.then231, label %if.else234

if.then231:                                       ; preds = %if.end228
  %194 = load i32, ptr %upsertJump, align 4
  %add232 = add nsw i32 %194, 1
  store i32 %add232, ptr %addrUniqueOk, align 4
  %195 = load ptr, ptr %v, align 8
  %call233 = call i32 @sqlite3VdbeGoto(ptr noundef %195, i32 noundef 0)
  store i32 %call233, ptr %upsertBypass, align 4
  %196 = load ptr, ptr %v, align 8
  %197 = load i32, ptr %upsertJump, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %196, i32 noundef %197)
  br label %if.end236

if.else234:                                       ; preds = %if.end228
  %198 = load ptr, ptr %pParse.addr, align 8
  %call235 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %198)
  store i32 %call235, ptr %addrUniqueOk, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.else234, %if.then231
  %199 = load i8, ptr %bAffinityDone, align 1
  %conv237 = zext i8 %199 to i32
  %cmp238 = icmp eq i32 %conv237, 0
  br i1 %cmp238, label %land.lhs.true240, label %if.end248

land.lhs.true240:                                 ; preds = %if.end236
  %200 = load ptr, ptr %pUpIdx, align 8
  %cmp241 = icmp eq ptr %200, null
  br i1 %cmp241, label %if.then246, label %lor.lhs.false243

lor.lhs.false243:                                 ; preds = %land.lhs.true240
  %201 = load ptr, ptr %pUpIdx, align 8
  %202 = load ptr, ptr %pIdx, align 8
  %cmp244 = icmp eq ptr %201, %202
  br i1 %cmp244, label %if.then246, label %if.end248

if.then246:                                       ; preds = %lor.lhs.false243, %land.lhs.true240
  %203 = load ptr, ptr %v, align 8
  %204 = load ptr, ptr %pTab.addr, align 8
  %205 = load i32, ptr %regNewData.addr, align 4
  %add247 = add nsw i32 %205, 1
  call void @sqlite3TableAffinity(ptr noundef %203, ptr noundef %204, i32 noundef %add247)
  store i8 1, ptr %bAffinityDone, align 1
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %lor.lhs.false243, %if.end236
  %206 = load i32, ptr %iIdxCur.addr, align 4
  %207 = load i32, ptr %ix, align 4
  %add249 = add nsw i32 %206, %207
  store i32 %add249, ptr %iThisCur, align 4
  %208 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %208, i32 0, i32 9
  %209 = load ptr, ptr %pPartIdxWhere, align 8
  %tobool250 = icmp ne ptr %209, null
  br i1 %tobool250, label %if.then251, label %if.end260

if.then251:                                       ; preds = %if.end248
  %210 = load ptr, ptr %v, align 8
  %211 = load ptr, ptr %aRegIdx.addr, align 8
  %212 = load i32, ptr %ix, align 4
  %idxprom252 = sext i32 %212 to i64
  %arrayidx253 = getelementptr inbounds i32, ptr %211, i64 %idxprom252
  %213 = load i32, ptr %arrayidx253, align 4
  %call254 = call i32 @sqlite3VdbeAddOp2(ptr noundef %210, i32 noundef 73, i32 noundef 0, i32 noundef %213)
  %214 = load i32, ptr %regNewData.addr, align 4
  %add255 = add nsw i32 %214, 1
  %sub256 = sub nsw i32 0, %add255
  %215 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab257 = getelementptr inbounds nuw %struct.Parse, ptr %215, i32 0, i32 20
  store i32 %sub256, ptr %iSelfTab257, align 8
  %216 = load ptr, ptr %pParse.addr, align 8
  %217 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere258 = getelementptr inbounds nuw %struct.Index, ptr %217, i32 0, i32 9
  %218 = load ptr, ptr %pPartIdxWhere258, align 8
  %219 = load i32, ptr %addrUniqueOk, align 4
  call void @sqlite3ExprIfFalseDup(ptr noundef %216, ptr noundef %218, i32 noundef %219, i32 noundef 16)
  %220 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab259 = getelementptr inbounds nuw %struct.Parse, ptr %220, i32 0, i32 20
  store i32 0, ptr %iSelfTab259, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.then251, %if.end248
  %221 = load ptr, ptr %aRegIdx.addr, align 8
  %222 = load i32, ptr %ix, align 4
  %idxprom261 = sext i32 %222 to i64
  %arrayidx262 = getelementptr inbounds i32, ptr %221, i64 %idxprom261
  %223 = load i32, ptr %arrayidx262, align 4
  %add263 = add nsw i32 %223, 1
  store i32 %add263, ptr %regIdx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc303, %if.end260
  %224 = load i32, ptr %i, align 4
  %225 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %225, i32 0, i32 14
  %226 = load i16, ptr %nColumn, align 8
  %conv265 = zext i16 %226 to i32
  %cmp266 = icmp slt i32 %224, %conv265
  br i1 %cmp266, label %for.body268, label %for.end305

for.body268:                                      ; preds = %for.cond264
  %227 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %227, i32 0, i32 1
  %228 = load ptr, ptr %aiColumn, align 8
  %229 = load i32, ptr %i, align 4
  %idxprom269 = sext i32 %229 to i64
  %arrayidx270 = getelementptr inbounds i16, ptr %228, i64 %idxprom269
  %230 = load i16, ptr %arrayidx270, align 2
  %conv271 = sext i16 %230 to i32
  store i32 %conv271, ptr %iField, align 4
  %231 = load i32, ptr %iField, align 4
  %cmp272 = icmp eq i32 %231, -2
  br i1 %cmp272, label %if.then274, label %if.else284

if.then274:                                       ; preds = %for.body268
  %232 = load i32, ptr %regNewData.addr, align 4
  %add275 = add nsw i32 %232, 1
  %sub276 = sub nsw i32 0, %add275
  %233 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab277 = getelementptr inbounds nuw %struct.Parse, ptr %233, i32 0, i32 20
  store i32 %sub276, ptr %iSelfTab277, align 8
  %234 = load ptr, ptr %pParse.addr, align 8
  %235 = load ptr, ptr %pIdx, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %235, i32 0, i32 10
  %236 = load ptr, ptr %aColExpr, align 8
  %a278 = getelementptr inbounds nuw %struct.ExprList, ptr %236, i32 0, i32 1
  %237 = load i32, ptr %i, align 4
  %idxprom279 = sext i32 %237 to i64
  %arrayidx280 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a278, i64 0, i64 %idxprom279
  %pExpr281 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx280, i32 0, i32 0
  %238 = load ptr, ptr %pExpr281, align 8
  %239 = load i32, ptr %regIdx, align 4
  %240 = load i32, ptr %i, align 4
  %add282 = add nsw i32 %239, %240
  call void @sqlite3ExprCodeCopy(ptr noundef %234, ptr noundef %238, i32 noundef %add282)
  %241 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab283 = getelementptr inbounds nuw %struct.Parse, ptr %241, i32 0, i32 20
  store i32 0, ptr %iSelfTab283, align 8
  br label %if.end302

if.else284:                                       ; preds = %for.body268
  %242 = load i32, ptr %iField, align 4
  %cmp285 = icmp eq i32 %242, -1
  br i1 %cmp285, label %if.then292, label %lor.lhs.false287

lor.lhs.false287:                                 ; preds = %if.else284
  %243 = load i32, ptr %iField, align 4
  %244 = load ptr, ptr %pTab.addr, align 8
  %iPKey288 = getelementptr inbounds nuw %struct.Table, ptr %244, i32 0, i32 10
  %245 = load i16, ptr %iPKey288, align 4
  %conv289 = sext i16 %245 to i32
  %cmp290 = icmp eq i32 %243, %conv289
  br i1 %cmp290, label %if.then292, label %if.else293

if.then292:                                       ; preds = %lor.lhs.false287, %if.else284
  %246 = load i32, ptr %regNewData.addr, align 4
  store i32 %246, ptr %x, align 4
  br label %if.end296

if.else293:                                       ; preds = %lor.lhs.false287
  %247 = load i32, ptr %iField, align 4
  %248 = load i32, ptr %regNewData.addr, align 4
  %add294 = add nsw i32 %247, %248
  %add295 = add nsw i32 %add294, 1
  store i32 %add295, ptr %x, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.else293, %if.then292
  %249 = load ptr, ptr %v, align 8
  %250 = load i32, ptr %iField, align 4
  %cmp297 = icmp slt i32 %250, 0
  %251 = zext i1 %cmp297 to i64
  %cond299 = select i1 %cmp297, i32 80, i32 79
  %252 = load i32, ptr %x, align 4
  %253 = load i32, ptr %regIdx, align 4
  %254 = load i32, ptr %i, align 4
  %add300 = add nsw i32 %253, %254
  %call301 = call i32 @sqlite3VdbeAddOp2(ptr noundef %249, i32 noundef %cond299, i32 noundef %252, i32 noundef %add300)
  br label %if.end302

if.end302:                                        ; preds = %if.end296, %if.then274
  br label %for.inc303

for.inc303:                                       ; preds = %if.end302
  %255 = load i32, ptr %i, align 4
  %inc304 = add nsw i32 %255, 1
  store i32 %inc304, ptr %i, align 4
  br label %for.cond264, !llvm.loop !9

for.end305:                                       ; preds = %for.cond264
  %256 = load ptr, ptr %v, align 8
  %257 = load i32, ptr %regIdx, align 4
  %258 = load ptr, ptr %pIdx, align 8
  %nColumn306 = getelementptr inbounds nuw %struct.Index, ptr %258, i32 0, i32 14
  %259 = load i16, ptr %nColumn306, align 8
  %conv307 = zext i16 %259 to i32
  %260 = load ptr, ptr %aRegIdx.addr, align 8
  %261 = load i32, ptr %ix, align 4
  %idxprom308 = sext i32 %261 to i64
  %arrayidx309 = getelementptr inbounds i32, ptr %260, i64 %idxprom308
  %262 = load i32, ptr %arrayidx309, align 4
  %call310 = call i32 @sqlite3VdbeAddOp3(ptr noundef %256, i32 noundef 92, i32 noundef %257, i32 noundef %conv307, i32 noundef %262)
  %263 = load i8, ptr %isUpdate, align 1
  %conv311 = zext i8 %263 to i32
  %tobool312 = icmp ne i32 %conv311, 0
  br i1 %tobool312, label %land.lhs.true313, label %if.end321

land.lhs.true313:                                 ; preds = %for.end305
  %264 = load ptr, ptr %pPk, align 8
  %265 = load ptr, ptr %pIdx, align 8
  %cmp314 = icmp eq ptr %264, %265
  br i1 %cmp314, label %land.lhs.true316, label %if.end321

land.lhs.true316:                                 ; preds = %land.lhs.true313
  %266 = load i8, ptr %pkChng.addr, align 1
  %conv317 = zext i8 %266 to i32
  %cmp318 = icmp eq i32 %conv317, 0
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %land.lhs.true316
  %267 = load ptr, ptr %v, align 8
  %268 = load i32, ptr %addrUniqueOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %267, i32 noundef %268)
  br label %for.inc509

if.end321:                                        ; preds = %land.lhs.true316, %land.lhs.true313, %for.end305
  %269 = load ptr, ptr %pIdx, align 8
  %onError322 = getelementptr inbounds nuw %struct.Index, ptr %269, i32 0, i32 15
  %270 = load i8, ptr %onError322, align 2
  %conv323 = zext i8 %270 to i32
  store i32 %conv323, ptr %onError, align 4
  %271 = load i32, ptr %onError, align 4
  %cmp324 = icmp eq i32 %271, 0
  br i1 %cmp324, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end321
  %272 = load ptr, ptr %v, align 8
  %273 = load i32, ptr %addrUniqueOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %272, i32 noundef %273)
  br label %for.inc509

if.end327:                                        ; preds = %if.end321
  %274 = load i8, ptr %overrideError.addr, align 1
  %conv328 = zext i8 %274 to i32
  %cmp329 = icmp ne i32 %conv328, 11
  br i1 %cmp329, label %if.then331, label %if.else333

if.then331:                                       ; preds = %if.end327
  %275 = load i8, ptr %overrideError.addr, align 1
  %conv332 = zext i8 %275 to i32
  store i32 %conv332, ptr %onError, align 4
  br label %if.end338

if.else333:                                       ; preds = %if.end327
  %276 = load i32, ptr %onError, align 4
  %cmp334 = icmp eq i32 %276, 11
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %if.else333
  store i32 2, ptr %onError, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then336, %if.else333
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.then331
  %277 = load ptr, ptr %pUpIdx, align 8
  %278 = load ptr, ptr %pIdx, align 8
  %cmp339 = icmp eq ptr %277, %278
  br i1 %cmp339, label %if.then341, label %if.end348

if.then341:                                       ; preds = %if.end338
  %279 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSet342 = getelementptr inbounds nuw %struct.Upsert, ptr %279, i32 0, i32 2
  %280 = load ptr, ptr %pUpsertSet342, align 8
  %cmp343 = icmp eq ptr %280, null
  br i1 %cmp343, label %if.then345, label %if.else346

if.then345:                                       ; preds = %if.then341
  store i32 4, ptr %onError, align 4
  br label %if.end347

if.else346:                                       ; preds = %if.then341
  store i32 6, ptr %onError, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.else346, %if.then345
  br label %if.end348

if.end348:                                        ; preds = %if.end347, %if.end338
  %281 = load i32, ptr %ix, align 4
  %cmp349 = icmp eq i32 %281, 0
  br i1 %cmp349, label %land.lhs.true351, label %if.end382

land.lhs.true351:                                 ; preds = %if.end348
  %282 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %282, i32 0, i32 5
  %283 = load ptr, ptr %pNext, align 8
  %cmp352 = icmp eq ptr %283, null
  br i1 %cmp352, label %land.lhs.true354, label %if.end382

land.lhs.true354:                                 ; preds = %land.lhs.true351
  %284 = load ptr, ptr %pPk, align 8
  %285 = load ptr, ptr %pIdx, align 8
  %cmp355 = icmp eq ptr %284, %285
  br i1 %cmp355, label %land.lhs.true357, label %if.end382

land.lhs.true357:                                 ; preds = %land.lhs.true354
  %286 = load i32, ptr %onError, align 4
  %cmp358 = icmp eq i32 %286, 5
  br i1 %cmp358, label %land.lhs.true360, label %if.end382

land.lhs.true360:                                 ; preds = %land.lhs.true357
  %287 = load ptr, ptr %db, align 8
  %flags361 = getelementptr inbounds nuw %struct.sqlite3, ptr %287, i32 0, i32 7
  %288 = load i64, ptr %flags361, align 8
  %and362 = and i64 %288, 8192
  %cmp363 = icmp eq i64 0, %and362
  br i1 %cmp363, label %land.lhs.true369, label %lor.lhs.false365

lor.lhs.false365:                                 ; preds = %land.lhs.true360
  %289 = load ptr, ptr %pParse.addr, align 8
  %290 = load ptr, ptr %pTab.addr, align 8
  %call366 = call ptr @sqlite3TriggersExist(ptr noundef %289, ptr noundef %290, i32 noundef 124, ptr noundef null, ptr noundef null)
  %cmp367 = icmp eq ptr null, %call366
  br i1 %cmp367, label %land.lhs.true369, label %if.end382

land.lhs.true369:                                 ; preds = %lor.lhs.false365, %land.lhs.true360
  %291 = load ptr, ptr %db, align 8
  %flags370 = getelementptr inbounds nuw %struct.sqlite3, ptr %291, i32 0, i32 7
  %292 = load i64, ptr %flags370, align 8
  %and371 = and i64 %292, 16384
  %cmp372 = icmp eq i64 0, %and371
  br i1 %cmp372, label %if.then381, label %lor.lhs.false374

lor.lhs.false374:                                 ; preds = %land.lhs.true369
  %293 = load ptr, ptr %pTab.addr, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %293, i32 0, i32 4
  %294 = load ptr, ptr %pFKey, align 8
  %cmp375 = icmp eq ptr null, %294
  br i1 %cmp375, label %land.lhs.true377, label %if.end382

land.lhs.true377:                                 ; preds = %lor.lhs.false374
  %295 = load ptr, ptr %pTab.addr, align 8
  %call378 = call ptr @sqlite3FkReferences(ptr noundef %295)
  %cmp379 = icmp eq ptr null, %call378
  br i1 %cmp379, label %if.then381, label %if.end382

if.then381:                                       ; preds = %land.lhs.true377, %land.lhs.true369
  %296 = load ptr, ptr %v, align 8
  %297 = load i32, ptr %addrUniqueOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %296, i32 noundef %297)
  br label %for.inc509

if.end382:                                        ; preds = %land.lhs.true377, %lor.lhs.false374, %lor.lhs.false365, %land.lhs.true357, %land.lhs.true354, %land.lhs.true351, %if.end348
  %298 = load ptr, ptr %v, align 8
  %299 = load i32, ptr %iThisCur, align 4
  %300 = load i32, ptr %addrUniqueOk, align 4
  %301 = load i32, ptr %regIdx, align 4
  %302 = load ptr, ptr %pIdx, align 8
  %nKeyCol383 = getelementptr inbounds nuw %struct.Index, ptr %302, i32 0, i32 13
  %303 = load i16, ptr %nKeyCol383, align 2
  %conv384 = zext i16 %303 to i32
  %call385 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %298, i32 noundef 27, i32 noundef %299, i32 noundef %300, i32 noundef %301, i32 noundef %conv384)
  %304 = load ptr, ptr %pIdx, align 8
  %305 = load ptr, ptr %pPk, align 8
  %cmp386 = icmp eq ptr %304, %305
  br i1 %cmp386, label %cond.true388, label %cond.false389

cond.true388:                                     ; preds = %if.end382
  %306 = load i32, ptr %regIdx, align 4
  br label %cond.end391

cond.false389:                                    ; preds = %if.end382
  %307 = load ptr, ptr %pParse.addr, align 8
  %308 = load i32, ptr %nPkField, align 4
  %call390 = call i32 @sqlite3GetTempRange(ptr noundef %307, i32 noundef %308)
  br label %cond.end391

cond.end391:                                      ; preds = %cond.false389, %cond.true388
  %cond392 = phi i32 [ %306, %cond.true388 ], [ %call390, %cond.false389 ]
  store i32 %cond392, ptr %regR, align 4
  %309 = load i8, ptr %isUpdate, align 1
  %conv393 = zext i8 %309 to i32
  %tobool394 = icmp ne i32 %conv393, 0
  br i1 %tobool394, label %if.then398, label %lor.lhs.false395

lor.lhs.false395:                                 ; preds = %cond.end391
  %310 = load i32, ptr %onError, align 4
  %cmp396 = icmp eq i32 %310, 5
  br i1 %cmp396, label %if.then398, label %if.end472

if.then398:                                       ; preds = %lor.lhs.false395, %cond.end391
  %311 = load ptr, ptr %pTab.addr, align 8
  %tabFlags399 = getelementptr inbounds nuw %struct.Table, ptr %311, i32 0, i32 9
  %312 = load i32, ptr %tabFlags399, align 8
  %and400 = and i32 %312, 32
  %cmp401 = icmp eq i32 %and400, 0
  br i1 %cmp401, label %if.then403, label %if.else409

if.then403:                                       ; preds = %if.then398
  %313 = load ptr, ptr %v, align 8
  %314 = load i32, ptr %iThisCur, align 4
  %315 = load i32, ptr %regR, align 4
  %call404 = call i32 @sqlite3VdbeAddOp2(ptr noundef %313, i32 noundef 135, i32 noundef %314, i32 noundef %315)
  %316 = load i8, ptr %isUpdate, align 1
  %tobool405 = icmp ne i8 %316, 0
  br i1 %tobool405, label %if.then406, label %if.end408

if.then406:                                       ; preds = %if.then403
  %317 = load ptr, ptr %v, align 8
  %318 = load i32, ptr %regR, align 4
  %319 = load i32, ptr %addrUniqueOk, align 4
  %320 = load i32, ptr %regOldData.addr, align 4
  %call407 = call i32 @sqlite3VdbeAddOp3(ptr noundef %317, i32 noundef 53, i32 noundef %318, i32 noundef %319, i32 noundef %320)
  %321 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %321, i16 noundef zeroext 144)
  br label %if.end408

if.end408:                                        ; preds = %if.then406, %if.then403
  br label %if.end471

if.else409:                                       ; preds = %if.then398
  %322 = load ptr, ptr %pIdx, align 8
  %323 = load ptr, ptr %pPk, align 8
  %cmp411 = icmp ne ptr %322, %323
  br i1 %cmp411, label %if.then413, label %if.end430

if.then413:                                       ; preds = %if.else409
  store i32 0, ptr %i, align 4
  br label %for.cond414

for.cond414:                                      ; preds = %for.inc427, %if.then413
  %324 = load i32, ptr %i, align 4
  %325 = load ptr, ptr %pPk, align 8
  %nKeyCol415 = getelementptr inbounds nuw %struct.Index, ptr %325, i32 0, i32 13
  %326 = load i16, ptr %nKeyCol415, align 2
  %conv416 = zext i16 %326 to i32
  %cmp417 = icmp slt i32 %324, %conv416
  br i1 %cmp417, label %for.body419, label %for.end429

for.body419:                                      ; preds = %for.cond414
  %327 = load ptr, ptr %pIdx, align 8
  %328 = load ptr, ptr %pPk, align 8
  %aiColumn420 = getelementptr inbounds nuw %struct.Index, ptr %328, i32 0, i32 1
  %329 = load ptr, ptr %aiColumn420, align 8
  %330 = load i32, ptr %i, align 4
  %idxprom421 = sext i32 %330 to i64
  %arrayidx422 = getelementptr inbounds i16, ptr %329, i64 %idxprom421
  %331 = load i16, ptr %arrayidx422, align 2
  %call423 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %327, i16 noundef signext %331)
  %conv424 = sext i16 %call423 to i32
  store i32 %conv424, ptr %x410, align 4
  %332 = load ptr, ptr %v, align 8
  %333 = load i32, ptr %iThisCur, align 4
  %334 = load i32, ptr %x410, align 4
  %335 = load i32, ptr %regR, align 4
  %336 = load i32, ptr %i, align 4
  %add425 = add nsw i32 %335, %336
  %call426 = call i32 @sqlite3VdbeAddOp3(ptr noundef %332, i32 noundef 90, i32 noundef %333, i32 noundef %334, i32 noundef %add425)
  br label %for.inc427

for.inc427:                                       ; preds = %for.body419
  %337 = load i32, ptr %i, align 4
  %inc428 = add nsw i32 %337, 1
  store i32 %inc428, ptr %i, align 4
  br label %for.cond414, !llvm.loop !10

for.end429:                                       ; preds = %for.cond414
  br label %if.end430

if.end430:                                        ; preds = %for.end429, %if.else409
  %338 = load i8, ptr %isUpdate, align 1
  %tobool431 = icmp ne i8 %338, 0
  br i1 %tobool431, label %if.then432, label %if.end470

if.then432:                                       ; preds = %if.end430
  %339 = load ptr, ptr %v, align 8
  %call433 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %339)
  %340 = load ptr, ptr %pPk, align 8
  %nKeyCol434 = getelementptr inbounds nuw %struct.Index, ptr %340, i32 0, i32 13
  %341 = load i16, ptr %nKeyCol434, align 2
  %conv435 = zext i16 %341 to i32
  %add436 = add nsw i32 %call433, %conv435
  store i32 %add436, ptr %addrJump, align 4
  store i32 52, ptr %op, align 4
  %342 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %342, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp437 = icmp eq i32 %bf.cast, 2
  br i1 %cmp437, label %cond.true439, label %cond.false440

cond.true439:                                     ; preds = %if.then432
  %343 = load i32, ptr %regIdx, align 4
  br label %cond.end441

cond.false440:                                    ; preds = %if.then432
  %344 = load i32, ptr %regR, align 4
  br label %cond.end441

cond.end441:                                      ; preds = %cond.false440, %cond.true439
  %cond442 = phi i32 [ %343, %cond.true439 ], [ %344, %cond.false440 ]
  store i32 %cond442, ptr %regCmp, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond443

for.cond443:                                      ; preds = %for.inc467, %cond.end441
  %345 = load i32, ptr %i, align 4
  %346 = load ptr, ptr %pPk, align 8
  %nKeyCol444 = getelementptr inbounds nuw %struct.Index, ptr %346, i32 0, i32 13
  %347 = load i16, ptr %nKeyCol444, align 2
  %conv445 = zext i16 %347 to i32
  %cmp446 = icmp slt i32 %345, %conv445
  br i1 %cmp446, label %for.body448, label %for.end469

for.body448:                                      ; preds = %for.cond443
  %348 = load ptr, ptr %pParse.addr, align 8
  %349 = load ptr, ptr %pPk, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %349, i32 0, i32 8
  %350 = load ptr, ptr %azColl, align 8
  %351 = load i32, ptr %i, align 4
  %idxprom449 = sext i32 %351 to i64
  %arrayidx450 = getelementptr inbounds ptr, ptr %350, i64 %idxprom449
  %352 = load ptr, ptr %arrayidx450, align 8
  %call451 = call ptr @sqlite3LocateCollSeq(ptr noundef %348, ptr noundef %352)
  store ptr %call451, ptr %p4, align 8
  %353 = load ptr, ptr %pPk, align 8
  %aiColumn452 = getelementptr inbounds nuw %struct.Index, ptr %353, i32 0, i32 1
  %354 = load ptr, ptr %aiColumn452, align 8
  %355 = load i32, ptr %i, align 4
  %idxprom453 = sext i32 %355 to i64
  %arrayidx454 = getelementptr inbounds i16, ptr %354, i64 %idxprom453
  %356 = load i16, ptr %arrayidx454, align 2
  %conv455 = sext i16 %356 to i32
  store i32 %conv455, ptr %x410, align 4
  %357 = load i32, ptr %i, align 4
  %358 = load ptr, ptr %pPk, align 8
  %nKeyCol456 = getelementptr inbounds nuw %struct.Index, ptr %358, i32 0, i32 13
  %359 = load i16, ptr %nKeyCol456, align 2
  %conv457 = zext i16 %359 to i32
  %sub458 = sub nsw i32 %conv457, 1
  %cmp459 = icmp eq i32 %357, %sub458
  br i1 %cmp459, label %if.then461, label %if.end462

if.then461:                                       ; preds = %for.body448
  %360 = load i32, ptr %addrUniqueOk, align 4
  store i32 %360, ptr %addrJump, align 4
  store i32 53, ptr %op, align 4
  br label %if.end462

if.end462:                                        ; preds = %if.then461, %for.body448
  %361 = load ptr, ptr %v, align 8
  %362 = load i32, ptr %op, align 4
  %363 = load i32, ptr %regOldData.addr, align 4
  %add463 = add nsw i32 %363, 1
  %364 = load i32, ptr %x410, align 4
  %add464 = add nsw i32 %add463, %364
  %365 = load i32, ptr %addrJump, align 4
  %366 = load i32, ptr %regCmp, align 4
  %367 = load i32, ptr %i, align 4
  %add465 = add nsw i32 %366, %367
  %368 = load ptr, ptr %p4, align 8
  %call466 = call i32 @sqlite3VdbeAddOp4(ptr noundef %361, i32 noundef %362, i32 noundef %add464, i32 noundef %365, i32 noundef %add465, ptr noundef %368, i32 noundef -2)
  %369 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %369, i16 noundef zeroext 144)
  br label %for.inc467

for.inc467:                                       ; preds = %if.end462
  %370 = load i32, ptr %i, align 4
  %inc468 = add nsw i32 %370, 1
  store i32 %inc468, ptr %i, align 4
  br label %for.cond443, !llvm.loop !11

for.end469:                                       ; preds = %for.cond443
  br label %if.end470

if.end470:                                        ; preds = %for.end469, %if.end430
  br label %if.end471

if.end471:                                        ; preds = %if.end470, %if.end408
  br label %if.end472

if.end472:                                        ; preds = %if.end471, %lor.lhs.false395
  %371 = load i32, ptr %onError, align 4
  switch i32 %371, label %sw.default478 [
    i32 1, label %sw.bb473
    i32 2, label %sw.bb473
    i32 3, label %sw.bb473
    i32 6, label %sw.bb474
    i32 4, label %sw.bb476
  ]

sw.bb473:                                         ; preds = %if.end472, %if.end472, %if.end472
  %372 = load ptr, ptr %pParse.addr, align 8
  %373 = load i32, ptr %onError, align 4
  %374 = load ptr, ptr %pIdx, align 8
  call void @sqlite3UniqueConstraint(ptr noundef %372, i32 noundef %373, ptr noundef %374)
  br label %sw.epilog497

sw.bb474:                                         ; preds = %if.end472
  %375 = load ptr, ptr %pParse.addr, align 8
  %376 = load ptr, ptr %pUpsert.addr, align 8
  %377 = load ptr, ptr %pTab.addr, align 8
  %378 = load ptr, ptr %pIdx, align 8
  %379 = load i32, ptr %iIdxCur.addr, align 4
  %380 = load i32, ptr %ix, align 4
  %add475 = add nsw i32 %379, %380
  call void @sqlite3UpsertDoUpdate(ptr noundef %375, ptr noundef %376, ptr noundef %377, ptr noundef %378, i32 noundef %add475)
  br label %sw.bb476

sw.bb476:                                         ; preds = %sw.bb474, %if.end472
  %381 = load ptr, ptr %v, align 8
  %382 = load i32, ptr %ignoreDest.addr, align 4
  %call477 = call i32 @sqlite3VdbeGoto(ptr noundef %381, i32 noundef %382)
  br label %sw.epilog497

sw.default478:                                    ; preds = %if.end472
  store ptr null, ptr %pTrigger479, align 8
  %383 = load ptr, ptr %db, align 8
  %flags480 = getelementptr inbounds nuw %struct.sqlite3, ptr %383, i32 0, i32 7
  %384 = load i64, ptr %flags480, align 8
  %and481 = and i64 %384, 8192
  %tobool482 = icmp ne i64 %and481, 0
  br i1 %tobool482, label %if.then483, label %if.end485

if.then483:                                       ; preds = %sw.default478
  %385 = load ptr, ptr %pParse.addr, align 8
  %386 = load ptr, ptr %pTab.addr, align 8
  %call484 = call ptr @sqlite3TriggersExist(ptr noundef %385, ptr noundef %386, i32 noundef 124, ptr noundef null, ptr noundef null)
  store ptr %call484, ptr %pTrigger479, align 8
  br label %if.end485

if.end485:                                        ; preds = %if.then483, %sw.default478
  %387 = load ptr, ptr %pTrigger479, align 8
  %tobool486 = icmp ne ptr %387, null
  br i1 %tobool486, label %if.then490, label %lor.lhs.false487

lor.lhs.false487:                                 ; preds = %if.end485
  %388 = load ptr, ptr %pParse.addr, align 8
  %389 = load ptr, ptr %pTab.addr, align 8
  %call488 = call i32 @sqlite3FkRequired(ptr noundef %388, ptr noundef %389, ptr noundef null, i32 noundef 0)
  %tobool489 = icmp ne i32 %call488, 0
  br i1 %tobool489, label %if.then490, label %if.end491

if.then490:                                       ; preds = %lor.lhs.false487, %if.end485
  %390 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %390)
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %lor.lhs.false487
  %391 = load ptr, ptr %pParse.addr, align 8
  %392 = load ptr, ptr %pTab.addr, align 8
  %393 = load ptr, ptr %pTrigger479, align 8
  %394 = load i32, ptr %iDataCur.addr, align 4
  %395 = load i32, ptr %iIdxCur.addr, align 4
  %396 = load i32, ptr %regR, align 4
  %397 = load i32, ptr %nPkField, align 4
  %conv492 = trunc i32 %397 to i16
  %398 = load ptr, ptr %pIdx, align 8
  %399 = load ptr, ptr %pPk, align 8
  %cmp493 = icmp eq ptr %398, %399
  %400 = zext i1 %cmp493 to i64
  %cond495 = select i1 %cmp493, i32 1, i32 0
  %conv496 = trunc i32 %cond495 to i8
  %401 = load i32, ptr %iThisCur, align 4
  call void @sqlite3GenerateRowDelete(ptr noundef %391, ptr noundef %392, ptr noundef %393, i32 noundef %394, i32 noundef %395, i32 noundef %396, i16 noundef signext %conv492, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext %conv496, i32 noundef %401)
  store i32 1, ptr %seenReplace, align 4
  br label %sw.epilog497

sw.epilog497:                                     ; preds = %if.end491, %sw.bb476, %sw.bb473
  %402 = load ptr, ptr %pUpIdx, align 8
  %403 = load ptr, ptr %pIdx, align 8
  %cmp498 = icmp eq ptr %402, %403
  br i1 %cmp498, label %if.then500, label %if.else503

if.then500:                                       ; preds = %sw.epilog497
  %404 = load ptr, ptr %v, align 8
  %405 = load i32, ptr %upsertJump, align 4
  %add501 = add nsw i32 %405, 1
  %call502 = call i32 @sqlite3VdbeGoto(ptr noundef %404, i32 noundef %add501)
  %406 = load ptr, ptr %v, align 8
  %407 = load i32, ptr %upsertBypass, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %406, i32 noundef %407)
  br label %if.end504

if.else503:                                       ; preds = %sw.epilog497
  %408 = load ptr, ptr %v, align 8
  %409 = load i32, ptr %addrUniqueOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %408, i32 noundef %409)
  br label %if.end504

if.end504:                                        ; preds = %if.else503, %if.then500
  %410 = load i32, ptr %regR, align 4
  %411 = load i32, ptr %regIdx, align 4
  %cmp505 = icmp ne i32 %410, %411
  br i1 %cmp505, label %if.then507, label %if.end508

if.then507:                                       ; preds = %if.end504
  %412 = load ptr, ptr %pParse.addr, align 8
  %413 = load i32, ptr %regR, align 4
  %414 = load i32, ptr %nPkField, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %412, i32 noundef %413, i32 noundef %414)
  br label %if.end508

if.end508:                                        ; preds = %if.then507, %if.end504
  br label %for.inc509

for.inc509:                                       ; preds = %if.end508, %if.then381, %if.then326, %if.then320, %if.then227
  %415 = load ptr, ptr %pIdx, align 8
  %pNext510 = getelementptr inbounds nuw %struct.Index, ptr %415, i32 0, i32 5
  %416 = load ptr, ptr %pNext510, align 8
  store ptr %416, ptr %pIdx, align 8
  %417 = load i32, ptr %ix, align 4
  %inc511 = add nsw i32 %417, 1
  store i32 %inc511, ptr %ix, align 4
  br label %for.cond220, !llvm.loop !12

for.end512:                                       ; preds = %for.cond220
  %418 = load i32, ptr %ipkTop, align 4
  %tobool513 = icmp ne i32 %418, 0
  br i1 %tobool513, label %if.then514, label %if.end516

if.then514:                                       ; preds = %for.end512
  %419 = load ptr, ptr %v, align 8
  %420 = load i32, ptr %ipkTop, align 4
  %call515 = call i32 @sqlite3VdbeGoto(ptr noundef %419, i32 noundef %420)
  %421 = load ptr, ptr %v, align 8
  %422 = load i32, ptr %ipkBottom, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %421, i32 noundef %422)
  br label %if.end516

if.end516:                                        ; preds = %if.then514, %for.end512
  %423 = load ptr, ptr %pTab.addr, align 8
  %tabFlags517 = getelementptr inbounds nuw %struct.Table, ptr %423, i32 0, i32 9
  %424 = load i32, ptr %tabFlags517, align 8
  %and518 = and i32 %424, 32
  %cmp519 = icmp eq i32 %and518, 0
  br i1 %cmp519, label %if.then521, label %if.end531

if.then521:                                       ; preds = %if.end516
  %425 = load ptr, ptr %aRegIdx.addr, align 8
  %426 = load i32, ptr %ix, align 4
  %idxprom522 = sext i32 %426 to i64
  %arrayidx523 = getelementptr inbounds i32, ptr %425, i64 %idxprom522
  %427 = load i32, ptr %arrayidx523, align 4
  store i32 %427, ptr %regRec, align 4
  %428 = load ptr, ptr %v, align 8
  %429 = load i32, ptr %regNewData.addr, align 4
  %add524 = add nsw i32 %429, 1
  %430 = load ptr, ptr %pTab.addr, align 8
  %nCol525 = getelementptr inbounds nuw %struct.Table, ptr %430, i32 0, i32 11
  %431 = load i16, ptr %nCol525, align 2
  %conv526 = sext i16 %431 to i32
  %432 = load i32, ptr %regRec, align 4
  %call527 = call i32 @sqlite3VdbeAddOp3(ptr noundef %428, i32 noundef 92, i32 noundef %add524, i32 noundef %conv526, i32 noundef %432)
  %433 = load i8, ptr %bAffinityDone, align 1
  %tobool528 = icmp ne i8 %433, 0
  br i1 %tobool528, label %if.end530, label %if.then529

if.then529:                                       ; preds = %if.then521
  %434 = load ptr, ptr %v, align 8
  %435 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3TableAffinity(ptr noundef %434, ptr noundef %435, i32 noundef 0)
  br label %if.end530

if.end530:                                        ; preds = %if.then529, %if.then521
  br label %if.end531

if.end531:                                        ; preds = %if.end530, %if.end516
  %436 = load i32, ptr %seenReplace, align 4
  %437 = load ptr, ptr %pbMayReplace.addr, align 8
  store i32 %436, ptr %437, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprReferencesUpdatedColumn(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RowidConstraint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UpsertDoUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
