; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.InLoop = type { i32, i32, i32, i32, i8 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

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
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WhereEnd(ptr noundef %pWInfo) #0 {
entry:
  %pWInfo.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pLevel = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %pTabList = alloca ptr, align 8
  %db = alloca ptr, align 8
  %addr = alloca i32, align 4
  %addrSeek = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %n = alloca i32, align 4
  %r1 = alloca i32, align 4
  %j = alloca i32, align 4
  %op32 = alloca i32, align 4
  %pIn = alloca ptr, align 8
  %j74 = alloca i32, align 4
  %ws = alloca i32, align 4
  %k = alloca i32, align 4
  %last = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %pIdx165 = alloca ptr, align 8
  %pTabItem = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %x = alloca i32, align 4
  %pPk = alloca ptr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList2 = getelementptr inbounds nuw %struct.WhereInfo, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pTabList2, align 8
  store ptr %5, ptr %pTabList, align 8
  %6 = load ptr, ptr %pParse, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db3, align 8
  store ptr %7, ptr %db, align 8
  %8 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %8, i32 0, i32 11
  %9 = load i8, ptr %nLevel, align 2
  %conv = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc155, %entry
  %10 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end157

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pWInfo.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereInfo, ptr %11, i32 0, i32 24
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pLevel, align 8
  %13 = load ptr, ptr %pLevel, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %13, i32 0, i32 20
  %14 = load ptr, ptr %pWLoop, align 8
  store ptr %14, ptr %pLoop, align 8
  %15 = load ptr, ptr %pLevel, align 8
  %op = getelementptr inbounds nuw %struct.WhereLevel, ptr %15, i32 0, i32 14
  %16 = load i8, ptr %op, align 1
  %conv5 = zext i8 %16 to i32
  %cmp6 = icmp ne i32 %conv5, 170
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 0, ptr %addrSeek, align 4
  %17 = load ptr, ptr %pWInfo.addr, align 8
  %eDistinct = getelementptr inbounds nuw %struct.WhereInfo, ptr %17, i32 0, i32 16
  %18 = load i8, ptr %eDistinct, align 1
  %conv8 = zext i8 %18 to i32
  %cmp9 = icmp eq i32 %conv8, 2
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load i32, ptr %i, align 4
  %20 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel11 = getelementptr inbounds nuw %struct.WhereInfo, ptr %20, i32 0, i32 11
  %21 = load i8, ptr %nLevel11, align 2
  %conv12 = zext i8 %21 to i32
  %sub13 = sub nsw i32 %conv12, 1
  %cmp14 = icmp eq i32 %19, %sub13
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %22 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 8
  %23 = load i32, ptr %wsFlags, align 8
  %and = and i32 %23, 512
  %cmp17 = icmp ne i32 %and, 0
  br i1 %cmp17, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %24 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %24, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 4
  %25 = load ptr, ptr %pIndex, align 8
  store ptr %25, ptr %pIdx, align 8
  %hasStat1 = getelementptr inbounds nuw %struct.Index, ptr %25, i32 0, i32 16
  %bf.load = load i16, ptr %hasStat1, align 1
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true19
  %26 = load ptr, ptr %pLoop, align 8
  %u21 = getelementptr inbounds nuw %struct.WhereLoop, ptr %26, i32 0, i32 7
  %nDistinctCol = getelementptr inbounds nuw %struct.anon.19, ptr %u21, i32 0, i32 3
  %27 = load i16, ptr %nDistinctCol, align 2
  %conv22 = zext i16 %27 to i32
  store i32 %conv22, ptr %n, align 4
  %cmp23 = icmp sgt i32 %conv22, 0
  br i1 %cmp23, label %land.lhs.true25, label %if.end

land.lhs.true25:                                  ; preds = %land.lhs.true20
  %28 = load ptr, ptr %pIdx, align 8
  %aiRowLogEst = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %aiRowLogEst, align 8
  %30 = load i32, ptr %n, align 4
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %29, i64 %idxprom26
  %31 = load i16, ptr %arrayidx27, align 2
  %conv28 = sext i16 %31 to i32
  %cmp29 = icmp sge i32 %conv28, 36
  br i1 %cmp29, label %if.then31, label %if.end

if.then31:                                        ; preds = %land.lhs.true25
  %32 = load ptr, ptr %pParse, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 18
  %33 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %33, 1
  store i32 %add, ptr %r1, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %if.then31
  %34 = load i32, ptr %j, align 4
  %35 = load i32, ptr %n, align 4
  %cmp34 = icmp slt i32 %34, %35
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %36 = load ptr, ptr %v, align 8
  %37 = load ptr, ptr %pLevel, align 8
  %iIdxCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %iIdxCur, align 8
  %39 = load i32, ptr %j, align 4
  %40 = load i32, ptr %r1, align 4
  %41 = load i32, ptr %j, align 4
  %add37 = add nsw i32 %40, %41
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %36, i32 noundef 90, i32 noundef %38, i32 noundef %39, i32 noundef %add37)
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %42 = load i32, ptr %j, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond33, !llvm.loop !6

for.end:                                          ; preds = %for.cond33
  %43 = load i32, ptr %n, align 4
  %add38 = add nsw i32 %43, 1
  %44 = load ptr, ptr %pParse, align 8
  %nMem39 = getelementptr inbounds nuw %struct.Parse, ptr %44, i32 0, i32 18
  %45 = load i32, ptr %nMem39, align 8
  %add40 = add nsw i32 %45, %add38
  store i32 %add40, ptr %nMem39, align 8
  %46 = load ptr, ptr %pLevel, align 8
  %op41 = getelementptr inbounds nuw %struct.WhereLevel, ptr %46, i32 0, i32 14
  %47 = load i8, ptr %op41, align 1
  %conv42 = zext i8 %47 to i32
  %cmp43 = icmp eq i32 %conv42, 4
  %48 = zext i1 %cmp43 to i64
  %cond = select i1 %cmp43, i32 22, i32 25
  store i32 %cond, ptr %op32, align 4
  %49 = load ptr, ptr %v, align 8
  %50 = load i32, ptr %op32, align 4
  %51 = load ptr, ptr %pLevel, align 8
  %iIdxCur45 = getelementptr inbounds nuw %struct.WhereLevel, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %iIdxCur45, align 8
  %53 = load i32, ptr %r1, align 4
  %54 = load i32, ptr %n, align 4
  %call46 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %49, i32 noundef %50, i32 noundef %52, i32 noundef 0, i32 noundef %53, i32 noundef %54)
  store i32 %call46, ptr %addrSeek, align 4
  %55 = load ptr, ptr %v, align 8
  %56 = load ptr, ptr %pLevel, align 8
  %p2 = getelementptr inbounds nuw %struct.WhereLevel, ptr %56, i32 0, i32 18
  %57 = load i32, ptr %p2, align 4
  %call47 = call i32 @sqlite3VdbeAddOp2(ptr noundef %55, i32 noundef 11, i32 noundef 1, i32 noundef %57)
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true25, %land.lhs.true20, %land.lhs.true19, %land.lhs.true16, %land.lhs.true, %if.then
  %58 = load ptr, ptr %v, align 8
  %59 = load ptr, ptr %pLevel, align 8
  %addrCont = getelementptr inbounds nuw %struct.WhereLevel, ptr %59, i32 0, i32 6
  %60 = load i32, ptr %addrCont, align 8
  call void @sqlite3VdbeResolveLabel(ptr noundef %58, i32 noundef %60)
  %61 = load ptr, ptr %v, align 8
  %62 = load ptr, ptr %pLevel, align 8
  %op48 = getelementptr inbounds nuw %struct.WhereLevel, ptr %62, i32 0, i32 14
  %63 = load i8, ptr %op48, align 1
  %conv49 = zext i8 %63 to i32
  %64 = load ptr, ptr %pLevel, align 8
  %p1 = getelementptr inbounds nuw %struct.WhereLevel, ptr %64, i32 0, i32 17
  %65 = load i32, ptr %p1, align 8
  %66 = load ptr, ptr %pLevel, align 8
  %p250 = getelementptr inbounds nuw %struct.WhereLevel, ptr %66, i32 0, i32 18
  %67 = load i32, ptr %p250, align 4
  %68 = load ptr, ptr %pLevel, align 8
  %p3 = getelementptr inbounds nuw %struct.WhereLevel, ptr %68, i32 0, i32 15
  %69 = load i8, ptr %p3, align 2
  %conv51 = zext i8 %69 to i32
  %call52 = call i32 @sqlite3VdbeAddOp3(ptr noundef %61, i32 noundef %conv49, i32 noundef %65, i32 noundef %67, i32 noundef %conv51)
  %70 = load ptr, ptr %v, align 8
  %71 = load ptr, ptr %pLevel, align 8
  %p5 = getelementptr inbounds nuw %struct.WhereLevel, ptr %71, i32 0, i32 16
  %72 = load i8, ptr %p5, align 1
  %conv53 = zext i8 %72 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %70, i16 noundef zeroext %conv53)
  %73 = load ptr, ptr %pLevel, align 8
  %regBignull = getelementptr inbounds nuw %struct.WhereLevel, ptr %73, i32 0, i32 9
  %74 = load i32, ptr %regBignull, align 4
  %tobool54 = icmp ne i32 %74, 0
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end
  %75 = load ptr, ptr %v, align 8
  %76 = load ptr, ptr %pLevel, align 8
  %addrBignull = getelementptr inbounds nuw %struct.WhereLevel, ptr %76, i32 0, i32 10
  %77 = load i32, ptr %addrBignull, align 8
  call void @sqlite3VdbeResolveLabel(ptr noundef %75, i32 noundef %77)
  %78 = load ptr, ptr %v, align 8
  %79 = load ptr, ptr %pLevel, align 8
  %regBignull56 = getelementptr inbounds nuw %struct.WhereLevel, ptr %79, i32 0, i32 9
  %80 = load i32, ptr %regBignull56, align 4
  %81 = load ptr, ptr %pLevel, align 8
  %p257 = getelementptr inbounds nuw %struct.WhereLevel, ptr %81, i32 0, i32 18
  %82 = load i32, ptr %p257, align 4
  %sub58 = sub nsw i32 %82, 1
  %call59 = call i32 @sqlite3VdbeAddOp2(ptr noundef %78, i32 noundef 49, i32 noundef %80, i32 noundef %sub58)
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end
  %83 = load i32, ptr %addrSeek, align 4
  %tobool61 = icmp ne i32 %83, 0
  br i1 %tobool61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end60
  %84 = load ptr, ptr %v, align 8
  %85 = load i32, ptr %addrSeek, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %84, i32 noundef %85)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60
  br label %if.end65

if.else:                                          ; preds = %for.body
  %86 = load ptr, ptr %v, align 8
  %87 = load ptr, ptr %pLevel, align 8
  %addrCont64 = getelementptr inbounds nuw %struct.WhereLevel, ptr %87, i32 0, i32 6
  %88 = load i32, ptr %addrCont64, align 8
  call void @sqlite3VdbeResolveLabel(ptr noundef %86, i32 noundef %88)
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.end63
  %89 = load ptr, ptr %pLoop, align 8
  %wsFlags66 = getelementptr inbounds nuw %struct.WhereLoop, ptr %89, i32 0, i32 8
  %90 = load i32, ptr %wsFlags66, align 8
  %and67 = and i32 %90, 2048
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %land.lhs.true69, label %if.end107

land.lhs.true69:                                  ; preds = %if.end65
  %91 = load ptr, ptr %pLevel, align 8
  %u70 = getelementptr inbounds nuw %struct.WhereLevel, ptr %91, i32 0, i32 19
  %nIn = getelementptr inbounds nuw %struct.anon.17, ptr %u70, i32 0, i32 0
  %92 = load i32, ptr %nIn, align 8
  %cmp71 = icmp sgt i32 %92, 0
  br i1 %cmp71, label %if.then73, label %if.end107

if.then73:                                        ; preds = %land.lhs.true69
  %93 = load ptr, ptr %v, align 8
  %94 = load ptr, ptr %pLevel, align 8
  %addrNxt = getelementptr inbounds nuw %struct.WhereLevel, ptr %94, i32 0, i32 4
  %95 = load i32, ptr %addrNxt, align 8
  call void @sqlite3VdbeResolveLabel(ptr noundef %93, i32 noundef %95)
  %96 = load ptr, ptr %pLevel, align 8
  %u75 = getelementptr inbounds nuw %struct.WhereLevel, ptr %96, i32 0, i32 19
  %nIn76 = getelementptr inbounds nuw %struct.anon.17, ptr %u75, i32 0, i32 0
  %97 = load i32, ptr %nIn76, align 8
  store i32 %97, ptr %j74, align 4
  %98 = load ptr, ptr %pLevel, align 8
  %u77 = getelementptr inbounds nuw %struct.WhereLevel, ptr %98, i32 0, i32 19
  %aInLoop = getelementptr inbounds nuw %struct.anon.17, ptr %u77, i32 0, i32 1
  %99 = load ptr, ptr %aInLoop, align 8
  %100 = load i32, ptr %j74, align 4
  %sub78 = sub nsw i32 %100, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds %struct.InLoop, ptr %99, i64 %idxprom79
  store ptr %arrayidx80, ptr %pIn, align 8
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc105, %if.then73
  %101 = load i32, ptr %j74, align 4
  %cmp82 = icmp sgt i32 %101, 0
  br i1 %cmp82, label %for.body84, label %for.end106

for.body84:                                       ; preds = %for.cond81
  %102 = load ptr, ptr %v, align 8
  %103 = load ptr, ptr %pIn, align 8
  %addrInTop = getelementptr inbounds nuw %struct.InLoop, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %addrInTop, align 4
  %add85 = add nsw i32 %104, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %102, i32 noundef %add85)
  %105 = load ptr, ptr %pIn, align 8
  %eEndLoopOp = getelementptr inbounds nuw %struct.InLoop, ptr %105, i32 0, i32 4
  %106 = load i8, ptr %eEndLoopOp, align 4
  %conv86 = zext i8 %106 to i32
  %cmp87 = icmp ne i32 %conv86, 170
  br i1 %cmp87, label %if.then89, label %if.end102

if.then89:                                        ; preds = %for.body84
  %107 = load ptr, ptr %pIn, align 8
  %nPrefix = getelementptr inbounds nuw %struct.InLoop, ptr %107, i32 0, i32 3
  %108 = load i32, ptr %nPrefix, align 4
  %tobool90 = icmp ne i32 %108, 0
  br i1 %tobool90, label %if.then91, label %if.end97

if.then91:                                        ; preds = %if.then89
  %109 = load ptr, ptr %v, align 8
  %110 = load ptr, ptr %pLevel, align 8
  %iIdxCur92 = getelementptr inbounds nuw %struct.WhereLevel, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %iIdxCur92, align 8
  %112 = load ptr, ptr %v, align 8
  %call93 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %112)
  %add94 = add nsw i32 %call93, 2
  %113 = load ptr, ptr %pIn, align 8
  %iBase = getelementptr inbounds nuw %struct.InLoop, ptr %113, i32 0, i32 2
  %114 = load i32, ptr %iBase, align 4
  %115 = load ptr, ptr %pIn, align 8
  %nPrefix95 = getelementptr inbounds nuw %struct.InLoop, ptr %115, i32 0, i32 3
  %116 = load i32, ptr %nPrefix95, align 4
  %call96 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %109, i32 noundef 26, i32 noundef %111, i32 noundef %add94, i32 noundef %114, i32 noundef %116)
  br label %if.end97

if.end97:                                         ; preds = %if.then91, %if.then89
  %117 = load ptr, ptr %v, align 8
  %118 = load ptr, ptr %pIn, align 8
  %eEndLoopOp98 = getelementptr inbounds nuw %struct.InLoop, ptr %118, i32 0, i32 4
  %119 = load i8, ptr %eEndLoopOp98, align 4
  %conv99 = zext i8 %119 to i32
  %120 = load ptr, ptr %pIn, align 8
  %iCur = getelementptr inbounds nuw %struct.InLoop, ptr %120, i32 0, i32 0
  %121 = load i32, ptr %iCur, align 4
  %122 = load ptr, ptr %pIn, align 8
  %addrInTop100 = getelementptr inbounds nuw %struct.InLoop, ptr %122, i32 0, i32 1
  %123 = load i32, ptr %addrInTop100, align 4
  %call101 = call i32 @sqlite3VdbeAddOp2(ptr noundef %117, i32 noundef %conv99, i32 noundef %121, i32 noundef %123)
  br label %if.end102

if.end102:                                        ; preds = %if.end97, %for.body84
  %124 = load ptr, ptr %v, align 8
  %125 = load ptr, ptr %pIn, align 8
  %addrInTop103 = getelementptr inbounds nuw %struct.InLoop, ptr %125, i32 0, i32 1
  %126 = load i32, ptr %addrInTop103, align 4
  %sub104 = sub nsw i32 %126, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %124, i32 noundef %sub104)
  br label %for.inc105

for.inc105:                                       ; preds = %if.end102
  %127 = load i32, ptr %j74, align 4
  %dec = add nsw i32 %127, -1
  store i32 %dec, ptr %j74, align 4
  %128 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds %struct.InLoop, ptr %128, i32 -1
  store ptr %incdec.ptr, ptr %pIn, align 8
  br label %for.cond81, !llvm.loop !8

for.end106:                                       ; preds = %for.cond81
  br label %if.end107

if.end107:                                        ; preds = %for.end106, %land.lhs.true69, %if.end65
  %129 = load ptr, ptr %v, align 8
  %130 = load ptr, ptr %pLevel, align 8
  %addrBrk = getelementptr inbounds nuw %struct.WhereLevel, ptr %130, i32 0, i32 3
  %131 = load i32, ptr %addrBrk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %129, i32 noundef %131)
  %132 = load ptr, ptr %pLevel, align 8
  %addrSkip = getelementptr inbounds nuw %struct.WhereLevel, ptr %132, i32 0, i32 5
  %133 = load i32, ptr %addrSkip, align 4
  %tobool108 = icmp ne i32 %133, 0
  br i1 %tobool108, label %if.then109, label %if.end115

if.then109:                                       ; preds = %if.end107
  %134 = load ptr, ptr %v, align 8
  %135 = load ptr, ptr %pLevel, align 8
  %addrSkip110 = getelementptr inbounds nuw %struct.WhereLevel, ptr %135, i32 0, i32 5
  %136 = load i32, ptr %addrSkip110, align 4
  %call111 = call i32 @sqlite3VdbeGoto(ptr noundef %134, i32 noundef %136)
  %137 = load ptr, ptr %v, align 8
  %138 = load ptr, ptr %pLevel, align 8
  %addrSkip112 = getelementptr inbounds nuw %struct.WhereLevel, ptr %138, i32 0, i32 5
  %139 = load i32, ptr %addrSkip112, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %137, i32 noundef %139)
  %140 = load ptr, ptr %v, align 8
  %141 = load ptr, ptr %pLevel, align 8
  %addrSkip113 = getelementptr inbounds nuw %struct.WhereLevel, ptr %141, i32 0, i32 5
  %142 = load i32, ptr %addrSkip113, align 4
  %sub114 = sub nsw i32 %142, 2
  call void @sqlite3VdbeJumpHere(ptr noundef %140, i32 noundef %sub114)
  br label %if.end115

if.end115:                                        ; preds = %if.then109, %if.end107
  %143 = load ptr, ptr %pLevel, align 8
  %addrLikeRep = getelementptr inbounds nuw %struct.WhereLevel, ptr %143, i32 0, i32 12
  %144 = load i32, ptr %addrLikeRep, align 8
  %tobool116 = icmp ne i32 %144, 0
  br i1 %tobool116, label %if.then117, label %if.end120

if.then117:                                       ; preds = %if.end115
  %145 = load ptr, ptr %v, align 8
  %146 = load ptr, ptr %pLevel, align 8
  %iLikeRepCntr = getelementptr inbounds nuw %struct.WhereLevel, ptr %146, i32 0, i32 11
  %147 = load i32, ptr %iLikeRepCntr, align 4
  %shr = lshr i32 %147, 1
  %148 = load ptr, ptr %pLevel, align 8
  %addrLikeRep118 = getelementptr inbounds nuw %struct.WhereLevel, ptr %148, i32 0, i32 12
  %149 = load i32, ptr %addrLikeRep118, align 8
  %call119 = call i32 @sqlite3VdbeAddOp2(ptr noundef %145, i32 noundef 49, i32 noundef %shr, i32 noundef %149)
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end115
  %150 = load ptr, ptr %pLevel, align 8
  %iLeftJoin = getelementptr inbounds nuw %struct.WhereLevel, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %iLeftJoin, align 8
  %tobool121 = icmp ne i32 %151, 0
  br i1 %tobool121, label %if.then122, label %if.end154

if.then122:                                       ; preds = %if.end120
  %152 = load ptr, ptr %pLoop, align 8
  %wsFlags123 = getelementptr inbounds nuw %struct.WhereLoop, ptr %152, i32 0, i32 8
  %153 = load i32, ptr %wsFlags123, align 8
  store i32 %153, ptr %ws, align 4
  %154 = load ptr, ptr %v, align 8
  %155 = load ptr, ptr %pLevel, align 8
  %iLeftJoin124 = getelementptr inbounds nuw %struct.WhereLevel, ptr %155, i32 0, i32 0
  %156 = load i32, ptr %iLeftJoin124, align 8
  %call125 = call i32 @sqlite3VdbeAddOp1(ptr noundef %154, i32 noundef 47, i32 noundef %156)
  store i32 %call125, ptr %addr, align 4
  %157 = load i32, ptr %ws, align 4
  %and126 = and i32 %157, 64
  %cmp127 = icmp eq i32 %and126, 0
  br i1 %cmp127, label %if.then129, label %if.end131

if.then129:                                       ; preds = %if.then122
  %158 = load ptr, ptr %v, align 8
  %159 = load ptr, ptr %pLevel, align 8
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %159, i32 0, i32 1
  %160 = load i32, ptr %iTabCur, align 4
  %call130 = call i32 @sqlite3VdbeAddOp1(ptr noundef %158, i32 noundef 129, i32 noundef %160)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.then122
  %161 = load i32, ptr %ws, align 4
  %and132 = and i32 %161, 512
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.then139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end131
  %162 = load i32, ptr %ws, align 4
  %and134 = and i32 %162, 8192
  %tobool135 = icmp ne i32 %and134, 0
  br i1 %tobool135, label %land.lhs.true136, label %if.end142

land.lhs.true136:                                 ; preds = %lor.lhs.false
  %163 = load ptr, ptr %pLevel, align 8
  %u137 = getelementptr inbounds nuw %struct.WhereLevel, ptr %163, i32 0, i32 19
  %164 = load ptr, ptr %u137, align 8
  %tobool138 = icmp ne ptr %164, null
  br i1 %tobool138, label %if.then139, label %if.end142

if.then139:                                       ; preds = %land.lhs.true136, %if.end131
  %165 = load ptr, ptr %v, align 8
  %166 = load ptr, ptr %pLevel, align 8
  %iIdxCur140 = getelementptr inbounds nuw %struct.WhereLevel, ptr %166, i32 0, i32 2
  %167 = load i32, ptr %iIdxCur140, align 8
  %call141 = call i32 @sqlite3VdbeAddOp1(ptr noundef %165, i32 noundef 129, i32 noundef %167)
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %land.lhs.true136, %lor.lhs.false
  %168 = load ptr, ptr %pLevel, align 8
  %op143 = getelementptr inbounds nuw %struct.WhereLevel, ptr %168, i32 0, i32 14
  %169 = load i8, ptr %op143, align 1
  %conv144 = zext i8 %169 to i32
  %cmp145 = icmp eq i32 %conv144, 66
  br i1 %cmp145, label %if.then147, label %if.else150

if.then147:                                       ; preds = %if.end142
  %170 = load ptr, ptr %v, align 8
  %171 = load ptr, ptr %pLevel, align 8
  %p1148 = getelementptr inbounds nuw %struct.WhereLevel, ptr %171, i32 0, i32 17
  %172 = load i32, ptr %p1148, align 8
  %173 = load ptr, ptr %pLevel, align 8
  %addrFirst = getelementptr inbounds nuw %struct.WhereLevel, ptr %173, i32 0, i32 7
  %174 = load i32, ptr %addrFirst, align 4
  %call149 = call i32 @sqlite3VdbeAddOp2(ptr noundef %170, i32 noundef 12, i32 noundef %172, i32 noundef %174)
  br label %if.end153

if.else150:                                       ; preds = %if.end142
  %175 = load ptr, ptr %v, align 8
  %176 = load ptr, ptr %pLevel, align 8
  %addrFirst151 = getelementptr inbounds nuw %struct.WhereLevel, ptr %176, i32 0, i32 7
  %177 = load i32, ptr %addrFirst151, align 4
  %call152 = call i32 @sqlite3VdbeGoto(ptr noundef %175, i32 noundef %177)
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then147
  %178 = load ptr, ptr %v, align 8
  %179 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %178, i32 noundef %179)
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end120
  br label %for.inc155

for.inc155:                                       ; preds = %if.end154
  %180 = load i32, ptr %i, align 4
  %dec156 = add nsw i32 %180, -1
  store i32 %dec156, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end157:                                       ; preds = %for.cond
  %181 = load ptr, ptr %v, align 8
  %182 = load ptr, ptr %pWInfo.addr, align 8
  %iBreak = getelementptr inbounds nuw %struct.WhereInfo, ptr %182, i32 0, i32 8
  %183 = load i32, ptr %iBreak, align 8
  call void @sqlite3VdbeResolveLabel(ptr noundef %181, i32 noundef %183)
  store i32 0, ptr %i, align 4
  %184 = load ptr, ptr %pWInfo.addr, align 8
  %a158 = getelementptr inbounds nuw %struct.WhereInfo, ptr %184, i32 0, i32 24
  %arraydecay = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a158, i64 0, i64 0
  store ptr %arraydecay, ptr %pLevel, align 8
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc268, %for.end157
  %185 = load i32, ptr %i, align 4
  %186 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel160 = getelementptr inbounds nuw %struct.WhereInfo, ptr %186, i32 0, i32 11
  %187 = load i8, ptr %nLevel160, align 2
  %conv161 = zext i8 %187 to i32
  %cmp162 = icmp slt i32 %185, %conv161
  br i1 %cmp162, label %for.body164, label %for.end271

for.body164:                                      ; preds = %for.cond159
  store ptr null, ptr %pIdx165, align 8
  %188 = load ptr, ptr %pTabList, align 8
  %a166 = getelementptr inbounds nuw %struct.SrcList, ptr %188, i32 0, i32 2
  %189 = load ptr, ptr %pLevel, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %189, i32 0, i32 13
  %190 = load i8, ptr %iFrom, align 4
  %idxprom167 = zext i8 %190 to i64
  %arrayidx168 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a166, i64 0, i64 %idxprom167
  store ptr %arrayidx168, ptr %pTabItem, align 8
  %191 = load ptr, ptr %pTabItem, align 8
  %pTab169 = getelementptr inbounds nuw %struct.SrcList_item, ptr %191, i32 0, i32 4
  %192 = load ptr, ptr %pTab169, align 8
  store ptr %192, ptr %pTab, align 8
  %193 = load ptr, ptr %pLevel, align 8
  %pWLoop170 = getelementptr inbounds nuw %struct.WhereLevel, ptr %193, i32 0, i32 20
  %194 = load ptr, ptr %pWLoop170, align 8
  store ptr %194, ptr %pLoop, align 8
  %195 = load ptr, ptr %pTabItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %195, i32 0, i32 9
  %viaCoroutine = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load171 = load i8, ptr %viaCoroutine, align 1
  %bf.lshr172 = lshr i8 %bf.load171, 4
  %bf.clear173 = and i8 %bf.lshr172, 1
  %bf.cast174 = zext i8 %bf.clear173 to i32
  %tobool175 = icmp ne i32 %bf.cast174, 0
  br i1 %tobool175, label %if.then176, label %if.end178

if.then176:                                       ; preds = %for.body164
  %196 = load ptr, ptr %pParse, align 8
  %197 = load ptr, ptr %pLevel, align 8
  %addrBody = getelementptr inbounds nuw %struct.WhereLevel, ptr %197, i32 0, i32 8
  %198 = load i32, ptr %addrBody, align 8
  %199 = load ptr, ptr %pLevel, align 8
  %iTabCur177 = getelementptr inbounds nuw %struct.WhereLevel, ptr %199, i32 0, i32 1
  %200 = load i32, ptr %iTabCur177, align 4
  %201 = load ptr, ptr %pTabItem, align 8
  %regResult = getelementptr inbounds nuw %struct.SrcList_item, ptr %201, i32 0, i32 8
  %202 = load i32, ptr %regResult, align 8
  call void @translateColumnToCopy(ptr noundef %196, i32 noundef %198, i32 noundef %200, i32 noundef %202, i32 noundef 0)
  br label %for.inc268

if.end178:                                        ; preds = %for.body164
  %203 = load ptr, ptr %pLoop, align 8
  %wsFlags179 = getelementptr inbounds nuw %struct.WhereLoop, ptr %203, i32 0, i32 8
  %204 = load i32, ptr %wsFlags179, align 8
  %and180 = and i32 %204, 576
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %if.then182, label %if.else185

if.then182:                                       ; preds = %if.end178
  %205 = load ptr, ptr %pLoop, align 8
  %u183 = getelementptr inbounds nuw %struct.WhereLoop, ptr %205, i32 0, i32 7
  %pIndex184 = getelementptr inbounds nuw %struct.anon.19, ptr %u183, i32 0, i32 4
  %206 = load ptr, ptr %pIndex184, align 8
  store ptr %206, ptr %pIdx165, align 8
  br label %if.end192

if.else185:                                       ; preds = %if.end178
  %207 = load ptr, ptr %pLoop, align 8
  %wsFlags186 = getelementptr inbounds nuw %struct.WhereLoop, ptr %207, i32 0, i32 8
  %208 = load i32, ptr %wsFlags186, align 8
  %and187 = and i32 %208, 8192
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.else185
  %209 = load ptr, ptr %pLevel, align 8
  %u190 = getelementptr inbounds nuw %struct.WhereLevel, ptr %209, i32 0, i32 19
  %210 = load ptr, ptr %u190, align 8
  store ptr %210, ptr %pIdx165, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then189, %if.else185
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then182
  %211 = load ptr, ptr %pIdx165, align 8
  %tobool193 = icmp ne ptr %211, null
  br i1 %tobool193, label %land.lhs.true194, label %if.end267

land.lhs.true194:                                 ; preds = %if.end192
  %212 = load ptr, ptr %pWInfo.addr, align 8
  %eOnePass = getelementptr inbounds nuw %struct.WhereInfo, ptr %212, i32 0, i32 14
  %213 = load i8, ptr %eOnePass, align 1
  %conv195 = zext i8 %213 to i32
  %cmp196 = icmp eq i32 %conv195, 0
  br i1 %cmp196, label %land.lhs.true202, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %land.lhs.true194
  %214 = load ptr, ptr %pIdx165, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %214, i32 0, i32 3
  %215 = load ptr, ptr %pTable, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %215, i32 0, i32 9
  %216 = load i32, ptr %tabFlags, align 8
  %and199 = and i32 %216, 32
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %if.end267, label %land.lhs.true202

land.lhs.true202:                                 ; preds = %lor.lhs.false198, %land.lhs.true194
  %217 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %217, i32 0, i32 19
  %218 = load i8, ptr %mallocFailed, align 1
  %tobool203 = icmp ne i8 %218, 0
  br i1 %tobool203, label %if.end267, label %if.then204

if.then204:                                       ; preds = %land.lhs.true202
  %219 = load ptr, ptr %v, align 8
  %call205 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %219)
  store i32 %call205, ptr %last, align 4
  %220 = load ptr, ptr %pLevel, align 8
  %addrBody206 = getelementptr inbounds nuw %struct.WhereLevel, ptr %220, i32 0, i32 8
  %221 = load i32, ptr %addrBody206, align 8
  store i32 %221, ptr %k, align 4
  %222 = load ptr, ptr %v, align 8
  %223 = load i32, ptr %k, align 4
  %call207 = call ptr @sqlite3VdbeGetOp(ptr noundef %222, i32 noundef %223)
  store ptr %call207, ptr %pOp, align 8
  br label %for.cond208

for.cond208:                                      ; preds = %for.inc263, %if.then204
  %224 = load i32, ptr %k, align 4
  %225 = load i32, ptr %last, align 4
  %cmp209 = icmp slt i32 %224, %225
  br i1 %cmp209, label %for.body211, label %for.end266

for.body211:                                      ; preds = %for.cond208
  %226 = load ptr, ptr %pOp, align 8
  %p1212 = getelementptr inbounds nuw %struct.VdbeOp, ptr %226, i32 0, i32 3
  %227 = load i32, ptr %p1212, align 4
  %228 = load ptr, ptr %pLevel, align 8
  %iTabCur213 = getelementptr inbounds nuw %struct.WhereLevel, ptr %228, i32 0, i32 1
  %229 = load i32, ptr %iTabCur213, align 4
  %cmp214 = icmp ne i32 %227, %229
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %for.body211
  br label %for.inc263

if.end217:                                        ; preds = %for.body211
  %230 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %230, i32 0, i32 0
  %231 = load i8, ptr %opcode, align 8
  %conv218 = zext i8 %231 to i32
  %cmp219 = icmp eq i32 %conv218, 90
  br i1 %cmp219, label %if.then221, label %if.else243

if.then221:                                       ; preds = %if.end217
  %232 = load ptr, ptr %pOp, align 8
  %p2222 = getelementptr inbounds nuw %struct.VdbeOp, ptr %232, i32 0, i32 4
  %233 = load i32, ptr %p2222, align 8
  store i32 %233, ptr %x, align 4
  %234 = load ptr, ptr %pTab, align 8
  %tabFlags223 = getelementptr inbounds nuw %struct.Table, ptr %234, i32 0, i32 9
  %235 = load i32, ptr %tabFlags223, align 8
  %and224 = and i32 %235, 32
  %cmp225 = icmp eq i32 %and224, 0
  br i1 %cmp225, label %if.end232, label %if.then227

if.then227:                                       ; preds = %if.then221
  %236 = load ptr, ptr %pTab, align 8
  %call228 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %236)
  store ptr %call228, ptr %pPk, align 8
  %237 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %237, i32 0, i32 1
  %238 = load ptr, ptr %aiColumn, align 8
  %239 = load i32, ptr %x, align 4
  %idxprom229 = sext i32 %239 to i64
  %arrayidx230 = getelementptr inbounds i16, ptr %238, i64 %idxprom229
  %240 = load i16, ptr %arrayidx230, align 2
  %conv231 = sext i16 %240 to i32
  store i32 %conv231, ptr %x, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.then227, %if.then221
  %241 = load ptr, ptr %pIdx165, align 8
  %242 = load i32, ptr %x, align 4
  %conv233 = trunc i32 %242 to i16
  %call234 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %241, i16 noundef signext %conv233)
  %conv235 = sext i16 %call234 to i32
  store i32 %conv235, ptr %x, align 4
  %243 = load i32, ptr %x, align 4
  %cmp236 = icmp sge i32 %243, 0
  br i1 %cmp236, label %if.then238, label %if.end242

if.then238:                                       ; preds = %if.end232
  %244 = load i32, ptr %x, align 4
  %245 = load ptr, ptr %pOp, align 8
  %p2239 = getelementptr inbounds nuw %struct.VdbeOp, ptr %245, i32 0, i32 4
  store i32 %244, ptr %p2239, align 8
  %246 = load ptr, ptr %pLevel, align 8
  %iIdxCur240 = getelementptr inbounds nuw %struct.WhereLevel, ptr %246, i32 0, i32 2
  %247 = load i32, ptr %iIdxCur240, align 8
  %248 = load ptr, ptr %pOp, align 8
  %p1241 = getelementptr inbounds nuw %struct.VdbeOp, ptr %248, i32 0, i32 3
  store i32 %247, ptr %p1241, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %if.end232
  br label %if.end262

if.else243:                                       ; preds = %if.end217
  %249 = load ptr, ptr %pOp, align 8
  %opcode244 = getelementptr inbounds nuw %struct.VdbeOp, ptr %249, i32 0, i32 0
  %250 = load i8, ptr %opcode244, align 8
  %conv245 = zext i8 %250 to i32
  %cmp246 = icmp eq i32 %conv245, 128
  br i1 %cmp246, label %if.then248, label %if.else252

if.then248:                                       ; preds = %if.else243
  %251 = load ptr, ptr %pLevel, align 8
  %iIdxCur249 = getelementptr inbounds nuw %struct.WhereLevel, ptr %251, i32 0, i32 2
  %252 = load i32, ptr %iIdxCur249, align 8
  %253 = load ptr, ptr %pOp, align 8
  %p1250 = getelementptr inbounds nuw %struct.VdbeOp, ptr %253, i32 0, i32 3
  store i32 %252, ptr %p1250, align 4
  %254 = load ptr, ptr %pOp, align 8
  %opcode251 = getelementptr inbounds nuw %struct.VdbeOp, ptr %254, i32 0, i32 0
  store i8 -121, ptr %opcode251, align 8
  br label %if.end261

if.else252:                                       ; preds = %if.else243
  %255 = load ptr, ptr %pOp, align 8
  %opcode253 = getelementptr inbounds nuw %struct.VdbeOp, ptr %255, i32 0, i32 0
  %256 = load i8, ptr %opcode253, align 8
  %conv254 = zext i8 %256 to i32
  %cmp255 = icmp eq i32 %conv254, 21
  br i1 %cmp255, label %if.then257, label %if.end260

if.then257:                                       ; preds = %if.else252
  %257 = load ptr, ptr %pLevel, align 8
  %iIdxCur258 = getelementptr inbounds nuw %struct.WhereLevel, ptr %257, i32 0, i32 2
  %258 = load i32, ptr %iIdxCur258, align 8
  %259 = load ptr, ptr %pOp, align 8
  %p1259 = getelementptr inbounds nuw %struct.VdbeOp, ptr %259, i32 0, i32 3
  store i32 %258, ptr %p1259, align 4
  br label %if.end260

if.end260:                                        ; preds = %if.then257, %if.else252
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.then248
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.end242
  br label %for.inc263

for.inc263:                                       ; preds = %if.end262, %if.then216
  %260 = load i32, ptr %k, align 4
  %inc264 = add nsw i32 %260, 1
  store i32 %inc264, ptr %k, align 4
  %261 = load ptr, ptr %pOp, align 8
  %incdec.ptr265 = getelementptr inbounds nuw %struct.VdbeOp, ptr %261, i32 1
  store ptr %incdec.ptr265, ptr %pOp, align 8
  br label %for.cond208, !llvm.loop !10

for.end266:                                       ; preds = %for.cond208
  br label %if.end267

if.end267:                                        ; preds = %for.end266, %land.lhs.true202, %lor.lhs.false198, %if.end192
  br label %for.inc268

for.inc268:                                       ; preds = %if.end267, %if.then176
  %262 = load i32, ptr %i, align 4
  %inc269 = add nsw i32 %262, 1
  store i32 %inc269, ptr %i, align 4
  %263 = load ptr, ptr %pLevel, align 8
  %incdec.ptr270 = getelementptr inbounds nuw %struct.WhereLevel, ptr %263, i32 1
  store ptr %incdec.ptr270, ptr %pLevel, align 8
  br label %for.cond159, !llvm.loop !11

for.end271:                                       ; preds = %for.cond159
  %264 = load ptr, ptr %pWInfo.addr, align 8
  %savedNQueryLoop = getelementptr inbounds nuw %struct.WhereInfo, ptr %264, i32 0, i32 9
  %265 = load i32, ptr %savedNQueryLoop, align 4
  %266 = load ptr, ptr %pParse, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %266, i32 0, i32 39
  store i32 %265, ptr %nQueryLoop, align 4
  %267 = load ptr, ptr %db, align 8
  %268 = load ptr, ptr %pWInfo.addr, align 8
  call void @whereInfoFree(ptr noundef %267, ptr noundef %268)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @whereInfoFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @translateColumnToCopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
