; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MultiWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereBegin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereOkOnePass(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabMakeWritable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @updateVirtualTable(ptr noundef %pParse, ptr noundef %pSrc, ptr noundef %pTab, ptr noundef %pChanges, ptr noundef %pRowid, ptr noundef %aXRef, ptr noundef %pWhere, i32 noundef %onError) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pChanges.addr = alloca ptr, align 8
  %pRowid.addr = alloca ptr, align 8
  %aXRef.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %ephemTab = alloca i32, align 4
  %i = alloca i32, align 4
  %db = alloca ptr, align 8
  %pVTab = alloca ptr, align 8
  %pWInfo = alloca ptr, align 8
  %nArg = alloca i32, align 4
  %regArg = alloca i32, align 4
  %regRec = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %iCsr = alloca i32, align 4
  %aDummy = alloca [2 x i32], align 4
  %eOnePass = alloca i32, align 4
  %addr = alloca i32, align 4
  %pPk = alloca ptr, align 8
  %iPk = alloca i16, align 2
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store ptr %pRowid, ptr %pRowid.addr, align 8
  store ptr %aXRef, ptr %aXRef.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3GetVTable(ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %pVTab, align 8
  %6 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 11
  %7 = load i16, ptr %nCol, align 2
  %conv = sext i16 %7 to i32
  %add = add nsw i32 2, %conv
  store i32 %add, ptr %nArg, align 4
  %8 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %9 = load i32, ptr %iCursor, align 8
  store i32 %9, ptr %iCsr, align 4
  %10 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 17
  %11 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nTab, align 4
  store i32 %11, ptr %ephemTab, align 4
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %ephemTab, align 4
  %14 = load i32, ptr %nArg, align 4
  %call2 = call i32 @sqlite3VdbeAddOp2(ptr noundef %12, i32 noundef 112, i32 noundef %13, i32 noundef %14)
  store i32 %call2, ptr %addr, align 4
  %15 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 18
  %16 = load i32, ptr %nMem, align 8
  %add3 = add nsw i32 %16, 1
  store i32 %add3, ptr %regArg, align 4
  %17 = load i32, ptr %nArg, align 4
  %18 = load ptr, ptr %pParse.addr, align 8
  %nMem4 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 18
  %19 = load i32, ptr %nMem4, align 8
  %add5 = add nsw i32 %19, %17
  store i32 %add5, ptr %nMem4, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %nMem6 = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 18
  %21 = load i32, ptr %nMem6, align 8
  %inc7 = add nsw i32 %21, 1
  store i32 %inc7, ptr %nMem6, align 8
  store i32 %inc7, ptr %regRec, align 4
  %22 = load ptr, ptr %pParse.addr, align 8
  %nMem8 = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 18
  %23 = load i32, ptr %nMem8, align 8
  %inc9 = add nsw i32 %23, 1
  store i32 %inc9, ptr %nMem8, align 8
  store i32 %inc9, ptr %regRowid, align 4
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pSrc.addr, align 8
  %26 = load ptr, ptr %pWhere.addr, align 8
  %call10 = call ptr @sqlite3WhereBegin(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef null, ptr noundef null, i16 noundef zeroext 4, i32 noundef 0)
  store ptr %call10, ptr %pWInfo, align 8
  %27 = load ptr, ptr %pWInfo, align 8
  %cmp = icmp eq ptr %27, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end88

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, ptr %i, align 4
  %29 = load ptr, ptr %pTab.addr, align 8
  %nCol12 = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 11
  %30 = load i16, ptr %nCol12, align 2
  %conv13 = sext i16 %30 to i32
  %cmp14 = icmp slt i32 %28, %conv13
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %aXRef.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %31, i64 %idxprom
  %33 = load i32, ptr %arrayidx16, align 4
  %cmp17 = icmp sge i32 %33, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body
  %34 = load ptr, ptr %pParse.addr, align 8
  %35 = load ptr, ptr %pChanges.addr, align 8
  %a20 = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %aXRef.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %37 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %36, i64 %idxprom21
  %38 = load i32, ptr %arrayidx22, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a20, i64 0, i64 %idxprom23
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx24, i32 0, i32 0
  %39 = load ptr, ptr %pExpr, align 8
  %40 = load i32, ptr %regArg, align 4
  %add25 = add nsw i32 %40, 2
  %41 = load i32, ptr %i, align 4
  %add26 = add nsw i32 %add25, %41
  call void @sqlite3ExprCode(ptr noundef %34, ptr noundef %39, i32 noundef %add26)
  br label %if.end30

if.else:                                          ; preds = %for.body
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %iCsr, align 4
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %regArg, align 4
  %add27 = add nsw i32 %45, 2
  %46 = load i32, ptr %i, align 4
  %add28 = add nsw i32 %add27, %46
  %call29 = call i32 @sqlite3VdbeAddOp3(ptr noundef %42, i32 noundef 164, i32 noundef %43, i32 noundef %44, i32 noundef %add28)
  %47 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %47, i16 noundef zeroext 1)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then19
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %48 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %48, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 9
  %50 = load i32, ptr %tabFlags, align 8
  %and = and i32 %50, 32
  %cmp32 = icmp eq i32 %and, 0
  br i1 %cmp32, label %if.then34, label %if.else42

if.then34:                                        ; preds = %for.end
  %51 = load ptr, ptr %v, align 8
  %52 = load i32, ptr %iCsr, align 4
  %53 = load i32, ptr %regArg, align 4
  %call35 = call i32 @sqlite3VdbeAddOp2(ptr noundef %51, i32 noundef 128, i32 noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %pRowid.addr, align 8
  %tobool = icmp ne ptr %54, null
  br i1 %tobool, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.then34
  %55 = load ptr, ptr %pParse.addr, align 8
  %56 = load ptr, ptr %pRowid.addr, align 8
  %57 = load i32, ptr %regArg, align 4
  %add37 = add nsw i32 %57, 1
  call void @sqlite3ExprCode(ptr noundef %55, ptr noundef %56, i32 noundef %add37)
  br label %if.end41

if.else38:                                        ; preds = %if.then34
  %58 = load ptr, ptr %v, align 8
  %59 = load i32, ptr %iCsr, align 4
  %60 = load i32, ptr %regArg, align 4
  %add39 = add nsw i32 %60, 1
  %call40 = call i32 @sqlite3VdbeAddOp2(ptr noundef %58, i32 noundef 128, i32 noundef %59, i32 noundef %add39)
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then36
  br label %if.end52

if.else42:                                        ; preds = %for.end
  %61 = load ptr, ptr %pTab.addr, align 8
  %call43 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %61)
  store ptr %call43, ptr %pPk, align 8
  %62 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %aiColumn, align 8
  %arrayidx44 = getelementptr inbounds i16, ptr %63, i64 0
  %64 = load i16, ptr %arrayidx44, align 2
  store i16 %64, ptr %iPk, align 2
  %65 = load ptr, ptr %v, align 8
  %66 = load i32, ptr %iCsr, align 4
  %67 = load i16, ptr %iPk, align 2
  %conv45 = sext i16 %67 to i32
  %68 = load i32, ptr %regArg, align 4
  %call46 = call i32 @sqlite3VdbeAddOp3(ptr noundef %65, i32 noundef 164, i32 noundef %66, i32 noundef %conv45, i32 noundef %68)
  %69 = load ptr, ptr %v, align 8
  %70 = load i32, ptr %regArg, align 4
  %add47 = add nsw i32 %70, 2
  %71 = load i16, ptr %iPk, align 2
  %conv48 = sext i16 %71 to i32
  %add49 = add nsw i32 %add47, %conv48
  %72 = load i32, ptr %regArg, align 4
  %add50 = add nsw i32 %72, 1
  %call51 = call i32 @sqlite3VdbeAddOp2(ptr noundef %69, i32 noundef 79, i32 noundef %add49, i32 noundef %add50)
  br label %if.end52

if.end52:                                         ; preds = %if.else42, %if.end41
  %73 = load ptr, ptr %pWInfo, align 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aDummy, i64 0, i64 0
  %call53 = call i32 @sqlite3WhereOkOnePass(ptr noundef %73, ptr noundef %arraydecay)
  store i32 %call53, ptr %eOnePass, align 4
  %74 = load i32, ptr %eOnePass, align 4
  %tobool54 = icmp ne i32 %74, 0
  br i1 %tobool54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %if.end52
  %75 = load ptr, ptr %v, align 8
  %76 = load i32, ptr %addr, align 4
  %call56 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %75, i32 noundef %76)
  %77 = load ptr, ptr %v, align 8
  %78 = load i32, ptr %iCsr, align 4
  %call57 = call i32 @sqlite3VdbeAddOp1(ptr noundef %77, i32 noundef 117, i32 noundef %78)
  br label %if.end62

if.else58:                                        ; preds = %if.end52
  %79 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %79)
  %80 = load ptr, ptr %v, align 8
  %81 = load i32, ptr %regArg, align 4
  %82 = load i32, ptr %nArg, align 4
  %83 = load i32, ptr %regRec, align 4
  %call59 = call i32 @sqlite3VdbeAddOp3(ptr noundef %80, i32 noundef 92, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  %84 = load ptr, ptr %v, align 8
  %85 = load i32, ptr %ephemTab, align 4
  %86 = load i32, ptr %regRowid, align 4
  %call60 = call i32 @sqlite3VdbeAddOp2(ptr noundef %84, i32 noundef 121, i32 noundef %85, i32 noundef %86)
  %87 = load ptr, ptr %v, align 8
  %88 = load i32, ptr %ephemTab, align 4
  %89 = load i32, ptr %regRec, align 4
  %90 = load i32, ptr %regRowid, align 4
  %call61 = call i32 @sqlite3VdbeAddOp3(ptr noundef %87, i32 noundef 122, i32 noundef %88, i32 noundef %89, i32 noundef %90)
  br label %if.end62

if.end62:                                         ; preds = %if.else58, %if.then55
  %91 = load i32, ptr %eOnePass, align 4
  %cmp63 = icmp eq i32 %91, 0
  br i1 %cmp63, label %if.then65, label %if.end76

if.then65:                                        ; preds = %if.end62
  %92 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %92)
  %93 = load ptr, ptr %v, align 8
  %94 = load i32, ptr %ephemTab, align 4
  %call66 = call i32 @sqlite3VdbeAddOp1(ptr noundef %93, i32 noundef 36, i32 noundef %94)
  store i32 %call66, ptr %addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc73, %if.then65
  %95 = load i32, ptr %i, align 4
  %96 = load i32, ptr %nArg, align 4
  %cmp68 = icmp slt i32 %95, %96
  br i1 %cmp68, label %for.body70, label %for.end75

for.body70:                                       ; preds = %for.cond67
  %97 = load ptr, ptr %v, align 8
  %98 = load i32, ptr %ephemTab, align 4
  %99 = load i32, ptr %i, align 4
  %100 = load i32, ptr %regArg, align 4
  %101 = load i32, ptr %i, align 4
  %add71 = add nsw i32 %100, %101
  %call72 = call i32 @sqlite3VdbeAddOp3(ptr noundef %97, i32 noundef 90, i32 noundef %98, i32 noundef %99, i32 noundef %add71)
  br label %for.inc73

for.inc73:                                        ; preds = %for.body70
  %102 = load i32, ptr %i, align 4
  %inc74 = add nsw i32 %102, 1
  store i32 %inc74, ptr %i, align 4
  br label %for.cond67, !llvm.loop !8

for.end75:                                        ; preds = %for.cond67
  br label %if.end76

if.end76:                                         ; preds = %for.end75, %if.end62
  %103 = load ptr, ptr %pParse.addr, align 8
  %104 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3VtabMakeWritable(ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %v, align 8
  %106 = load i32, ptr %nArg, align 4
  %107 = load i32, ptr %regArg, align 4
  %108 = load ptr, ptr %pVTab, align 8
  %call77 = call i32 @sqlite3VdbeAddOp4(ptr noundef %105, i32 noundef 10, i32 noundef 0, i32 noundef %106, i32 noundef %107, ptr noundef %108, i32 noundef -12)
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %onError.addr, align 4
  %cmp78 = icmp eq i32 %110, 11
  br i1 %cmp78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end76
  br label %cond.end

cond.false:                                       ; preds = %if.end76
  %111 = load i32, ptr %onError.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %111, %cond.false ]
  %conv80 = trunc i32 %cond to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %109, i16 noundef zeroext %conv80)
  %112 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %112)
  %113 = load i32, ptr %eOnePass, align 4
  %cmp81 = icmp eq i32 %113, 0
  br i1 %cmp81, label %if.then83, label %if.else87

if.then83:                                        ; preds = %cond.end
  %114 = load ptr, ptr %v, align 8
  %115 = load i32, ptr %ephemTab, align 4
  %116 = load i32, ptr %addr, align 4
  %add84 = add nsw i32 %116, 1
  %call85 = call i32 @sqlite3VdbeAddOp2(ptr noundef %114, i32 noundef 5, i32 noundef %115, i32 noundef %add84)
  %117 = load ptr, ptr %v, align 8
  %118 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %117, i32 noundef %118)
  %119 = load ptr, ptr %v, align 8
  %120 = load i32, ptr %ephemTab, align 4
  %call86 = call i32 @sqlite3VdbeAddOp2(ptr noundef %119, i32 noundef 117, i32 noundef %120, i32 noundef 0)
  br label %if.end88

if.else87:                                        ; preds = %cond.end
  %121 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %121)
  br label %if.end88

if.end88:                                         ; preds = %if.else87, %if.then83, %if.then
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
