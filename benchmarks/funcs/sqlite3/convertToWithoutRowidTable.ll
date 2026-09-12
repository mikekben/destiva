; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CreateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP3(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @convertToWithoutRowidTable(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %nPk = alloca i32, align 4
  %nExtra = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %db = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %ipkToken = alloca %struct.Token, align 8
  %n = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 35
  %imposterTable = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 3
  %bf.load = load i8, ptr %imposterTable, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 11
  %7 = load i16, ptr %nCol, align 2
  %conv = sext i16 %7 to i32
  %cmp = icmp slt i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aCol, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %9, i64 %idxprom
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 6
  %11 = load i8, ptr %colFlags, align 1
  %conv3 = zext i8 %11 to i32
  %and = and i32 %conv3, 1
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %12 = load ptr, ptr %pTab.addr, align 8
  %aCol7 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aCol7, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.Column, ptr %13, i64 %idxprom8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx9, i32 0, i32 3
  store i8 2, ptr %notNull, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %16 = load ptr, ptr %pParse.addr, align 8
  %addrCrTab = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 38
  %17 = load i32, ptr %addrCrTab, align 8
  %tobool11 = icmp ne i32 %17, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %18 = load ptr, ptr %v, align 8
  %19 = load ptr, ptr %pParse.addr, align 8
  %addrCrTab13 = getelementptr inbounds nuw %struct.Parse, ptr %19, i32 0, i32 38
  %20 = load i32, ptr %addrCrTab13, align 8
  call void @sqlite3VdbeChangeP3(ptr noundef %18, i32 noundef %20, i32 noundef 2)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %21 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 10
  %22 = load i16, ptr %iPKey, align 4
  %conv15 = sext i16 %22 to i32
  %cmp16 = icmp sge i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  %23 = load ptr, ptr %pTab.addr, align 8
  %aCol19 = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %aCol19, align 8
  %25 = load ptr, ptr %pTab.addr, align 8
  %iPKey20 = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 10
  %26 = load i16, ptr %iPKey20, align 4
  %idxprom21 = sext i16 %26 to i64
  %arrayidx22 = getelementptr inbounds %struct.Column, ptr %24, i64 %idxprom21
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx22, i32 0, i32 0
  %27 = load ptr, ptr %zName, align 8
  call void @sqlite3TokenInit(ptr noundef %ipkToken, ptr noundef %27)
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3ExprAlloc(ptr noundef %29, i32 noundef 59, ptr noundef %ipkToken, i32 noundef 0)
  %call23 = call ptr @sqlite3ExprListAppend(ptr noundef %28, ptr noundef null, ptr noundef %call)
  store ptr %call23, ptr %pList, align 8
  %30 = load ptr, ptr %pList, align 8
  %cmp24 = icmp eq ptr %30, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then18
  br label %return

if.end27:                                         ; preds = %if.then18
  %31 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %31, i32 0, i32 51
  %32 = load i8, ptr %eParseMode, align 4
  %conv28 = zext i8 %32 to i32
  %cmp29 = icmp sge i32 %conv28, 2
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end27
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %34, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx32, i32 0, i32 0
  %35 = load ptr, ptr %pExpr, align 8
  %36 = load ptr, ptr %pTab.addr, align 8
  %iPKey33 = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 10
  call void @sqlite3RenameTokenRemap(ptr noundef %33, ptr noundef %35, ptr noundef %iPKey33)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27
  %37 = load ptr, ptr %pParse.addr, align 8
  %iPkSortOrder = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 49
  %38 = load i8, ptr %iPkSortOrder, align 2
  %39 = load ptr, ptr %pList, align 8
  %a35 = getelementptr inbounds nuw %struct.ExprList, ptr %39, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a35, i64 0, i64 0
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx36, i32 0, i32 3
  store i8 %38, ptr %sortFlags, align 8
  %40 = load ptr, ptr %pTab.addr, align 8
  %iPKey37 = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 10
  store i16 -1, ptr %iPKey37, align 4
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load ptr, ptr %pList, align 8
  %43 = load ptr, ptr %pTab.addr, align 8
  %keyConf = getelementptr inbounds nuw %struct.Table, ptr %43, i32 0, i32 14
  %44 = load i8, ptr %keyConf, align 4
  %conv38 = zext i8 %44 to i32
  call void @sqlite3CreateIndex(ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %42, i32 noundef %conv38, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 2)
  %45 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 19
  %46 = load i8, ptr %mallocFailed, align 1
  %conv39 = zext i8 %46 to i32
  %tobool40 = icmp ne i32 %conv39, 0
  br i1 %tobool40, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %47 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 16
  %48 = load i32, ptr %nErr, align 8
  %tobool41 = icmp ne i32 %48, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %if.end34
  br label %return

if.end43:                                         ; preds = %lor.lhs.false
  %49 = load ptr, ptr %pTab.addr, align 8
  %call44 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %49)
  store ptr %call44, ptr %pPk, align 8
  br label %if.end77

if.else:                                          ; preds = %if.end14
  %50 = load ptr, ptr %pTab.addr, align 8
  %call45 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %50)
  store ptr %call45, ptr %pPk, align 8
  store i32 1, ptr %j, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc72, %if.else
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %pPk, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %52, i32 0, i32 13
  %53 = load i16, ptr %nKeyCol, align 2
  %conv47 = zext i16 %53 to i32
  %cmp48 = icmp slt i32 %51, %conv47
  br i1 %cmp48, label %for.body50, label %for.end74

for.body50:                                       ; preds = %for.cond46
  %54 = load ptr, ptr %pPk, align 8
  %55 = load i32, ptr %j, align 4
  %56 = load ptr, ptr %pPk, align 8
  %57 = load i32, ptr %i, align 4
  %call51 = call i32 @isDupColumn(ptr noundef %54, i32 noundef %55, ptr noundef %56, i32 noundef %57)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %for.body50
  %58 = load ptr, ptr %pPk, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %58, i32 0, i32 14
  %59 = load i16, ptr %nColumn, align 8
  %dec = add i16 %59, -1
  store i16 %dec, ptr %nColumn, align 8
  br label %if.end71

if.else54:                                        ; preds = %for.body50
  %60 = load ptr, ptr %pPk, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %azColl, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %62 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %61, i64 %idxprom55
  %63 = load ptr, ptr %arrayidx56, align 8
  %64 = load ptr, ptr %pPk, align 8
  %azColl57 = getelementptr inbounds nuw %struct.Index, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %azColl57, align 8
  %66 = load i32, ptr %j, align 4
  %idxprom58 = sext i32 %66 to i64
  %arrayidx59 = getelementptr inbounds ptr, ptr %65, i64 %idxprom58
  store ptr %63, ptr %arrayidx59, align 8
  %67 = load ptr, ptr %pPk, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %67, i32 0, i32 7
  %68 = load ptr, ptr %aSortOrder, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %69 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %68, i64 %idxprom60
  %70 = load i8, ptr %arrayidx61, align 1
  %71 = load ptr, ptr %pPk, align 8
  %aSortOrder62 = getelementptr inbounds nuw %struct.Index, ptr %71, i32 0, i32 7
  %72 = load ptr, ptr %aSortOrder62, align 8
  %73 = load i32, ptr %j, align 4
  %idxprom63 = sext i32 %73 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %72, i64 %idxprom63
  store i8 %70, ptr %arrayidx64, align 1
  %74 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %aiColumn, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %76 to i64
  %arrayidx66 = getelementptr inbounds i16, ptr %75, i64 %idxprom65
  %77 = load i16, ptr %arrayidx66, align 2
  %78 = load ptr, ptr %pPk, align 8
  %aiColumn67 = getelementptr inbounds nuw %struct.Index, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %aiColumn67, align 8
  %80 = load i32, ptr %j, align 4
  %inc68 = add nsw i32 %80, 1
  store i32 %inc68, ptr %j, align 4
  %idxprom69 = sext i32 %80 to i64
  %arrayidx70 = getelementptr inbounds i16, ptr %79, i64 %idxprom69
  store i16 %77, ptr %arrayidx70, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.else54, %if.then53
  br label %for.inc72

for.inc72:                                        ; preds = %if.end71
  %81 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %81, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond46, !llvm.loop !8

for.end74:                                        ; preds = %for.cond46
  %82 = load i32, ptr %j, align 4
  %conv75 = trunc i32 %82 to i16
  %83 = load ptr, ptr %pPk, align 8
  %nKeyCol76 = getelementptr inbounds nuw %struct.Index, ptr %83, i32 0, i32 13
  store i16 %conv75, ptr %nKeyCol76, align 2
  br label %if.end77

if.end77:                                         ; preds = %for.end74, %if.end43
  %84 = load ptr, ptr %pPk, align 8
  %isCovering = getelementptr inbounds nuw %struct.Index, ptr %84, i32 0, i32 16
  %bf.load78 = load i16, ptr %isCovering, align 1
  %bf.clear79 = and i16 %bf.load78, -33
  %bf.set = or i16 %bf.clear79, 32
  store i16 %bf.set, ptr %isCovering, align 1
  %85 = load ptr, ptr %db, align 8
  %init80 = getelementptr inbounds nuw %struct.sqlite3, ptr %85, i32 0, i32 35
  %imposterTable81 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init80, i32 0, i32 3
  %bf.load82 = load i8, ptr %imposterTable81, align 2
  %bf.lshr83 = lshr i8 %bf.load82, 1
  %bf.clear84 = and i8 %bf.lshr83, 1
  %bf.cast85 = zext i8 %bf.clear84 to i32
  %tobool86 = icmp ne i32 %bf.cast85, 0
  br i1 %tobool86, label %if.end91, label %if.then87

if.then87:                                        ; preds = %if.end77
  %86 = load ptr, ptr %pPk, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %86, i32 0, i32 16
  %bf.load88 = load i16, ptr %uniqNotNull, align 1
  %bf.clear89 = and i16 %bf.load88, -9
  %bf.set90 = or i16 %bf.clear89, 8
  store i16 %bf.set90, ptr %uniqNotNull, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %if.end77
  %87 = load ptr, ptr %pPk, align 8
  %nKeyCol92 = getelementptr inbounds nuw %struct.Index, ptr %87, i32 0, i32 13
  %88 = load i16, ptr %nKeyCol92, align 2
  %89 = load ptr, ptr %pPk, align 8
  %nColumn93 = getelementptr inbounds nuw %struct.Index, ptr %89, i32 0, i32 14
  store i16 %88, ptr %nColumn93, align 8
  %conv94 = zext i16 %88 to i32
  store i32 %conv94, ptr %nPk, align 4
  %90 = load ptr, ptr %v, align 8
  %tobool95 = icmp ne ptr %90, null
  br i1 %tobool95, label %land.lhs.true, label %if.end100

land.lhs.true:                                    ; preds = %if.end91
  %91 = load ptr, ptr %pPk, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %91, i32 0, i32 11
  %92 = load i32, ptr %tnum, align 8
  %cmp96 = icmp sgt i32 %92, 0
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %land.lhs.true
  %93 = load ptr, ptr %v, align 8
  %94 = load ptr, ptr %pPk, align 8
  %tnum99 = getelementptr inbounds nuw %struct.Index, ptr %94, i32 0, i32 11
  %95 = load i32, ptr %tnum99, align 8
  call void @sqlite3VdbeChangeOpcode(ptr noundef %93, i32 noundef %95, i8 noundef zeroext 11)
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %land.lhs.true, %if.end91
  %96 = load ptr, ptr %pTab.addr, align 8
  %tnum101 = getelementptr inbounds nuw %struct.Table, ptr %96, i32 0, i32 7
  %97 = load i32, ptr %tnum101, align 8
  %98 = load ptr, ptr %pPk, align 8
  %tnum102 = getelementptr inbounds nuw %struct.Index, ptr %98, i32 0, i32 11
  store i32 %97, ptr %tnum102, align 8
  %99 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %99, i32 0, i32 2
  %100 = load ptr, ptr %pIndex, align 8
  store ptr %100, ptr %pIdx, align 8
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc176, %if.end100
  %101 = load ptr, ptr %pIdx, align 8
  %tobool104 = icmp ne ptr %101, null
  br i1 %tobool104, label %for.body105, label %for.end177

for.body105:                                      ; preds = %for.cond103
  %102 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %102, i32 0, i32 16
  %bf.load106 = load i16, ptr %idxType, align 1
  %bf.clear107 = and i16 %bf.load106, 3
  %bf.cast108 = zext i16 %bf.clear107 to i32
  %cmp109 = icmp eq i32 %bf.cast108, 2
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %for.body105
  br label %for.inc176

if.end112:                                        ; preds = %for.body105
  store i32 0, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc124, %if.end112
  %103 = load i32, ptr %i, align 4
  %104 = load i32, ptr %nPk, align 4
  %cmp114 = icmp slt i32 %103, %104
  br i1 %cmp114, label %for.body116, label %for.end126

for.body116:                                      ; preds = %for.cond113
  %105 = load ptr, ptr %pIdx, align 8
  %106 = load ptr, ptr %pIdx, align 8
  %nKeyCol117 = getelementptr inbounds nuw %struct.Index, ptr %106, i32 0, i32 13
  %107 = load i16, ptr %nKeyCol117, align 2
  %conv118 = zext i16 %107 to i32
  %108 = load ptr, ptr %pPk, align 8
  %109 = load i32, ptr %i, align 4
  %call119 = call i32 @isDupColumn(ptr noundef %105, i32 noundef %conv118, ptr noundef %108, i32 noundef %109)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end123, label %if.then121

if.then121:                                       ; preds = %for.body116
  %110 = load i32, ptr %n, align 4
  %inc122 = add nsw i32 %110, 1
  store i32 %inc122, ptr %n, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %for.body116
  br label %for.inc124

for.inc124:                                       ; preds = %if.end123
  %111 = load i32, ptr %i, align 4
  %inc125 = add nsw i32 %111, 1
  store i32 %inc125, ptr %i, align 4
  br label %for.cond113, !llvm.loop !9

for.end126:                                       ; preds = %for.cond113
  %112 = load i32, ptr %n, align 4
  %cmp127 = icmp eq i32 %112, 0
  br i1 %cmp127, label %if.then129, label %if.end132

if.then129:                                       ; preds = %for.end126
  %113 = load ptr, ptr %pIdx, align 8
  %nKeyCol130 = getelementptr inbounds nuw %struct.Index, ptr %113, i32 0, i32 13
  %114 = load i16, ptr %nKeyCol130, align 2
  %115 = load ptr, ptr %pIdx, align 8
  %nColumn131 = getelementptr inbounds nuw %struct.Index, ptr %115, i32 0, i32 14
  store i16 %114, ptr %nColumn131, align 8
  br label %for.inc176

if.end132:                                        ; preds = %for.end126
  %116 = load ptr, ptr %db, align 8
  %117 = load ptr, ptr %pIdx, align 8
  %118 = load ptr, ptr %pIdx, align 8
  %nKeyCol133 = getelementptr inbounds nuw %struct.Index, ptr %118, i32 0, i32 13
  %119 = load i16, ptr %nKeyCol133, align 2
  %conv134 = zext i16 %119 to i32
  %120 = load i32, ptr %n, align 4
  %add = add nsw i32 %conv134, %120
  %call135 = call i32 @resizeIndexObject(ptr noundef %116, ptr noundef %117, i32 noundef %add)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end132
  br label %return

if.end138:                                        ; preds = %if.end132
  store i32 0, ptr %i, align 4
  %121 = load ptr, ptr %pIdx, align 8
  %nKeyCol139 = getelementptr inbounds nuw %struct.Index, ptr %121, i32 0, i32 13
  %122 = load i16, ptr %nKeyCol139, align 2
  %conv140 = zext i16 %122 to i32
  store i32 %conv140, ptr %j, align 4
  br label %for.cond141

for.cond141:                                      ; preds = %for.inc173, %if.end138
  %123 = load i32, ptr %i, align 4
  %124 = load i32, ptr %nPk, align 4
  %cmp142 = icmp slt i32 %123, %124
  br i1 %cmp142, label %for.body144, label %for.end175

for.body144:                                      ; preds = %for.cond141
  %125 = load ptr, ptr %pIdx, align 8
  %126 = load ptr, ptr %pIdx, align 8
  %nKeyCol145 = getelementptr inbounds nuw %struct.Index, ptr %126, i32 0, i32 13
  %127 = load i16, ptr %nKeyCol145, align 2
  %conv146 = zext i16 %127 to i32
  %128 = load ptr, ptr %pPk, align 8
  %129 = load i32, ptr %i, align 4
  %call147 = call i32 @isDupColumn(ptr noundef %125, i32 noundef %conv146, ptr noundef %128, i32 noundef %129)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end172, label %if.then149

if.then149:                                       ; preds = %for.body144
  %130 = load ptr, ptr %pPk, align 8
  %aiColumn150 = getelementptr inbounds nuw %struct.Index, ptr %130, i32 0, i32 1
  %131 = load ptr, ptr %aiColumn150, align 8
  %132 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %132 to i64
  %arrayidx152 = getelementptr inbounds i16, ptr %131, i64 %idxprom151
  %133 = load i16, ptr %arrayidx152, align 2
  %134 = load ptr, ptr %pIdx, align 8
  %aiColumn153 = getelementptr inbounds nuw %struct.Index, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %aiColumn153, align 8
  %136 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %136 to i64
  %arrayidx155 = getelementptr inbounds i16, ptr %135, i64 %idxprom154
  store i16 %133, ptr %arrayidx155, align 2
  %137 = load ptr, ptr %pPk, align 8
  %azColl156 = getelementptr inbounds nuw %struct.Index, ptr %137, i32 0, i32 8
  %138 = load ptr, ptr %azColl156, align 8
  %139 = load i32, ptr %i, align 4
  %idxprom157 = sext i32 %139 to i64
  %arrayidx158 = getelementptr inbounds ptr, ptr %138, i64 %idxprom157
  %140 = load ptr, ptr %arrayidx158, align 8
  %141 = load ptr, ptr %pIdx, align 8
  %azColl159 = getelementptr inbounds nuw %struct.Index, ptr %141, i32 0, i32 8
  %142 = load ptr, ptr %azColl159, align 8
  %143 = load i32, ptr %j, align 4
  %idxprom160 = sext i32 %143 to i64
  %arrayidx161 = getelementptr inbounds ptr, ptr %142, i64 %idxprom160
  store ptr %140, ptr %arrayidx161, align 8
  %144 = load ptr, ptr %pPk, align 8
  %aSortOrder162 = getelementptr inbounds nuw %struct.Index, ptr %144, i32 0, i32 7
  %145 = load ptr, ptr %aSortOrder162, align 8
  %146 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %146 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %145, i64 %idxprom163
  %147 = load i8, ptr %arrayidx164, align 1
  %tobool165 = icmp ne i8 %147, 0
  br i1 %tobool165, label %if.then166, label %if.end170

if.then166:                                       ; preds = %if.then149
  %148 = load ptr, ptr %pIdx, align 8
  %bAscKeyBug = getelementptr inbounds nuw %struct.Index, ptr %148, i32 0, i32 16
  %bf.load167 = load i16, ptr %bAscKeyBug, align 1
  %bf.clear168 = and i16 %bf.load167, -513
  %bf.set169 = or i16 %bf.clear168, 512
  store i16 %bf.set169, ptr %bAscKeyBug, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then166, %if.then149
  %149 = load i32, ptr %j, align 4
  %inc171 = add nsw i32 %149, 1
  store i32 %inc171, ptr %j, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end170, %for.body144
  br label %for.inc173

for.inc173:                                       ; preds = %if.end172
  %150 = load i32, ptr %i, align 4
  %inc174 = add nsw i32 %150, 1
  store i32 %inc174, ptr %i, align 4
  br label %for.cond141, !llvm.loop !10

for.end175:                                       ; preds = %for.cond141
  br label %for.inc176

for.inc176:                                       ; preds = %for.end175, %if.then129, %if.then111
  %151 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %151, i32 0, i32 5
  %152 = load ptr, ptr %pNext, align 8
  store ptr %152, ptr %pIdx, align 8
  br label %for.cond103, !llvm.loop !11

for.end177:                                       ; preds = %for.cond103
  store i32 0, ptr %nExtra, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc190, %for.end177
  %153 = load i32, ptr %i, align 4
  %154 = load ptr, ptr %pTab.addr, align 8
  %nCol179 = getelementptr inbounds nuw %struct.Table, ptr %154, i32 0, i32 11
  %155 = load i16, ptr %nCol179, align 2
  %conv180 = sext i16 %155 to i32
  %cmp181 = icmp slt i32 %153, %conv180
  br i1 %cmp181, label %for.body183, label %for.end192

for.body183:                                      ; preds = %for.cond178
  %156 = load ptr, ptr %pPk, align 8
  %aiColumn184 = getelementptr inbounds nuw %struct.Index, ptr %156, i32 0, i32 1
  %157 = load ptr, ptr %aiColumn184, align 8
  %158 = load i32, ptr %nPk, align 4
  %159 = load i32, ptr %i, align 4
  %call185 = call i32 @hasColumn(ptr noundef %157, i32 noundef %158, i32 noundef %159)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.end189, label %if.then187

if.then187:                                       ; preds = %for.body183
  %160 = load i32, ptr %nExtra, align 4
  %inc188 = add nsw i32 %160, 1
  store i32 %inc188, ptr %nExtra, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %for.body183
  br label %for.inc190

for.inc190:                                       ; preds = %if.end189
  %161 = load i32, ptr %i, align 4
  %inc191 = add nsw i32 %161, 1
  store i32 %inc191, ptr %i, align 4
  br label %for.cond178, !llvm.loop !12

for.end192:                                       ; preds = %for.cond178
  %162 = load ptr, ptr %db, align 8
  %163 = load ptr, ptr %pPk, align 8
  %164 = load i32, ptr %nPk, align 4
  %165 = load i32, ptr %nExtra, align 4
  %add193 = add nsw i32 %164, %165
  %call194 = call i32 @resizeIndexObject(ptr noundef %162, ptr noundef %163, i32 noundef %add193)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.end192
  br label %return

if.end197:                                        ; preds = %for.end192
  store i32 0, ptr %i, align 4
  %166 = load i32, ptr %nPk, align 4
  store i32 %166, ptr %j, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc217, %if.end197
  %167 = load i32, ptr %i, align 4
  %168 = load ptr, ptr %pTab.addr, align 8
  %nCol199 = getelementptr inbounds nuw %struct.Table, ptr %168, i32 0, i32 11
  %169 = load i16, ptr %nCol199, align 2
  %conv200 = sext i16 %169 to i32
  %cmp201 = icmp slt i32 %167, %conv200
  br i1 %cmp201, label %for.body203, label %for.end219

for.body203:                                      ; preds = %for.cond198
  %170 = load ptr, ptr %pPk, align 8
  %aiColumn204 = getelementptr inbounds nuw %struct.Index, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %aiColumn204, align 8
  %172 = load i32, ptr %j, align 4
  %173 = load i32, ptr %i, align 4
  %call205 = call i32 @hasColumn(ptr noundef %171, i32 noundef %172, i32 noundef %173)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %if.end216, label %if.then207

if.then207:                                       ; preds = %for.body203
  %174 = load i32, ptr %i, align 4
  %conv208 = trunc i32 %174 to i16
  %175 = load ptr, ptr %pPk, align 8
  %aiColumn209 = getelementptr inbounds nuw %struct.Index, ptr %175, i32 0, i32 1
  %176 = load ptr, ptr %aiColumn209, align 8
  %177 = load i32, ptr %j, align 4
  %idxprom210 = sext i32 %177 to i64
  %arrayidx211 = getelementptr inbounds i16, ptr %176, i64 %idxprom210
  store i16 %conv208, ptr %arrayidx211, align 2
  %178 = load ptr, ptr %pPk, align 8
  %azColl212 = getelementptr inbounds nuw %struct.Index, ptr %178, i32 0, i32 8
  %179 = load ptr, ptr %azColl212, align 8
  %180 = load i32, ptr %j, align 4
  %idxprom213 = sext i32 %180 to i64
  %arrayidx214 = getelementptr inbounds ptr, ptr %179, i64 %idxprom213
  store ptr @sqlite3StrBINARY, ptr %arrayidx214, align 8
  %181 = load i32, ptr %j, align 4
  %inc215 = add nsw i32 %181, 1
  store i32 %inc215, ptr %j, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then207, %for.body203
  br label %for.inc217

for.inc217:                                       ; preds = %if.end216
  %182 = load i32, ptr %i, align 4
  %inc218 = add nsw i32 %182, 1
  store i32 %inc218, ptr %i, align 4
  br label %for.cond198, !llvm.loop !13

for.end219:                                       ; preds = %for.cond198
  %183 = load ptr, ptr %pPk, align 8
  call void @recomputeColumnsNotIndexed(ptr noundef %183)
  br label %return

return:                                           ; preds = %for.end219, %if.then196, %if.then137, %if.then42, %if.then26
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TokenInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isDupColumn(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeOpcode(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @resizeIndexObject(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @hasColumn(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @recomputeColumnsNotIndexed(ptr noundef) #0

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
!13 = distinct !{!13, !7}
