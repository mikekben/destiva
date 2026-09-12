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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @whereShortCut(ptr noundef %pBuilder) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %pWInfo = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pWC = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %j = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %opMask = alloca i32, align 4
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  %2 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 10
  %3 = load i16, ptr %wctrlFlags, align 8
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pWInfo, align 8
  %pTabList = getelementptr inbounds nuw %struct.WhereInfo, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %6 = load ptr, ptr %pItem, align 8
  %pTab2 = getelementptr inbounds nuw %struct.SrcList_item, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pTab2, align 8
  store ptr %7, ptr %pTab, align 8
  %8 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %nModuleArg, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %10, i32 0, i32 9
  %isIndexedBy = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isIndexedBy, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool6 = icmp ne i32 %bf.cast, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %11 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %11, i32 0, i32 10
  %12 = load i32, ptr %iCursor, align 8
  store i32 %12, ptr %iCur, align 4
  %13 = load ptr, ptr %pWInfo, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %13, i32 0, i32 22
  store ptr %sWC, ptr %pWC, align 8
  %14 = load ptr, ptr %pBuilder.addr, align 8
  %pNew = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pNew, align 8
  store ptr %15, ptr %pLoop, align 8
  %16 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %16, i32 0, i32 8
  store i32 0, ptr %wsFlags, align 8
  %17 = load ptr, ptr %pLoop, align 8
  %nSkip = getelementptr inbounds nuw %struct.WhereLoop, ptr %17, i32 0, i32 10
  store i16 0, ptr %nSkip, align 2
  %18 = load ptr, ptr %pWC, align 8
  %19 = load i32, ptr %iCur, align 4
  %call = call ptr @sqlite3WhereFindTerm(ptr noundef %18, i32 noundef %19, i32 noundef -1, i64 noundef 0, i32 noundef 130, ptr noundef null)
  store ptr %call, ptr %pTerm, align 8
  %20 = load ptr, ptr %pTerm, align 8
  %tobool9 = icmp ne ptr %20, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %21 = load ptr, ptr %pLoop, align 8
  %wsFlags11 = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 8
  store i32 4353, ptr %wsFlags11, align 8
  %22 = load ptr, ptr %pTerm, align 8
  %23 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %aLTerm, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %24, i64 0
  store ptr %22, ptr %arrayidx, align 8
  %25 = load ptr, ptr %pLoop, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %25, i32 0, i32 9
  store i16 1, ptr %nLTerm, align 4
  %26 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %26, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 0
  store i16 1, ptr %nEq, align 8
  %27 = load ptr, ptr %pLoop, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %27, i32 0, i32 5
  store i16 33, ptr %rRun, align 4
  br label %if.end70

if.else:                                          ; preds = %if.end8
  %28 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %pIndex, align 8
  store ptr %29, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %if.else
  %30 = load ptr, ptr %pIdx, align 8
  %tobool12 = icmp ne ptr %30, null
  br i1 %tobool12, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 15
  %32 = load i8, ptr %onError, align 2
  %conv13 = zext i8 %32 to i32
  %cmp = icmp ne i32 %conv13, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then21

lor.lhs.false:                                    ; preds = %for.body
  %33 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp15 = icmp ne ptr %34, null
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %35 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %35, i32 0, i32 13
  %36 = load i16, ptr %nKeyCol, align 2
  %conv18 = zext i16 %36 to i32
  %cmp19 = icmp sgt i32 %conv18, 3
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false17, %lor.lhs.false, %for.body
  br label %for.inc68

if.end22:                                         ; preds = %lor.lhs.false17
  %37 = load ptr, ptr %pIdx, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %37, i32 0, i32 16
  %bf.load23 = load i16, ptr %uniqNotNull, align 1
  %bf.lshr24 = lshr i16 %bf.load23, 3
  %bf.clear25 = and i16 %bf.lshr24, 1
  %bf.cast26 = zext i16 %bf.clear25 to i32
  %tobool27 = icmp ne i32 %bf.cast26, 0
  %38 = zext i1 %tobool27 to i64
  %cond = select i1 %tobool27, i32 130, i32 2
  store i32 %cond, ptr %opMask, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.end22
  %39 = load i32, ptr %j, align 4
  %40 = load ptr, ptr %pIdx, align 8
  %nKeyCol29 = getelementptr inbounds nuw %struct.Index, ptr %40, i32 0, i32 13
  %41 = load i16, ptr %nKeyCol29, align 2
  %conv30 = zext i16 %41 to i32
  %cmp31 = icmp slt i32 %39, %conv30
  br i1 %cmp31, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond28
  %42 = load ptr, ptr %pWC, align 8
  %43 = load i32, ptr %iCur, align 4
  %44 = load i32, ptr %j, align 4
  %45 = load i32, ptr %opMask, align 4
  %46 = load ptr, ptr %pIdx, align 8
  %call34 = call ptr @sqlite3WhereFindTerm(ptr noundef %42, i32 noundef %43, i32 noundef %44, i64 noundef 0, i32 noundef %45, ptr noundef %46)
  store ptr %call34, ptr %pTerm, align 8
  %47 = load ptr, ptr %pTerm, align 8
  %cmp35 = icmp eq ptr %47, null
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body33
  br label %for.end

if.end38:                                         ; preds = %for.body33
  %48 = load ptr, ptr %pTerm, align 8
  %49 = load ptr, ptr %pLoop, align 8
  %aLTerm39 = getelementptr inbounds nuw %struct.WhereLoop, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %aLTerm39, align 8
  %51 = load i32, ptr %j, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %50, i64 %idxprom
  store ptr %48, ptr %arrayidx40, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %52 = load i32, ptr %j, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond28, !llvm.loop !6

for.end:                                          ; preds = %if.then37, %for.cond28
  %53 = load i32, ptr %j, align 4
  %54 = load ptr, ptr %pIdx, align 8
  %nKeyCol41 = getelementptr inbounds nuw %struct.Index, ptr %54, i32 0, i32 13
  %55 = load i16, ptr %nKeyCol41, align 2
  %conv42 = zext i16 %55 to i32
  %cmp43 = icmp ne i32 %53, %conv42
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.end
  br label %for.inc68

if.end46:                                         ; preds = %for.end
  %56 = load ptr, ptr %pLoop, align 8
  %wsFlags47 = getelementptr inbounds nuw %struct.WhereLoop, ptr %56, i32 0, i32 8
  store i32 4609, ptr %wsFlags47, align 8
  %57 = load ptr, ptr %pIdx, align 8
  %isCovering = getelementptr inbounds nuw %struct.Index, ptr %57, i32 0, i32 16
  %bf.load48 = load i16, ptr %isCovering, align 1
  %bf.lshr49 = lshr i16 %bf.load48, 5
  %bf.clear50 = and i16 %bf.lshr49, 1
  %bf.cast51 = zext i16 %bf.clear50 to i32
  %tobool52 = icmp ne i32 %bf.cast51, 0
  br i1 %tobool52, label %if.then57, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.end46
  %58 = load ptr, ptr %pItem, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %58, i32 0, i32 13
  %59 = load i64, ptr %colUsed, align 8
  %60 = load ptr, ptr %pIdx, align 8
  %colNotIdxed = getelementptr inbounds nuw %struct.Index, ptr %60, i32 0, i32 18
  %61 = load i64, ptr %colNotIdxed, align 8
  %and54 = and i64 %59, %61
  %cmp55 = icmp eq i64 %and54, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %lor.lhs.false53, %if.end46
  %62 = load ptr, ptr %pLoop, align 8
  %wsFlags58 = getelementptr inbounds nuw %struct.WhereLoop, ptr %62, i32 0, i32 8
  %63 = load i32, ptr %wsFlags58, align 8
  %or = or i32 %63, 64
  store i32 %or, ptr %wsFlags58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %lor.lhs.false53
  %64 = load i32, ptr %j, align 4
  %conv60 = trunc i32 %64 to i16
  %65 = load ptr, ptr %pLoop, align 8
  %nLTerm61 = getelementptr inbounds nuw %struct.WhereLoop, ptr %65, i32 0, i32 9
  store i16 %conv60, ptr %nLTerm61, align 4
  %66 = load i32, ptr %j, align 4
  %conv62 = trunc i32 %66 to i16
  %67 = load ptr, ptr %pLoop, align 8
  %u63 = getelementptr inbounds nuw %struct.WhereLoop, ptr %67, i32 0, i32 7
  %nEq64 = getelementptr inbounds nuw %struct.anon.19, ptr %u63, i32 0, i32 0
  store i16 %conv62, ptr %nEq64, align 8
  %68 = load ptr, ptr %pIdx, align 8
  %69 = load ptr, ptr %pLoop, align 8
  %u65 = getelementptr inbounds nuw %struct.WhereLoop, ptr %69, i32 0, i32 7
  %pIndex66 = getelementptr inbounds nuw %struct.anon.19, ptr %u65, i32 0, i32 4
  store ptr %68, ptr %pIndex66, align 8
  %70 = load ptr, ptr %pLoop, align 8
  %rRun67 = getelementptr inbounds nuw %struct.WhereLoop, ptr %70, i32 0, i32 5
  store i16 39, ptr %rRun67, align 4
  br label %for.end69

for.inc68:                                        ; preds = %if.then45, %if.then21
  %71 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %71, i32 0, i32 5
  %72 = load ptr, ptr %pNext, align 8
  store ptr %72, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !8

for.end69:                                        ; preds = %if.end59, %for.cond
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %if.then10
  %73 = load ptr, ptr %pLoop, align 8
  %wsFlags71 = getelementptr inbounds nuw %struct.WhereLoop, ptr %73, i32 0, i32 8
  %74 = load i32, ptr %wsFlags71, align 8
  %tobool72 = icmp ne i32 %74, 0
  br i1 %tobool72, label %if.then73, label %if.end89

if.then73:                                        ; preds = %if.end70
  %75 = load ptr, ptr %pLoop, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %75, i32 0, i32 6
  store i16 1, ptr %nOut, align 2
  %76 = load ptr, ptr %pLoop, align 8
  %77 = load ptr, ptr %pWInfo, align 8
  %a74 = getelementptr inbounds nuw %struct.WhereInfo, ptr %77, i32 0, i32 24
  %arrayidx75 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a74, i64 0, i64 0
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx75, i32 0, i32 20
  store ptr %76, ptr %pWLoop, align 8
  %78 = load ptr, ptr %pLoop, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %78, i32 0, i32 1
  store i64 1, ptr %maskSelf, align 8
  %79 = load i32, ptr %iCur, align 4
  %80 = load ptr, ptr %pWInfo, align 8
  %a76 = getelementptr inbounds nuw %struct.WhereInfo, ptr %80, i32 0, i32 24
  %arrayidx77 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a76, i64 0, i64 0
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx77, i32 0, i32 1
  store i32 %79, ptr %iTabCur, align 4
  %81 = load ptr, ptr %pWInfo, align 8
  %nRowOut = getelementptr inbounds nuw %struct.WhereInfo, ptr %81, i32 0, i32 21
  store i16 1, ptr %nRowOut, align 8
  %82 = load ptr, ptr %pWInfo, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.WhereInfo, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %pOrderBy, align 8
  %tobool78 = icmp ne ptr %83, null
  br i1 %tobool78, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.then73
  %84 = load ptr, ptr %pWInfo, align 8
  %pOrderBy80 = getelementptr inbounds nuw %struct.WhereInfo, ptr %84, i32 0, i32 2
  %85 = load ptr, ptr %pOrderBy80, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %nExpr, align 8
  %conv81 = trunc i32 %86 to i8
  %87 = load ptr, ptr %pWInfo, align 8
  %nOBSat = getelementptr inbounds nuw %struct.WhereInfo, ptr %87, i32 0, i32 12
  store i8 %conv81, ptr %nOBSat, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.then73
  %88 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags83 = getelementptr inbounds nuw %struct.WhereInfo, ptr %88, i32 0, i32 10
  %89 = load i16, ptr %wctrlFlags83, align 8
  %conv84 = zext i16 %89 to i32
  %and85 = and i32 %conv84, 256
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.end82
  %90 = load ptr, ptr %pWInfo, align 8
  %eDistinct = getelementptr inbounds nuw %struct.WhereInfo, ptr %90, i32 0, i32 16
  store i8 1, ptr %eDistinct, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end82
  store i32 1, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end70
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end89, %if.end88, %if.then7, %if.then4, %if.then
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereFindTerm(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) #0

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
