; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
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
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.anon.20 = type { i32, i8, i8, i16, ptr }
%struct.sqlite3_index_constraint_usage = type { i32, i8 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.751 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddVirtualOne(ptr noundef %pBuilder, i64 noundef %mPrereq, i64 noundef %mUsable, i16 noundef zeroext %mExclude, ptr noundef %pIdxInfo, i16 noundef zeroext %mNoOmit, ptr noundef %pbIn) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %mUsable.addr = alloca i64, align 8
  %mExclude.addr = alloca i16, align 2
  %pIdxInfo.addr = alloca ptr, align 8
  %mNoOmit.addr = alloca i16, align 2
  %pbIn.addr = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pIdxCons = alloca ptr, align 8
  %pUsage = alloca ptr, align 8
  %i = alloca i32, align 4
  %mxTerm = alloca i32, align 4
  %rc = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %nConstraint = alloca i32, align 4
  %pTerm = alloca ptr, align 8
  %iTerm = alloca i32, align 4
  %pTerm43 = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store i64 %mUsable, ptr %mUsable.addr, align 8
  store i16 %mExclude, ptr %mExclude.addr, align 2
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i16 %mNoOmit, ptr %mNoOmit.addr, align 2
  store ptr %pbIn, ptr %pbIn.addr, align 8
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWC1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pWC1, align 8
  store ptr %1, ptr %pWC, align 8
  %2 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraintUsage = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aConstraintUsage, align 8
  store ptr %3, ptr %pUsage, align 8
  store i32 0, ptr %rc, align 4
  %4 = load ptr, ptr %pBuilder.addr, align 8
  %pNew2 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pNew2, align 8
  store ptr %5, ptr %pNew, align 8
  %6 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pWInfo, align 8
  %pParse3 = getelementptr inbounds nuw %struct.WhereInfo, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParse3, align 8
  store ptr %8, ptr %pParse, align 8
  %9 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo4 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pWInfo4, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pNew, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %iTab, align 8
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pSrc, align 8
  %14 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint5 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %nConstraint5, align 8
  store i32 %15, ptr %nConstraint, align 4
  %16 = load ptr, ptr %pbIn.addr, align 8
  store i32 0, ptr %16, align 4
  %17 = load i64, ptr %mPrereq.addr, align 8
  %18 = load ptr, ptr %pNew, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 0
  store i64 %17, ptr %prereq, align 8
  %19 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %aConstraint, align 8
  store ptr %20, ptr %pIdxCons, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %nConstraint, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %pWC, align 8
  %a6 = getelementptr inbounds nuw %struct.WhereClause, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %a6, align 8
  %25 = load ptr, ptr %pIdxCons, align 8
  %iTermOffset = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %iTermOffset, align 4
  %idxprom7 = sext i32 %26 to i64
  %arrayidx8 = getelementptr inbounds %struct.WhereTerm, ptr %24, i64 %idxprom7
  store ptr %arrayidx8, ptr %pTerm, align 8
  %27 = load ptr, ptr %pIdxCons, align 8
  %usable = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %27, i32 0, i32 2
  store i8 0, ptr %usable, align 1
  %28 = load ptr, ptr %pTerm, align 8
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %28, i32 0, i32 11
  %29 = load i64, ptr %prereqRight, align 8
  %30 = load i64, ptr %mUsable.addr, align 8
  %and = and i64 %29, %30
  %31 = load ptr, ptr %pTerm, align 8
  %prereqRight9 = getelementptr inbounds nuw %struct.WhereTerm, ptr %31, i32 0, i32 11
  %32 = load i64, ptr %prereqRight9, align 8
  %cmp10 = icmp eq i64 %and, %32
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %33 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %33, i32 0, i32 4
  %34 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %34 to i32
  %35 = load i16, ptr %mExclude.addr, align 2
  %conv11 = zext i16 %35 to i32
  %and12 = and i32 %conv, %conv11
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %36 = load ptr, ptr %pIdxCons, align 8
  %usable15 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %36, i32 0, i32 2
  store i8 1, ptr %usable15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  %38 = load ptr, ptr %pIdxCons, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %pIdxCons, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %pUsage, align 8
  %40 = load i32, ptr %nConstraint, align 4
  %conv16 = sext i32 %40 to i64
  %mul = mul i64 8, %conv16
  call void @llvm.memset.p0.i64(ptr align 4 %39, i8 0, i64 %mul, i1 false)
  %41 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %41, i32 0, i32 6
  store ptr null, ptr %idxStr, align 8
  %42 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %42, i32 0, i32 5
  store i32 0, ptr %idxNum, align 8
  %43 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %43, i32 0, i32 8
  store i32 0, ptr %orderByConsumed, align 4
  %44 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %44, i32 0, i32 9
  store double 5.000000e+98, ptr %estimatedCost, align 8
  %45 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %45, i32 0, i32 10
  store i64 25, ptr %estimatedRows, align 8
  %46 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxFlags = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %46, i32 0, i32 11
  store i32 0, ptr %idxFlags, align 8
  %47 = load ptr, ptr %pSrc, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %47, i32 0, i32 13
  %48 = load i64, ptr %colUsed, align 8
  %49 = load ptr, ptr %pIdxInfo.addr, align 8
  %colUsed17 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %49, i32 0, i32 12
  store i64 %48, ptr %colUsed17, align 8
  %50 = load ptr, ptr %pParse, align 8
  %51 = load ptr, ptr %pSrc, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %pTab, align 8
  %53 = load ptr, ptr %pIdxInfo.addr, align 8
  %call = call i32 @vtabBestIndex(ptr noundef %50, ptr noundef %52, ptr noundef %53)
  store i32 %call, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then18, label %if.end23

if.then18:                                        ; preds = %for.end
  %55 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %55, 19
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then18
  %56 = load i32, ptr %rc, align 4
  store i32 %56, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %for.end
  store i32 -1, ptr %mxTerm, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc30, %if.end23
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %nConstraint, align 4
  %cmp25 = icmp slt i32 %57, %58
  br i1 %cmp25, label %for.body27, label %for.end32

for.body27:                                       ; preds = %for.cond24
  %59 = load ptr, ptr %pNew, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %aLTerm, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %61 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %60, i64 %idxprom28
  store ptr null, ptr %arrayidx29, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body27
  %62 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %62, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond24, !llvm.loop !8

for.end32:                                        ; preds = %for.cond24
  %63 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %63, i32 0, i32 7
  %omitMask = getelementptr inbounds nuw %struct.anon.20, ptr %u, i32 0, i32 3
  store i16 0, ptr %omitMask, align 2
  %64 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint33 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %aConstraint33, align 8
  store ptr %65, ptr %pIdxCons, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc103, %for.end32
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %nConstraint, align 4
  %cmp35 = icmp slt i32 %66, %67
  br i1 %cmp35, label %for.body37, label %for.end106

for.body37:                                       ; preds = %for.cond34
  %68 = load ptr, ptr %pUsage, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %69 to i64
  %arrayidx39 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %68, i64 %idxprom38
  %argvIndex = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx39, i32 0, i32 0
  %70 = load i32, ptr %argvIndex, align 4
  %sub = sub nsw i32 %70, 1
  store i32 %sub, ptr %iTerm, align 4
  %cmp40 = icmp sge i32 %sub, 0
  br i1 %cmp40, label %if.then42, label %if.end102

if.then42:                                        ; preds = %for.body37
  %71 = load ptr, ptr %pIdxCons, align 8
  %iTermOffset44 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %71, i32 0, i32 3
  %72 = load i32, ptr %iTermOffset44, align 4
  store i32 %72, ptr %j, align 4
  %73 = load i32, ptr %iTerm, align 4
  %74 = load i32, ptr %nConstraint, align 4
  %cmp45 = icmp sge i32 %73, %74
  br i1 %cmp45, label %if.then63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then42
  %75 = load i32, ptr %j, align 4
  %cmp47 = icmp slt i32 %75, 0
  br i1 %cmp47, label %if.then63, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false
  %76 = load i32, ptr %j, align 4
  %77 = load ptr, ptr %pWC, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %77, i32 0, i32 4
  %78 = load i32, ptr %nTerm, align 4
  %cmp50 = icmp sge i32 %76, %78
  br i1 %cmp50, label %if.then63, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false49
  %79 = load ptr, ptr %pNew, align 8
  %aLTerm53 = getelementptr inbounds nuw %struct.WhereLoop, ptr %79, i32 0, i32 12
  %80 = load ptr, ptr %aLTerm53, align 8
  %81 = load i32, ptr %iTerm, align 4
  %idxprom54 = sext i32 %81 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %80, i64 %idxprom54
  %82 = load ptr, ptr %arrayidx55, align 8
  %cmp56 = icmp ne ptr %82, null
  br i1 %cmp56, label %if.then63, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %lor.lhs.false52
  %83 = load ptr, ptr %pIdxCons, align 8
  %usable59 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %83, i32 0, i32 2
  %84 = load i8, ptr %usable59, align 1
  %conv60 = zext i8 %84 to i32
  %cmp61 = icmp eq i32 %conv60, 0
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %lor.lhs.false58, %lor.lhs.false52, %lor.lhs.false49, %lor.lhs.false, %if.then42
  %85 = load ptr, ptr %pParse, align 8
  %86 = load ptr, ptr %pSrc, align 8
  %pTab64 = getelementptr inbounds nuw %struct.SrcList_item, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %pTab64, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %85, ptr noundef @.str.751, ptr noundef %88)
  store i32 1, ptr %retval, align 4
  br label %return

if.end65:                                         ; preds = %lor.lhs.false58
  %89 = load ptr, ptr %pWC, align 8
  %a66 = getelementptr inbounds nuw %struct.WhereClause, ptr %89, i32 0, i32 6
  %90 = load ptr, ptr %a66, align 8
  %91 = load i32, ptr %j, align 4
  %idxprom67 = sext i32 %91 to i64
  %arrayidx68 = getelementptr inbounds %struct.WhereTerm, ptr %90, i64 %idxprom67
  store ptr %arrayidx68, ptr %pTerm43, align 8
  %92 = load ptr, ptr %pTerm43, align 8
  %prereqRight69 = getelementptr inbounds nuw %struct.WhereTerm, ptr %92, i32 0, i32 11
  %93 = load i64, ptr %prereqRight69, align 8
  %94 = load ptr, ptr %pNew, align 8
  %prereq70 = getelementptr inbounds nuw %struct.WhereLoop, ptr %94, i32 0, i32 0
  %95 = load i64, ptr %prereq70, align 8
  %or = or i64 %95, %93
  store i64 %or, ptr %prereq70, align 8
  %96 = load ptr, ptr %pTerm43, align 8
  %97 = load ptr, ptr %pNew, align 8
  %aLTerm71 = getelementptr inbounds nuw %struct.WhereLoop, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %aLTerm71, align 8
  %99 = load i32, ptr %iTerm, align 4
  %idxprom72 = sext i32 %99 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %98, i64 %idxprom72
  store ptr %96, ptr %arrayidx73, align 8
  %100 = load i32, ptr %iTerm, align 4
  %101 = load i32, ptr %mxTerm, align 4
  %cmp74 = icmp sgt i32 %100, %101
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end65
  %102 = load i32, ptr %iTerm, align 4
  store i32 %102, ptr %mxTerm, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end65
  %103 = load i32, ptr %iTerm, align 4
  %cmp78 = icmp slt i32 %103, 16
  br i1 %cmp78, label %land.lhs.true80, label %if.end91

land.lhs.true80:                                  ; preds = %if.end77
  %104 = load ptr, ptr %pUsage, align 8
  %105 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %105 to i64
  %arrayidx82 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, ptr %104, i64 %idxprom81
  %omit = getelementptr inbounds nuw %struct.sqlite3_index_constraint_usage, ptr %arrayidx82, i32 0, i32 1
  %106 = load i8, ptr %omit, align 4
  %conv83 = zext i8 %106 to i32
  %tobool84 = icmp ne i32 %conv83, 0
  br i1 %tobool84, label %if.then85, label %if.end91

if.then85:                                        ; preds = %land.lhs.true80
  %107 = load i32, ptr %iTerm, align 4
  %shl = shl i32 1, %107
  %108 = load ptr, ptr %pNew, align 8
  %u86 = getelementptr inbounds nuw %struct.WhereLoop, ptr %108, i32 0, i32 7
  %omitMask87 = getelementptr inbounds nuw %struct.anon.20, ptr %u86, i32 0, i32 3
  %109 = load i16, ptr %omitMask87, align 2
  %conv88 = zext i16 %109 to i32
  %or89 = or i32 %conv88, %shl
  %conv90 = trunc i32 %or89 to i16
  store i16 %conv90, ptr %omitMask87, align 2
  br label %if.end91

if.end91:                                         ; preds = %if.then85, %land.lhs.true80, %if.end77
  %110 = load ptr, ptr %pTerm43, align 8
  %eOperator92 = getelementptr inbounds nuw %struct.WhereTerm, ptr %110, i32 0, i32 4
  %111 = load i16, ptr %eOperator92, align 4
  %conv93 = zext i16 %111 to i32
  %and94 = and i32 %conv93, 1
  %cmp95 = icmp ne i32 %and94, 0
  br i1 %cmp95, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.end91
  %112 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed98 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %112, i32 0, i32 8
  store i32 0, ptr %orderByConsumed98, align 4
  %113 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxFlags99 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %113, i32 0, i32 11
  %114 = load i32, ptr %idxFlags99, align 8
  %and100 = and i32 %114, -2
  store i32 %and100, ptr %idxFlags99, align 8
  %115 = load ptr, ptr %pbIn.addr, align 8
  store i32 1, ptr %115, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end91
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %for.body37
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %116 = load i32, ptr %i, align 4
  %inc104 = add nsw i32 %116, 1
  store i32 %inc104, ptr %i, align 4
  %117 = load ptr, ptr %pIdxCons, align 8
  %incdec.ptr105 = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %117, i32 1
  store ptr %incdec.ptr105, ptr %pIdxCons, align 8
  br label %for.cond34, !llvm.loop !9

for.end106:                                       ; preds = %for.cond34
  %118 = load i16, ptr %mNoOmit.addr, align 2
  %conv107 = zext i16 %118 to i32
  %not = xor i32 %conv107, -1
  %119 = load ptr, ptr %pNew, align 8
  %u108 = getelementptr inbounds nuw %struct.WhereLoop, ptr %119, i32 0, i32 7
  %omitMask109 = getelementptr inbounds nuw %struct.anon.20, ptr %u108, i32 0, i32 3
  %120 = load i16, ptr %omitMask109, align 2
  %conv110 = zext i16 %120 to i32
  %and111 = and i32 %conv110, %not
  %conv112 = trunc i32 %and111 to i16
  store i16 %conv112, ptr %omitMask109, align 2
  %121 = load i32, ptr %mxTerm, align 4
  %add = add nsw i32 %121, 1
  %conv113 = trunc i32 %add to i16
  %122 = load ptr, ptr %pNew, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %122, i32 0, i32 9
  store i16 %conv113, ptr %nLTerm, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc127, %for.end106
  %123 = load i32, ptr %i, align 4
  %124 = load i32, ptr %mxTerm, align 4
  %cmp115 = icmp sle i32 %123, %124
  br i1 %cmp115, label %for.body117, label %for.end129

for.body117:                                      ; preds = %for.cond114
  %125 = load ptr, ptr %pNew, align 8
  %aLTerm118 = getelementptr inbounds nuw %struct.WhereLoop, ptr %125, i32 0, i32 12
  %126 = load ptr, ptr %aLTerm118, align 8
  %127 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %127 to i64
  %arrayidx120 = getelementptr inbounds ptr, ptr %126, i64 %idxprom119
  %128 = load ptr, ptr %arrayidx120, align 8
  %cmp121 = icmp eq ptr %128, null
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %for.body117
  %129 = load ptr, ptr %pParse, align 8
  %130 = load ptr, ptr %pSrc, align 8
  %pTab124 = getelementptr inbounds nuw %struct.SrcList_item, ptr %130, i32 0, i32 4
  %131 = load ptr, ptr %pTab124, align 8
  %zName125 = getelementptr inbounds nuw %struct.Table, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %zName125, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %129, ptr noundef @.str.751, ptr noundef %132)
  store i32 1, ptr %retval, align 4
  br label %return

if.end126:                                        ; preds = %for.body117
  br label %for.inc127

for.inc127:                                       ; preds = %if.end126
  %133 = load i32, ptr %i, align 4
  %inc128 = add nsw i32 %133, 1
  store i32 %inc128, ptr %i, align 4
  br label %for.cond114, !llvm.loop !10

for.end129:                                       ; preds = %for.cond114
  %134 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxNum130 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %134, i32 0, i32 5
  %135 = load i32, ptr %idxNum130, align 8
  %136 = load ptr, ptr %pNew, align 8
  %u131 = getelementptr inbounds nuw %struct.WhereLoop, ptr %136, i32 0, i32 7
  %idxNum132 = getelementptr inbounds nuw %struct.anon.20, ptr %u131, i32 0, i32 0
  store i32 %135, ptr %idxNum132, align 8
  %137 = load ptr, ptr %pIdxInfo.addr, align 8
  %needToFreeIdxStr = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %137, i32 0, i32 7
  %138 = load i32, ptr %needToFreeIdxStr, align 8
  %conv133 = trunc i32 %138 to i8
  %139 = load ptr, ptr %pNew, align 8
  %u134 = getelementptr inbounds nuw %struct.WhereLoop, ptr %139, i32 0, i32 7
  %needFree = getelementptr inbounds nuw %struct.anon.20, ptr %u134, i32 0, i32 1
  store i8 %conv133, ptr %needFree, align 4
  %140 = load ptr, ptr %pIdxInfo.addr, align 8
  %needToFreeIdxStr135 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %140, i32 0, i32 7
  store i32 0, ptr %needToFreeIdxStr135, align 8
  %141 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxStr136 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %141, i32 0, i32 6
  %142 = load ptr, ptr %idxStr136, align 8
  %143 = load ptr, ptr %pNew, align 8
  %u137 = getelementptr inbounds nuw %struct.WhereLoop, ptr %143, i32 0, i32 7
  %idxStr138 = getelementptr inbounds nuw %struct.anon.20, ptr %u137, i32 0, i32 4
  store ptr %142, ptr %idxStr138, align 8
  %144 = load ptr, ptr %pIdxInfo.addr, align 8
  %orderByConsumed139 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %144, i32 0, i32 8
  %145 = load i32, ptr %orderByConsumed139, align 4
  %tobool140 = icmp ne i32 %145, 0
  br i1 %tobool140, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end129
  %146 = load ptr, ptr %pIdxInfo.addr, align 8
  %nOrderBy = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %146, i32 0, i32 2
  %147 = load i32, ptr %nOrderBy, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end129
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %147, %cond.true ], [ 0, %cond.false ]
  %conv141 = trunc i32 %cond to i8
  %148 = load ptr, ptr %pNew, align 8
  %u142 = getelementptr inbounds nuw %struct.WhereLoop, ptr %148, i32 0, i32 7
  %isOrdered = getelementptr inbounds nuw %struct.anon.20, ptr %u142, i32 0, i32 2
  store i8 %conv141, ptr %isOrdered, align 1
  %149 = load ptr, ptr %pNew, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %149, i32 0, i32 4
  store i16 0, ptr %rSetup, align 2
  %150 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedCost143 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %150, i32 0, i32 9
  %151 = load double, ptr %estimatedCost143, align 8
  %call144 = call signext i16 @sqlite3LogEstFromDouble(double noundef %151)
  %152 = load ptr, ptr %pNew, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %152, i32 0, i32 5
  store i16 %call144, ptr %rRun, align 4
  %153 = load ptr, ptr %pIdxInfo.addr, align 8
  %estimatedRows145 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %153, i32 0, i32 10
  %154 = load i64, ptr %estimatedRows145, align 8
  %call146 = call signext i16 @sqlite3LogEst(i64 noundef %154)
  %155 = load ptr, ptr %pNew, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %155, i32 0, i32 6
  store i16 %call146, ptr %nOut, align 2
  %156 = load ptr, ptr %pIdxInfo.addr, align 8
  %idxFlags147 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %156, i32 0, i32 11
  %157 = load i32, ptr %idxFlags147, align 8
  %and148 = and i32 %157, 1
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then150, label %if.else

if.then150:                                       ; preds = %cond.end
  %158 = load ptr, ptr %pNew, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %158, i32 0, i32 8
  %159 = load i32, ptr %wsFlags, align 8
  %or151 = or i32 %159, 4096
  store i32 %or151, ptr %wsFlags, align 8
  br label %if.end154

if.else:                                          ; preds = %cond.end
  %160 = load ptr, ptr %pNew, align 8
  %wsFlags152 = getelementptr inbounds nuw %struct.WhereLoop, ptr %160, i32 0, i32 8
  %161 = load i32, ptr %wsFlags152, align 8
  %and153 = and i32 %161, -4097
  store i32 %and153, ptr %wsFlags152, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.else, %if.then150
  %162 = load ptr, ptr %pBuilder.addr, align 8
  %163 = load ptr, ptr %pNew, align 8
  %call155 = call i32 @whereLoopInsert(ptr noundef %162, ptr noundef %163)
  store i32 %call155, ptr %rc, align 4
  %164 = load ptr, ptr %pNew, align 8
  %u156 = getelementptr inbounds nuw %struct.WhereLoop, ptr %164, i32 0, i32 7
  %needFree157 = getelementptr inbounds nuw %struct.anon.20, ptr %u156, i32 0, i32 1
  %165 = load i8, ptr %needFree157, align 4
  %tobool158 = icmp ne i8 %165, 0
  br i1 %tobool158, label %if.then159, label %if.end164

if.then159:                                       ; preds = %if.end154
  %166 = load ptr, ptr %pNew, align 8
  %u160 = getelementptr inbounds nuw %struct.WhereLoop, ptr %166, i32 0, i32 7
  %idxStr161 = getelementptr inbounds nuw %struct.anon.20, ptr %u160, i32 0, i32 4
  %167 = load ptr, ptr %idxStr161, align 8
  call void @sqlite3_free(ptr noundef %167)
  %168 = load ptr, ptr %pNew, align 8
  %u162 = getelementptr inbounds nuw %struct.WhereLoop, ptr %168, i32 0, i32 7
  %needFree163 = getelementptr inbounds nuw %struct.anon.20, ptr %u162, i32 0, i32 1
  store i8 0, ptr %needFree163, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then159, %if.end154
  %169 = load i32, ptr %rc, align 4
  store i32 %169, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end164, %if.then123, %if.then63, %if.end22, %if.then21
  %170 = load i32, ptr %retval, align 4
  ret i32 %170
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vtabBestIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstFromDouble(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopInsert(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
