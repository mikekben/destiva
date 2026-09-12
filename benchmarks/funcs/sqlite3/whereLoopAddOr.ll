; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.WhereOrSet = type { i16, [3 x %struct.WhereOrCost] }
%struct.WhereOrCost = type { i64, i16, i16 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WhereOrInfo = type { %struct.WhereClause, i64 }
%struct.WhereAndInfo = type { %struct.WhereClause }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddVirtual(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddBtree(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddOr(ptr noundef %pBuilder, i64 noundef %mPrereq, i64 noundef %mUnusable) #2 {
entry:
  %pBuilder.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %mUnusable.addr = alloca i64, align 8
  %pWInfo = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pWCEnd = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iCur = alloca i32, align 4
  %tempWC = alloca %struct.WhereClause, align 8
  %sSubBuild = alloca %struct.WhereLoopBuilder, align 8
  %sSum = alloca %struct.WhereOrSet, align 8
  %sCur = alloca %struct.WhereOrSet, align 8
  %pItem = alloca ptr, align 8
  %pOrWC = alloca ptr, align 8
  %pOrWCEnd = alloca ptr, align 8
  %pOrTerm = alloca ptr, align 8
  %once = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sPrev = alloca %struct.WhereOrSet, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store i64 %mUnusable, ptr %mUnusable.addr, align 8
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %pBuilder.addr, align 8
  %pWC2 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pWC2, align 8
  store ptr %3, ptr %pWC, align 8
  %4 = load ptr, ptr %pWC, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %a, align 8
  %6 = load ptr, ptr %pWC, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %nTerm, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.WhereTerm, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %pWCEnd, align 8
  %8 = load ptr, ptr %pBuilder.addr, align 8
  %pNew3 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pNew3, align 8
  store ptr %9, ptr %pNew, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sSum, i8 0, i64 56, i1 false)
  %10 = load ptr, ptr %pWInfo, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pTabList, align 8
  %a4 = getelementptr inbounds nuw %struct.SrcList, ptr %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a4, i64 0, i64 0
  %12 = load ptr, ptr %pNew, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %iTab, align 8
  %conv = zext i8 %13 to i32
  %idx.ext5 = sext i32 %conv to i64
  %add.ptr6 = getelementptr inbounds %struct.SrcList_item, ptr %arraydecay, i64 %idx.ext5
  store ptr %add.ptr6, ptr %pItem, align 8
  %14 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %14, i32 0, i32 10
  %15 = load i32, ptr %iCursor, align 8
  store i32 %15, ptr %iCur, align 4
  %16 = load ptr, ptr %pWC, align 8
  %a7 = getelementptr inbounds nuw %struct.WhereClause, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %a7, align 8
  store ptr %17, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc141, %entry
  %18 = load ptr, ptr %pTerm, align 8
  %19 = load ptr, ptr %pWCEnd, align 8
  %cmp = icmp ult ptr %18, %19
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %20 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %20, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %21, label %for.body, label %for.end143

for.body:                                         ; preds = %land.end
  %22 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %22, i32 0, i32 4
  %23 = load i16, ptr %eOperator, align 4
  %conv11 = zext i16 %23 to i32
  %and = and i32 %conv11, 512
  %cmp12 = icmp ne i32 %and, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end140

land.lhs.true:                                    ; preds = %for.body
  %24 = load ptr, ptr %pTerm, align 8
  %u = getelementptr inbounds nuw %struct.WhereTerm, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %u, align 8
  %indexable = getelementptr inbounds nuw %struct.WhereOrInfo, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %indexable, align 8
  %27 = load ptr, ptr %pNew, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %maskSelf, align 8
  %and14 = and i64 %26, %28
  %cmp15 = icmp ne i64 %and14, 0
  br i1 %cmp15, label %if.then, label %if.end140

if.then:                                          ; preds = %land.lhs.true
  %29 = load ptr, ptr %pTerm, align 8
  %u17 = getelementptr inbounds nuw %struct.WhereTerm, ptr %29, i32 0, i32 10
  %30 = load ptr, ptr %u17, align 8
  %wc = getelementptr inbounds nuw %struct.WhereOrInfo, ptr %30, i32 0, i32 0
  store ptr %wc, ptr %pOrWC, align 8
  %31 = load ptr, ptr %pOrWC, align 8
  %a18 = getelementptr inbounds nuw %struct.WhereClause, ptr %31, i32 0, i32 6
  %32 = load ptr, ptr %a18, align 8
  %33 = load ptr, ptr %pOrWC, align 8
  %nTerm19 = getelementptr inbounds nuw %struct.WhereClause, ptr %33, i32 0, i32 4
  %34 = load i32, ptr %nTerm19, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds %struct.WhereTerm, ptr %32, i64 %idxprom
  store ptr %arrayidx, ptr %pOrWCEnd, align 8
  store i32 1, ptr %once, align 4
  %35 = load ptr, ptr %pBuilder.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sSubBuild, ptr align 8 %35, i64 48, i1 false)
  %pOrderBy = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sSubBuild, i32 0, i32 2
  store ptr null, ptr %pOrderBy, align 8
  %pOrSet = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sSubBuild, i32 0, i32 4
  store ptr %sCur, ptr %pOrSet, align 8
  %36 = load ptr, ptr %pOrWC, align 8
  %a20 = getelementptr inbounds nuw %struct.WhereClause, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %a20, align 8
  store ptr %37, ptr %pOrTerm, align 8
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc105, %if.then
  %38 = load ptr, ptr %pOrTerm, align 8
  %39 = load ptr, ptr %pOrWCEnd, align 8
  %cmp22 = icmp ult ptr %38, %39
  br i1 %cmp22, label %for.body24, label %for.end106

for.body24:                                       ; preds = %for.cond21
  %40 = load ptr, ptr %pOrTerm, align 8
  %eOperator25 = getelementptr inbounds nuw %struct.WhereTerm, ptr %40, i32 0, i32 4
  %41 = load i16, ptr %eOperator25, align 4
  %conv26 = zext i16 %41 to i32
  %and27 = and i32 %conv26, 1024
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body24
  %42 = load ptr, ptr %pOrTerm, align 8
  %u31 = getelementptr inbounds nuw %struct.WhereTerm, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %u31, align 8
  %wc32 = getelementptr inbounds nuw %struct.WhereAndInfo, ptr %43, i32 0, i32 0
  %pWC33 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sSubBuild, i32 0, i32 1
  store ptr %wc32, ptr %pWC33, align 8
  br label %if.end43

if.else:                                          ; preds = %for.body24
  %44 = load ptr, ptr %pOrTerm, align 8
  %leftCursor = getelementptr inbounds nuw %struct.WhereTerm, ptr %44, i32 0, i32 8
  %45 = load i32, ptr %leftCursor, align 4
  %46 = load i32, ptr %iCur, align 4
  %cmp34 = icmp eq i32 %45, %46
  br i1 %cmp34, label %if.then36, label %if.else42

if.then36:                                        ; preds = %if.else
  %47 = load ptr, ptr %pWC, align 8
  %pWInfo37 = getelementptr inbounds nuw %struct.WhereClause, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pWInfo37, align 8
  %pWInfo38 = getelementptr inbounds nuw %struct.WhereClause, ptr %tempWC, i32 0, i32 0
  store ptr %48, ptr %pWInfo38, align 8
  %49 = load ptr, ptr %pWC, align 8
  %pOuter = getelementptr inbounds nuw %struct.WhereClause, ptr %tempWC, i32 0, i32 1
  store ptr %49, ptr %pOuter, align 8
  %op = getelementptr inbounds nuw %struct.WhereClause, ptr %tempWC, i32 0, i32 2
  store i8 44, ptr %op, align 8
  %nTerm39 = getelementptr inbounds nuw %struct.WhereClause, ptr %tempWC, i32 0, i32 4
  store i32 1, ptr %nTerm39, align 4
  %50 = load ptr, ptr %pOrTerm, align 8
  %a40 = getelementptr inbounds nuw %struct.WhereClause, ptr %tempWC, i32 0, i32 6
  store ptr %50, ptr %a40, align 8
  %pWC41 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sSubBuild, i32 0, i32 1
  store ptr %tempWC, ptr %pWC41, align 8
  br label %if.end

if.else42:                                        ; preds = %if.else
  br label %for.inc105

if.end:                                           ; preds = %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.end, %if.then30
  %n = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 0
  store i16 0, ptr %n, align 8
  %51 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 16
  %53 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %53, 0
  br i1 %tobool, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.end43
  %54 = load i64, ptr %mPrereq.addr, align 8
  %55 = load i64, ptr %mUnusable.addr, align 8
  %call = call i32 @whereLoopAddVirtual(ptr noundef %sSubBuild, i64 noundef %54, i64 noundef %55)
  store i32 %call, ptr %rc, align 4
  br label %if.end47

if.else45:                                        ; preds = %if.end43
  %56 = load i64, ptr %mPrereq.addr, align 8
  %call46 = call i32 @whereLoopAddBtree(ptr noundef %sSubBuild, i64 noundef %56)
  store i32 %call46, ptr %rc, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then44
  %57 = load i32, ptr %rc, align 4
  %cmp48 = icmp eq i32 %57, 0
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  %58 = load i64, ptr %mPrereq.addr, align 8
  %59 = load i64, ptr %mUnusable.addr, align 8
  %call51 = call i32 @whereLoopAddOr(ptr noundef %sSubBuild, i64 noundef %58, i64 noundef %59)
  store i32 %call51, ptr %rc, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end47
  %n53 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 0
  %60 = load i16, ptr %n53, align 8
  %conv54 = zext i16 %60 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end52
  %n58 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 0
  store i16 0, ptr %n58, align 8
  br label %for.end106

if.else59:                                        ; preds = %if.end52
  %61 = load i32, ptr %once, align 4
  %tobool60 = icmp ne i32 %61, 0
  br i1 %tobool60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.else59
  call void @whereOrMove(ptr noundef %sSum, ptr noundef %sCur)
  store i32 0, ptr %once, align 4
  br label %if.end103

if.else62:                                        ; preds = %if.else59
  call void @whereOrMove(ptr noundef %sPrev, ptr noundef %sSum)
  %n63 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 0
  store i16 0, ptr %n63, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc100, %if.else62
  %62 = load i32, ptr %i, align 4
  %n65 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sPrev, i32 0, i32 0
  %63 = load i16, ptr %n65, align 8
  %conv66 = zext i16 %63 to i32
  %cmp67 = icmp slt i32 %62, %conv66
  br i1 %cmp67, label %for.body69, label %for.end102

for.body69:                                       ; preds = %for.cond64
  store i32 0, ptr %j, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc, %for.body69
  %64 = load i32, ptr %j, align 4
  %n71 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 0
  %65 = load i16, ptr %n71, align 8
  %conv72 = zext i16 %65 to i32
  %cmp73 = icmp slt i32 %64, %conv72
  br i1 %cmp73, label %for.body75, label %for.end

for.body75:                                       ; preds = %for.cond70
  %a76 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sPrev, i32 0, i32 1
  %66 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %66 to i64
  %arrayidx78 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a76, i64 0, i64 %idxprom77
  %prereq = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx78, i32 0, i32 0
  %67 = load i64, ptr %prereq, align 8
  %a79 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 1
  %68 = load i32, ptr %j, align 4
  %idxprom80 = sext i32 %68 to i64
  %arrayidx81 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a79, i64 0, i64 %idxprom80
  %prereq82 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx81, i32 0, i32 0
  %69 = load i64, ptr %prereq82, align 8
  %or = or i64 %67, %69
  %a83 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sPrev, i32 0, i32 1
  %70 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %70 to i64
  %arrayidx85 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a83, i64 0, i64 %idxprom84
  %rRun = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx85, i32 0, i32 1
  %71 = load i16, ptr %rRun, align 8
  %a86 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 1
  %72 = load i32, ptr %j, align 4
  %idxprom87 = sext i32 %72 to i64
  %arrayidx88 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a86, i64 0, i64 %idxprom87
  %rRun89 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx88, i32 0, i32 1
  %73 = load i16, ptr %rRun89, align 8
  %call90 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %71, i16 noundef signext %73)
  %a91 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sPrev, i32 0, i32 1
  %74 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %74 to i64
  %arrayidx93 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a91, i64 0, i64 %idxprom92
  %nOut = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx93, i32 0, i32 2
  %75 = load i16, ptr %nOut, align 2
  %a94 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sCur, i32 0, i32 1
  %76 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %76 to i64
  %arrayidx96 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a94, i64 0, i64 %idxprom95
  %nOut97 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx96, i32 0, i32 2
  %77 = load i16, ptr %nOut97, align 2
  %call98 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %75, i16 noundef signext %77)
  %call99 = call i32 @whereOrInsert(ptr noundef %sSum, i64 noundef %or, i16 noundef signext %call90, i16 noundef signext %call98)
  br label %for.inc

for.inc:                                          ; preds = %for.body75
  %78 = load i32, ptr %j, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond70, !llvm.loop !6

for.end:                                          ; preds = %for.cond70
  br label %for.inc100

for.inc100:                                       ; preds = %for.end
  %79 = load i32, ptr %i, align 4
  %inc101 = add nsw i32 %79, 1
  store i32 %inc101, ptr %i, align 4
  br label %for.cond64, !llvm.loop !8

for.end102:                                       ; preds = %for.cond64
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %if.then61
  br label %if.end104

if.end104:                                        ; preds = %if.end103
  br label %for.inc105

for.inc105:                                       ; preds = %if.end104, %if.else42
  %80 = load ptr, ptr %pOrTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %80, i32 1
  store ptr %incdec.ptr, ptr %pOrTerm, align 8
  br label %for.cond21, !llvm.loop !9

for.end106:                                       ; preds = %if.then57, %for.cond21
  %81 = load ptr, ptr %pNew, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %81, i32 0, i32 9
  store i16 1, ptr %nLTerm, align 4
  %82 = load ptr, ptr %pTerm, align 8
  %83 = load ptr, ptr %pNew, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %aLTerm, align 8
  %arrayidx107 = getelementptr inbounds ptr, ptr %84, i64 0
  store ptr %82, ptr %arrayidx107, align 8
  %85 = load ptr, ptr %pNew, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %85, i32 0, i32 8
  store i32 8192, ptr %wsFlags, align 8
  %86 = load ptr, ptr %pNew, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %86, i32 0, i32 4
  store i16 0, ptr %rSetup, align 2
  %87 = load ptr, ptr %pNew, align 8
  %iSortIdx = getelementptr inbounds nuw %struct.WhereLoop, ptr %87, i32 0, i32 3
  store i8 0, ptr %iSortIdx, align 1
  %88 = load ptr, ptr %pNew, align 8
  %u108 = getelementptr inbounds nuw %struct.WhereLoop, ptr %88, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr align 8 %u108, i8 0, i64 16, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc137, %for.end106
  %89 = load i32, ptr %rc, align 4
  %cmp110 = icmp eq i32 %89, 0
  br i1 %cmp110, label %land.rhs112, label %land.end117

land.rhs112:                                      ; preds = %for.cond109
  %90 = load i32, ptr %i, align 4
  %n113 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 0
  %91 = load i16, ptr %n113, align 8
  %conv114 = zext i16 %91 to i32
  %cmp115 = icmp slt i32 %90, %conv114
  br label %land.end117

land.end117:                                      ; preds = %land.rhs112, %for.cond109
  %92 = phi i1 [ false, %for.cond109 ], [ %cmp115, %land.rhs112 ]
  br i1 %92, label %for.body118, label %for.end139

for.body118:                                      ; preds = %land.end117
  %a119 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 1
  %93 = load i32, ptr %i, align 4
  %idxprom120 = sext i32 %93 to i64
  %arrayidx121 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a119, i64 0, i64 %idxprom120
  %rRun122 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx121, i32 0, i32 1
  %94 = load i16, ptr %rRun122, align 8
  %conv123 = sext i16 %94 to i32
  %add = add nsw i32 %conv123, 1
  %conv124 = trunc i32 %add to i16
  %95 = load ptr, ptr %pNew, align 8
  %rRun125 = getelementptr inbounds nuw %struct.WhereLoop, ptr %95, i32 0, i32 5
  store i16 %conv124, ptr %rRun125, align 4
  %a126 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 1
  %96 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %96 to i64
  %arrayidx128 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a126, i64 0, i64 %idxprom127
  %nOut129 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx128, i32 0, i32 2
  %97 = load i16, ptr %nOut129, align 2
  %98 = load ptr, ptr %pNew, align 8
  %nOut130 = getelementptr inbounds nuw %struct.WhereLoop, ptr %98, i32 0, i32 6
  store i16 %97, ptr %nOut130, align 2
  %a131 = getelementptr inbounds nuw %struct.WhereOrSet, ptr %sSum, i32 0, i32 1
  %99 = load i32, ptr %i, align 4
  %idxprom132 = sext i32 %99 to i64
  %arrayidx133 = getelementptr inbounds [3 x %struct.WhereOrCost], ptr %a131, i64 0, i64 %idxprom132
  %prereq134 = getelementptr inbounds nuw %struct.WhereOrCost, ptr %arrayidx133, i32 0, i32 0
  %100 = load i64, ptr %prereq134, align 8
  %101 = load ptr, ptr %pNew, align 8
  %prereq135 = getelementptr inbounds nuw %struct.WhereLoop, ptr %101, i32 0, i32 0
  store i64 %100, ptr %prereq135, align 8
  %102 = load ptr, ptr %pBuilder.addr, align 8
  %103 = load ptr, ptr %pNew, align 8
  %call136 = call i32 @whereLoopInsert(ptr noundef %102, ptr noundef %103)
  store i32 %call136, ptr %rc, align 4
  br label %for.inc137

for.inc137:                                       ; preds = %for.body118
  %104 = load i32, ptr %i, align 4
  %inc138 = add nsw i32 %104, 1
  store i32 %inc138, ptr %i, align 4
  br label %for.cond109, !llvm.loop !10

for.end139:                                       ; preds = %land.end117
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %land.lhs.true, %for.body
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %105 = load ptr, ptr %pTerm, align 8
  %incdec.ptr142 = getelementptr inbounds nuw %struct.WhereTerm, ptr %105, i32 1
  store ptr %incdec.ptr142, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !11

for.end143:                                       ; preds = %land.end
  %106 = load i32, ptr %rc, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopInsert(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @whereOrInsert(ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext) #2

; Function Attrs: nounwind uwtable
declare hidden void @whereOrMove(ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
