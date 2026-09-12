; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

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
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IndexAffinityStr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @fkLookupParent(ptr noundef %pParse, i32 noundef %iDb, ptr noundef %pTab, ptr noundef %pIdx, ptr noundef %pFKey, ptr noundef %aiCol, i32 noundef %regData, i32 noundef %nIncr, i32 noundef %isIgnore) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %pFKey.addr = alloca ptr, align 8
  %aiCol.addr = alloca ptr, align 8
  %regData.addr = alloca i32, align 4
  %nIncr.addr = alloca i32, align 4
  %isIgnore.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %iOk = alloca i32, align 4
  %iReg = alloca i32, align 4
  %iMustBeInt = alloca i32, align 4
  %regTemp = alloca i32, align 4
  %nCol30 = alloca i32, align 4
  %regTemp32 = alloca i32, align 4
  %regRec = alloca i32, align 4
  %iJump = alloca i32, align 4
  %iChild = alloca i32, align 4
  %iParent = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store ptr %pFKey, ptr %pFKey.addr, align 8
  store ptr %aiCol, ptr %aiCol.addr, align 8
  store i32 %regData, ptr %regData.addr, align 4
  store i32 %nIncr, ptr %nIncr.addr, align 4
  store i32 %isIgnore, ptr %isIgnore.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %1, i32 0, i32 17
  %2 = load i32, ptr %nTab, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %iCur, align 4
  %3 = load ptr, ptr %pParse.addr, align 8
  %call1 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %3)
  store i32 %call1, ptr %iOk, align 4
  %4 = load i32, ptr %nIncr.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %v, align 8
  %6 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred = getelementptr inbounds nuw %struct.FKey, ptr %6, i32 0, i32 6
  %7 = load i8, ptr %isDeferred, align 4
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %iOk, align 4
  %call2 = call i32 @sqlite3VdbeAddOp2(ptr noundef %5, i32 noundef 46, i32 noundef %conv, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %pFKey.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nCol, align 8
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %aiCol.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  %14 = load i32, ptr %arrayidx, align 4
  %15 = load i32, ptr %regData.addr, align 4
  %add = add nsw i32 %14, %15
  %add5 = add nsw i32 %add, 1
  store i32 %add5, ptr %iReg, align 4
  %16 = load ptr, ptr %v, align 8
  %17 = load i32, ptr %iReg, align 4
  %18 = load i32, ptr %iOk, align 4
  %call6 = call i32 @sqlite3VdbeAddOp2(ptr noundef %16, i32 noundef 50, i32 noundef %17, i32 noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %isIgnore.addr, align 4
  %cmp7 = icmp eq i32 %20, 0
  br i1 %cmp7, label %if.then9, label %if.end91

if.then9:                                         ; preds = %for.end
  %21 = load ptr, ptr %pIdx.addr, align 8
  %cmp10 = icmp eq ptr %21, null
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  %22 = load ptr, ptr %pParse.addr, align 8
  %call13 = call i32 @sqlite3GetTempReg(ptr noundef %22)
  store i32 %call13, ptr %regTemp, align 4
  %23 = load ptr, ptr %v, align 8
  %24 = load ptr, ptr %aiCol.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 0
  %25 = load i32, ptr %arrayidx14, align 4
  %add15 = add nsw i32 %25, 1
  %26 = load i32, ptr %regData.addr, align 4
  %add16 = add nsw i32 %add15, %26
  %27 = load i32, ptr %regTemp, align 4
  %call17 = call i32 @sqlite3VdbeAddOp2(ptr noundef %23, i32 noundef 79, i32 noundef %add16, i32 noundef %27)
  %28 = load ptr, ptr %v, align 8
  %29 = load i32, ptr %regTemp, align 4
  %call18 = call i32 @sqlite3VdbeAddOp2(ptr noundef %28, i32 noundef 15, i32 noundef %29, i32 noundef 0)
  store i32 %call18, ptr %iMustBeInt, align 4
  %30 = load ptr, ptr %pTab.addr, align 8
  %31 = load ptr, ptr %pFKey.addr, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pFrom, align 8
  %cmp19 = icmp eq ptr %30, %32
  br i1 %cmp19, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.then12
  %33 = load i32, ptr %nIncr.addr, align 4
  %cmp21 = icmp eq i32 %33, 1
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %land.lhs.true
  %34 = load ptr, ptr %v, align 8
  %35 = load i32, ptr %regData.addr, align 4
  %36 = load i32, ptr %iOk, align 4
  %37 = load i32, ptr %regTemp, align 4
  %call24 = call i32 @sqlite3VdbeAddOp3(ptr noundef %34, i32 noundef 53, i32 noundef %35, i32 noundef %36, i32 noundef %37)
  %38 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %38, i16 noundef zeroext 144)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.then12
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load i32, ptr %iCur, align 4
  %41 = load i32, ptr %iDb.addr, align 4
  %42 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3OpenTable(ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef 97)
  %43 = load ptr, ptr %v, align 8
  %44 = load i32, ptr %iCur, align 4
  %45 = load i32, ptr %regTemp, align 4
  %call26 = call i32 @sqlite3VdbeAddOp3(ptr noundef %43, i32 noundef 31, i32 noundef %44, i32 noundef 0, i32 noundef %45)
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %iOk, align 4
  %call27 = call i32 @sqlite3VdbeGoto(ptr noundef %46, i32 noundef %47)
  %48 = load ptr, ptr %v, align 8
  %49 = load ptr, ptr %v, align 8
  %call28 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %49)
  %sub29 = sub nsw i32 %call28, 2
  call void @sqlite3VdbeJumpHere(ptr noundef %48, i32 noundef %sub29)
  %50 = load ptr, ptr %v, align 8
  %51 = load i32, ptr %iMustBeInt, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %50, i32 noundef %51)
  %52 = load ptr, ptr %pParse.addr, align 8
  %53 = load i32, ptr %regTemp, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %52, i32 noundef %53)
  br label %if.end90

if.else:                                          ; preds = %if.then9
  %54 = load ptr, ptr %pFKey.addr, align 8
  %nCol31 = getelementptr inbounds nuw %struct.FKey, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %nCol31, align 8
  store i32 %55, ptr %nCol30, align 4
  %56 = load ptr, ptr %pParse.addr, align 8
  %57 = load i32, ptr %nCol30, align 4
  %call33 = call i32 @sqlite3GetTempRange(ptr noundef %56, i32 noundef %57)
  store i32 %call33, ptr %regTemp32, align 4
  %58 = load ptr, ptr %pParse.addr, align 8
  %call34 = call i32 @sqlite3GetTempReg(ptr noundef %58)
  store i32 %call34, ptr %regRec, align 4
  %59 = load ptr, ptr %v, align 8
  %60 = load i32, ptr %iCur, align 4
  %61 = load ptr, ptr %pIdx.addr, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %61, i32 0, i32 11
  %62 = load i32, ptr %tnum, align 8
  %63 = load i32, ptr %iDb.addr, align 4
  %call35 = call i32 @sqlite3VdbeAddOp3(ptr noundef %59, i32 noundef 97, i32 noundef %60, i32 noundef %62, i32 noundef %63)
  %64 = load ptr, ptr %pParse.addr, align 8
  %65 = load ptr, ptr %pIdx.addr, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %64, ptr noundef %65)
  store i32 0, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc46, %if.else
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %nCol30, align 4
  %cmp37 = icmp slt i32 %66, %67
  br i1 %cmp37, label %for.body39, label %for.end48

for.body39:                                       ; preds = %for.cond36
  %68 = load ptr, ptr %v, align 8
  %69 = load ptr, ptr %aiCol.addr, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %70 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %69, i64 %idxprom40
  %71 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %71, 1
  %72 = load i32, ptr %regData.addr, align 4
  %add43 = add nsw i32 %add42, %72
  %73 = load i32, ptr %regTemp32, align 4
  %74 = load i32, ptr %i, align 4
  %add44 = add nsw i32 %73, %74
  %call45 = call i32 @sqlite3VdbeAddOp2(ptr noundef %68, i32 noundef 78, i32 noundef %add43, i32 noundef %add44)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body39
  %75 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %75, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond36, !llvm.loop !8

for.end48:                                        ; preds = %for.cond36
  %76 = load ptr, ptr %pTab.addr, align 8
  %77 = load ptr, ptr %pFKey.addr, align 8
  %pFrom49 = getelementptr inbounds nuw %struct.FKey, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %pFrom49, align 8
  %cmp50 = icmp eq ptr %76, %78
  br i1 %cmp50, label %land.lhs.true52, label %if.end86

land.lhs.true52:                                  ; preds = %for.end48
  %79 = load i32, ptr %nIncr.addr, align 4
  %cmp53 = icmp eq i32 %79, 1
  br i1 %cmp53, label %if.then55, label %if.end86

if.then55:                                        ; preds = %land.lhs.true52
  %80 = load ptr, ptr %v, align 8
  %call56 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %80)
  %81 = load i32, ptr %nCol30, align 4
  %add57 = add nsw i32 %call56, %81
  %add58 = add nsw i32 %add57, 1
  store i32 %add58, ptr %iJump, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc82, %if.then55
  %82 = load i32, ptr %i, align 4
  %83 = load i32, ptr %nCol30, align 4
  %cmp60 = icmp slt i32 %82, %83
  br i1 %cmp60, label %for.body62, label %for.end84

for.body62:                                       ; preds = %for.cond59
  %84 = load ptr, ptr %aiCol.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom63 = sext i32 %85 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %84, i64 %idxprom63
  %86 = load i32, ptr %arrayidx64, align 4
  %add65 = add nsw i32 %86, 1
  %87 = load i32, ptr %regData.addr, align 4
  %add66 = add nsw i32 %add65, %87
  store i32 %add66, ptr %iChild, align 4
  %88 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %aiColumn, align 8
  %90 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %90 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %89, i64 %idxprom67
  %91 = load i16, ptr %arrayidx68, align 2
  %conv69 = sext i16 %91 to i32
  %add70 = add nsw i32 %conv69, 1
  %92 = load i32, ptr %regData.addr, align 4
  %add71 = add nsw i32 %add70, %92
  store i32 %add71, ptr %iParent, align 4
  %93 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn72 = getelementptr inbounds nuw %struct.Index, ptr %93, i32 0, i32 1
  %94 = load ptr, ptr %aiColumn72, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %95 to i64
  %arrayidx74 = getelementptr inbounds i16, ptr %94, i64 %idxprom73
  %96 = load i16, ptr %arrayidx74, align 2
  %conv75 = sext i16 %96 to i32
  %97 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %97, i32 0, i32 10
  %98 = load i16, ptr %iPKey, align 4
  %conv76 = sext i16 %98 to i32
  %cmp77 = icmp eq i32 %conv75, %conv76
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.body62
  %99 = load i32, ptr %regData.addr, align 4
  store i32 %99, ptr %iParent, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %for.body62
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %iChild, align 4
  %102 = load i32, ptr %iJump, align 4
  %103 = load i32, ptr %iParent, align 4
  %call81 = call i32 @sqlite3VdbeAddOp3(ptr noundef %100, i32 noundef 52, i32 noundef %101, i32 noundef %102, i32 noundef %103)
  %104 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %104, i16 noundef zeroext 16)
  br label %for.inc82

for.inc82:                                        ; preds = %if.end80
  %105 = load i32, ptr %i, align 4
  %inc83 = add nsw i32 %105, 1
  store i32 %inc83, ptr %i, align 4
  br label %for.cond59, !llvm.loop !9

for.end84:                                        ; preds = %for.cond59
  %106 = load ptr, ptr %v, align 8
  %107 = load i32, ptr %iOk, align 4
  %call85 = call i32 @sqlite3VdbeGoto(ptr noundef %106, i32 noundef %107)
  br label %if.end86

if.end86:                                         ; preds = %for.end84, %land.lhs.true52, %for.end48
  %108 = load ptr, ptr %v, align 8
  %109 = load i32, ptr %regTemp32, align 4
  %110 = load i32, ptr %nCol30, align 4
  %111 = load i32, ptr %regRec, align 4
  %112 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %db, align 8
  %114 = load ptr, ptr %pIdx.addr, align 8
  %call87 = call ptr @sqlite3IndexAffinityStr(ptr noundef %113, ptr noundef %114)
  %115 = load i32, ptr %nCol30, align 4
  %call88 = call i32 @sqlite3VdbeAddOp4(ptr noundef %108, i32 noundef 92, i32 noundef %109, i32 noundef %110, i32 noundef %111, ptr noundef %call87, i32 noundef %115)
  %116 = load ptr, ptr %v, align 8
  %117 = load i32, ptr %iCur, align 4
  %118 = load i32, ptr %iOk, align 4
  %119 = load i32, ptr %regRec, align 4
  %call89 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %116, i32 noundef 29, i32 noundef %117, i32 noundef %118, i32 noundef %119, i32 noundef 0)
  %120 = load ptr, ptr %pParse.addr, align 8
  %121 = load i32, ptr %regRec, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %120, i32 noundef %121)
  %122 = load ptr, ptr %pParse.addr, align 8
  %123 = load i32, ptr %regTemp32, align 4
  %124 = load i32, ptr %nCol30, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %122, i32 noundef %123, i32 noundef %124)
  br label %if.end90

if.end90:                                         ; preds = %if.end86, %if.end25
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %for.end
  %125 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred92 = getelementptr inbounds nuw %struct.FKey, ptr %125, i32 0, i32 6
  %126 = load i8, ptr %isDeferred92, align 4
  %tobool = icmp ne i8 %126, 0
  br i1 %tobool, label %if.else101, label %land.lhs.true93

land.lhs.true93:                                  ; preds = %if.end91
  %127 = load ptr, ptr %pParse.addr, align 8
  %db94 = getelementptr inbounds nuw %struct.Parse, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %db94, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %128, i32 0, i32 7
  %129 = load i64, ptr %flags, align 8
  %and = and i64 %129, 524288
  %tobool95 = icmp ne i64 %and, 0
  br i1 %tobool95, label %if.else101, label %land.lhs.true96

land.lhs.true96:                                  ; preds = %land.lhs.true93
  %130 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %130, i32 0, i32 35
  %131 = load ptr, ptr %pToplevel, align 8
  %tobool97 = icmp ne ptr %131, null
  br i1 %tobool97, label %if.else101, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %land.lhs.true96
  %132 = load ptr, ptr %pParse.addr, align 8
  %isMultiWrite = getelementptr inbounds nuw %struct.Parse, ptr %132, i32 0, i32 8
  %133 = load i8, ptr %isMultiWrite, align 8
  %tobool99 = icmp ne i8 %133, 0
  br i1 %tobool99, label %if.else101, label %if.then100

if.then100:                                       ; preds = %land.lhs.true98
  %134 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3HaltConstraint(ptr noundef %134, i32 noundef 787, i32 noundef 2, ptr noundef null, i8 noundef signext -1, i8 noundef zeroext 4)
  br label %if.end114

if.else101:                                       ; preds = %land.lhs.true98, %land.lhs.true96, %land.lhs.true93, %if.end91
  %135 = load i32, ptr %nIncr.addr, align 4
  %cmp102 = icmp sgt i32 %135, 0
  br i1 %cmp102, label %land.lhs.true104, label %if.end110

land.lhs.true104:                                 ; preds = %if.else101
  %136 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred105 = getelementptr inbounds nuw %struct.FKey, ptr %136, i32 0, i32 6
  %137 = load i8, ptr %isDeferred105, align 4
  %conv106 = zext i8 %137 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %land.lhs.true104
  %138 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %138)
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %land.lhs.true104, %if.else101
  %139 = load ptr, ptr %v, align 8
  %140 = load ptr, ptr %pFKey.addr, align 8
  %isDeferred111 = getelementptr inbounds nuw %struct.FKey, ptr %140, i32 0, i32 6
  %141 = load i8, ptr %isDeferred111, align 4
  %conv112 = zext i8 %141 to i32
  %142 = load i32, ptr %nIncr.addr, align 4
  %call113 = call i32 @sqlite3VdbeAddOp2(ptr noundef %139, i32 noundef 150, i32 noundef %conv112, i32 noundef %142)
  br label %if.end114

if.end114:                                        ; preds = %if.end110, %if.then100
  %143 = load ptr, ptr %v, align 8
  %144 = load i32, ptr %iOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %143, i32 noundef %144)
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %iCur, align 4
  %call115 = call i32 @sqlite3VdbeAddOp1(ptr noundef %145, i32 noundef 117, i32 noundef %146)
  ret void
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
