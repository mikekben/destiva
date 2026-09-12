; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.330 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.585 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.593 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.594 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.595 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.596 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.597 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.598 = external hidden unnamed_addr constant [87 x i8], align 1
@.str.599 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.600 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8CharLen(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3EndTable(ptr noundef %pParse, ptr noundef %pCons, ptr noundef %pEnd, i8 noundef zeroext %tabOpts, ptr noundef %pSelect) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pCons.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %tabOpts.addr = alloca i8, align 1
  %pSelect.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %n = alloca i32, align 4
  %v = alloca ptr, align 8
  %zType = alloca ptr, align 8
  %zType2 = alloca ptr, align 8
  %zStmt = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %regYield = alloca i32, align 4
  %addrTop = alloca i32, align 4
  %regRec = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %addrInsLoop = alloca i32, align 4
  %pSelTab = alloca ptr, align 8
  %pEnd2 = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %pSchema143 = alloca ptr, align 8
  %zName155 = alloca ptr, align 8
  %nName = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pCons, ptr %pCons.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  store i8 %tabOpts, ptr %tabOpts.addr, align 1
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pEnd.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pSelect.addr, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end171

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 58
  %5 = load ptr, ptr %pNewTable, align 8
  store ptr %5, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %if.end171

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pSelect.addr, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %land.lhs.true7, label %if.end9

land.lhs.true7:                                   ; preds = %if.end5
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %p, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  %call = call i32 @isShadowTableName(ptr noundef %8, ptr noundef %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true7
  %11 = load ptr, ptr %p, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 9
  %12 = load i32, ptr %tabFlags, align 8
  %or = or i32 %12, 1024
  store i32 %or, ptr %tabFlags, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true7, %if.end5
  %13 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %14 = load i8, ptr %busy, align 1
  %tobool10 = icmp ne i8 %14, 0
  br i1 %tobool10, label %if.then11, label %if.end22

if.then11:                                        ; preds = %if.end9
  %15 = load ptr, ptr %pSelect.addr, align 8
  %tobool12 = icmp ne ptr %15, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  %16 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %16, ptr noundef @.str.3)
  br label %if.end171

if.end14:                                         ; preds = %if.then11
  %17 = load ptr, ptr %db, align 8
  %init15 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 35
  %newTnum = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init15, i32 0, i32 0
  %18 = load i32, ptr %newTnum, align 8
  %19 = load ptr, ptr %p, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 7
  store i32 %18, ptr %tnum, align 8
  %20 = load ptr, ptr %p, align 8
  %tnum16 = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %tnum16, align 8
  %cmp17 = icmp eq i32 %21, 1
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  %22 = load ptr, ptr %p, align 8
  %tabFlags19 = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %tabFlags19, align 8
  %or20 = or i32 %23, 1
  store i32 %or20, ptr %tabFlags19, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end9
  %24 = load i8, ptr %tabOpts.addr, align 1
  %conv = zext i8 %24 to i32
  %and = and i32 %conv, 32
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then24, label %if.end39

if.then24:                                        ; preds = %if.end22
  %25 = load ptr, ptr %p, align 8
  %tabFlags25 = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 9
  %26 = load i32, ptr %tabFlags25, align 8
  %and26 = and i32 %26, 8
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  %27 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %27, ptr noundef @.str.593)
  br label %if.end171

if.end29:                                         ; preds = %if.then24
  %28 = load ptr, ptr %p, align 8
  %tabFlags30 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 9
  %29 = load i32, ptr %tabFlags30, align 8
  %and31 = and i32 %29, 4
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end29
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %p, align 8
  %zName35 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %zName35, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %30, ptr noundef @.str.594, ptr noundef %32)
  br label %if.end38

if.else:                                          ; preds = %if.end29
  %33 = load ptr, ptr %p, align 8
  %tabFlags36 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 9
  %34 = load i32, ptr %tabFlags36, align 8
  %or37 = or i32 %34, 96
  store i32 %or37, ptr %tabFlags36, align 8
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %p, align 8
  call void @convertToWithoutRowidTable(ptr noundef %35, ptr noundef %36)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then34
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end22
  %37 = load ptr, ptr %db, align 8
  %38 = load ptr, ptr %p, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 20
  %39 = load ptr, ptr %pSchema, align 8
  %call40 = call i32 @sqlite3SchemaToIndex(ptr noundef %37, ptr noundef %39)
  store i32 %call40, ptr %iDb, align 4
  %40 = load ptr, ptr %p, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 6
  %41 = load ptr, ptr %pCheck, align 8
  %tobool41 = icmp ne ptr %41, null
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end39
  %42 = load ptr, ptr %pParse.addr, align 8
  %43 = load ptr, ptr %p, align 8
  %44 = load ptr, ptr %p, align 8
  %pCheck43 = getelementptr inbounds nuw %struct.Table, ptr %44, i32 0, i32 6
  %45 = load ptr, ptr %pCheck43, align 8
  %call44 = call i32 @sqlite3ResolveSelfReference(ptr noundef %42, ptr noundef %43, i32 noundef 4, ptr noundef null, ptr noundef %45)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39
  %46 = load ptr, ptr %p, align 8
  call void @estimateTableWidth(ptr noundef %46)
  %47 = load ptr, ptr %p, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 2
  %48 = load ptr, ptr %pIndex, align 8
  store ptr %48, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end45
  %49 = load ptr, ptr %pIdx, align 8
  %tobool46 = icmp ne ptr %49, null
  br i1 %tobool46, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %50 = load ptr, ptr %pIdx, align 8
  call void @estimateIndexWidth(ptr noundef %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %51, i32 0, i32 5
  %52 = load ptr, ptr %pNext, align 8
  store ptr %52, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %53 = load ptr, ptr %db, align 8
  %init47 = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 35
  %busy48 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init47, i32 0, i32 2
  %54 = load i8, ptr %busy48, align 1
  %tobool49 = icmp ne i8 %54, 0
  br i1 %tobool49, label %if.end138, label %if.then50

if.then50:                                        ; preds = %for.end
  %55 = load ptr, ptr %pParse.addr, align 8
  %call51 = call ptr @sqlite3GetVdbe(ptr noundef %55)
  store ptr %call51, ptr %v, align 8
  %56 = load ptr, ptr %v, align 8
  %cmp52 = icmp eq ptr %56, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then50
  br label %if.end171

if.end55:                                         ; preds = %if.then50
  %57 = load ptr, ptr %v, align 8
  %call56 = call i32 @sqlite3VdbeAddOp1(ptr noundef %57, i32 noundef 117, i32 noundef 0)
  %58 = load ptr, ptr %p, align 8
  %pSelect57 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %pSelect57, align 8
  %cmp58 = icmp eq ptr %59, null
  br i1 %cmp58, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end55
  store ptr @.str.330, ptr %zType, align 8
  store ptr @.str.595, ptr %zType2, align 8
  br label %if.end62

if.else61:                                        ; preds = %if.end55
  store ptr @.str.585, ptr %zType, align 8
  store ptr @.str.596, ptr %zType2, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %60 = load ptr, ptr %pSelect.addr, align 8
  %tobool63 = icmp ne ptr %60, null
  br i1 %tobool63, label %if.then64, label %if.end95

if.then64:                                        ; preds = %if.end62
  %61 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %61, i32 0, i32 18
  %62 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %62, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regYield, align 4
  %63 = load ptr, ptr %pParse.addr, align 8
  %nMem65 = getelementptr inbounds nuw %struct.Parse, ptr %63, i32 0, i32 18
  %64 = load i32, ptr %nMem65, align 8
  %inc66 = add nsw i32 %64, 1
  store i32 %inc66, ptr %nMem65, align 8
  store i32 %inc66, ptr %regRec, align 4
  %65 = load ptr, ptr %pParse.addr, align 8
  %nMem67 = getelementptr inbounds nuw %struct.Parse, ptr %65, i32 0, i32 18
  %66 = load i32, ptr %nMem67, align 8
  %inc68 = add nsw i32 %66, 1
  store i32 %inc68, ptr %nMem67, align 8
  store i32 %inc68, ptr %regRowid, align 4
  %67 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %67)
  %68 = load ptr, ptr %v, align 8
  %69 = load ptr, ptr %pParse.addr, align 8
  %regRoot = getelementptr inbounds nuw %struct.Parse, ptr %69, i32 0, i32 29
  %70 = load i32, ptr %regRoot, align 4
  %71 = load i32, ptr %iDb, align 4
  %call69 = call i32 @sqlite3VdbeAddOp3(ptr noundef %68, i32 noundef 98, i32 noundef 1, i32 noundef %70, i32 noundef %71)
  %72 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %72, i16 noundef zeroext 16)
  %73 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 17
  store i32 2, ptr %nTab, align 4
  %74 = load ptr, ptr %v, align 8
  %call70 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %74)
  %add = add nsw i32 %call70, 1
  store i32 %add, ptr %addrTop, align 4
  %75 = load ptr, ptr %v, align 8
  %76 = load i32, ptr %regYield, align 4
  %77 = load i32, ptr %addrTop, align 4
  %call71 = call i32 @sqlite3VdbeAddOp3(ptr noundef %75, i32 noundef 13, i32 noundef %76, i32 noundef 0, i32 noundef %77)
  %78 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %78, i32 0, i32 16
  %79 = load i32, ptr %nErr, align 8
  %tobool72 = icmp ne i32 %79, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.then64
  br label %if.end171

if.end74:                                         ; preds = %if.then64
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load ptr, ptr %pSelect.addr, align 8
  %call75 = call ptr @sqlite3ResultSetOfSelect(ptr noundef %80, ptr noundef %81, i8 noundef signext 65)
  store ptr %call75, ptr %pSelTab, align 8
  %82 = load ptr, ptr %pSelTab, align 8
  %cmp76 = icmp eq ptr %82, null
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  br label %if.end171

if.end79:                                         ; preds = %if.end74
  %83 = load ptr, ptr %pSelTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %83, i32 0, i32 11
  %84 = load i16, ptr %nCol, align 2
  %85 = load ptr, ptr %p, align 8
  %nCol80 = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 11
  store i16 %84, ptr %nCol80, align 2
  %86 = load ptr, ptr %pSelTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %aCol, align 8
  %88 = load ptr, ptr %p, align 8
  %aCol81 = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 1
  store ptr %87, ptr %aCol81, align 8
  %89 = load ptr, ptr %pSelTab, align 8
  %nCol82 = getelementptr inbounds nuw %struct.Table, ptr %89, i32 0, i32 11
  store i16 0, ptr %nCol82, align 2
  %90 = load ptr, ptr %pSelTab, align 8
  %aCol83 = getelementptr inbounds nuw %struct.Table, ptr %90, i32 0, i32 1
  store ptr null, ptr %aCol83, align 8
  %91 = load ptr, ptr %db, align 8
  %92 = load ptr, ptr %pSelTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %91, ptr noundef %92)
  %93 = load i32, ptr %regYield, align 4
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 13, i32 noundef %93)
  %94 = load ptr, ptr %pParse.addr, align 8
  %95 = load ptr, ptr %pSelect.addr, align 8
  %call84 = call i32 @sqlite3Select(ptr noundef %94, ptr noundef %95, ptr noundef %dest)
  %96 = load ptr, ptr %pParse.addr, align 8
  %nErr85 = getelementptr inbounds nuw %struct.Parse, ptr %96, i32 0, i32 16
  %97 = load i32, ptr %nErr85, align 8
  %tobool86 = icmp ne i32 %97, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end79
  br label %if.end171

if.end88:                                         ; preds = %if.end79
  %98 = load ptr, ptr %v, align 8
  %99 = load i32, ptr %regYield, align 4
  call void @sqlite3VdbeEndCoroutine(ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %addrTop, align 4
  %sub = sub nsw i32 %101, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %100, i32 noundef %sub)
  %102 = load ptr, ptr %v, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %103 = load i32, ptr %iSDParm, align 4
  %call89 = call i32 @sqlite3VdbeAddOp1(ptr noundef %102, i32 noundef 14, i32 noundef %103)
  store i32 %call89, ptr %addrInsLoop, align 4
  %104 = load ptr, ptr %v, align 8
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  %105 = load i32, ptr %iSdst, align 8
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 3
  %106 = load i32, ptr %nSdst, align 4
  %107 = load i32, ptr %regRec, align 4
  %call90 = call i32 @sqlite3VdbeAddOp3(ptr noundef %104, i32 noundef 92, i32 noundef %105, i32 noundef %106, i32 noundef %107)
  %108 = load ptr, ptr %v, align 8
  %109 = load ptr, ptr %p, align 8
  call void @sqlite3TableAffinity(ptr noundef %108, ptr noundef %109, i32 noundef 0)
  %110 = load ptr, ptr %v, align 8
  %111 = load i32, ptr %regRowid, align 4
  %call91 = call i32 @sqlite3VdbeAddOp2(ptr noundef %110, i32 noundef 121, i32 noundef 1, i32 noundef %111)
  %112 = load ptr, ptr %v, align 8
  %113 = load i32, ptr %regRec, align 4
  %114 = load i32, ptr %regRowid, align 4
  %call92 = call i32 @sqlite3VdbeAddOp3(ptr noundef %112, i32 noundef 122, i32 noundef 1, i32 noundef %113, i32 noundef %114)
  %115 = load ptr, ptr %v, align 8
  %116 = load i32, ptr %addrInsLoop, align 4
  %call93 = call i32 @sqlite3VdbeGoto(ptr noundef %115, i32 noundef %116)
  %117 = load ptr, ptr %v, align 8
  %118 = load i32, ptr %addrInsLoop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %117, i32 noundef %118)
  %119 = load ptr, ptr %v, align 8
  %call94 = call i32 @sqlite3VdbeAddOp1(ptr noundef %119, i32 noundef 117, i32 noundef 1)
  br label %if.end95

if.end95:                                         ; preds = %if.end88, %if.end62
  %120 = load ptr, ptr %pSelect.addr, align 8
  %tobool96 = icmp ne ptr %120, null
  br i1 %tobool96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.end95
  %121 = load ptr, ptr %db, align 8
  %122 = load ptr, ptr %p, align 8
  %call98 = call ptr @createTableStmt(ptr noundef %121, ptr noundef %122)
  store ptr %call98, ptr %zStmt, align 8
  br label %if.end115

if.else99:                                        ; preds = %if.end95
  %123 = load i8, ptr %tabOpts.addr, align 1
  %conv100 = zext i8 %123 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else99
  %124 = load ptr, ptr %pParse.addr, align 8
  %sLastToken = getelementptr inbounds nuw %struct.Parse, ptr %124, i32 0, i32 47
  br label %cond.end

cond.false:                                       ; preds = %if.else99
  %125 = load ptr, ptr %pEnd.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %sLastToken, %cond.true ], [ %125, %cond.false ]
  store ptr %cond, ptr %pEnd2, align 8
  %126 = load ptr, ptr %pEnd2, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %z, align 8
  %128 = load ptr, ptr %pParse.addr, align 8
  %sNameToken = getelementptr inbounds nuw %struct.Parse, ptr %128, i32 0, i32 46
  %z102 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken, i32 0, i32 0
  %129 = load ptr, ptr %z102, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %127 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %129 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv103 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv103, ptr %n, align 4
  %130 = load ptr, ptr %pEnd2, align 8
  %z104 = getelementptr inbounds nuw %struct.Token, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %z104, align 8
  %arrayidx = getelementptr inbounds i8, ptr %131, i64 0
  %132 = load i8, ptr %arrayidx, align 1
  %conv105 = sext i8 %132 to i32
  %cmp106 = icmp ne i32 %conv105, 59
  br i1 %cmp106, label %if.then108, label %if.end111

if.then108:                                       ; preds = %cond.end
  %133 = load ptr, ptr %pEnd2, align 8
  %n109 = getelementptr inbounds nuw %struct.Token, ptr %133, i32 0, i32 1
  %134 = load i32, ptr %n109, align 8
  %135 = load i32, ptr %n, align 4
  %add110 = add i32 %135, %134
  store i32 %add110, ptr %n, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %cond.end
  %136 = load ptr, ptr %db, align 8
  %137 = load ptr, ptr %zType2, align 8
  %138 = load i32, ptr %n, align 4
  %139 = load ptr, ptr %pParse.addr, align 8
  %sNameToken112 = getelementptr inbounds nuw %struct.Parse, ptr %139, i32 0, i32 46
  %z113 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken112, i32 0, i32 0
  %140 = load ptr, ptr %z113, align 8
  %call114 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %136, ptr noundef @.str.597, ptr noundef %137, i32 noundef %138, ptr noundef %140)
  store ptr %call114, ptr %zStmt, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.end111, %if.then97
  %141 = load ptr, ptr %pParse.addr, align 8
  %142 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %142, i32 0, i32 4
  %143 = load ptr, ptr %aDb, align 8
  %144 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %144 to i64
  %arrayidx116 = getelementptr inbounds %struct.Db, ptr %143, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx116, i32 0, i32 0
  %145 = load ptr, ptr %zDbSName, align 8
  %146 = load ptr, ptr %zType, align 8
  %147 = load ptr, ptr %p, align 8
  %zName117 = getelementptr inbounds nuw %struct.Table, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %zName117, align 8
  %149 = load ptr, ptr %p, align 8
  %zName118 = getelementptr inbounds nuw %struct.Table, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %zName118, align 8
  %151 = load ptr, ptr %pParse.addr, align 8
  %regRoot119 = getelementptr inbounds nuw %struct.Parse, ptr %151, i32 0, i32 29
  %152 = load i32, ptr %regRoot119, align 4
  %153 = load ptr, ptr %zStmt, align 8
  %154 = load ptr, ptr %pParse.addr, align 8
  %regRowid120 = getelementptr inbounds nuw %struct.Parse, ptr %154, i32 0, i32 28
  %155 = load i32, ptr %regRowid120, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %141, ptr noundef @.str.598, ptr noundef %145, ptr noundef @.str.320, ptr noundef %146, ptr noundef %148, ptr noundef %150, i32 noundef %152, ptr noundef %153, i32 noundef %155)
  %156 = load ptr, ptr %db, align 8
  %157 = load ptr, ptr %zStmt, align 8
  call void @sqlite3DbFree(ptr noundef %156, ptr noundef %157)
  %158 = load ptr, ptr %pParse.addr, align 8
  %159 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %158, i32 noundef %159)
  %160 = load ptr, ptr %p, align 8
  %tabFlags121 = getelementptr inbounds nuw %struct.Table, ptr %160, i32 0, i32 9
  %161 = load i32, ptr %tabFlags121, align 8
  %and122 = and i32 %161, 8
  %cmp123 = icmp ne i32 %and122, 0
  br i1 %cmp123, label %if.then125, label %if.end135

if.then125:                                       ; preds = %if.end115
  %162 = load ptr, ptr %db, align 8
  %aDb126 = getelementptr inbounds nuw %struct.sqlite3, ptr %162, i32 0, i32 4
  %163 = load ptr, ptr %aDb126, align 8
  %164 = load i32, ptr %iDb, align 4
  %idxprom127 = sext i32 %164 to i64
  %arrayidx128 = getelementptr inbounds %struct.Db, ptr %163, i64 %idxprom127
  store ptr %arrayidx128, ptr %pDb, align 8
  %165 = load ptr, ptr %pDb, align 8
  %pSchema129 = getelementptr inbounds nuw %struct.Db, ptr %165, i32 0, i32 4
  %166 = load ptr, ptr %pSchema129, align 8
  %pSeqTab = getelementptr inbounds nuw %struct.Schema, ptr %166, i32 0, i32 6
  %167 = load ptr, ptr %pSeqTab, align 8
  %cmp130 = icmp eq ptr %167, null
  br i1 %cmp130, label %if.then132, label %if.end134

if.then132:                                       ; preds = %if.then125
  %168 = load ptr, ptr %pParse.addr, align 8
  %169 = load ptr, ptr %pDb, align 8
  %zDbSName133 = getelementptr inbounds nuw %struct.Db, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %zDbSName133, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %168, ptr noundef @.str.599, ptr noundef %170)
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.then125
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end115
  %171 = load ptr, ptr %v, align 8
  %172 = load i32, ptr %iDb, align 4
  %173 = load ptr, ptr %db, align 8
  %174 = load ptr, ptr %p, align 8
  %zName136 = getelementptr inbounds nuw %struct.Table, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %zName136, align 8
  %call137 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %173, ptr noundef @.str.600, ptr noundef %175)
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %171, i32 noundef %172, ptr noundef %call137)
  br label %if.end138

if.end138:                                        ; preds = %if.end135, %for.end
  %176 = load ptr, ptr %db, align 8
  %init139 = getelementptr inbounds nuw %struct.sqlite3, ptr %176, i32 0, i32 35
  %busy140 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init139, i32 0, i32 2
  %177 = load i8, ptr %busy140, align 1
  %tobool141 = icmp ne i8 %177, 0
  br i1 %tobool141, label %if.then142, label %if.end171

if.then142:                                       ; preds = %if.end138
  %178 = load ptr, ptr %p, align 8
  %pSchema144 = getelementptr inbounds nuw %struct.Table, ptr %178, i32 0, i32 20
  %179 = load ptr, ptr %pSchema144, align 8
  store ptr %179, ptr %pSchema143, align 8
  %180 = load ptr, ptr %pSchema143, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %180, i32 0, i32 2
  %181 = load ptr, ptr %p, align 8
  %zName145 = getelementptr inbounds nuw %struct.Table, ptr %181, i32 0, i32 0
  %182 = load ptr, ptr %zName145, align 8
  %183 = load ptr, ptr %p, align 8
  %call146 = call ptr @sqlite3HashInsert(ptr noundef %tblHash, ptr noundef %182, ptr noundef %183)
  store ptr %call146, ptr %pOld, align 8
  %184 = load ptr, ptr %pOld, align 8
  %tobool147 = icmp ne ptr %184, null
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.then142
  %185 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %185)
  br label %if.end171

if.end149:                                        ; preds = %if.then142
  %186 = load ptr, ptr %pParse.addr, align 8
  %pNewTable150 = getelementptr inbounds nuw %struct.Parse, ptr %186, i32 0, i32 58
  store ptr null, ptr %pNewTable150, align 8
  %187 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %187, i32 0, i32 6
  %188 = load i32, ptr %mDbFlags, align 4
  %or151 = or i32 %188, 1
  store i32 %or151, ptr %mDbFlags, align 4
  %189 = load ptr, ptr %p, align 8
  %pSelect152 = getelementptr inbounds nuw %struct.Table, ptr %189, i32 0, i32 3
  %190 = load ptr, ptr %pSelect152, align 8
  %tobool153 = icmp ne ptr %190, null
  br i1 %tobool153, label %if.end170, label %if.then154

if.then154:                                       ; preds = %if.end149
  %191 = load ptr, ptr %pParse.addr, align 8
  %sNameToken156 = getelementptr inbounds nuw %struct.Parse, ptr %191, i32 0, i32 46
  %z157 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken156, i32 0, i32 0
  %192 = load ptr, ptr %z157, align 8
  store ptr %192, ptr %zName155, align 8
  %193 = load ptr, ptr %pCons.addr, align 8
  %z158 = getelementptr inbounds nuw %struct.Token, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %z158, align 8
  %cmp159 = icmp eq ptr %194, null
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.then154
  %195 = load ptr, ptr %pEnd.addr, align 8
  store ptr %195, ptr %pCons.addr, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.then154
  %196 = load ptr, ptr %pCons.addr, align 8
  %z163 = getelementptr inbounds nuw %struct.Token, ptr %196, i32 0, i32 0
  %197 = load ptr, ptr %z163, align 8
  %198 = load ptr, ptr %zName155, align 8
  %sub.ptr.lhs.cast164 = ptrtoint ptr %197 to i64
  %sub.ptr.rhs.cast165 = ptrtoint ptr %198 to i64
  %sub.ptr.sub166 = sub i64 %sub.ptr.lhs.cast164, %sub.ptr.rhs.cast165
  %conv167 = trunc i64 %sub.ptr.sub166 to i32
  store i32 %conv167, ptr %nName, align 4
  %199 = load ptr, ptr %zName155, align 8
  %200 = load i32, ptr %nName, align 4
  %call168 = call i32 @sqlite3Utf8CharLen(ptr noundef %199, i32 noundef %200)
  %add169 = add nsw i32 13, %call168
  %201 = load ptr, ptr %p, align 8
  %addColOffset = getelementptr inbounds nuw %struct.Table, ptr %201, i32 0, i32 15
  store i32 %add169, ptr %addColOffset, align 8
  br label %if.end170

if.end170:                                        ; preds = %if.end162, %if.end149
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %if.then148, %if.end138, %if.then87, %if.then78, %if.then73, %if.then54, %if.then28, %if.then13, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isShadowTableName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @convertToWithoutRowidTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveSelfReference(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @estimateTableWidth(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @estimateIndexWidth(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ResultSetOfSelect(ptr noundef, ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEndCoroutine(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableAffinity(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @createTableStmt(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAddParseSchemaOp(ptr noundef, i32 noundef, ptr noundef) #0

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
