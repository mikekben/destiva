; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon.1 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.912 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.913 = external hidden unnamed_addr constant [4 x i8], align 1
@statInitFuncdef = external hidden constant { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }, align 8
@statPushFuncdef = external hidden constant { i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }, align 8

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strlike(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

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
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @analyzeOneTable(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pOnlyIdx, i32 noundef %iStatCur, i32 noundef %iMem, i32 noundef %iTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pOnlyIdx.addr = alloca ptr, align 8
  %iStatCur.addr = alloca i32, align 4
  %iMem.addr = alloca i32, align 4
  %iTab.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %iIdxCur = alloca i32, align 4
  %iTabCur = alloca i32, align 4
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %jZeroRows = alloca i32, align 4
  %iDb = alloca i32, align 4
  %needTableCnt = alloca i8, align 1
  %regNewRowid = alloca i32, align 4
  %regStat4 = alloca i32, align 4
  %regChng = alloca i32, align 4
  %regTemp = alloca i32, align 4
  %regTabname = alloca i32, align 4
  %regIdxname = alloca i32, align 4
  %regStat1 = alloca i32, align 4
  %regPrev = alloca i32, align 4
  %nCol = alloca i32, align 4
  %addrRewind = alloca i32, align 4
  %addrNextRow = alloca i32, align 4
  %zIdxName = alloca ptr, align 8
  %nColTest = alloca i32, align 4
  %endDistinctTest = alloca i32, align 4
  %aGotoChng = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pOnlyIdx, ptr %pOnlyIdx.addr, align 8
  store i32 %iStatCur, ptr %iStatCur.addr, align 4
  store i32 %iMem, ptr %iMem.addr, align 4
  store i32 %iTab, ptr %iTab.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 -1, ptr %jZeroRows, align 4
  store i8 1, ptr %needTableCnt, align 1
  %2 = load i32, ptr %iMem.addr, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %iMem.addr, align 4
  store i32 %2, ptr %regNewRowid, align 4
  %3 = load i32, ptr %iMem.addr, align 4
  %inc2 = add nsw i32 %3, 1
  store i32 %inc2, ptr %iMem.addr, align 4
  store i32 %3, ptr %regStat4, align 4
  %4 = load i32, ptr %iMem.addr, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, ptr %iMem.addr, align 4
  store i32 %4, ptr %regChng, align 4
  %5 = load i32, ptr %iMem.addr, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, ptr %iMem.addr, align 4
  store i32 %5, ptr %regTemp, align 4
  %6 = load i32, ptr %iMem.addr, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %iMem.addr, align 4
  store i32 %6, ptr %regTabname, align 4
  %7 = load i32, ptr %iMem.addr, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr %iMem.addr, align 4
  store i32 %7, ptr %regIdxname, align 4
  %8 = load i32, ptr %iMem.addr, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %iMem.addr, align 4
  store i32 %8, ptr %regStat1, align 4
  %9 = load i32, ptr %iMem.addr, align 4
  store i32 %9, ptr %regPrev, align 4
  %10 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %nMem, align 8
  %12 = load i32, ptr %iMem.addr, align 4
  %cmp = icmp sgt i32 %11, %12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %13 = load ptr, ptr %pParse.addr, align 8
  %nMem8 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 18
  %14 = load i32, ptr %nMem8, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load i32, ptr %iMem.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  %16 = load ptr, ptr %pParse.addr, align 8
  %nMem9 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 18
  store i32 %cond, ptr %nMem9, align 8
  %17 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %17)
  store ptr %call, ptr %v, align 8
  %18 = load ptr, ptr %v, align 8
  %cmp10 = icmp eq ptr %18, null
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %19 = load ptr, ptr %pTab.addr, align 8
  %cmp11 = icmp eq ptr %19, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  br label %if.end163

if.end:                                           ; preds = %lor.lhs.false
  %20 = load ptr, ptr %pTab.addr, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %tnum, align 8
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %if.end163

if.end14:                                         ; preds = %if.end
  %22 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName, align 8
  %call15 = call i32 @sqlite3_strlike(ptr noundef @.str.912, ptr noundef %23, i32 noundef 92)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  br label %if.end163

if.end18:                                         ; preds = %if.end14
  %24 = load ptr, ptr %db, align 8
  %25 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 20
  %26 = load ptr, ptr %pSchema, align 8
  %call19 = call i32 @sqlite3SchemaToIndex(ptr noundef %24, ptr noundef %26)
  store i32 %call19, ptr %iDb, align 4
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %pTab.addr, align 8
  %zName20 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zName20, align 8
  %30 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %aDb, align 8
  %32 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %31, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %33 = load ptr, ptr %zDbSName, align 8
  %call21 = call i32 @sqlite3AuthCheck(ptr noundef %27, i32 noundef 28, ptr noundef %29, ptr noundef null, ptr noundef %33)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  br label %if.end163

if.end23:                                         ; preds = %if.end18
  %34 = load ptr, ptr %pParse.addr, align 8
  %35 = load i32, ptr %iDb, align 4
  %36 = load ptr, ptr %pTab.addr, align 8
  %tnum24 = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 7
  %37 = load i32, ptr %tnum24, align 8
  %38 = load ptr, ptr %pTab.addr, align 8
  %zName25 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %zName25, align 8
  call void @sqlite3TableLock(ptr noundef %34, i32 noundef %35, i32 noundef %37, i8 noundef zeroext 0, ptr noundef %39)
  %40 = load i32, ptr %iTab.addr, align 4
  %inc26 = add nsw i32 %40, 1
  store i32 %inc26, ptr %iTab.addr, align 4
  store i32 %40, ptr %iTabCur, align 4
  %41 = load i32, ptr %iTab.addr, align 4
  %inc27 = add nsw i32 %41, 1
  store i32 %inc27, ptr %iTab.addr, align 4
  store i32 %41, ptr %iIdxCur, align 4
  %42 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %42, i32 0, i32 17
  %43 = load i32, ptr %nTab, align 4
  %44 = load i32, ptr %iTab.addr, align 4
  %cmp28 = icmp sgt i32 %43, %44
  br i1 %cmp28, label %cond.true29, label %cond.false31

cond.true29:                                      ; preds = %if.end23
  %45 = load ptr, ptr %pParse.addr, align 8
  %nTab30 = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 17
  %46 = load i32, ptr %nTab30, align 4
  br label %cond.end32

cond.false31:                                     ; preds = %if.end23
  %47 = load i32, ptr %iTab.addr, align 4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true29
  %cond33 = phi i32 [ %46, %cond.true29 ], [ %47, %cond.false31 ]
  %48 = load ptr, ptr %pParse.addr, align 8
  %nTab34 = getelementptr inbounds nuw %struct.Parse, ptr %48, i32 0, i32 17
  store i32 %cond33, ptr %nTab34, align 4
  %49 = load ptr, ptr %pParse.addr, align 8
  %50 = load i32, ptr %iTabCur, align 4
  %51 = load i32, ptr %iDb, align 4
  %52 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3OpenTable(ptr noundef %49, i32 noundef %50, i32 noundef %51, ptr noundef %52, i32 noundef 97)
  %53 = load ptr, ptr %v, align 8
  %54 = load i32, ptr %regTabname, align 4
  %55 = load ptr, ptr %pTab.addr, align 8
  %zName35 = getelementptr inbounds nuw %struct.Table, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %zName35, align 8
  %call36 = call i32 @sqlite3VdbeLoadString(ptr noundef %53, i32 noundef %54, ptr noundef %56)
  %57 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %pIndex, align 8
  store ptr %58, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc149, %cond.end32
  %59 = load ptr, ptr %pIdx, align 8
  %tobool37 = icmp ne ptr %59, null
  br i1 %tobool37, label %for.body, label %for.end150

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %pOnlyIdx.addr, align 8
  %tobool38 = icmp ne ptr %60, null
  br i1 %tobool38, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %for.body
  %61 = load ptr, ptr %pOnlyIdx.addr, align 8
  %62 = load ptr, ptr %pIdx, align 8
  %cmp39 = icmp ne ptr %61, %62
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %land.lhs.true
  br label %for.inc149

if.end41:                                         ; preds = %land.lhs.true, %for.body
  %63 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %63, i32 0, i32 9
  %64 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp42 = icmp eq ptr %64, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end41
  store i8 0, ptr %needTableCnt, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end41
  %65 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 9
  %66 = load i32, ptr %tabFlags, align 8
  %and = and i32 %66, 32
  %cmp45 = icmp eq i32 %and, 0
  br i1 %cmp45, label %if.else, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end44
  %67 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %67, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp47 = icmp eq i32 %bf.cast, 2
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %land.lhs.true46
  %68 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %68, i32 0, i32 13
  %69 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %69 to i32
  store i32 %conv, ptr %nCol, align 4
  %70 = load ptr, ptr %pTab.addr, align 8
  %zName49 = getelementptr inbounds nuw %struct.Table, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %zName49, align 8
  store ptr %71, ptr %zIdxName, align 8
  %72 = load i32, ptr %nCol, align 4
  %sub = sub nsw i32 %72, 1
  store i32 %sub, ptr %nColTest, align 4
  br label %if.end64

if.else:                                          ; preds = %land.lhs.true46, %if.end44
  %73 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %73, i32 0, i32 14
  %74 = load i16, ptr %nColumn, align 8
  %conv50 = zext i16 %74 to i32
  store i32 %conv50, ptr %nCol, align 4
  %75 = load ptr, ptr %pIdx, align 8
  %zName51 = getelementptr inbounds nuw %struct.Index, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %zName51, align 8
  store ptr %76, ptr %zIdxName, align 8
  %77 = load ptr, ptr %pIdx, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %77, i32 0, i32 16
  %bf.load52 = load i16, ptr %uniqNotNull, align 1
  %bf.lshr = lshr i16 %bf.load52, 3
  %bf.clear53 = and i16 %bf.lshr, 1
  %bf.cast54 = zext i16 %bf.clear53 to i32
  %tobool55 = icmp ne i32 %bf.cast54, 0
  br i1 %tobool55, label %cond.true56, label %cond.false60

cond.true56:                                      ; preds = %if.else
  %78 = load ptr, ptr %pIdx, align 8
  %nKeyCol57 = getelementptr inbounds nuw %struct.Index, ptr %78, i32 0, i32 13
  %79 = load i16, ptr %nKeyCol57, align 2
  %conv58 = zext i16 %79 to i32
  %sub59 = sub nsw i32 %conv58, 1
  br label %cond.end62

cond.false60:                                     ; preds = %if.else
  %80 = load i32, ptr %nCol, align 4
  %sub61 = sub nsw i32 %80, 1
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false60, %cond.true56
  %cond63 = phi i32 [ %sub59, %cond.true56 ], [ %sub61, %cond.false60 ]
  store i32 %cond63, ptr %nColTest, align 4
  br label %if.end64

if.end64:                                         ; preds = %cond.end62, %if.then48
  %81 = load ptr, ptr %v, align 8
  %82 = load i32, ptr %regIdxname, align 4
  %83 = load ptr, ptr %zIdxName, align 8
  %call65 = call i32 @sqlite3VdbeLoadString(ptr noundef %81, i32 noundef %82, ptr noundef %83)
  %84 = load ptr, ptr %pParse.addr, align 8
  %nMem66 = getelementptr inbounds nuw %struct.Parse, ptr %84, i32 0, i32 18
  %85 = load i32, ptr %nMem66, align 8
  %86 = load i32, ptr %regPrev, align 4
  %87 = load i32, ptr %nColTest, align 4
  %add = add nsw i32 %86, %87
  %cmp67 = icmp sgt i32 %85, %add
  br i1 %cmp67, label %cond.true69, label %cond.false71

cond.true69:                                      ; preds = %if.end64
  %88 = load ptr, ptr %pParse.addr, align 8
  %nMem70 = getelementptr inbounds nuw %struct.Parse, ptr %88, i32 0, i32 18
  %89 = load i32, ptr %nMem70, align 8
  br label %cond.end73

cond.false71:                                     ; preds = %if.end64
  %90 = load i32, ptr %regPrev, align 4
  %91 = load i32, ptr %nColTest, align 4
  %add72 = add nsw i32 %90, %91
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false71, %cond.true69
  %cond74 = phi i32 [ %89, %cond.true69 ], [ %add72, %cond.false71 ]
  %92 = load ptr, ptr %pParse.addr, align 8
  %nMem75 = getelementptr inbounds nuw %struct.Parse, ptr %92, i32 0, i32 18
  store i32 %cond74, ptr %nMem75, align 8
  %93 = load ptr, ptr %v, align 8
  %94 = load i32, ptr %iIdxCur, align 4
  %95 = load ptr, ptr %pIdx, align 8
  %tnum76 = getelementptr inbounds nuw %struct.Index, ptr %95, i32 0, i32 11
  %96 = load i32, ptr %tnum76, align 8
  %97 = load i32, ptr %iDb, align 4
  %call77 = call i32 @sqlite3VdbeAddOp3(ptr noundef %93, i32 noundef 97, i32 noundef %94, i32 noundef %96, i32 noundef %97)
  %98 = load ptr, ptr %pParse.addr, align 8
  %99 = load ptr, ptr %pIdx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %98, ptr noundef %99)
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %nCol, align 4
  %102 = load i32, ptr %regStat4, align 4
  %add78 = add nsw i32 %102, 1
  %call79 = call i32 @sqlite3VdbeAddOp2(ptr noundef %100, i32 noundef 70, i32 noundef %101, i32 noundef %add78)
  %103 = load ptr, ptr %v, align 8
  %104 = load ptr, ptr %pIdx, align 8
  %nKeyCol80 = getelementptr inbounds nuw %struct.Index, ptr %104, i32 0, i32 13
  %105 = load i16, ptr %nKeyCol80, align 2
  %conv81 = zext i16 %105 to i32
  %106 = load i32, ptr %regStat4, align 4
  %add82 = add nsw i32 %106, 2
  %call83 = call i32 @sqlite3VdbeAddOp2(ptr noundef %103, i32 noundef 70, i32 noundef %conv81, i32 noundef %add82)
  %107 = load ptr, ptr %v, align 8
  %108 = load i32, ptr %regStat4, align 4
  %add84 = add nsw i32 %108, 1
  %109 = load i32, ptr %regStat4, align 4
  %call85 = call i32 @sqlite3VdbeAddOp4(ptr noundef %107, i32 noundef 63, i32 noundef 0, i32 noundef %add84, i32 noundef %109, ptr noundef @statInitFuncdef, i32 noundef -8)
  %110 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %110, i16 noundef zeroext 2)
  %111 = load ptr, ptr %v, align 8
  %112 = load i32, ptr %iIdxCur, align 4
  %call86 = call i32 @sqlite3VdbeAddOp1(ptr noundef %111, i32 noundef 36, i32 noundef %112)
  store i32 %call86, ptr %addrRewind, align 4
  %113 = load ptr, ptr %v, align 8
  %114 = load i32, ptr %regChng, align 4
  %call87 = call i32 @sqlite3VdbeAddOp2(ptr noundef %113, i32 noundef 70, i32 noundef 0, i32 noundef %114)
  %115 = load ptr, ptr %v, align 8
  %call88 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %115)
  store i32 %call88, ptr %addrNextRow, align 4
  %116 = load i32, ptr %nColTest, align 4
  %cmp89 = icmp sgt i32 %116, 0
  br i1 %cmp89, label %if.then91, label %if.end143

if.then91:                                        ; preds = %cond.end73
  %117 = load ptr, ptr %pParse.addr, align 8
  %call92 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %117)
  store i32 %call92, ptr %endDistinctTest, align 4
  %118 = load ptr, ptr %db, align 8
  %119 = load i32, ptr %nColTest, align 4
  %conv93 = sext i32 %119 to i64
  %mul = mul i64 4, %conv93
  %call94 = call ptr @sqlite3DbMallocRawNN(ptr noundef %118, i64 noundef %mul)
  store ptr %call94, ptr %aGotoChng, align 8
  %120 = load ptr, ptr %aGotoChng, align 8
  %cmp95 = icmp eq ptr %120, null
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then91
  br label %for.inc149

if.end98:                                         ; preds = %if.then91
  %121 = load ptr, ptr %v, align 8
  %call99 = call i32 @sqlite3VdbeAddOp0(ptr noundef %121, i32 noundef 11)
  %122 = load ptr, ptr %v, align 8
  %call100 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %122)
  store i32 %call100, ptr %addrNextRow, align 4
  %123 = load i32, ptr %nColTest, align 4
  %cmp101 = icmp eq i32 %123, 1
  br i1 %cmp101, label %land.lhs.true103, label %if.end114

land.lhs.true103:                                 ; preds = %if.end98
  %124 = load ptr, ptr %pIdx, align 8
  %nKeyCol104 = getelementptr inbounds nuw %struct.Index, ptr %124, i32 0, i32 13
  %125 = load i16, ptr %nKeyCol104, align 2
  %conv105 = zext i16 %125 to i32
  %cmp106 = icmp eq i32 %conv105, 1
  br i1 %cmp106, label %land.lhs.true108, label %if.end114

land.lhs.true108:                                 ; preds = %land.lhs.true103
  %126 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %126, i32 0, i32 15
  %127 = load i8, ptr %onError, align 2
  %conv109 = zext i8 %127 to i32
  %cmp110 = icmp ne i32 %conv109, 0
  br i1 %cmp110, label %if.then112, label %if.end114

if.then112:                                       ; preds = %land.lhs.true108
  %128 = load ptr, ptr %v, align 8
  %129 = load i32, ptr %regPrev, align 4
  %130 = load i32, ptr %endDistinctTest, align 4
  %call113 = call i32 @sqlite3VdbeAddOp2(ptr noundef %128, i32 noundef 51, i32 noundef %129, i32 noundef %130)
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %land.lhs.true108, %land.lhs.true103, %if.end98
  store i32 0, ptr %i, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc, %if.end114
  %131 = load i32, ptr %i, align 4
  %132 = load i32, ptr %nColTest, align 4
  %cmp116 = icmp slt i32 %131, %132
  br i1 %cmp116, label %for.body118, label %for.end

for.body118:                                      ; preds = %for.cond115
  %133 = load ptr, ptr %pParse.addr, align 8
  %134 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %134, i32 0, i32 8
  %135 = load ptr, ptr %azColl, align 8
  %136 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %136 to i64
  %arrayidx120 = getelementptr inbounds ptr, ptr %135, i64 %idxprom119
  %137 = load ptr, ptr %arrayidx120, align 8
  %call121 = call ptr @sqlite3LocateCollSeq(ptr noundef %133, ptr noundef %137)
  store ptr %call121, ptr %pColl, align 8
  %138 = load ptr, ptr %v, align 8
  %139 = load i32, ptr %i, align 4
  %140 = load i32, ptr %regChng, align 4
  %call122 = call i32 @sqlite3VdbeAddOp2(ptr noundef %138, i32 noundef 70, i32 noundef %139, i32 noundef %140)
  %141 = load ptr, ptr %v, align 8
  %142 = load i32, ptr %iIdxCur, align 4
  %143 = load i32, ptr %i, align 4
  %144 = load i32, ptr %regTemp, align 4
  %call123 = call i32 @sqlite3VdbeAddOp3(ptr noundef %141, i32 noundef 90, i32 noundef %142, i32 noundef %143, i32 noundef %144)
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %regTemp, align 4
  %147 = load i32, ptr %regPrev, align 4
  %148 = load i32, ptr %i, align 4
  %add124 = add nsw i32 %147, %148
  %149 = load ptr, ptr %pColl, align 8
  %call125 = call i32 @sqlite3VdbeAddOp4(ptr noundef %145, i32 noundef 52, i32 noundef %146, i32 noundef 0, i32 noundef %add124, ptr noundef %149, i32 noundef -2)
  %150 = load ptr, ptr %aGotoChng, align 8
  %151 = load i32, ptr %i, align 4
  %idxprom126 = sext i32 %151 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %150, i64 %idxprom126
  store i32 %call125, ptr %arrayidx127, align 4
  %152 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %152, i16 noundef zeroext 128)
  br label %for.inc

for.inc:                                          ; preds = %for.body118
  %153 = load i32, ptr %i, align 4
  %inc128 = add nsw i32 %153, 1
  store i32 %inc128, ptr %i, align 4
  br label %for.cond115, !llvm.loop !6

for.end:                                          ; preds = %for.cond115
  %154 = load ptr, ptr %v, align 8
  %155 = load i32, ptr %nColTest, align 4
  %156 = load i32, ptr %regChng, align 4
  %call129 = call i32 @sqlite3VdbeAddOp2(ptr noundef %154, i32 noundef 70, i32 noundef %155, i32 noundef %156)
  %157 = load ptr, ptr %v, align 8
  %158 = load i32, ptr %endDistinctTest, align 4
  %call130 = call i32 @sqlite3VdbeGoto(ptr noundef %157, i32 noundef %158)
  %159 = load ptr, ptr %v, align 8
  %160 = load i32, ptr %addrNextRow, align 4
  %sub131 = sub nsw i32 %160, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %159, i32 noundef %sub131)
  store i32 0, ptr %i, align 4
  br label %for.cond132

for.cond132:                                      ; preds = %for.inc140, %for.end
  %161 = load i32, ptr %i, align 4
  %162 = load i32, ptr %nColTest, align 4
  %cmp133 = icmp slt i32 %161, %162
  br i1 %cmp133, label %for.body135, label %for.end142

for.body135:                                      ; preds = %for.cond132
  %163 = load ptr, ptr %v, align 8
  %164 = load ptr, ptr %aGotoChng, align 8
  %165 = load i32, ptr %i, align 4
  %idxprom136 = sext i32 %165 to i64
  %arrayidx137 = getelementptr inbounds i32, ptr %164, i64 %idxprom136
  %166 = load i32, ptr %arrayidx137, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %163, i32 noundef %166)
  %167 = load ptr, ptr %v, align 8
  %168 = load i32, ptr %iIdxCur, align 4
  %169 = load i32, ptr %i, align 4
  %170 = load i32, ptr %regPrev, align 4
  %171 = load i32, ptr %i, align 4
  %add138 = add nsw i32 %170, %171
  %call139 = call i32 @sqlite3VdbeAddOp3(ptr noundef %167, i32 noundef 90, i32 noundef %168, i32 noundef %169, i32 noundef %add138)
  br label %for.inc140

for.inc140:                                       ; preds = %for.body135
  %172 = load i32, ptr %i, align 4
  %inc141 = add nsw i32 %172, 1
  store i32 %inc141, ptr %i, align 4
  br label %for.cond132, !llvm.loop !8

for.end142:                                       ; preds = %for.cond132
  %173 = load ptr, ptr %v, align 8
  %174 = load i32, ptr %endDistinctTest, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %173, i32 noundef %174)
  %175 = load ptr, ptr %db, align 8
  %176 = load ptr, ptr %aGotoChng, align 8
  call void @sqlite3DbFree(ptr noundef %175, ptr noundef %176)
  br label %if.end143

if.end143:                                        ; preds = %for.end142, %cond.end73
  %177 = load ptr, ptr %v, align 8
  %178 = load i32, ptr %regStat4, align 4
  %179 = load i32, ptr %regTemp, align 4
  %call144 = call i32 @sqlite3VdbeAddOp4(ptr noundef %177, i32 noundef 63, i32 noundef 1, i32 noundef %178, i32 noundef %179, ptr noundef @statPushFuncdef, i32 noundef -8)
  %180 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %180, i16 noundef zeroext 2)
  %181 = load ptr, ptr %v, align 8
  %182 = load i32, ptr %iIdxCur, align 4
  %183 = load i32, ptr %addrNextRow, align 4
  %call145 = call i32 @sqlite3VdbeAddOp2(ptr noundef %181, i32 noundef 5, i32 noundef %182, i32 noundef %183)
  %184 = load ptr, ptr %v, align 8
  %185 = load i32, ptr %regStat4, align 4
  %186 = load i32, ptr %regStat1, align 4
  call void @callStatGet(ptr noundef %184, i32 noundef %185, i32 noundef 0, i32 noundef %186)
  %187 = load ptr, ptr %v, align 8
  %188 = load i32, ptr %regTabname, align 4
  %189 = load i32, ptr %regTemp, align 4
  %call146 = call i32 @sqlite3VdbeAddOp4(ptr noundef %187, i32 noundef 92, i32 noundef %188, i32 noundef 3, i32 noundef %189, ptr noundef @.str.913, i32 noundef 0)
  %190 = load ptr, ptr %v, align 8
  %191 = load i32, ptr %iStatCur.addr, align 4
  %192 = load i32, ptr %regNewRowid, align 4
  %call147 = call i32 @sqlite3VdbeAddOp2(ptr noundef %190, i32 noundef 121, i32 noundef %191, i32 noundef %192)
  %193 = load ptr, ptr %v, align 8
  %194 = load i32, ptr %iStatCur.addr, align 4
  %195 = load i32, ptr %regTemp, align 4
  %196 = load i32, ptr %regNewRowid, align 4
  %call148 = call i32 @sqlite3VdbeAddOp3(ptr noundef %193, i32 noundef 122, i32 noundef %194, i32 noundef %195, i32 noundef %196)
  %197 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %197, i16 noundef zeroext 8)
  %198 = load ptr, ptr %v, align 8
  %199 = load i32, ptr %addrRewind, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %198, i32 noundef %199)
  br label %for.inc149

for.inc149:                                       ; preds = %if.end143, %if.then97, %if.then40
  %200 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %200, i32 0, i32 5
  %201 = load ptr, ptr %pNext, align 8
  store ptr %201, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !9

for.end150:                                       ; preds = %for.cond
  %202 = load ptr, ptr %pOnlyIdx.addr, align 8
  %cmp151 = icmp eq ptr %202, null
  br i1 %cmp151, label %land.lhs.true153, label %if.end163

land.lhs.true153:                                 ; preds = %for.end150
  %203 = load i8, ptr %needTableCnt, align 1
  %conv154 = zext i8 %203 to i32
  %tobool155 = icmp ne i32 %conv154, 0
  br i1 %tobool155, label %if.then156, label %if.end163

if.then156:                                       ; preds = %land.lhs.true153
  %204 = load ptr, ptr %v, align 8
  %205 = load i32, ptr %iTabCur, align 4
  %206 = load i32, ptr %regStat1, align 4
  %call157 = call i32 @sqlite3VdbeAddOp2(ptr noundef %204, i32 noundef 93, i32 noundef %205, i32 noundef %206)
  %207 = load ptr, ptr %v, align 8
  %208 = load i32, ptr %regStat1, align 4
  %call158 = call i32 @sqlite3VdbeAddOp1(ptr noundef %207, i32 noundef 20, i32 noundef %208)
  store i32 %call158, ptr %jZeroRows, align 4
  %209 = load ptr, ptr %v, align 8
  %210 = load i32, ptr %regIdxname, align 4
  %call159 = call i32 @sqlite3VdbeAddOp2(ptr noundef %209, i32 noundef 73, i32 noundef 0, i32 noundef %210)
  %211 = load ptr, ptr %v, align 8
  %212 = load i32, ptr %regTabname, align 4
  %213 = load i32, ptr %regTemp, align 4
  %call160 = call i32 @sqlite3VdbeAddOp4(ptr noundef %211, i32 noundef 92, i32 noundef %212, i32 noundef 3, i32 noundef %213, ptr noundef @.str.913, i32 noundef 0)
  %214 = load ptr, ptr %v, align 8
  %215 = load i32, ptr %iStatCur.addr, align 4
  %216 = load i32, ptr %regNewRowid, align 4
  %call161 = call i32 @sqlite3VdbeAddOp2(ptr noundef %214, i32 noundef 121, i32 noundef %215, i32 noundef %216)
  %217 = load ptr, ptr %v, align 8
  %218 = load i32, ptr %iStatCur.addr, align 4
  %219 = load i32, ptr %regTemp, align 4
  %220 = load i32, ptr %regNewRowid, align 4
  %call162 = call i32 @sqlite3VdbeAddOp3(ptr noundef %217, i32 noundef 122, i32 noundef %218, i32 noundef %219, i32 noundef %220)
  %221 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %221, i16 noundef zeroext 8)
  %222 = load ptr, ptr %v, align 8
  %223 = load i32, ptr %jZeroRows, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %222, i32 noundef %223)
  br label %if.end163

if.end163:                                        ; preds = %if.then156, %land.lhs.true153, %for.end150, %if.then22, %if.then17, %if.then13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @callStatGet(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
