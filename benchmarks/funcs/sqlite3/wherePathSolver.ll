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
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.WherePath = type { i64, i64, i16, i16, i16, i8, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

@.str.752 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #2

; Function Attrs: nounwind uwtable
define hidden i32 @wherePathSolver(ptr noundef %pWInfo, i16 noundef signext %nRowEst) #2 {
entry:
  %retval = alloca i32, align 4
  %pWInfo.addr = alloca ptr, align 8
  %nRowEst.addr = alloca i16, align 2
  %mxChoice = alloca i32, align 4
  %nLoop = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iLoop = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %mxI = alloca i32, align 4
  %nOrderBy = alloca i32, align 4
  %mxCost = alloca i16, align 2
  %mxUnsorted = alloca i16, align 2
  %nTo = alloca i32, align 4
  %nFrom = alloca i32, align 4
  %aFrom = alloca ptr, align 8
  %aTo = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %pTo = alloca ptr, align 8
  %pWLoop = alloca ptr, align 8
  %pX = alloca ptr, align 8
  %aSortCost = alloca ptr, align 8
  %pSpace = alloca ptr, align 8
  %nSpace = alloca i32, align 4
  %nOut = alloca i16, align 2
  %rCost = alloca i16, align 2
  %rUnsorted = alloca i16, align 2
  %isOrdered69 = alloca i8, align 1
  %maskNew = alloca i64, align 8
  %revMask = alloca i64, align 8
  %pLevel = alloca ptr, align 8
  %notUsed = alloca i64, align 8
  %rc = alloca i32, align 4
  %wsFlags393 = alloca i32, align 4
  %m = alloca i64, align 8
  %rc407 = alloca i32, align 4
  %revMask444 = alloca i64, align 8
  %nOrder = alloca i32, align 4
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store i16 %nRowEst, ptr %nRowEst.addr, align 2
  store i32 0, ptr %mxI, align 4
  store i16 0, ptr %mxCost, align 2
  store i16 0, ptr %mxUnsorted, align 2
  store ptr null, ptr %aSortCost, align 8
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %4, i32 0, i32 11
  %5 = load i8, ptr %nLevel, align 2
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %nLoop, align 4
  %6 = load i32, ptr %nLoop, align 4
  %cmp = icmp sle i32 %6, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %nLoop, align 4
  %cmp4 = icmp eq i32 %7, 2
  %8 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i32 5, i32 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond6, ptr %mxChoice, align 4
  %9 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.WhereInfo, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pOrderBy, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %11 = load i16, ptr %nRowEst.addr, align 2
  %conv9 = sext i16 %11 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 0, ptr %nOrderBy, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy12 = getelementptr inbounds nuw %struct.WhereInfo, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pOrderBy12, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %nExpr, align 8
  store i32 %14, ptr %nOrderBy, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, ptr %nLoop, align 4
  %conv13 = sext i32 %15 to i64
  %mul = mul i64 8, %conv13
  %add = add i64 32, %mul
  %16 = load i32, ptr %mxChoice, align 4
  %conv14 = sext i32 %16 to i64
  %mul15 = mul i64 %add, %conv14
  %mul16 = mul i64 %mul15, 2
  %conv17 = trunc i64 %mul16 to i32
  store i32 %conv17, ptr %nSpace, align 4
  %17 = load i32, ptr %nOrderBy, align 4
  %conv18 = sext i32 %17 to i64
  %mul19 = mul i64 2, %conv18
  %18 = load i32, ptr %nSpace, align 4
  %conv20 = sext i32 %18 to i64
  %add21 = add i64 %conv20, %mul19
  %conv22 = trunc i64 %add21 to i32
  store i32 %conv22, ptr %nSpace, align 4
  %19 = load ptr, ptr %db, align 8
  %20 = load i32, ptr %nSpace, align 4
  %conv23 = sext i32 %20 to i64
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %19, i64 noundef %conv23)
  store ptr %call, ptr %pSpace, align 8
  %21 = load ptr, ptr %pSpace, align 8
  %cmp24 = icmp eq ptr %21, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end
  %22 = load ptr, ptr %pSpace, align 8
  store ptr %22, ptr %aTo, align 8
  %23 = load ptr, ptr %aTo, align 8
  %24 = load i32, ptr %mxChoice, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds %struct.WherePath, ptr %23, i64 %idx.ext
  store ptr %add.ptr, ptr %aFrom, align 8
  %25 = load ptr, ptr %aFrom, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %25, i8 0, i64 32, i1 false)
  %26 = load ptr, ptr %aFrom, align 8
  %27 = load i32, ptr %mxChoice, align 4
  %idx.ext28 = sext i32 %27 to i64
  %add.ptr29 = getelementptr inbounds %struct.WherePath, ptr %26, i64 %idx.ext28
  store ptr %add.ptr29, ptr %pX, align 8
  %28 = load i32, ptr %mxChoice, align 4
  %mul30 = mul nsw i32 %28, 2
  store i32 %mul30, ptr %ii, align 4
  %29 = load ptr, ptr %aTo, align 8
  store ptr %29, ptr %pFrom, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end27
  %30 = load i32, ptr %ii, align 4
  %cmp31 = icmp sgt i32 %30, 0
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %pX, align 8
  %32 = load ptr, ptr %pFrom, align 8
  %aLoop = getelementptr inbounds nuw %struct.WherePath, ptr %32, i32 0, i32 6
  store ptr %31, ptr %aLoop, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %ii, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, ptr %ii, align 4
  %34 = load ptr, ptr %pFrom, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WherePath, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %pFrom, align 8
  %35 = load i32, ptr %nLoop, align 4
  %36 = load ptr, ptr %pX, align 8
  %idx.ext33 = sext i32 %35 to i64
  %add.ptr34 = getelementptr inbounds ptr, ptr %36, i64 %idx.ext33
  store ptr %add.ptr34, ptr %pX, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load i32, ptr %nOrderBy, align 4
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %if.then35, label %if.end38

if.then35:                                        ; preds = %for.end
  %38 = load ptr, ptr %pX, align 8
  store ptr %38, ptr %aSortCost, align 8
  %39 = load ptr, ptr %aSortCost, align 8
  %40 = load i32, ptr %nOrderBy, align 4
  %conv36 = sext i32 %40 to i64
  %mul37 = mul i64 2, %conv36
  call void @llvm.memset.p0.i64(ptr align 2 %39, i8 0, i64 %mul37, i1 false)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.end
  %41 = load ptr, ptr %pParse, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 39
  %42 = load i32, ptr %nQueryLoop, align 4
  %cmp39 = icmp ult i32 %42, 48
  br i1 %cmp39, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %if.end38
  %43 = load ptr, ptr %pParse, align 8
  %nQueryLoop42 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 39
  %44 = load i32, ptr %nQueryLoop42, align 4
  br label %cond.end44

cond.false43:                                     ; preds = %if.end38
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.true41
  %cond45 = phi i32 [ %44, %cond.true41 ], [ 48, %cond.false43 ]
  %conv46 = trunc i32 %cond45 to i16
  %45 = load ptr, ptr %aFrom, align 8
  %arrayidx = getelementptr inbounds %struct.WherePath, ptr %45, i64 0
  %nRow = getelementptr inbounds nuw %struct.WherePath, ptr %arrayidx, i32 0, i32 2
  store i16 %conv46, ptr %nRow, align 8
  store i32 1, ptr %nFrom, align 4
  %46 = load i32, ptr %nOrderBy, align 4
  %tobool47 = icmp ne i32 %46, 0
  br i1 %tobool47, label %if.then48, label %if.end57

if.then48:                                        ; preds = %cond.end44
  %47 = load i32, ptr %nLoop, align 4
  %cmp49 = icmp sgt i32 %47, 0
  br i1 %cmp49, label %cond.true51, label %cond.false52

cond.true51:                                      ; preds = %if.then48
  br label %cond.end53

cond.false52:                                     ; preds = %if.then48
  %48 = load i32, ptr %nOrderBy, align 4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i32 [ -1, %cond.true51 ], [ %48, %cond.false52 ]
  %conv55 = trunc i32 %cond54 to i8
  %49 = load ptr, ptr %aFrom, align 8
  %arrayidx56 = getelementptr inbounds %struct.WherePath, ptr %49, i64 0
  %isOrdered = getelementptr inbounds nuw %struct.WherePath, ptr %arrayidx56, i32 0, i32 5
  store i8 %conv55, ptr %isOrdered, align 2
  br label %if.end57

if.end57:                                         ; preds = %cond.end53, %cond.end44
  store i32 0, ptr %iLoop, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc285, %if.end57
  %50 = load i32, ptr %iLoop, align 4
  %51 = load i32, ptr %nLoop, align 4
  %cmp59 = icmp slt i32 %50, %51
  br i1 %cmp59, label %for.body61, label %for.end287

for.body61:                                       ; preds = %for.cond58
  store i32 0, ptr %nTo, align 4
  store i32 0, ptr %ii, align 4
  %52 = load ptr, ptr %aFrom, align 8
  store ptr %52, ptr %pFrom, align 8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc281, %for.body61
  %53 = load i32, ptr %ii, align 4
  %54 = load i32, ptr %nFrom, align 4
  %cmp63 = icmp slt i32 %53, %54
  br i1 %cmp63, label %for.body65, label %for.end284

for.body65:                                       ; preds = %for.cond62
  %55 = load ptr, ptr %pWInfo.addr, align 8
  %pLoops = getelementptr inbounds nuw %struct.WhereInfo, ptr %55, i32 0, i32 19
  %56 = load ptr, ptr %pLoops, align 8
  store ptr %56, ptr %pWLoop, align 8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc279, %for.body65
  %57 = load ptr, ptr %pWLoop, align 8
  %tobool67 = icmp ne ptr %57, null
  br i1 %tobool67, label %for.body68, label %for.end280

for.body68:                                       ; preds = %for.cond66
  %58 = load ptr, ptr %pFrom, align 8
  %isOrdered70 = getelementptr inbounds nuw %struct.WherePath, ptr %58, i32 0, i32 5
  %59 = load i8, ptr %isOrdered70, align 2
  store i8 %59, ptr %isOrdered69, align 1
  store i64 0, ptr %revMask, align 8
  %60 = load ptr, ptr %pWLoop, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %60, i32 0, i32 0
  %61 = load i64, ptr %prereq, align 8
  %62 = load ptr, ptr %pFrom, align 8
  %maskLoop = getelementptr inbounds nuw %struct.WherePath, ptr %62, i32 0, i32 0
  %63 = load i64, ptr %maskLoop, align 8
  %not = xor i64 %63, -1
  %and = and i64 %61, %not
  %cmp71 = icmp ne i64 %and, 0
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.body68
  br label %for.inc279

if.end74:                                         ; preds = %for.body68
  %64 = load ptr, ptr %pWLoop, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %64, i32 0, i32 1
  %65 = load i64, ptr %maskSelf, align 8
  %66 = load ptr, ptr %pFrom, align 8
  %maskLoop75 = getelementptr inbounds nuw %struct.WherePath, ptr %66, i32 0, i32 0
  %67 = load i64, ptr %maskLoop75, align 8
  %and76 = and i64 %65, %67
  %cmp77 = icmp ne i64 %and76, 0
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end74
  br label %for.inc279

if.end80:                                         ; preds = %if.end74
  %68 = load ptr, ptr %pWLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %68, i32 0, i32 8
  %69 = load i32, ptr %wsFlags, align 8
  %and81 = and i32 %69, 16384
  %cmp82 = icmp ne i32 %and81, 0
  br i1 %cmp82, label %land.lhs.true, label %if.end89

land.lhs.true:                                    ; preds = %if.end80
  %70 = load ptr, ptr %pFrom, align 8
  %nRow84 = getelementptr inbounds nuw %struct.WherePath, ptr %70, i32 0, i32 2
  %71 = load i16, ptr %nRow84, align 8
  %conv85 = sext i16 %71 to i32
  %cmp86 = icmp slt i32 %conv85, 3
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %land.lhs.true
  br label %for.inc279

if.end89:                                         ; preds = %land.lhs.true, %if.end80
  %72 = load ptr, ptr %pWLoop, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %72, i32 0, i32 4
  %73 = load i16, ptr %rSetup, align 2
  %74 = load ptr, ptr %pWLoop, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %74, i32 0, i32 5
  %75 = load i16, ptr %rRun, align 4
  %conv90 = sext i16 %75 to i32
  %76 = load ptr, ptr %pFrom, align 8
  %nRow91 = getelementptr inbounds nuw %struct.WherePath, ptr %76, i32 0, i32 2
  %77 = load i16, ptr %nRow91, align 8
  %conv92 = sext i16 %77 to i32
  %add93 = add nsw i32 %conv90, %conv92
  %conv94 = trunc i32 %add93 to i16
  %call95 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %73, i16 noundef signext %conv94)
  store i16 %call95, ptr %rUnsorted, align 2
  %78 = load i16, ptr %rUnsorted, align 2
  %79 = load ptr, ptr %pFrom, align 8
  %rUnsorted96 = getelementptr inbounds nuw %struct.WherePath, ptr %79, i32 0, i32 4
  %80 = load i16, ptr %rUnsorted96, align 4
  %call97 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %78, i16 noundef signext %80)
  store i16 %call97, ptr %rUnsorted, align 2
  %81 = load ptr, ptr %pFrom, align 8
  %nRow98 = getelementptr inbounds nuw %struct.WherePath, ptr %81, i32 0, i32 2
  %82 = load i16, ptr %nRow98, align 8
  %conv99 = sext i16 %82 to i32
  %83 = load ptr, ptr %pWLoop, align 8
  %nOut100 = getelementptr inbounds nuw %struct.WhereLoop, ptr %83, i32 0, i32 6
  %84 = load i16, ptr %nOut100, align 2
  %conv101 = sext i16 %84 to i32
  %add102 = add nsw i32 %conv99, %conv101
  %conv103 = trunc i32 %add102 to i16
  store i16 %conv103, ptr %nOut, align 2
  %85 = load ptr, ptr %pFrom, align 8
  %maskLoop104 = getelementptr inbounds nuw %struct.WherePath, ptr %85, i32 0, i32 0
  %86 = load i64, ptr %maskLoop104, align 8
  %87 = load ptr, ptr %pWLoop, align 8
  %maskSelf105 = getelementptr inbounds nuw %struct.WhereLoop, ptr %87, i32 0, i32 1
  %88 = load i64, ptr %maskSelf105, align 8
  %or = or i64 %86, %88
  store i64 %or, ptr %maskNew, align 8
  %89 = load i8, ptr %isOrdered69, align 1
  %conv106 = sext i8 %89 to i32
  %cmp107 = icmp slt i32 %conv106, 0
  br i1 %cmp107, label %if.then109, label %if.else113

if.then109:                                       ; preds = %if.end89
  %90 = load ptr, ptr %pWInfo.addr, align 8
  %91 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy110 = getelementptr inbounds nuw %struct.WhereInfo, ptr %91, i32 0, i32 2
  %92 = load ptr, ptr %pOrderBy110, align 8
  %93 = load ptr, ptr %pFrom, align 8
  %94 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %94, i32 0, i32 10
  %95 = load i16, ptr %wctrlFlags, align 8
  %96 = load i32, ptr %iLoop, align 4
  %conv111 = trunc i32 %96 to i16
  %97 = load ptr, ptr %pWLoop, align 8
  %call112 = call signext i8 @wherePathSatisfiesOrderBy(ptr noundef %90, ptr noundef %92, ptr noundef %93, i16 noundef zeroext %95, i16 noundef zeroext %conv111, ptr noundef %97, ptr noundef %revMask)
  store i8 %call112, ptr %isOrdered69, align 1
  br label %if.end114

if.else113:                                       ; preds = %if.end89
  %98 = load ptr, ptr %pFrom, align 8
  %revLoop = getelementptr inbounds nuw %struct.WherePath, ptr %98, i32 0, i32 1
  %99 = load i64, ptr %revLoop, align 8
  store i64 %99, ptr %revMask, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.else113, %if.then109
  %100 = load i8, ptr %isOrdered69, align 1
  %conv115 = sext i8 %100 to i32
  %cmp116 = icmp sge i32 %conv115, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.else139

land.lhs.true118:                                 ; preds = %if.end114
  %101 = load i8, ptr %isOrdered69, align 1
  %conv119 = sext i8 %101 to i32
  %102 = load i32, ptr %nOrderBy, align 4
  %cmp120 = icmp slt i32 %conv119, %102
  br i1 %cmp120, label %if.then122, label %if.else139

if.then122:                                       ; preds = %land.lhs.true118
  %103 = load ptr, ptr %aSortCost, align 8
  %104 = load i8, ptr %isOrdered69, align 1
  %idxprom = sext i8 %104 to i64
  %arrayidx123 = getelementptr inbounds i16, ptr %103, i64 %idxprom
  %105 = load i16, ptr %arrayidx123, align 2
  %conv124 = sext i16 %105 to i32
  %cmp125 = icmp eq i32 %conv124, 0
  br i1 %cmp125, label %if.then127, label %if.end132

if.then127:                                       ; preds = %if.then122
  %106 = load ptr, ptr %pWInfo.addr, align 8
  %107 = load i16, ptr %nRowEst.addr, align 2
  %108 = load i32, ptr %nOrderBy, align 4
  %109 = load i8, ptr %isOrdered69, align 1
  %conv128 = sext i8 %109 to i32
  %call129 = call signext i16 @whereSortingCost(ptr noundef %106, i16 noundef signext %107, i32 noundef %108, i32 noundef %conv128)
  %110 = load ptr, ptr %aSortCost, align 8
  %111 = load i8, ptr %isOrdered69, align 1
  %idxprom130 = sext i8 %111 to i64
  %arrayidx131 = getelementptr inbounds i16, ptr %110, i64 %idxprom130
  store i16 %call129, ptr %arrayidx131, align 2
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.then122
  %112 = load i16, ptr %rUnsorted, align 2
  %113 = load ptr, ptr %aSortCost, align 8
  %114 = load i8, ptr %isOrdered69, align 1
  %idxprom133 = sext i8 %114 to i64
  %arrayidx134 = getelementptr inbounds i16, ptr %113, i64 %idxprom133
  %115 = load i16, ptr %arrayidx134, align 2
  %call135 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %112, i16 noundef signext %115)
  %conv136 = sext i16 %call135 to i32
  %add137 = add nsw i32 %conv136, 5
  %conv138 = trunc i32 %add137 to i16
  store i16 %conv138, ptr %rCost, align 2
  br label %if.end142

if.else139:                                       ; preds = %land.lhs.true118, %if.end114
  %116 = load i16, ptr %rUnsorted, align 2
  store i16 %116, ptr %rCost, align 2
  %117 = load i16, ptr %rUnsorted, align 2
  %conv140 = sext i16 %117 to i32
  %sub = sub nsw i32 %conv140, 2
  %conv141 = trunc i32 %sub to i16
  store i16 %conv141, ptr %rUnsorted, align 2
  br label %if.end142

if.end142:                                        ; preds = %if.else139, %if.end132
  store i32 0, ptr %jj, align 4
  %118 = load ptr, ptr %aTo, align 8
  store ptr %118, ptr %pTo, align 8
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc159, %if.end142
  %119 = load i32, ptr %jj, align 4
  %120 = load i32, ptr %nTo, align 4
  %cmp144 = icmp slt i32 %119, %120
  br i1 %cmp144, label %for.body146, label %for.end161

for.body146:                                      ; preds = %for.cond143
  %121 = load ptr, ptr %pTo, align 8
  %maskLoop147 = getelementptr inbounds nuw %struct.WherePath, ptr %121, i32 0, i32 0
  %122 = load i64, ptr %maskLoop147, align 8
  %123 = load i64, ptr %maskNew, align 8
  %cmp148 = icmp eq i64 %122, %123
  br i1 %cmp148, label %land.lhs.true150, label %if.end158

land.lhs.true150:                                 ; preds = %for.body146
  %124 = load ptr, ptr %pTo, align 8
  %isOrdered151 = getelementptr inbounds nuw %struct.WherePath, ptr %124, i32 0, i32 5
  %125 = load i8, ptr %isOrdered151, align 2
  %conv152 = sext i8 %125 to i32
  %126 = load i8, ptr %isOrdered69, align 1
  %conv153 = sext i8 %126 to i32
  %xor = xor i32 %conv152, %conv153
  %and154 = and i32 %xor, 128
  %cmp155 = icmp eq i32 %and154, 0
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %land.lhs.true150
  br label %for.end161

if.end158:                                        ; preds = %land.lhs.true150, %for.body146
  br label %for.inc159

for.inc159:                                       ; preds = %if.end158
  %127 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %127, 1
  store i32 %inc, ptr %jj, align 4
  %128 = load ptr, ptr %pTo, align 8
  %incdec.ptr160 = getelementptr inbounds nuw %struct.WherePath, ptr %128, i32 1
  store ptr %incdec.ptr160, ptr %pTo, align 8
  br label %for.cond143, !llvm.loop !8

for.end161:                                       ; preds = %if.then157, %for.cond143
  %129 = load i32, ptr %jj, align 4
  %130 = load i32, ptr %nTo, align 4
  %cmp162 = icmp sge i32 %129, %130
  br i1 %cmp162, label %if.then164, label %if.else192

if.then164:                                       ; preds = %for.end161
  %131 = load i32, ptr %nTo, align 4
  %132 = load i32, ptr %mxChoice, align 4
  %cmp165 = icmp sge i32 %131, %132
  br i1 %cmp165, label %land.lhs.true167, label %if.end183

land.lhs.true167:                                 ; preds = %if.then164
  %133 = load i16, ptr %rCost, align 2
  %conv168 = sext i16 %133 to i32
  %134 = load i16, ptr %mxCost, align 2
  %conv169 = sext i16 %134 to i32
  %cmp170 = icmp sgt i32 %conv168, %conv169
  br i1 %cmp170, label %if.then182, label %lor.lhs.false172

lor.lhs.false172:                                 ; preds = %land.lhs.true167
  %135 = load i16, ptr %rCost, align 2
  %conv173 = sext i16 %135 to i32
  %136 = load i16, ptr %mxCost, align 2
  %conv174 = sext i16 %136 to i32
  %cmp175 = icmp eq i32 %conv173, %conv174
  br i1 %cmp175, label %land.lhs.true177, label %if.end183

land.lhs.true177:                                 ; preds = %lor.lhs.false172
  %137 = load i16, ptr %rUnsorted, align 2
  %conv178 = sext i16 %137 to i32
  %138 = load i16, ptr %mxUnsorted, align 2
  %conv179 = sext i16 %138 to i32
  %cmp180 = icmp sge i32 %conv178, %conv179
  br i1 %cmp180, label %if.then182, label %if.end183

if.then182:                                       ; preds = %land.lhs.true177, %land.lhs.true167
  br label %for.inc279

if.end183:                                        ; preds = %land.lhs.true177, %lor.lhs.false172, %if.then164
  %139 = load i32, ptr %nTo, align 4
  %140 = load i32, ptr %mxChoice, align 4
  %cmp184 = icmp slt i32 %139, %140
  br i1 %cmp184, label %if.then186, label %if.else188

if.then186:                                       ; preds = %if.end183
  %141 = load i32, ptr %nTo, align 4
  %inc187 = add nsw i32 %141, 1
  store i32 %inc187, ptr %nTo, align 4
  store i32 %141, ptr %jj, align 4
  br label %if.end189

if.else188:                                       ; preds = %if.end183
  %142 = load i32, ptr %mxI, align 4
  store i32 %142, ptr %jj, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.else188, %if.then186
  %143 = load ptr, ptr %aTo, align 8
  %144 = load i32, ptr %jj, align 4
  %idxprom190 = sext i32 %144 to i64
  %arrayidx191 = getelementptr inbounds %struct.WherePath, ptr %143, i64 %idxprom190
  store ptr %arrayidx191, ptr %pTo, align 8
  br label %if.end224

if.else192:                                       ; preds = %for.end161
  %145 = load ptr, ptr %pTo, align 8
  %rCost193 = getelementptr inbounds nuw %struct.WherePath, ptr %145, i32 0, i32 3
  %146 = load i16, ptr %rCost193, align 2
  %conv194 = sext i16 %146 to i32
  %147 = load i16, ptr %rCost, align 2
  %conv195 = sext i16 %147 to i32
  %cmp196 = icmp slt i32 %conv194, %conv195
  br i1 %cmp196, label %if.then222, label %lor.lhs.false198

lor.lhs.false198:                                 ; preds = %if.else192
  %148 = load ptr, ptr %pTo, align 8
  %rCost199 = getelementptr inbounds nuw %struct.WherePath, ptr %148, i32 0, i32 3
  %149 = load i16, ptr %rCost199, align 2
  %conv200 = sext i16 %149 to i32
  %150 = load i16, ptr %rCost, align 2
  %conv201 = sext i16 %150 to i32
  %cmp202 = icmp eq i32 %conv200, %conv201
  br i1 %cmp202, label %land.lhs.true204, label %if.end223

land.lhs.true204:                                 ; preds = %lor.lhs.false198
  %151 = load ptr, ptr %pTo, align 8
  %nRow205 = getelementptr inbounds nuw %struct.WherePath, ptr %151, i32 0, i32 2
  %152 = load i16, ptr %nRow205, align 8
  %conv206 = sext i16 %152 to i32
  %153 = load i16, ptr %nOut, align 2
  %conv207 = sext i16 %153 to i32
  %cmp208 = icmp slt i32 %conv206, %conv207
  br i1 %cmp208, label %if.then222, label %lor.lhs.false210

lor.lhs.false210:                                 ; preds = %land.lhs.true204
  %154 = load ptr, ptr %pTo, align 8
  %nRow211 = getelementptr inbounds nuw %struct.WherePath, ptr %154, i32 0, i32 2
  %155 = load i16, ptr %nRow211, align 8
  %conv212 = sext i16 %155 to i32
  %156 = load i16, ptr %nOut, align 2
  %conv213 = sext i16 %156 to i32
  %cmp214 = icmp eq i32 %conv212, %conv213
  br i1 %cmp214, label %land.lhs.true216, label %if.end223

land.lhs.true216:                                 ; preds = %lor.lhs.false210
  %157 = load ptr, ptr %pTo, align 8
  %rUnsorted217 = getelementptr inbounds nuw %struct.WherePath, ptr %157, i32 0, i32 4
  %158 = load i16, ptr %rUnsorted217, align 4
  %conv218 = sext i16 %158 to i32
  %159 = load i16, ptr %rUnsorted, align 2
  %conv219 = sext i16 %159 to i32
  %cmp220 = icmp sle i32 %conv218, %conv219
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %land.lhs.true216, %land.lhs.true204, %if.else192
  br label %for.inc279

if.end223:                                        ; preds = %land.lhs.true216, %lor.lhs.false210, %lor.lhs.false198
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end189
  %160 = load ptr, ptr %pFrom, align 8
  %maskLoop225 = getelementptr inbounds nuw %struct.WherePath, ptr %160, i32 0, i32 0
  %161 = load i64, ptr %maskLoop225, align 8
  %162 = load ptr, ptr %pWLoop, align 8
  %maskSelf226 = getelementptr inbounds nuw %struct.WhereLoop, ptr %162, i32 0, i32 1
  %163 = load i64, ptr %maskSelf226, align 8
  %or227 = or i64 %161, %163
  %164 = load ptr, ptr %pTo, align 8
  %maskLoop228 = getelementptr inbounds nuw %struct.WherePath, ptr %164, i32 0, i32 0
  store i64 %or227, ptr %maskLoop228, align 8
  %165 = load i64, ptr %revMask, align 8
  %166 = load ptr, ptr %pTo, align 8
  %revLoop229 = getelementptr inbounds nuw %struct.WherePath, ptr %166, i32 0, i32 1
  store i64 %165, ptr %revLoop229, align 8
  %167 = load i16, ptr %nOut, align 2
  %168 = load ptr, ptr %pTo, align 8
  %nRow230 = getelementptr inbounds nuw %struct.WherePath, ptr %168, i32 0, i32 2
  store i16 %167, ptr %nRow230, align 8
  %169 = load i16, ptr %rCost, align 2
  %170 = load ptr, ptr %pTo, align 8
  %rCost231 = getelementptr inbounds nuw %struct.WherePath, ptr %170, i32 0, i32 3
  store i16 %169, ptr %rCost231, align 2
  %171 = load i16, ptr %rUnsorted, align 2
  %172 = load ptr, ptr %pTo, align 8
  %rUnsorted232 = getelementptr inbounds nuw %struct.WherePath, ptr %172, i32 0, i32 4
  store i16 %171, ptr %rUnsorted232, align 4
  %173 = load i8, ptr %isOrdered69, align 1
  %174 = load ptr, ptr %pTo, align 8
  %isOrdered233 = getelementptr inbounds nuw %struct.WherePath, ptr %174, i32 0, i32 5
  store i8 %173, ptr %isOrdered233, align 2
  %175 = load ptr, ptr %pTo, align 8
  %aLoop234 = getelementptr inbounds nuw %struct.WherePath, ptr %175, i32 0, i32 6
  %176 = load ptr, ptr %aLoop234, align 8
  %177 = load ptr, ptr %pFrom, align 8
  %aLoop235 = getelementptr inbounds nuw %struct.WherePath, ptr %177, i32 0, i32 6
  %178 = load ptr, ptr %aLoop235, align 8
  %179 = load i32, ptr %iLoop, align 4
  %conv236 = sext i32 %179 to i64
  %mul237 = mul i64 8, %conv236
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %176, ptr align 8 %178, i64 %mul237, i1 false)
  %180 = load ptr, ptr %pWLoop, align 8
  %181 = load ptr, ptr %pTo, align 8
  %aLoop238 = getelementptr inbounds nuw %struct.WherePath, ptr %181, i32 0, i32 6
  %182 = load ptr, ptr %aLoop238, align 8
  %183 = load i32, ptr %iLoop, align 4
  %idxprom239 = sext i32 %183 to i64
  %arrayidx240 = getelementptr inbounds ptr, ptr %182, i64 %idxprom239
  store ptr %180, ptr %arrayidx240, align 8
  %184 = load i32, ptr %nTo, align 4
  %185 = load i32, ptr %mxChoice, align 4
  %cmp241 = icmp sge i32 %184, %185
  br i1 %cmp241, label %if.then243, label %if.end278

if.then243:                                       ; preds = %if.end224
  store i32 0, ptr %mxI, align 4
  %186 = load ptr, ptr %aTo, align 8
  %arrayidx244 = getelementptr inbounds %struct.WherePath, ptr %186, i64 0
  %rCost245 = getelementptr inbounds nuw %struct.WherePath, ptr %arrayidx244, i32 0, i32 3
  %187 = load i16, ptr %rCost245, align 2
  store i16 %187, ptr %mxCost, align 2
  %188 = load ptr, ptr %aTo, align 8
  %arrayidx246 = getelementptr inbounds %struct.WherePath, ptr %188, i64 0
  %nRow247 = getelementptr inbounds nuw %struct.WherePath, ptr %arrayidx246, i32 0, i32 2
  %189 = load i16, ptr %nRow247, align 8
  store i16 %189, ptr %mxUnsorted, align 2
  store i32 1, ptr %jj, align 4
  %190 = load ptr, ptr %aTo, align 8
  %arrayidx248 = getelementptr inbounds %struct.WherePath, ptr %190, i64 1
  store ptr %arrayidx248, ptr %pTo, align 8
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc274, %if.then243
  %191 = load i32, ptr %jj, align 4
  %192 = load i32, ptr %mxChoice, align 4
  %cmp250 = icmp slt i32 %191, %192
  br i1 %cmp250, label %for.body252, label %for.end277

for.body252:                                      ; preds = %for.cond249
  %193 = load ptr, ptr %pTo, align 8
  %rCost253 = getelementptr inbounds nuw %struct.WherePath, ptr %193, i32 0, i32 3
  %194 = load i16, ptr %rCost253, align 2
  %conv254 = sext i16 %194 to i32
  %195 = load i16, ptr %mxCost, align 2
  %conv255 = sext i16 %195 to i32
  %cmp256 = icmp sgt i32 %conv254, %conv255
  br i1 %cmp256, label %if.then270, label %lor.lhs.false258

lor.lhs.false258:                                 ; preds = %for.body252
  %196 = load ptr, ptr %pTo, align 8
  %rCost259 = getelementptr inbounds nuw %struct.WherePath, ptr %196, i32 0, i32 3
  %197 = load i16, ptr %rCost259, align 2
  %conv260 = sext i16 %197 to i32
  %198 = load i16, ptr %mxCost, align 2
  %conv261 = sext i16 %198 to i32
  %cmp262 = icmp eq i32 %conv260, %conv261
  br i1 %cmp262, label %land.lhs.true264, label %if.end273

land.lhs.true264:                                 ; preds = %lor.lhs.false258
  %199 = load ptr, ptr %pTo, align 8
  %rUnsorted265 = getelementptr inbounds nuw %struct.WherePath, ptr %199, i32 0, i32 4
  %200 = load i16, ptr %rUnsorted265, align 4
  %conv266 = sext i16 %200 to i32
  %201 = load i16, ptr %mxUnsorted, align 2
  %conv267 = sext i16 %201 to i32
  %cmp268 = icmp sgt i32 %conv266, %conv267
  br i1 %cmp268, label %if.then270, label %if.end273

if.then270:                                       ; preds = %land.lhs.true264, %for.body252
  %202 = load ptr, ptr %pTo, align 8
  %rCost271 = getelementptr inbounds nuw %struct.WherePath, ptr %202, i32 0, i32 3
  %203 = load i16, ptr %rCost271, align 2
  store i16 %203, ptr %mxCost, align 2
  %204 = load ptr, ptr %pTo, align 8
  %rUnsorted272 = getelementptr inbounds nuw %struct.WherePath, ptr %204, i32 0, i32 4
  %205 = load i16, ptr %rUnsorted272, align 4
  store i16 %205, ptr %mxUnsorted, align 2
  %206 = load i32, ptr %jj, align 4
  store i32 %206, ptr %mxI, align 4
  br label %if.end273

if.end273:                                        ; preds = %if.then270, %land.lhs.true264, %lor.lhs.false258
  br label %for.inc274

for.inc274:                                       ; preds = %if.end273
  %207 = load i32, ptr %jj, align 4
  %inc275 = add nsw i32 %207, 1
  store i32 %inc275, ptr %jj, align 4
  %208 = load ptr, ptr %pTo, align 8
  %incdec.ptr276 = getelementptr inbounds nuw %struct.WherePath, ptr %208, i32 1
  store ptr %incdec.ptr276, ptr %pTo, align 8
  br label %for.cond249, !llvm.loop !9

for.end277:                                       ; preds = %for.cond249
  br label %if.end278

if.end278:                                        ; preds = %for.end277, %if.end224
  br label %for.inc279

for.inc279:                                       ; preds = %if.end278, %if.then222, %if.then182, %if.then88, %if.then79, %if.then73
  %209 = load ptr, ptr %pWLoop, align 8
  %pNextLoop = getelementptr inbounds nuw %struct.WhereLoop, ptr %209, i32 0, i32 13
  %210 = load ptr, ptr %pNextLoop, align 8
  store ptr %210, ptr %pWLoop, align 8
  br label %for.cond66, !llvm.loop !10

for.end280:                                       ; preds = %for.cond66
  br label %for.inc281

for.inc281:                                       ; preds = %for.end280
  %211 = load i32, ptr %ii, align 4
  %inc282 = add nsw i32 %211, 1
  store i32 %inc282, ptr %ii, align 4
  %212 = load ptr, ptr %pFrom, align 8
  %incdec.ptr283 = getelementptr inbounds nuw %struct.WherePath, ptr %212, i32 1
  store ptr %incdec.ptr283, ptr %pFrom, align 8
  br label %for.cond62, !llvm.loop !11

for.end284:                                       ; preds = %for.cond62
  %213 = load ptr, ptr %aTo, align 8
  store ptr %213, ptr %pFrom, align 8
  %214 = load ptr, ptr %aFrom, align 8
  store ptr %214, ptr %aTo, align 8
  %215 = load ptr, ptr %pFrom, align 8
  store ptr %215, ptr %aFrom, align 8
  %216 = load i32, ptr %nTo, align 4
  store i32 %216, ptr %nFrom, align 4
  br label %for.inc285

for.inc285:                                       ; preds = %for.end284
  %217 = load i32, ptr %iLoop, align 4
  %inc286 = add nsw i32 %217, 1
  store i32 %inc286, ptr %iLoop, align 4
  br label %for.cond58, !llvm.loop !12

for.end287:                                       ; preds = %for.cond58
  %218 = load i32, ptr %nFrom, align 4
  %cmp288 = icmp eq i32 %218, 0
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %for.end287
  %219 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %219, ptr noundef @.str.752)
  %220 = load ptr, ptr %db, align 8
  %221 = load ptr, ptr %pSpace, align 8
  call void @sqlite3DbFreeNN(ptr noundef %220, ptr noundef %221)
  store i32 1, ptr %retval, align 4
  br label %return

if.end291:                                        ; preds = %for.end287
  %222 = load ptr, ptr %aFrom, align 8
  store ptr %222, ptr %pFrom, align 8
  store i32 1, ptr %ii, align 4
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc308, %if.end291
  %223 = load i32, ptr %ii, align 4
  %224 = load i32, ptr %nFrom, align 4
  %cmp293 = icmp slt i32 %223, %224
  br i1 %cmp293, label %for.body295, label %for.end310

for.body295:                                      ; preds = %for.cond292
  %225 = load ptr, ptr %pFrom, align 8
  %rCost296 = getelementptr inbounds nuw %struct.WherePath, ptr %225, i32 0, i32 3
  %226 = load i16, ptr %rCost296, align 2
  %conv297 = sext i16 %226 to i32
  %227 = load ptr, ptr %aFrom, align 8
  %228 = load i32, ptr %ii, align 4
  %idxprom298 = sext i32 %228 to i64
  %arrayidx299 = getelementptr inbounds %struct.WherePath, ptr %227, i64 %idxprom298
  %rCost300 = getelementptr inbounds nuw %struct.WherePath, ptr %arrayidx299, i32 0, i32 3
  %229 = load i16, ptr %rCost300, align 2
  %conv301 = sext i16 %229 to i32
  %cmp302 = icmp sgt i32 %conv297, %conv301
  br i1 %cmp302, label %if.then304, label %if.end307

if.then304:                                       ; preds = %for.body295
  %230 = load ptr, ptr %aFrom, align 8
  %231 = load i32, ptr %ii, align 4
  %idxprom305 = sext i32 %231 to i64
  %arrayidx306 = getelementptr inbounds %struct.WherePath, ptr %230, i64 %idxprom305
  store ptr %arrayidx306, ptr %pFrom, align 8
  br label %if.end307

if.end307:                                        ; preds = %if.then304, %for.body295
  br label %for.inc308

for.inc308:                                       ; preds = %if.end307
  %232 = load i32, ptr %ii, align 4
  %inc309 = add nsw i32 %232, 1
  store i32 %inc309, ptr %ii, align 4
  br label %for.cond292, !llvm.loop !13

for.end310:                                       ; preds = %for.cond292
  store i32 0, ptr %iLoop, align 4
  br label %for.cond311

for.cond311:                                      ; preds = %for.inc325, %for.end310
  %233 = load i32, ptr %iLoop, align 4
  %234 = load i32, ptr %nLoop, align 4
  %cmp312 = icmp slt i32 %233, %234
  br i1 %cmp312, label %for.body314, label %for.end327

for.body314:                                      ; preds = %for.cond311
  %235 = load ptr, ptr %pWInfo.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereInfo, ptr %235, i32 0, i32 24
  %arraydecay = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a, i64 0, i64 0
  %236 = load i32, ptr %iLoop, align 4
  %idx.ext315 = sext i32 %236 to i64
  %add.ptr316 = getelementptr inbounds %struct.WhereLevel, ptr %arraydecay, i64 %idx.ext315
  store ptr %add.ptr316, ptr %pLevel, align 8
  %237 = load ptr, ptr %pFrom, align 8
  %aLoop317 = getelementptr inbounds nuw %struct.WherePath, ptr %237, i32 0, i32 6
  %238 = load ptr, ptr %aLoop317, align 8
  %239 = load i32, ptr %iLoop, align 4
  %idxprom318 = sext i32 %239 to i64
  %arrayidx319 = getelementptr inbounds ptr, ptr %238, i64 %idxprom318
  %240 = load ptr, ptr %arrayidx319, align 8
  store ptr %240, ptr %pWLoop, align 8
  %241 = load ptr, ptr %pLevel, align 8
  %pWLoop320 = getelementptr inbounds nuw %struct.WhereLevel, ptr %241, i32 0, i32 20
  store ptr %240, ptr %pWLoop320, align 8
  %242 = load ptr, ptr %pWLoop, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %242, i32 0, i32 2
  %243 = load i8, ptr %iTab, align 8
  %244 = load ptr, ptr %pLevel, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %244, i32 0, i32 13
  store i8 %243, ptr %iFrom, align 4
  %245 = load ptr, ptr %pWInfo.addr, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %245, i32 0, i32 1
  %246 = load ptr, ptr %pTabList, align 8
  %a321 = getelementptr inbounds nuw %struct.SrcList, ptr %246, i32 0, i32 2
  %247 = load ptr, ptr %pLevel, align 8
  %iFrom322 = getelementptr inbounds nuw %struct.WhereLevel, ptr %247, i32 0, i32 13
  %248 = load i8, ptr %iFrom322, align 4
  %idxprom323 = zext i8 %248 to i64
  %arrayidx324 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a321, i64 0, i64 %idxprom323
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx324, i32 0, i32 10
  %249 = load i32, ptr %iCursor, align 8
  %250 = load ptr, ptr %pLevel, align 8
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %250, i32 0, i32 1
  store i32 %249, ptr %iTabCur, align 4
  br label %for.inc325

for.inc325:                                       ; preds = %for.body314
  %251 = load i32, ptr %iLoop, align 4
  %inc326 = add nsw i32 %251, 1
  store i32 %inc326, ptr %iLoop, align 4
  br label %for.cond311, !llvm.loop !14

for.end327:                                       ; preds = %for.cond311
  %252 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags328 = getelementptr inbounds nuw %struct.WhereInfo, ptr %252, i32 0, i32 10
  %253 = load i16, ptr %wctrlFlags328, align 8
  %conv329 = zext i16 %253 to i32
  %and330 = and i32 %conv329, 256
  %cmp331 = icmp ne i32 %and330, 0
  br i1 %cmp331, label %land.lhs.true333, label %if.end362

land.lhs.true333:                                 ; preds = %for.end327
  %254 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags334 = getelementptr inbounds nuw %struct.WhereInfo, ptr %254, i32 0, i32 10
  %255 = load i16, ptr %wctrlFlags334, align 8
  %conv335 = zext i16 %255 to i32
  %and336 = and i32 %conv335, 128
  %cmp337 = icmp eq i32 %and336, 0
  br i1 %cmp337, label %land.lhs.true339, label %if.end362

land.lhs.true339:                                 ; preds = %land.lhs.true333
  %256 = load ptr, ptr %pWInfo.addr, align 8
  %eDistinct = getelementptr inbounds nuw %struct.WhereInfo, ptr %256, i32 0, i32 16
  %257 = load i8, ptr %eDistinct, align 1
  %conv340 = zext i8 %257 to i32
  %cmp341 = icmp eq i32 %conv340, 0
  br i1 %cmp341, label %land.lhs.true343, label %if.end362

land.lhs.true343:                                 ; preds = %land.lhs.true339
  %258 = load i16, ptr %nRowEst.addr, align 2
  %conv344 = sext i16 %258 to i32
  %tobool345 = icmp ne i32 %conv344, 0
  br i1 %tobool345, label %if.then346, label %if.end362

if.then346:                                       ; preds = %land.lhs.true343
  %259 = load ptr, ptr %pWInfo.addr, align 8
  %260 = load ptr, ptr %pWInfo.addr, align 8
  %pResultSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %260, i32 0, i32 3
  %261 = load ptr, ptr %pResultSet, align 8
  %262 = load ptr, ptr %pFrom, align 8
  %263 = load i32, ptr %nLoop, align 4
  %sub347 = sub nsw i32 %263, 1
  %conv348 = trunc i32 %sub347 to i16
  %264 = load ptr, ptr %pFrom, align 8
  %aLoop349 = getelementptr inbounds nuw %struct.WherePath, ptr %264, i32 0, i32 6
  %265 = load ptr, ptr %aLoop349, align 8
  %266 = load i32, ptr %nLoop, align 4
  %sub350 = sub nsw i32 %266, 1
  %idxprom351 = sext i32 %sub350 to i64
  %arrayidx352 = getelementptr inbounds ptr, ptr %265, i64 %idxprom351
  %267 = load ptr, ptr %arrayidx352, align 8
  %call353 = call signext i8 @wherePathSatisfiesOrderBy(ptr noundef %259, ptr noundef %261, ptr noundef %262, i16 noundef zeroext 128, i16 noundef zeroext %conv348, ptr noundef %267, ptr noundef %notUsed)
  %conv354 = sext i8 %call353 to i32
  store i32 %conv354, ptr %rc, align 4
  %268 = load i32, ptr %rc, align 4
  %269 = load ptr, ptr %pWInfo.addr, align 8
  %pResultSet355 = getelementptr inbounds nuw %struct.WhereInfo, ptr %269, i32 0, i32 3
  %270 = load ptr, ptr %pResultSet355, align 8
  %nExpr356 = getelementptr inbounds nuw %struct.ExprList, ptr %270, i32 0, i32 0
  %271 = load i32, ptr %nExpr356, align 8
  %cmp357 = icmp eq i32 %268, %271
  br i1 %cmp357, label %if.then359, label %if.end361

if.then359:                                       ; preds = %if.then346
  %272 = load ptr, ptr %pWInfo.addr, align 8
  %eDistinct360 = getelementptr inbounds nuw %struct.WhereInfo, ptr %272, i32 0, i32 16
  store i8 2, ptr %eDistinct360, align 1
  br label %if.end361

if.end361:                                        ; preds = %if.then359, %if.then346
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %land.lhs.true343, %land.lhs.true339, %land.lhs.true333, %for.end327
  %273 = load ptr, ptr %pWInfo.addr, align 8
  %bOrderedInnerLoop = getelementptr inbounds nuw %struct.WhereInfo, ptr %273, i32 0, i32 17
  store i8 0, ptr %bOrderedInnerLoop, align 8
  %274 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy363 = getelementptr inbounds nuw %struct.WhereInfo, ptr %274, i32 0, i32 2
  %275 = load ptr, ptr %pOrderBy363, align 8
  %tobool364 = icmp ne ptr %275, null
  br i1 %tobool364, label %if.then365, label %if.end462

if.then365:                                       ; preds = %if.end362
  %276 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags366 = getelementptr inbounds nuw %struct.WhereInfo, ptr %276, i32 0, i32 10
  %277 = load i16, ptr %wctrlFlags366, align 8
  %conv367 = zext i16 %277 to i32
  %and368 = and i32 %conv367, 128
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %if.then370, label %if.else380

if.then370:                                       ; preds = %if.then365
  %278 = load ptr, ptr %pFrom, align 8
  %isOrdered371 = getelementptr inbounds nuw %struct.WherePath, ptr %278, i32 0, i32 5
  %279 = load i8, ptr %isOrdered371, align 2
  %conv372 = sext i8 %279 to i32
  %280 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy373 = getelementptr inbounds nuw %struct.WhereInfo, ptr %280, i32 0, i32 2
  %281 = load ptr, ptr %pOrderBy373, align 8
  %nExpr374 = getelementptr inbounds nuw %struct.ExprList, ptr %281, i32 0, i32 0
  %282 = load i32, ptr %nExpr374, align 8
  %cmp375 = icmp eq i32 %conv372, %282
  br i1 %cmp375, label %if.then377, label %if.end379

if.then377:                                       ; preds = %if.then370
  %283 = load ptr, ptr %pWInfo.addr, align 8
  %eDistinct378 = getelementptr inbounds nuw %struct.WhereInfo, ptr %283, i32 0, i32 16
  store i8 2, ptr %eDistinct378, align 1
  br label %if.end379

if.end379:                                        ; preds = %if.then377, %if.then370
  br label %if.end428

if.else380:                                       ; preds = %if.then365
  %284 = load ptr, ptr %pFrom, align 8
  %isOrdered381 = getelementptr inbounds nuw %struct.WherePath, ptr %284, i32 0, i32 5
  %285 = load i8, ptr %isOrdered381, align 2
  %286 = load ptr, ptr %pWInfo.addr, align 8
  %nOBSat = getelementptr inbounds nuw %struct.WhereInfo, ptr %286, i32 0, i32 12
  store i8 %285, ptr %nOBSat, align 1
  %287 = load ptr, ptr %pFrom, align 8
  %revLoop382 = getelementptr inbounds nuw %struct.WherePath, ptr %287, i32 0, i32 1
  %288 = load i64, ptr %revLoop382, align 8
  %289 = load ptr, ptr %pWInfo.addr, align 8
  %revMask383 = getelementptr inbounds nuw %struct.WhereInfo, ptr %289, i32 0, i32 20
  store i64 %288, ptr %revMask383, align 8
  %290 = load ptr, ptr %pWInfo.addr, align 8
  %nOBSat384 = getelementptr inbounds nuw %struct.WhereInfo, ptr %290, i32 0, i32 12
  %291 = load i8, ptr %nOBSat384, align 1
  %conv385 = sext i8 %291 to i32
  %cmp386 = icmp sle i32 %conv385, 0
  br i1 %cmp386, label %if.then388, label %if.end427

if.then388:                                       ; preds = %if.else380
  %292 = load ptr, ptr %pWInfo.addr, align 8
  %nOBSat389 = getelementptr inbounds nuw %struct.WhereInfo, ptr %292, i32 0, i32 12
  store i8 0, ptr %nOBSat389, align 1
  %293 = load i32, ptr %nLoop, align 4
  %cmp390 = icmp sgt i32 %293, 0
  br i1 %cmp390, label %if.then392, label %if.end426

if.then392:                                       ; preds = %if.then388
  %294 = load ptr, ptr %pFrom, align 8
  %aLoop394 = getelementptr inbounds nuw %struct.WherePath, ptr %294, i32 0, i32 6
  %295 = load ptr, ptr %aLoop394, align 8
  %296 = load i32, ptr %nLoop, align 4
  %sub395 = sub nsw i32 %296, 1
  %idxprom396 = sext i32 %sub395 to i64
  %arrayidx397 = getelementptr inbounds ptr, ptr %295, i64 %idxprom396
  %297 = load ptr, ptr %arrayidx397, align 8
  %wsFlags398 = getelementptr inbounds nuw %struct.WhereLoop, ptr %297, i32 0, i32 8
  %298 = load i32, ptr %wsFlags398, align 8
  store i32 %298, ptr %wsFlags393, align 4
  %299 = load i32, ptr %wsFlags393, align 4
  %and399 = and i32 %299, 4096
  %cmp400 = icmp eq i32 %and399, 0
  br i1 %cmp400, label %land.lhs.true402, label %if.end425

land.lhs.true402:                                 ; preds = %if.then392
  %300 = load i32, ptr %wsFlags393, align 4
  %and403 = and i32 %300, 260
  %cmp404 = icmp ne i32 %and403, 260
  br i1 %cmp404, label %if.then406, label %if.end425

if.then406:                                       ; preds = %land.lhs.true402
  store i64 0, ptr %m, align 8
  %301 = load ptr, ptr %pWInfo.addr, align 8
  %302 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy408 = getelementptr inbounds nuw %struct.WhereInfo, ptr %302, i32 0, i32 2
  %303 = load ptr, ptr %pOrderBy408, align 8
  %304 = load ptr, ptr %pFrom, align 8
  %305 = load i32, ptr %nLoop, align 4
  %sub409 = sub nsw i32 %305, 1
  %conv410 = trunc i32 %sub409 to i16
  %306 = load ptr, ptr %pFrom, align 8
  %aLoop411 = getelementptr inbounds nuw %struct.WherePath, ptr %306, i32 0, i32 6
  %307 = load ptr, ptr %aLoop411, align 8
  %308 = load i32, ptr %nLoop, align 4
  %sub412 = sub nsw i32 %308, 1
  %idxprom413 = sext i32 %sub412 to i64
  %arrayidx414 = getelementptr inbounds ptr, ptr %307, i64 %idxprom413
  %309 = load ptr, ptr %arrayidx414, align 8
  %call415 = call signext i8 @wherePathSatisfiesOrderBy(ptr noundef %301, ptr noundef %303, ptr noundef %304, i16 noundef zeroext 2048, i16 noundef zeroext %conv410, ptr noundef %309, ptr noundef %m)
  %conv416 = sext i8 %call415 to i32
  store i32 %conv416, ptr %rc407, align 4
  %310 = load i32, ptr %rc407, align 4
  %311 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy417 = getelementptr inbounds nuw %struct.WhereInfo, ptr %311, i32 0, i32 2
  %312 = load ptr, ptr %pOrderBy417, align 8
  %nExpr418 = getelementptr inbounds nuw %struct.ExprList, ptr %312, i32 0, i32 0
  %313 = load i32, ptr %nExpr418, align 8
  %cmp419 = icmp eq i32 %310, %313
  br i1 %cmp419, label %if.then421, label %if.end424

if.then421:                                       ; preds = %if.then406
  %314 = load ptr, ptr %pWInfo.addr, align 8
  %bOrderedInnerLoop422 = getelementptr inbounds nuw %struct.WhereInfo, ptr %314, i32 0, i32 17
  store i8 1, ptr %bOrderedInnerLoop422, align 8
  %315 = load i64, ptr %m, align 8
  %316 = load ptr, ptr %pWInfo.addr, align 8
  %revMask423 = getelementptr inbounds nuw %struct.WhereInfo, ptr %316, i32 0, i32 20
  store i64 %315, ptr %revMask423, align 8
  br label %if.end424

if.end424:                                        ; preds = %if.then421, %if.then406
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %land.lhs.true402, %if.then392
  br label %if.end426

if.end426:                                        ; preds = %if.end425, %if.then388
  br label %if.end427

if.end427:                                        ; preds = %if.end426, %if.else380
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %if.end379
  %317 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags429 = getelementptr inbounds nuw %struct.WhereInfo, ptr %317, i32 0, i32 10
  %318 = load i16, ptr %wctrlFlags429, align 8
  %conv430 = zext i16 %318 to i32
  %and431 = and i32 %conv430, 512
  %tobool432 = icmp ne i32 %and431, 0
  br i1 %tobool432, label %land.lhs.true433, label %if.end461

land.lhs.true433:                                 ; preds = %if.end428
  %319 = load ptr, ptr %pWInfo.addr, align 8
  %nOBSat434 = getelementptr inbounds nuw %struct.WhereInfo, ptr %319, i32 0, i32 12
  %320 = load i8, ptr %nOBSat434, align 1
  %conv435 = sext i8 %320 to i32
  %321 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy436 = getelementptr inbounds nuw %struct.WhereInfo, ptr %321, i32 0, i32 2
  %322 = load ptr, ptr %pOrderBy436, align 8
  %nExpr437 = getelementptr inbounds nuw %struct.ExprList, ptr %322, i32 0, i32 0
  %323 = load i32, ptr %nExpr437, align 8
  %cmp438 = icmp eq i32 %conv435, %323
  br i1 %cmp438, label %land.lhs.true440, label %if.end461

land.lhs.true440:                                 ; preds = %land.lhs.true433
  %324 = load i32, ptr %nLoop, align 4
  %cmp441 = icmp sgt i32 %324, 0
  br i1 %cmp441, label %if.then443, label %if.end461

if.then443:                                       ; preds = %land.lhs.true440
  store i64 0, ptr %revMask444, align 8
  %325 = load ptr, ptr %pWInfo.addr, align 8
  %326 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy445 = getelementptr inbounds nuw %struct.WhereInfo, ptr %326, i32 0, i32 2
  %327 = load ptr, ptr %pOrderBy445, align 8
  %328 = load ptr, ptr %pFrom, align 8
  %329 = load i32, ptr %nLoop, align 4
  %sub446 = sub nsw i32 %329, 1
  %conv447 = trunc i32 %sub446 to i16
  %330 = load ptr, ptr %pFrom, align 8
  %aLoop448 = getelementptr inbounds nuw %struct.WherePath, ptr %330, i32 0, i32 6
  %331 = load ptr, ptr %aLoop448, align 8
  %332 = load i32, ptr %nLoop, align 4
  %sub449 = sub nsw i32 %332, 1
  %idxprom450 = sext i32 %sub449 to i64
  %arrayidx451 = getelementptr inbounds ptr, ptr %331, i64 %idxprom450
  %333 = load ptr, ptr %arrayidx451, align 8
  %call452 = call signext i8 @wherePathSatisfiesOrderBy(ptr noundef %325, ptr noundef %327, ptr noundef %328, i16 noundef zeroext 0, i16 noundef zeroext %conv447, ptr noundef %333, ptr noundef %revMask444)
  %conv453 = sext i8 %call452 to i32
  store i32 %conv453, ptr %nOrder, align 4
  %334 = load i32, ptr %nOrder, align 4
  %335 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy454 = getelementptr inbounds nuw %struct.WhereInfo, ptr %335, i32 0, i32 2
  %336 = load ptr, ptr %pOrderBy454, align 8
  %nExpr455 = getelementptr inbounds nuw %struct.ExprList, ptr %336, i32 0, i32 0
  %337 = load i32, ptr %nExpr455, align 8
  %cmp456 = icmp eq i32 %334, %337
  br i1 %cmp456, label %if.then458, label %if.end460

if.then458:                                       ; preds = %if.then443
  %338 = load ptr, ptr %pWInfo.addr, align 8
  %sorted = getelementptr inbounds nuw %struct.WhereInfo, ptr %338, i32 0, i32 13
  store i8 1, ptr %sorted, align 4
  %339 = load i64, ptr %revMask444, align 8
  %340 = load ptr, ptr %pWInfo.addr, align 8
  %revMask459 = getelementptr inbounds nuw %struct.WhereInfo, ptr %340, i32 0, i32 20
  store i64 %339, ptr %revMask459, align 8
  br label %if.end460

if.end460:                                        ; preds = %if.then458, %if.then443
  br label %if.end461

if.end461:                                        ; preds = %if.end460, %land.lhs.true440, %land.lhs.true433, %if.end428
  br label %if.end462

if.end462:                                        ; preds = %if.end461, %if.end362
  %341 = load ptr, ptr %pFrom, align 8
  %nRow463 = getelementptr inbounds nuw %struct.WherePath, ptr %341, i32 0, i32 2
  %342 = load i16, ptr %nRow463, align 8
  %343 = load ptr, ptr %pWInfo.addr, align 8
  %nRowOut = getelementptr inbounds nuw %struct.WhereInfo, ptr %343, i32 0, i32 21
  store i16 %342, ptr %nRowOut, align 8
  %344 = load ptr, ptr %db, align 8
  %345 = load ptr, ptr %pSpace, align 8
  call void @sqlite3DbFreeNN(ptr noundef %344, ptr noundef %345)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end462, %if.then290, %if.then26
  %346 = load i32, ptr %retval, align 4
  ret i32 %346
}

; Function Attrs: nounwind uwtable
declare hidden signext i8 @wherePathSatisfiesOrderBy(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden signext i16 @whereSortingCost(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) #2

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
