; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

@.str.634 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.635 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.636 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.637 = external hidden unnamed_addr constant [59 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprListNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @resolveSelectStep(ptr noundef %pWalker, ptr noundef %p) #1 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pOuterNC = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %isCompound = alloca i32, align 4
  %nCompound = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %i = alloca i32, align 4
  %pGroupBy = alloca ptr, align 8
  %pLeftmost = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pNC = alloca ptr, align 8
  %nRef = alloca i32, align 4
  %zSavedContext = alloca ptr, align 8
  %pItem115 = alloca ptr, align 8
  %pSub139 = alloca ptr, align 8
  %pItem164 = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %selFlags, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %u, align 8
  store ptr %3, ptr %pOuterNC, align 8
  %4 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParse1, align 8
  store ptr %5, ptr %pParse, align 8
  %6 = load ptr, ptr %pParse, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db2, align 8
  store ptr %7, ptr %db, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %selFlags3 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %selFlags3, align 4
  %and4 = and i32 %9, 64
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %pParse, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %12 = load ptr, ptr %pOuterNC, align 8
  call void @sqlite3SelectPrep(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %pParse, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 16
  %14 = load i32, ptr %nErr, align 8
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then5
  %15 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 19
  %16 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %16 to i32
  %tobool7 = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then5
  %17 = phi i1 [ true, %if.then5 ], [ %tobool7, %lor.rhs ]
  %18 = zext i1 %17 to i64
  %cond = select i1 %17, i32 2, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %19 = load ptr, ptr %p.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pPrior, align 8
  %cmp9 = icmp ne ptr %20, null
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, ptr %isCompound, align 4
  store i32 0, ptr %nCompound, align 4
  %21 = load ptr, ptr %p.addr, align 8
  store ptr %21, ptr %pLeftmost, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end217, %if.end8
  %22 = load ptr, ptr %p.addr, align 8
  %tobool11 = icmp ne ptr %22, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %p.addr, align 8
  %selFlags12 = getelementptr inbounds nuw %struct.Select, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %selFlags12, align 4
  %or = or i32 %24, 4
  store i32 %or, ptr %selFlags12, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %25 = load ptr, ptr %pParse, align 8
  %pParse13 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %25, ptr %pParse13, align 8
  %26 = load ptr, ptr %p.addr, align 8
  %pWinSelect = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 7
  store ptr %26, ptr %pWinSelect, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %pLimit, align 8
  %call = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %28)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  store i32 2, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %while.body
  %29 = load ptr, ptr %p.addr, align 8
  %selFlags17 = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %selFlags17, align 4
  %and18 = and i32 %30, 65536
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  %31 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 8
  %32 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %32, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  %33 = load ptr, ptr %pSelect, align 8
  store ptr %33, ptr %pSub, align 8
  %34 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pOrderBy, align 8
  %36 = load ptr, ptr %pSub, align 8
  %pOrderBy21 = getelementptr inbounds nuw %struct.Select, ptr %36, i32 0, i32 12
  store ptr %35, ptr %pOrderBy21, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %pOrderBy22 = getelementptr inbounds nuw %struct.Select, ptr %37, i32 0, i32 12
  store ptr null, ptr %pOrderBy22, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %if.end23
  %38 = load i32, ptr %i, align 4
  %39 = load ptr, ptr %p.addr, align 8
  %pSrc24 = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 8
  %40 = load ptr, ptr %pSrc24, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %40, i32 0, i32 0
  %41 = load i32, ptr %nSrc, align 8
  %cmp25 = icmp slt i32 %38, %41
  br i1 %cmp25, label %for.body, label %for.end67

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %p.addr, align 8
  %pSrc27 = getelementptr inbounds nuw %struct.Select, ptr %42, i32 0, i32 8
  %43 = load ptr, ptr %pSrc27, align 8
  %a28 = getelementptr inbounds nuw %struct.SrcList, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %i, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx29 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a28, i64 0, i64 %idxprom
  store ptr %arrayidx29, ptr %pItem, align 8
  %45 = load ptr, ptr %pItem, align 8
  %pSelect30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %pSelect30, align 8
  %tobool31 = icmp ne ptr %46, null
  br i1 %tobool31, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %for.body
  %47 = load ptr, ptr %pItem, align 8
  %pSelect32 = getelementptr inbounds nuw %struct.SrcList_item, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %pSelect32, align 8
  %selFlags33 = getelementptr inbounds nuw %struct.Select, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %selFlags33, align 4
  %and34 = and i32 %49, 4
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %if.then37, label %if.end65

if.then37:                                        ; preds = %land.lhs.true
  store i32 0, ptr %nRef, align 4
  %50 = load ptr, ptr %pParse, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %50, i32 0, i32 61
  %51 = load ptr, ptr %zAuthContext, align 8
  store ptr %51, ptr %zSavedContext, align 8
  %52 = load ptr, ptr %pOuterNC, align 8
  store ptr %52, ptr %pNC, align 8
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %if.then37
  %53 = load ptr, ptr %pNC, align 8
  %tobool39 = icmp ne ptr %53, null
  br i1 %tobool39, label %for.body40, label %for.end

for.body40:                                       ; preds = %for.cond38
  %54 = load ptr, ptr %pNC, align 8
  %nRef41 = getelementptr inbounds nuw %struct.NameContext, ptr %54, i32 0, i32 4
  %55 = load i32, ptr %nRef41, align 8
  %56 = load i32, ptr %nRef, align 4
  %add = add nsw i32 %56, %55
  store i32 %add, ptr %nRef, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body40
  %57 = load ptr, ptr %pNC, align 8
  %pNext = getelementptr inbounds nuw %struct.NameContext, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %pNext, align 8
  store ptr %58, ptr %pNC, align 8
  br label %for.cond38, !llvm.loop !6

for.end:                                          ; preds = %for.cond38
  %59 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %59, i32 0, i32 2
  %60 = load ptr, ptr %zName, align 8
  %tobool42 = icmp ne ptr %60, null
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %for.end
  %61 = load ptr, ptr %pItem, align 8
  %zName44 = getelementptr inbounds nuw %struct.SrcList_item, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %zName44, align 8
  %63 = load ptr, ptr %pParse, align 8
  %zAuthContext45 = getelementptr inbounds nuw %struct.Parse, ptr %63, i32 0, i32 61
  store ptr %62, ptr %zAuthContext45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %for.end
  %64 = load ptr, ptr %pParse, align 8
  %65 = load ptr, ptr %pItem, align 8
  %pSelect47 = getelementptr inbounds nuw %struct.SrcList_item, ptr %65, i32 0, i32 5
  %66 = load ptr, ptr %pSelect47, align 8
  %67 = load ptr, ptr %pOuterNC, align 8
  call void @sqlite3ResolveSelectNames(ptr noundef %64, ptr noundef %66, ptr noundef %67)
  %68 = load ptr, ptr %zSavedContext, align 8
  %69 = load ptr, ptr %pParse, align 8
  %zAuthContext48 = getelementptr inbounds nuw %struct.Parse, ptr %69, i32 0, i32 61
  store ptr %68, ptr %zAuthContext48, align 8
  %70 = load ptr, ptr %pParse, align 8
  %nErr49 = getelementptr inbounds nuw %struct.Parse, ptr %70, i32 0, i32 16
  %71 = load i32, ptr %nErr49, align 8
  %tobool50 = icmp ne i32 %71, 0
  br i1 %tobool50, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end46
  %72 = load ptr, ptr %db, align 8
  %mallocFailed51 = getelementptr inbounds nuw %struct.sqlite3, ptr %72, i32 0, i32 19
  %73 = load i8, ptr %mallocFailed51, align 1
  %conv52 = zext i8 %73 to i32
  %tobool53 = icmp ne i32 %conv52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false, %if.end46
  store i32 2, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %lor.lhs.false
  %74 = load ptr, ptr %pOuterNC, align 8
  store ptr %74, ptr %pNC, align 8
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc60, %if.end55
  %75 = load ptr, ptr %pNC, align 8
  %tobool57 = icmp ne ptr %75, null
  br i1 %tobool57, label %for.body58, label %for.end62

for.body58:                                       ; preds = %for.cond56
  %76 = load ptr, ptr %pNC, align 8
  %nRef59 = getelementptr inbounds nuw %struct.NameContext, ptr %76, i32 0, i32 4
  %77 = load i32, ptr %nRef59, align 8
  %78 = load i32, ptr %nRef, align 4
  %sub = sub nsw i32 %78, %77
  store i32 %sub, ptr %nRef, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body58
  %79 = load ptr, ptr %pNC, align 8
  %pNext61 = getelementptr inbounds nuw %struct.NameContext, ptr %79, i32 0, i32 3
  %80 = load ptr, ptr %pNext61, align 8
  store ptr %80, ptr %pNC, align 8
  br label %for.cond56, !llvm.loop !8

for.end62:                                        ; preds = %for.cond56
  %81 = load i32, ptr %nRef, align 4
  %cmp63 = icmp ne i32 %81, 0
  %conv64 = zext i1 %cmp63 to i32
  %82 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %82, i32 0, i32 9
  %isCorrelated = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %83 = trunc i32 %conv64 to i8
  %bf.load = load i8, ptr %isCorrelated, align 1
  %bf.value = and i8 %83, 1
  %bf.shl = shl i8 %bf.value, 3
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %isCorrelated, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  br label %if.end65

if.end65:                                         ; preds = %for.end62, %land.lhs.true, %for.body
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %84 = load i32, ptr %i, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end67:                                        ; preds = %for.cond
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  store i32 16385, ptr %ncFlags, align 8
  %85 = load ptr, ptr %p.addr, align 8
  %pSrc68 = getelementptr inbounds nuw %struct.Select, ptr %85, i32 0, i32 8
  %86 = load ptr, ptr %pSrc68, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %86, ptr %pSrcList, align 8
  %87 = load ptr, ptr %pOuterNC, align 8
  %pNext69 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 3
  store ptr %87, ptr %pNext69, align 8
  %88 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %pEList, align 8
  %call70 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %89)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %for.end67
  store i32 2, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %for.end67
  %ncFlags74 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %90 = load i32, ptr %ncFlags74, align 8
  %and75 = and i32 %90, -16385
  store i32 %and75, ptr %ncFlags74, align 8
  %91 = load ptr, ptr %p.addr, align 8
  %pGroupBy76 = getelementptr inbounds nuw %struct.Select, ptr %91, i32 0, i32 10
  %92 = load ptr, ptr %pGroupBy76, align 8
  store ptr %92, ptr %pGroupBy, align 8
  %93 = load ptr, ptr %pGroupBy, align 8
  %tobool77 = icmp ne ptr %93, null
  br i1 %tobool77, label %if.then83, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %if.end73
  %ncFlags79 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %94 = load i32, ptr %ncFlags79, align 8
  %and80 = and i32 %94, 16
  %cmp81 = icmp ne i32 %and80, 0
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %lor.lhs.false78, %if.end73
  %ncFlags84 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %95 = load i32, ptr %ncFlags84, align 8
  %and85 = and i32 %95, 4096
  %or86 = or i32 8, %and85
  %96 = load ptr, ptr %p.addr, align 8
  %selFlags87 = getelementptr inbounds nuw %struct.Select, ptr %96, i32 0, i32 3
  %97 = load i32, ptr %selFlags87, align 4
  %or88 = or i32 %97, %or86
  store i32 %or88, ptr %selFlags87, align 4
  br label %if.end91

if.else:                                          ; preds = %lor.lhs.false78
  %ncFlags89 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %98 = load i32, ptr %ncFlags89, align 8
  %and90 = and i32 %98, -2
  store i32 %and90, ptr %ncFlags89, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else, %if.then83
  %99 = load ptr, ptr %p.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %99, i32 0, i32 11
  %100 = load ptr, ptr %pHaving, align 8
  %tobool92 = icmp ne ptr %100, null
  br i1 %tobool92, label %land.lhs.true93, label %if.end96

land.lhs.true93:                                  ; preds = %if.end91
  %101 = load ptr, ptr %pGroupBy, align 8
  %tobool94 = icmp ne ptr %101, null
  br i1 %tobool94, label %if.end96, label %if.then95

if.then95:                                        ; preds = %land.lhs.true93
  %102 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %102, ptr noundef @.str.634)
  store i32 2, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %land.lhs.true93, %if.end91
  %103 = load ptr, ptr %p.addr, align 8
  %pEList97 = getelementptr inbounds nuw %struct.Select, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %pEList97, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 2
  store ptr %104, ptr %uNC, align 8
  %ncFlags98 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %105 = load i32, ptr %ncFlags98, align 8
  %or99 = or i32 %105, 128
  store i32 %or99, ptr %ncFlags98, align 8
  %106 = load ptr, ptr %p.addr, align 8
  %pHaving100 = getelementptr inbounds nuw %struct.Select, ptr %106, i32 0, i32 11
  %107 = load ptr, ptr %pHaving100, align 8
  %call101 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %107)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.end96
  store i32 2, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.end96
  %108 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %108, i32 0, i32 9
  %109 = load ptr, ptr %pWhere, align 8
  %call105 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %109)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %if.end108

if.then107:                                       ; preds = %if.end104
  store i32 2, ptr %retval, align 4
  br label %return

if.end108:                                        ; preds = %if.end104
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc129, %if.end108
  %110 = load i32, ptr %i, align 4
  %111 = load ptr, ptr %p.addr, align 8
  %pSrc110 = getelementptr inbounds nuw %struct.Select, ptr %111, i32 0, i32 8
  %112 = load ptr, ptr %pSrc110, align 8
  %nSrc111 = getelementptr inbounds nuw %struct.SrcList, ptr %112, i32 0, i32 0
  %113 = load i32, ptr %nSrc111, align 8
  %cmp112 = icmp slt i32 %110, %113
  br i1 %cmp112, label %for.body114, label %for.end131

for.body114:                                      ; preds = %for.cond109
  %114 = load ptr, ptr %p.addr, align 8
  %pSrc116 = getelementptr inbounds nuw %struct.Select, ptr %114, i32 0, i32 8
  %115 = load ptr, ptr %pSrc116, align 8
  %a117 = getelementptr inbounds nuw %struct.SrcList, ptr %115, i32 0, i32 2
  %116 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %116 to i64
  %arrayidx119 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a117, i64 0, i64 %idxprom118
  store ptr %arrayidx119, ptr %pItem115, align 8
  %117 = load ptr, ptr %pItem115, align 8
  %fg120 = getelementptr inbounds nuw %struct.SrcList_item, ptr %117, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg120, i32 0, i32 1
  %bf.load121 = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load121, 2
  %bf.clear122 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear122 to i32
  %tobool123 = icmp ne i32 %bf.cast, 0
  br i1 %tobool123, label %land.lhs.true124, label %if.end128

land.lhs.true124:                                 ; preds = %for.body114
  %118 = load ptr, ptr %pItem115, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %118, i32 0, i32 14
  %119 = load ptr, ptr %u1, align 8
  %call125 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %119)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %land.lhs.true124
  store i32 2, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %land.lhs.true124, %for.body114
  br label %for.inc129

for.inc129:                                       ; preds = %if.end128
  %120 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %120, 1
  store i32 %inc130, ptr %i, align 4
  br label %for.cond109, !llvm.loop !10

for.end131:                                       ; preds = %for.cond109
  %pNext132 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 3
  store ptr null, ptr %pNext132, align 8
  %ncFlags133 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %121 = load i32, ptr %ncFlags133, align 8
  %or134 = or i32 %121, 16385
  store i32 %or134, ptr %ncFlags133, align 8
  %122 = load ptr, ptr %p.addr, align 8
  %selFlags135 = getelementptr inbounds nuw %struct.Select, ptr %122, i32 0, i32 3
  %123 = load i32, ptr %selFlags135, align 4
  %and136 = and i32 %123, 65536
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %if.then138, label %if.end147

if.then138:                                       ; preds = %for.end131
  %124 = load ptr, ptr %p.addr, align 8
  %pSrc140 = getelementptr inbounds nuw %struct.Select, ptr %124, i32 0, i32 8
  %125 = load ptr, ptr %pSrc140, align 8
  %a141 = getelementptr inbounds nuw %struct.SrcList, ptr %125, i32 0, i32 2
  %arrayidx142 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a141, i64 0, i64 0
  %pSelect143 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx142, i32 0, i32 5
  %126 = load ptr, ptr %pSelect143, align 8
  store ptr %126, ptr %pSub139, align 8
  %127 = load ptr, ptr %pSub139, align 8
  %pOrderBy144 = getelementptr inbounds nuw %struct.Select, ptr %127, i32 0, i32 12
  %128 = load ptr, ptr %pOrderBy144, align 8
  %129 = load ptr, ptr %p.addr, align 8
  %pOrderBy145 = getelementptr inbounds nuw %struct.Select, ptr %129, i32 0, i32 12
  store ptr %128, ptr %pOrderBy145, align 8
  %130 = load ptr, ptr %pSub139, align 8
  %pOrderBy146 = getelementptr inbounds nuw %struct.Select, ptr %130, i32 0, i32 12
  store ptr null, ptr %pOrderBy146, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then138, %for.end131
  %131 = load i32, ptr %isCompound, align 4
  %132 = load i32, ptr %nCompound, align 4
  %cmp148 = icmp sle i32 %131, %132
  br i1 %cmp148, label %land.lhs.true150, label %if.end155

land.lhs.true150:                                 ; preds = %if.end147
  %133 = load ptr, ptr %p.addr, align 8
  %134 = load ptr, ptr %p.addr, align 8
  %pOrderBy151 = getelementptr inbounds nuw %struct.Select, ptr %134, i32 0, i32 12
  %135 = load ptr, ptr %pOrderBy151, align 8
  %call152 = call i32 @resolveOrderGroupBy(ptr noundef %sNC, ptr noundef %133, ptr noundef %135, ptr noundef @.str.635)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then154, label %if.end155

if.then154:                                       ; preds = %land.lhs.true150
  store i32 2, ptr %retval, align 4
  br label %return

if.end155:                                        ; preds = %land.lhs.true150, %if.end147
  %136 = load ptr, ptr %db, align 8
  %mallocFailed156 = getelementptr inbounds nuw %struct.sqlite3, ptr %136, i32 0, i32 19
  %137 = load i8, ptr %mallocFailed156, align 1
  %tobool157 = icmp ne i8 %137, 0
  br i1 %tobool157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.end155
  store i32 2, ptr %retval, align 4
  br label %return

if.end159:                                        ; preds = %if.end155
  %ncFlags160 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %138 = load i32, ptr %ncFlags160, align 8
  %and161 = and i32 %138, -16385
  store i32 %and161, ptr %ncFlags160, align 8
  %139 = load ptr, ptr %pGroupBy, align 8
  %tobool162 = icmp ne ptr %139, null
  br i1 %tobool162, label %if.then163, label %if.end186

if.then163:                                       ; preds = %if.end159
  %140 = load ptr, ptr %p.addr, align 8
  %141 = load ptr, ptr %pGroupBy, align 8
  %call165 = call i32 @resolveOrderGroupBy(ptr noundef %sNC, ptr noundef %140, ptr noundef %141, ptr noundef @.str.636)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then171, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.then163
  %142 = load ptr, ptr %db, align 8
  %mallocFailed168 = getelementptr inbounds nuw %struct.sqlite3, ptr %142, i32 0, i32 19
  %143 = load i8, ptr %mallocFailed168, align 1
  %conv169 = zext i8 %143 to i32
  %tobool170 = icmp ne i32 %conv169, 0
  br i1 %tobool170, label %if.then171, label %if.end172

if.then171:                                       ; preds = %lor.lhs.false167, %if.then163
  store i32 2, ptr %retval, align 4
  br label %return

if.end172:                                        ; preds = %lor.lhs.false167
  store i32 0, ptr %i, align 4
  %144 = load ptr, ptr %pGroupBy, align 8
  %a173 = getelementptr inbounds nuw %struct.ExprList, ptr %144, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a173, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem164, align 8
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc183, %if.end172
  %145 = load i32, ptr %i, align 4
  %146 = load ptr, ptr %pGroupBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %nExpr, align 8
  %cmp175 = icmp slt i32 %145, %147
  br i1 %cmp175, label %for.body177, label %for.end185

for.body177:                                      ; preds = %for.cond174
  %148 = load ptr, ptr %pItem164, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %148, i32 0, i32 0
  %149 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %149, i32 0, i32 2
  %150 = load i32, ptr %flags, align 4
  %and178 = and i32 %150, 16
  %cmp179 = icmp ne i32 %and178, 0
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %for.body177
  %151 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %151, ptr noundef @.str.637)
  store i32 2, ptr %retval, align 4
  br label %return

if.end182:                                        ; preds = %for.body177
  br label %for.inc183

for.inc183:                                       ; preds = %if.end182
  %152 = load i32, ptr %i, align 4
  %inc184 = add nsw i32 %152, 1
  store i32 %inc184, ptr %i, align 4
  %153 = load ptr, ptr %pItem164, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %153, i32 1
  store ptr %incdec.ptr, ptr %pItem164, align 8
  br label %for.cond174, !llvm.loop !11

for.end185:                                       ; preds = %for.cond174
  br label %if.end186

if.end186:                                        ; preds = %for.end185, %if.end159
  %154 = load ptr, ptr %pParse, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %154, i32 0, i32 51
  %155 = load i8, ptr %eParseMode, align 4
  %conv187 = zext i8 %155 to i32
  %cmp188 = icmp sge i32 %conv187, 2
  br i1 %cmp188, label %if.then190, label %if.end204

if.then190:                                       ; preds = %if.end186
  %156 = load ptr, ptr %p.addr, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %156, i32 0, i32 18
  %157 = load ptr, ptr %pWinDefn, align 8
  store ptr %157, ptr %pWin, align 8
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc202, %if.then190
  %158 = load ptr, ptr %pWin, align 8
  %tobool192 = icmp ne ptr %158, null
  br i1 %tobool192, label %for.body193, label %for.end203

for.body193:                                      ; preds = %for.cond191
  %159 = load ptr, ptr %pWin, align 8
  %pOrderBy194 = getelementptr inbounds nuw %struct.Window, ptr %159, i32 0, i32 3
  %160 = load ptr, ptr %pOrderBy194, align 8
  %call195 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %160)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then200, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %for.body193
  %161 = load ptr, ptr %pWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %161, i32 0, i32 2
  %162 = load ptr, ptr %pPartition, align 8
  %call198 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %162)
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %lor.lhs.false197, %for.body193
  store i32 2, ptr %retval, align 4
  br label %return

if.end201:                                        ; preds = %lor.lhs.false197
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201
  %163 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %163, i32 0, i32 12
  %164 = load ptr, ptr %pNextWin, align 8
  store ptr %164, ptr %pWin, align 8
  br label %for.cond191, !llvm.loop !12

for.end203:                                       ; preds = %for.cond191
  br label %if.end204

if.end204:                                        ; preds = %for.end203, %if.end186
  %165 = load ptr, ptr %p.addr, align 8
  %pNext205 = getelementptr inbounds nuw %struct.Select, ptr %165, i32 0, i32 14
  %166 = load ptr, ptr %pNext205, align 8
  %tobool206 = icmp ne ptr %166, null
  br i1 %tobool206, label %land.lhs.true207, label %if.end217

land.lhs.true207:                                 ; preds = %if.end204
  %167 = load ptr, ptr %p.addr, align 8
  %pEList208 = getelementptr inbounds nuw %struct.Select, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %pEList208, align 8
  %nExpr209 = getelementptr inbounds nuw %struct.ExprList, ptr %168, i32 0, i32 0
  %169 = load i32, ptr %nExpr209, align 8
  %170 = load ptr, ptr %p.addr, align 8
  %pNext210 = getelementptr inbounds nuw %struct.Select, ptr %170, i32 0, i32 14
  %171 = load ptr, ptr %pNext210, align 8
  %pEList211 = getelementptr inbounds nuw %struct.Select, ptr %171, i32 0, i32 0
  %172 = load ptr, ptr %pEList211, align 8
  %nExpr212 = getelementptr inbounds nuw %struct.ExprList, ptr %172, i32 0, i32 0
  %173 = load i32, ptr %nExpr212, align 8
  %cmp213 = icmp ne i32 %169, %173
  br i1 %cmp213, label %if.then215, label %if.end217

if.then215:                                       ; preds = %land.lhs.true207
  %174 = load ptr, ptr %pParse, align 8
  %175 = load ptr, ptr %p.addr, align 8
  %pNext216 = getelementptr inbounds nuw %struct.Select, ptr %175, i32 0, i32 14
  %176 = load ptr, ptr %pNext216, align 8
  call void @sqlite3SelectWrongNumTermsError(ptr noundef %174, ptr noundef %176)
  store i32 2, ptr %retval, align 4
  br label %return

if.end217:                                        ; preds = %land.lhs.true207, %if.end204
  %177 = load ptr, ptr %p.addr, align 8
  %pPrior218 = getelementptr inbounds nuw %struct.Select, ptr %177, i32 0, i32 13
  %178 = load ptr, ptr %pPrior218, align 8
  store ptr %178, ptr %p.addr, align 8
  %179 = load i32, ptr %nCompound, align 4
  %inc219 = add nsw i32 %179, 1
  store i32 %inc219, ptr %nCompound, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %180 = load i32, ptr %isCompound, align 4
  %tobool220 = icmp ne i32 %180, 0
  br i1 %tobool220, label %land.lhs.true221, label %if.end225

land.lhs.true221:                                 ; preds = %while.end
  %181 = load ptr, ptr %pParse, align 8
  %182 = load ptr, ptr %pLeftmost, align 8
  %call222 = call i32 @resolveCompoundOrderBy(ptr noundef %181, ptr noundef %182)
  %tobool223 = icmp ne i32 %call222, 0
  br i1 %tobool223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %land.lhs.true221
  store i32 2, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %land.lhs.true221, %while.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end225, %if.then224, %if.then215, %if.then200, %if.then181, %if.then171, %if.then158, %if.then154, %if.then127, %if.then107, %if.then103, %if.then95, %if.then72, %if.then54, %if.then15, %lor.end, %if.then
  %183 = load i32, ptr %retval, align 4
  ret i32 %183
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResolveSelectNames(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveOrderGroupBy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectWrongNumTermsError(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveCompoundOrderBy(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
