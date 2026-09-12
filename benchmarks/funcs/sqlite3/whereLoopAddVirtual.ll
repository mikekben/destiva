; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.anon.20 = type { i32, i8, i8, i16, ptr }
%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddVirtual(ptr noundef %pBuilder, i64 noundef %mPrereq, i64 noundef %mUnusable) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %mUnusable.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nConstraint = alloca i32, align 4
  %bIn = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %mBest = alloca i64, align 8
  %mNoOmit = alloca i16, align 2
  %seenZero = alloca i32, align 4
  %seenZeroNoIN = alloca i32, align 4
  %mPrev = alloca i64, align 8
  %mBestNoIn = alloca i64, align 8
  %i = alloca i32, align 4
  %mNext = alloca i64, align 8
  %mThis = alloca i64, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store i64 %mUnusable, ptr %mUnusable.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  %2 = load ptr, ptr %pWInfo, align 8
  %pParse2 = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse2, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %pBuilder.addr, align 8
  %pWC3 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pWC3, align 8
  store ptr %5, ptr %pWC, align 8
  %6 = load ptr, ptr %pBuilder.addr, align 8
  %pNew4 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pNew4, align 8
  store ptr %7, ptr %pNew, align 8
  %8 = load ptr, ptr %pWInfo, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pNew, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %10, i32 0, i32 2
  %11 = load i8, ptr %iTab, align 8
  %idxprom = zext i8 %11 to i64
  %arrayidx = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pSrc, align 8
  %12 = load ptr, ptr %pParse, align 8
  %13 = load ptr, ptr %pWC, align 8
  %14 = load i64, ptr %mUnusable.addr, align 8
  %15 = load ptr, ptr %pSrc, align 8
  %16 = load ptr, ptr %pBuilder.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pOrderBy, align 8
  %call = call ptr @allocateIndexInfo(ptr noundef %12, ptr noundef %13, i64 noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef %mNoOmit)
  store ptr %call, ptr %p, align 8
  %18 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load ptr, ptr %pNew, align 8
  %rSetup = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 4
  store i16 0, ptr %rSetup, align 2
  %20 = load ptr, ptr %pNew, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %20, i32 0, i32 8
  store i32 1024, ptr %wsFlags, align 8
  %21 = load ptr, ptr %pNew, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 9
  store i16 0, ptr %nLTerm, align 4
  %22 = load ptr, ptr %pNew, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %22, i32 0, i32 7
  %needFree = getelementptr inbounds nuw %struct.anon.20, ptr %u, i32 0, i32 1
  store i8 0, ptr %needFree, align 4
  %23 = load ptr, ptr %p, align 8
  %nConstraint5 = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %nConstraint5, align 8
  store i32 %24, ptr %nConstraint, align 4
  %25 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %db, align 8
  %27 = load ptr, ptr %pNew, align 8
  %28 = load i32, ptr %nConstraint, align 4
  %call6 = call i32 @whereLoopResize(ptr noundef %26, ptr noundef %27, i32 noundef %28)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %29 = load ptr, ptr %pParse, align 8
  %db8 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %db8, align 8
  %31 = load ptr, ptr %p, align 8
  call void @sqlite3DbFree(ptr noundef %30, ptr noundef %31)
  store i32 7, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %32 = load ptr, ptr %pBuilder.addr, align 8
  %33 = load i64, ptr %mPrereq.addr, align 8
  %34 = load ptr, ptr %p, align 8
  %35 = load i16, ptr %mNoOmit, align 2
  %call10 = call i32 @whereLoopAddVirtualOne(ptr noundef %32, i64 noundef %33, i64 noundef -1, i16 noundef zeroext 0, ptr noundef %34, i16 noundef zeroext %35, ptr noundef %bIn)
  store i32 %call10, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %36, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end70

land.lhs.true:                                    ; preds = %if.end9
  %37 = load ptr, ptr %pNew, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %prereq, align 8
  %39 = load i64, ptr %mPrereq.addr, align 8
  %not = xor i64 %39, -1
  %and = and i64 %38, %not
  store i64 %and, ptr %mBest, align 8
  %cmp12 = icmp ne i64 %and, 0
  br i1 %cmp12, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %40 = load i32, ptr %bIn, align 4
  %tobool13 = icmp ne i32 %40, 0
  br i1 %tobool13, label %if.then14, label %if.end70

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %seenZero, align 4
  store i32 0, ptr %seenZeroNoIN, align 4
  store i64 0, ptr %mPrev, align 8
  store i64 0, ptr %mBestNoIn, align 8
  %41 = load i32, ptr %bIn, align 4
  %tobool15 = icmp ne i32 %41, 0
  br i1 %tobool15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.then14
  %42 = load ptr, ptr %pBuilder.addr, align 8
  %43 = load i64, ptr %mPrereq.addr, align 8
  %44 = load ptr, ptr %p, align 8
  %45 = load i16, ptr %mNoOmit, align 2
  %call17 = call i32 @whereLoopAddVirtualOne(ptr noundef %42, i64 noundef %43, i64 noundef -1, i16 noundef zeroext 1, ptr noundef %44, i16 noundef zeroext %45, ptr noundef %bIn)
  store i32 %call17, ptr %rc, align 4
  %46 = load ptr, ptr %pNew, align 8
  %prereq18 = getelementptr inbounds nuw %struct.WhereLoop, ptr %46, i32 0, i32 0
  %47 = load i64, ptr %prereq18, align 8
  %48 = load i64, ptr %mPrereq.addr, align 8
  %not19 = xor i64 %48, -1
  %and20 = and i64 %47, %not19
  store i64 %and20, ptr %mBestNoIn, align 8
  %49 = load i64, ptr %mBestNoIn, align 8
  %cmp21 = icmp eq i64 %49, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then16
  store i32 1, ptr %seenZero, align 4
  store i32 1, ptr %seenZeroNoIN, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then16
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then14
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %if.then45, %if.end24
  %50 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %50, 0
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 -1, ptr %mNext, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %51 = load i32, ptr %i, align 4
  %52 = load i32, ptr %nConstraint, align 4
  %cmp26 = icmp slt i32 %51, %52
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %pWC, align 8
  %a27 = getelementptr inbounds nuw %struct.WhereClause, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %a27, align 8
  %55 = load ptr, ptr %p, align 8
  %aConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %aConstraint, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %57 to i64
  %arrayidx29 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %56, i64 %idxprom28
  %iTermOffset = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx29, i32 0, i32 3
  %58 = load i32, ptr %iTermOffset, align 4
  %idxprom30 = sext i32 %58 to i64
  %arrayidx31 = getelementptr inbounds %struct.WhereTerm, ptr %54, i64 %idxprom30
  %prereqRight = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx31, i32 0, i32 11
  %59 = load i64, ptr %prereqRight, align 8
  %60 = load i64, ptr %mPrereq.addr, align 8
  %not32 = xor i64 %60, -1
  %and33 = and i64 %59, %not32
  store i64 %and33, ptr %mThis, align 8
  %61 = load i64, ptr %mThis, align 8
  %62 = load i64, ptr %mPrev, align 8
  %cmp34 = icmp ugt i64 %61, %62
  br i1 %cmp34, label %land.lhs.true35, label %if.end38

land.lhs.true35:                                  ; preds = %for.body
  %63 = load i64, ptr %mThis, align 8
  %64 = load i64, ptr %mNext, align 8
  %cmp36 = icmp ult i64 %63, %64
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true35
  %65 = load i64, ptr %mThis, align 8
  store i64 %65, ptr %mNext, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %66 = load i32, ptr %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %67 = load i64, ptr %mNext, align 8
  store i64 %67, ptr %mPrev, align 8
  %68 = load i64, ptr %mNext, align 8
  %cmp39 = icmp eq i64 %68, -1
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.end
  br label %while.end

if.end41:                                         ; preds = %for.end
  %69 = load i64, ptr %mNext, align 8
  %70 = load i64, ptr %mBest, align 8
  %cmp42 = icmp eq i64 %69, %70
  br i1 %cmp42, label %if.then45, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end41
  %71 = load i64, ptr %mNext, align 8
  %72 = load i64, ptr %mBestNoIn, align 8
  %cmp44 = icmp eq i64 %71, %72
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.lhs.false43, %if.end41
  br label %while.cond, !llvm.loop !8

if.end46:                                         ; preds = %lor.lhs.false43
  %73 = load ptr, ptr %pBuilder.addr, align 8
  %74 = load i64, ptr %mPrereq.addr, align 8
  %75 = load i64, ptr %mNext, align 8
  %76 = load i64, ptr %mPrereq.addr, align 8
  %or = or i64 %75, %76
  %77 = load ptr, ptr %p, align 8
  %78 = load i16, ptr %mNoOmit, align 2
  %call47 = call i32 @whereLoopAddVirtualOne(ptr noundef %73, i64 noundef %74, i64 noundef %or, i16 noundef zeroext 0, ptr noundef %77, i16 noundef zeroext %78, ptr noundef %bIn)
  store i32 %call47, ptr %rc, align 4
  %79 = load ptr, ptr %pNew, align 8
  %prereq48 = getelementptr inbounds nuw %struct.WhereLoop, ptr %79, i32 0, i32 0
  %80 = load i64, ptr %prereq48, align 8
  %81 = load i64, ptr %mPrereq.addr, align 8
  %cmp49 = icmp eq i64 %80, %81
  br i1 %cmp49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.end46
  store i32 1, ptr %seenZero, align 4
  %82 = load i32, ptr %bIn, align 4
  %cmp51 = icmp eq i32 %82, 0
  br i1 %cmp51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then50
  store i32 1, ptr %seenZeroNoIN, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then50
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end46
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then40, %while.cond
  %83 = load i32, ptr %rc, align 4
  %cmp55 = icmp eq i32 %83, 0
  br i1 %cmp55, label %land.lhs.true56, label %if.end63

land.lhs.true56:                                  ; preds = %while.end
  %84 = load i32, ptr %seenZero, align 4
  %cmp57 = icmp eq i32 %84, 0
  br i1 %cmp57, label %if.then58, label %if.end63

if.then58:                                        ; preds = %land.lhs.true56
  %85 = load ptr, ptr %pBuilder.addr, align 8
  %86 = load i64, ptr %mPrereq.addr, align 8
  %87 = load i64, ptr %mPrereq.addr, align 8
  %88 = load ptr, ptr %p, align 8
  %89 = load i16, ptr %mNoOmit, align 2
  %call59 = call i32 @whereLoopAddVirtualOne(ptr noundef %85, i64 noundef %86, i64 noundef %87, i16 noundef zeroext 0, ptr noundef %88, i16 noundef zeroext %89, ptr noundef %bIn)
  store i32 %call59, ptr %rc, align 4
  %90 = load i32, ptr %bIn, align 4
  %cmp60 = icmp eq i32 %90, 0
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  store i32 1, ptr %seenZeroNoIN, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.then58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %land.lhs.true56, %while.end
  %91 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %91, 0
  br i1 %cmp64, label %land.lhs.true65, label %if.end69

land.lhs.true65:                                  ; preds = %if.end63
  %92 = load i32, ptr %seenZeroNoIN, align 4
  %cmp66 = icmp eq i32 %92, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %land.lhs.true65
  %93 = load ptr, ptr %pBuilder.addr, align 8
  %94 = load i64, ptr %mPrereq.addr, align 8
  %95 = load i64, ptr %mPrereq.addr, align 8
  %96 = load ptr, ptr %p, align 8
  %97 = load i16, ptr %mNoOmit, align 2
  %call68 = call i32 @whereLoopAddVirtualOne(ptr noundef %93, i64 noundef %94, i64 noundef %95, i16 noundef zeroext 1, ptr noundef %96, i16 noundef zeroext %97, ptr noundef %bIn)
  store i32 %call68, ptr %rc, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %land.lhs.true65, %if.end63
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %lor.lhs.false, %if.end9
  %98 = load ptr, ptr %p, align 8
  %needToFreeIdxStr = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %98, i32 0, i32 7
  %99 = load i32, ptr %needToFreeIdxStr, align 8
  %tobool71 = icmp ne i32 %99, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  %100 = load ptr, ptr %p, align 8
  %idxStr = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %100, i32 0, i32 6
  %101 = load ptr, ptr %idxStr, align 8
  call void @sqlite3_free(ptr noundef %101)
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  %102 = load ptr, ptr %pParse, align 8
  %db74 = getelementptr inbounds nuw %struct.Parse, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %db74, align 8
  %104 = load ptr, ptr %p, align 8
  call void @sqlite3DbFreeNN(ptr noundef %103, ptr noundef %104)
  %105 = load i32, ptr %rc, align 4
  store i32 %105, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then7, %if.then
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
declare hidden ptr @allocateIndexInfo(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopResize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddVirtualOne(ptr noundef, i64 noundef, i64 noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef) #0

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
