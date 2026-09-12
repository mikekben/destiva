; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SubstContext = type { ptr, i32, i32, i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.anon.12 = type { i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setJoinExpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @flattenSubquery(ptr noundef %pParse, ptr noundef %p, i32 noundef %iFrom, i32 noundef %isAgg) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iFrom.addr = alloca i32, align 4
  %isAgg.addr = alloca i32, align 4
  %zSavedAuthContext = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %pSub1 = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pSubSrc = alloca ptr, align 8
  %iParent = alloca i32, align 4
  %iNewParent = alloca i32, align 4
  %isLeftJoin = alloca i32, align 4
  %i = alloca i32, align 4
  %pWhere = alloca ptr, align 8
  %pSubitem = alloca ptr, align 8
  %db = alloca ptr, align 8
  %ii = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pOrderBy163 = alloca ptr, align 8
  %pLimit165 = alloca ptr, align 8
  %pPrior167 = alloca ptr, align 8
  %pTabToDel = alloca ptr, align 8
  %pToplevel = alloca ptr, align 8
  %nSubSrc = alloca i32, align 4
  %jointype221 = alloca i8, align 1
  %pOrderBy280 = alloca ptr, align 8
  %x = alloca %struct.SubstContext, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iFrom, ptr %iFrom.addr, align 4
  store i32 %isAgg, ptr %isAgg.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 61
  %1 = load ptr, ptr %zAuthContext, align 8
  store ptr %1, ptr %zSavedAuthContext, align 8
  store i32 -1, ptr %iNewParent, align 4
  store i32 0, ptr %isLeftJoin, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 15
  %5 = load i16, ptr %dbOptFlags, align 4
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %pSrc3 = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %pSrc3, align 8
  store ptr %7, ptr %pSrc, align 8
  %8 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iFrom.addr, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pSubitem, align 8
  %10 = load ptr, ptr %pSubitem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %10, i32 0, i32 10
  %11 = load i32, ptr %iCursor, align 8
  store i32 %11, ptr %iParent, align 4
  %12 = load ptr, ptr %pSubitem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %pSelect, align 8
  store ptr %13, ptr %pSub, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 17
  %15 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load ptr, ptr %pSub, align 8
  %pWin4 = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 17
  %17 = load ptr, ptr %pWin4, align 8
  %tobool5 = icmp ne ptr %17, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %18 = load ptr, ptr %pSub, align 8
  %pSrc8 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 8
  %19 = load ptr, ptr %pSrc8, align 8
  store ptr %19, ptr %pSubSrc, align 8
  %20 = load ptr, ptr %pSub, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 15
  %21 = load ptr, ptr %pLimit, align 8
  %tobool9 = icmp ne ptr %21, null
  br i1 %tobool9, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %22 = load ptr, ptr %p.addr, align 8
  %pLimit10 = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 15
  %23 = load ptr, ptr %pLimit10, align 8
  %tobool11 = icmp ne ptr %23, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.end7
  %24 = load ptr, ptr %pSub, align 8
  %pLimit14 = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 15
  %25 = load ptr, ptr %pLimit14, align 8
  %tobool15 = icmp ne ptr %25, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end20

land.lhs.true16:                                  ; preds = %if.end13
  %26 = load ptr, ptr %pSub, align 8
  %pLimit17 = getelementptr inbounds nuw %struct.Select, ptr %26, i32 0, i32 15
  %27 = load ptr, ptr %pLimit17, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %pRight, align 8
  %tobool18 = icmp ne ptr %28, null
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true16
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %land.lhs.true16, %if.end13
  %29 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %selFlags, align 4
  %and21 = and i32 %30, 256
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %if.end20
  %31 = load ptr, ptr %pSub, align 8
  %pLimit25 = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 15
  %32 = load ptr, ptr %pLimit25, align 8
  %tobool26 = icmp ne ptr %32, null
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true24
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true24, %if.end20
  %33 = load ptr, ptr %pSubSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %nSrc, align 8
  %cmp29 = icmp eq i32 %34, 0
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end28
  %35 = load ptr, ptr %pSub, align 8
  %selFlags33 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %selFlags33, align 4
  %and34 = and i32 %36, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end32
  %37 = load ptr, ptr %pSub, align 8
  %pLimit38 = getelementptr inbounds nuw %struct.Select, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %pLimit38, align 8
  %tobool39 = icmp ne ptr %38, null
  br i1 %tobool39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %if.end37
  %39 = load ptr, ptr %pSrc, align 8
  %nSrc41 = getelementptr inbounds nuw %struct.SrcList, ptr %39, i32 0, i32 0
  %40 = load i32, ptr %nSrc41, align 8
  %cmp42 = icmp sgt i32 %40, 1
  br i1 %cmp42, label %if.then46, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true40
  %41 = load i32, ptr %isAgg.addr, align 4
  %tobool45 = icmp ne i32 %41, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false44, %land.lhs.true40
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %lor.lhs.false44, %if.end37
  %42 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pOrderBy, align 8
  %tobool48 = icmp ne ptr %43, null
  br i1 %tobool48, label %land.lhs.true49, label %if.end53

land.lhs.true49:                                  ; preds = %if.end47
  %44 = load ptr, ptr %pSub, align 8
  %pOrderBy50 = getelementptr inbounds nuw %struct.Select, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %pOrderBy50, align 8
  %tobool51 = icmp ne ptr %45, null
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %land.lhs.true49
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %land.lhs.true49, %if.end47
  %46 = load i32, ptr %isAgg.addr, align 4
  %tobool54 = icmp ne i32 %46, 0
  br i1 %tobool54, label %land.lhs.true55, label %if.end59

land.lhs.true55:                                  ; preds = %if.end53
  %47 = load ptr, ptr %pSub, align 8
  %pOrderBy56 = getelementptr inbounds nuw %struct.Select, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pOrderBy56, align 8
  %tobool57 = icmp ne ptr %48, null
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %land.lhs.true55
  store i32 0, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %land.lhs.true55, %if.end53
  %49 = load ptr, ptr %pSub, align 8
  %pLimit60 = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 15
  %50 = load ptr, ptr %pLimit60, align 8
  %tobool61 = icmp ne ptr %50, null
  br i1 %tobool61, label %land.lhs.true62, label %if.end66

land.lhs.true62:                                  ; preds = %if.end59
  %51 = load ptr, ptr %p.addr, align 8
  %pWhere63 = getelementptr inbounds nuw %struct.Select, ptr %51, i32 0, i32 9
  %52 = load ptr, ptr %pWhere63, align 8
  %tobool64 = icmp ne ptr %52, null
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true62
  store i32 0, ptr %retval, align 4
  br label %return

if.end66:                                         ; preds = %land.lhs.true62, %if.end59
  %53 = load ptr, ptr %pSub, align 8
  %pLimit67 = getelementptr inbounds nuw %struct.Select, ptr %53, i32 0, i32 15
  %54 = load ptr, ptr %pLimit67, align 8
  %tobool68 = icmp ne ptr %54, null
  br i1 %tobool68, label %land.lhs.true69, label %if.end75

land.lhs.true69:                                  ; preds = %if.end66
  %55 = load ptr, ptr %p.addr, align 8
  %selFlags70 = getelementptr inbounds nuw %struct.Select, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %selFlags70, align 4
  %and71 = and i32 %56, 1
  %cmp72 = icmp ne i32 %and71, 0
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %land.lhs.true69
  store i32 0, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %land.lhs.true69, %if.end66
  %57 = load ptr, ptr %pSub, align 8
  %selFlags76 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 3
  %58 = load i32, ptr %selFlags76, align 4
  %and77 = and i32 %58, 8192
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end75
  store i32 0, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end75
  %59 = load ptr, ptr %pSubitem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %59, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %60 = load i8, ptr %jointype, align 4
  %conv81 = zext i8 %60 to i32
  %and82 = and i32 %conv81, 32
  %cmp83 = icmp ne i32 %and82, 0
  br i1 %cmp83, label %if.then85, label %if.end97

if.then85:                                        ; preds = %if.end80
  store i32 1, ptr %isLeftJoin, align 4
  %61 = load ptr, ptr %pSubSrc, align 8
  %nSrc86 = getelementptr inbounds nuw %struct.SrcList, ptr %61, i32 0, i32 0
  %62 = load i32, ptr %nSrc86, align 8
  %cmp87 = icmp sgt i32 %62, 1
  br i1 %cmp87, label %if.then95, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.then85
  %63 = load i32, ptr %isAgg.addr, align 4
  %tobool90 = icmp ne i32 %63, 0
  br i1 %tobool90, label %if.then95, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %lor.lhs.false89
  %64 = load ptr, ptr %pSubSrc, align 8
  %a92 = getelementptr inbounds nuw %struct.SrcList, ptr %64, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a92, i64 0, i64 0
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx93, i32 0, i32 4
  %65 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 16
  %66 = load i32, ptr %nModuleArg, align 4
  %tobool94 = icmp ne i32 %66, 0
  br i1 %tobool94, label %if.then95, label %if.end96

if.then95:                                        ; preds = %lor.lhs.false91, %lor.lhs.false89, %if.then85
  store i32 0, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %lor.lhs.false91
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end80
  %67 = load ptr, ptr %pSub, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %67, i32 0, i32 13
  %68 = load ptr, ptr %pPrior, align 8
  %tobool98 = icmp ne ptr %68, null
  br i1 %tobool98, label %if.then99, label %if.end156

if.then99:                                        ; preds = %if.end97
  %69 = load ptr, ptr %pSub, align 8
  %pOrderBy100 = getelementptr inbounds nuw %struct.Select, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pOrderBy100, align 8
  %tobool101 = icmp ne ptr %70, null
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then99
  store i32 0, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %if.then99
  %71 = load i32, ptr %isAgg.addr, align 4
  %tobool104 = icmp ne i32 %71, 0
  br i1 %tobool104, label %if.then114, label %lor.lhs.false105

lor.lhs.false105:                                 ; preds = %if.end103
  %72 = load ptr, ptr %p.addr, align 8
  %selFlags106 = getelementptr inbounds nuw %struct.Select, ptr %72, i32 0, i32 3
  %73 = load i32, ptr %selFlags106, align 4
  %and107 = and i32 %73, 1
  %cmp108 = icmp ne i32 %and107, 0
  br i1 %cmp108, label %if.then114, label %lor.lhs.false110

lor.lhs.false110:                                 ; preds = %lor.lhs.false105
  %74 = load ptr, ptr %pSrc, align 8
  %nSrc111 = getelementptr inbounds nuw %struct.SrcList, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %nSrc111, align 8
  %cmp112 = icmp ne i32 %75, 1
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %lor.lhs.false110, %lor.lhs.false105, %if.end103
  store i32 0, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false110
  %76 = load ptr, ptr %pSub, align 8
  store ptr %76, ptr %pSub1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end115
  %77 = load ptr, ptr %pSub1, align 8
  %tobool116 = icmp ne ptr %77, null
  br i1 %tobool116, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load ptr, ptr %pSub1, align 8
  %selFlags117 = getelementptr inbounds nuw %struct.Select, ptr %78, i32 0, i32 3
  %79 = load i32, ptr %selFlags117, align 4
  %and118 = and i32 %79, 9
  %cmp119 = icmp ne i32 %and118, 0
  br i1 %cmp119, label %if.then133, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %for.body
  %80 = load ptr, ptr %pSub1, align 8
  %pPrior122 = getelementptr inbounds nuw %struct.Select, ptr %80, i32 0, i32 13
  %81 = load ptr, ptr %pPrior122, align 8
  %tobool123 = icmp ne ptr %81, null
  br i1 %tobool123, label %land.lhs.true124, label %lor.lhs.false128

land.lhs.true124:                                 ; preds = %lor.lhs.false121
  %82 = load ptr, ptr %pSub1, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %82, i32 0, i32 1
  %83 = load i8, ptr %op, align 8
  %conv125 = zext i8 %83 to i32
  %cmp126 = icmp ne i32 %conv125, 131
  br i1 %cmp126, label %if.then133, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %land.lhs.true124, %lor.lhs.false121
  %84 = load ptr, ptr %pSub1, align 8
  %pSrc129 = getelementptr inbounds nuw %struct.Select, ptr %84, i32 0, i32 8
  %85 = load ptr, ptr %pSrc129, align 8
  %nSrc130 = getelementptr inbounds nuw %struct.SrcList, ptr %85, i32 0, i32 0
  %86 = load i32, ptr %nSrc130, align 8
  %cmp131 = icmp slt i32 %86, 1
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %lor.lhs.false128, %land.lhs.true124, %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %lor.lhs.false128
  br label %for.inc

for.inc:                                          ; preds = %if.end134
  %87 = load ptr, ptr %pSub1, align 8
  %pPrior135 = getelementptr inbounds nuw %struct.Select, ptr %87, i32 0, i32 13
  %88 = load ptr, ptr %pPrior135, align 8
  store ptr %88, ptr %pSub1, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %89 = load ptr, ptr %p.addr, align 8
  %pOrderBy136 = getelementptr inbounds nuw %struct.Select, ptr %89, i32 0, i32 12
  %90 = load ptr, ptr %pOrderBy136, align 8
  %tobool137 = icmp ne ptr %90, null
  br i1 %tobool137, label %if.then138, label %if.end155

if.then138:                                       ; preds = %for.end
  store i32 0, ptr %ii, align 4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc153, %if.then138
  %91 = load i32, ptr %ii, align 4
  %92 = load ptr, ptr %p.addr, align 8
  %pOrderBy140 = getelementptr inbounds nuw %struct.Select, ptr %92, i32 0, i32 12
  %93 = load ptr, ptr %pOrderBy140, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %93, i32 0, i32 0
  %94 = load i32, ptr %nExpr, align 8
  %cmp141 = icmp slt i32 %91, %94
  br i1 %cmp141, label %for.body143, label %for.end154

for.body143:                                      ; preds = %for.cond139
  %95 = load ptr, ptr %p.addr, align 8
  %pOrderBy144 = getelementptr inbounds nuw %struct.Select, ptr %95, i32 0, i32 12
  %96 = load ptr, ptr %pOrderBy144, align 8
  %a145 = getelementptr inbounds nuw %struct.ExprList, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %ii, align 4
  %idxprom146 = sext i32 %97 to i64
  %arrayidx147 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a145, i64 0, i64 %idxprom146
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx147, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %98 = load i16, ptr %iOrderByCol, align 4
  %conv148 = zext i16 %98 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %for.body143
  store i32 0, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %for.body143
  br label %for.inc153

for.inc153:                                       ; preds = %if.end152
  %99 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond139, !llvm.loop !8

for.end154:                                       ; preds = %for.cond139
  br label %if.end155

if.end155:                                        ; preds = %for.end154, %for.end
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.end97
  %100 = load ptr, ptr %pSubitem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %zName, align 8
  %102 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext157 = getelementptr inbounds nuw %struct.Parse, ptr %102, i32 0, i32 61
  store ptr %101, ptr %zAuthContext157, align 8
  %103 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3AuthCheck(ptr noundef %103, i32 noundef 21, ptr noundef null, ptr noundef null, ptr noundef null)
  %104 = load ptr, ptr %zSavedAuthContext, align 8
  %105 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext158 = getelementptr inbounds nuw %struct.Parse, ptr %105, i32 0, i32 61
  store ptr %104, ptr %zAuthContext158, align 8
  %106 = load ptr, ptr %pSub, align 8
  %pPrior159 = getelementptr inbounds nuw %struct.Select, ptr %106, i32 0, i32 13
  %107 = load ptr, ptr %pPrior159, align 8
  store ptr %107, ptr %pSub, align 8
  br label %for.cond160

for.cond160:                                      ; preds = %for.inc192, %if.end156
  %108 = load ptr, ptr %pSub, align 8
  %tobool161 = icmp ne ptr %108, null
  br i1 %tobool161, label %for.body162, label %for.end194

for.body162:                                      ; preds = %for.cond160
  %109 = load ptr, ptr %p.addr, align 8
  %pOrderBy164 = getelementptr inbounds nuw %struct.Select, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %pOrderBy164, align 8
  store ptr %110, ptr %pOrderBy163, align 8
  %111 = load ptr, ptr %p.addr, align 8
  %pLimit166 = getelementptr inbounds nuw %struct.Select, ptr %111, i32 0, i32 15
  %112 = load ptr, ptr %pLimit166, align 8
  store ptr %112, ptr %pLimit165, align 8
  %113 = load ptr, ptr %p.addr, align 8
  %pPrior168 = getelementptr inbounds nuw %struct.Select, ptr %113, i32 0, i32 13
  %114 = load ptr, ptr %pPrior168, align 8
  store ptr %114, ptr %pPrior167, align 8
  %115 = load ptr, ptr %p.addr, align 8
  %pOrderBy169 = getelementptr inbounds nuw %struct.Select, ptr %115, i32 0, i32 12
  store ptr null, ptr %pOrderBy169, align 8
  %116 = load ptr, ptr %p.addr, align 8
  %pSrc170 = getelementptr inbounds nuw %struct.Select, ptr %116, i32 0, i32 8
  store ptr null, ptr %pSrc170, align 8
  %117 = load ptr, ptr %p.addr, align 8
  %pPrior171 = getelementptr inbounds nuw %struct.Select, ptr %117, i32 0, i32 13
  store ptr null, ptr %pPrior171, align 8
  %118 = load ptr, ptr %p.addr, align 8
  %pLimit172 = getelementptr inbounds nuw %struct.Select, ptr %118, i32 0, i32 15
  store ptr null, ptr %pLimit172, align 8
  %119 = load ptr, ptr %db, align 8
  %120 = load ptr, ptr %p.addr, align 8
  %call173 = call ptr @sqlite3SelectDup(ptr noundef %119, ptr noundef %120, i32 noundef 0)
  store ptr %call173, ptr %pNew, align 8
  %121 = load ptr, ptr %pLimit165, align 8
  %122 = load ptr, ptr %p.addr, align 8
  %pLimit174 = getelementptr inbounds nuw %struct.Select, ptr %122, i32 0, i32 15
  store ptr %121, ptr %pLimit174, align 8
  %123 = load ptr, ptr %pOrderBy163, align 8
  %124 = load ptr, ptr %p.addr, align 8
  %pOrderBy175 = getelementptr inbounds nuw %struct.Select, ptr %124, i32 0, i32 12
  store ptr %123, ptr %pOrderBy175, align 8
  %125 = load ptr, ptr %pSrc, align 8
  %126 = load ptr, ptr %p.addr, align 8
  %pSrc176 = getelementptr inbounds nuw %struct.Select, ptr %126, i32 0, i32 8
  store ptr %125, ptr %pSrc176, align 8
  %127 = load ptr, ptr %p.addr, align 8
  %op177 = getelementptr inbounds nuw %struct.Select, ptr %127, i32 0, i32 1
  store i8 -125, ptr %op177, align 8
  %128 = load ptr, ptr %pNew, align 8
  %cmp178 = icmp eq ptr %128, null
  br i1 %cmp178, label %if.then180, label %if.else

if.then180:                                       ; preds = %for.body162
  %129 = load ptr, ptr %pPrior167, align 8
  %130 = load ptr, ptr %p.addr, align 8
  %pPrior181 = getelementptr inbounds nuw %struct.Select, ptr %130, i32 0, i32 13
  store ptr %129, ptr %pPrior181, align 8
  br label %if.end188

if.else:                                          ; preds = %for.body162
  %131 = load ptr, ptr %pPrior167, align 8
  %132 = load ptr, ptr %pNew, align 8
  %pPrior182 = getelementptr inbounds nuw %struct.Select, ptr %132, i32 0, i32 13
  store ptr %131, ptr %pPrior182, align 8
  %133 = load ptr, ptr %pPrior167, align 8
  %tobool183 = icmp ne ptr %133, null
  br i1 %tobool183, label %if.then184, label %if.end185

if.then184:                                       ; preds = %if.else
  %134 = load ptr, ptr %pNew, align 8
  %135 = load ptr, ptr %pPrior167, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %135, i32 0, i32 14
  store ptr %134, ptr %pNext, align 8
  br label %if.end185

if.end185:                                        ; preds = %if.then184, %if.else
  %136 = load ptr, ptr %p.addr, align 8
  %137 = load ptr, ptr %pNew, align 8
  %pNext186 = getelementptr inbounds nuw %struct.Select, ptr %137, i32 0, i32 14
  store ptr %136, ptr %pNext186, align 8
  %138 = load ptr, ptr %pNew, align 8
  %139 = load ptr, ptr %p.addr, align 8
  %pPrior187 = getelementptr inbounds nuw %struct.Select, ptr %139, i32 0, i32 13
  store ptr %138, ptr %pPrior187, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.end185, %if.then180
  %140 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %140, i32 0, i32 19
  %141 = load i8, ptr %mallocFailed, align 1
  %tobool189 = icmp ne i8 %141, 0
  br i1 %tobool189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end188
  store i32 1, ptr %retval, align 4
  br label %return

if.end191:                                        ; preds = %if.end188
  br label %for.inc192

for.inc192:                                       ; preds = %if.end191
  %142 = load ptr, ptr %pSub, align 8
  %pPrior193 = getelementptr inbounds nuw %struct.Select, ptr %142, i32 0, i32 13
  %143 = load ptr, ptr %pPrior193, align 8
  store ptr %143, ptr %pSub, align 8
  br label %for.cond160, !llvm.loop !9

for.end194:                                       ; preds = %for.cond160
  %144 = load ptr, ptr %pSubitem, align 8
  %pSelect195 = getelementptr inbounds nuw %struct.SrcList_item, ptr %144, i32 0, i32 5
  %145 = load ptr, ptr %pSelect195, align 8
  store ptr %145, ptr %pSub1, align 8
  store ptr %145, ptr %pSub, align 8
  %146 = load ptr, ptr %db, align 8
  %147 = load ptr, ptr %pSubitem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %zDatabase, align 8
  call void @sqlite3DbFree(ptr noundef %146, ptr noundef %148)
  %149 = load ptr, ptr %db, align 8
  %150 = load ptr, ptr %pSubitem, align 8
  %zName196 = getelementptr inbounds nuw %struct.SrcList_item, ptr %150, i32 0, i32 2
  %151 = load ptr, ptr %zName196, align 8
  call void @sqlite3DbFree(ptr noundef %149, ptr noundef %151)
  %152 = load ptr, ptr %db, align 8
  %153 = load ptr, ptr %pSubitem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %153, i32 0, i32 3
  %154 = load ptr, ptr %zAlias, align 8
  call void @sqlite3DbFree(ptr noundef %152, ptr noundef %154)
  %155 = load ptr, ptr %pSubitem, align 8
  %zDatabase197 = getelementptr inbounds nuw %struct.SrcList_item, ptr %155, i32 0, i32 1
  store ptr null, ptr %zDatabase197, align 8
  %156 = load ptr, ptr %pSubitem, align 8
  %zName198 = getelementptr inbounds nuw %struct.SrcList_item, ptr %156, i32 0, i32 2
  store ptr null, ptr %zName198, align 8
  %157 = load ptr, ptr %pSubitem, align 8
  %zAlias199 = getelementptr inbounds nuw %struct.SrcList_item, ptr %157, i32 0, i32 3
  store ptr null, ptr %zAlias199, align 8
  %158 = load ptr, ptr %pSubitem, align 8
  %pSelect200 = getelementptr inbounds nuw %struct.SrcList_item, ptr %158, i32 0, i32 5
  store ptr null, ptr %pSelect200, align 8
  %159 = load ptr, ptr %pSubitem, align 8
  %pTab201 = getelementptr inbounds nuw %struct.SrcList_item, ptr %159, i32 0, i32 4
  %160 = load ptr, ptr %pTab201, align 8
  %cmp202 = icmp ne ptr %160, null
  br i1 %cmp202, label %if.then204, label %if.end217

if.then204:                                       ; preds = %for.end194
  %161 = load ptr, ptr %pSubitem, align 8
  %pTab205 = getelementptr inbounds nuw %struct.SrcList_item, ptr %161, i32 0, i32 4
  %162 = load ptr, ptr %pTab205, align 8
  store ptr %162, ptr %pTabToDel, align 8
  %163 = load ptr, ptr %pTabToDel, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %163, i32 0, i32 8
  %164 = load i32, ptr %nTabRef, align 4
  %cmp206 = icmp eq i32 %164, 1
  br i1 %cmp206, label %if.then208, label %if.else213

if.then208:                                       ; preds = %if.then204
  %165 = load ptr, ptr %pParse.addr, align 8
  %pToplevel209 = getelementptr inbounds nuw %struct.Parse, ptr %165, i32 0, i32 35
  %166 = load ptr, ptr %pToplevel209, align 8
  %tobool210 = icmp ne ptr %166, null
  br i1 %tobool210, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then208
  %167 = load ptr, ptr %pParse.addr, align 8
  %pToplevel211 = getelementptr inbounds nuw %struct.Parse, ptr %167, i32 0, i32 35
  %168 = load ptr, ptr %pToplevel211, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then208
  %169 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %168, %cond.true ], [ %169, %cond.false ]
  store ptr %cond, ptr %pToplevel, align 8
  %170 = load ptr, ptr %pToplevel, align 8
  %pZombieTab = getelementptr inbounds nuw %struct.Parse, ptr %170, i32 0, i32 64
  %171 = load ptr, ptr %pZombieTab, align 8
  %172 = load ptr, ptr %pTabToDel, align 8
  %pNextZombie = getelementptr inbounds nuw %struct.Table, ptr %172, i32 0, i32 21
  store ptr %171, ptr %pNextZombie, align 8
  %173 = load ptr, ptr %pTabToDel, align 8
  %174 = load ptr, ptr %pToplevel, align 8
  %pZombieTab212 = getelementptr inbounds nuw %struct.Parse, ptr %174, i32 0, i32 64
  store ptr %173, ptr %pZombieTab212, align 8
  br label %if.end215

if.else213:                                       ; preds = %if.then204
  %175 = load ptr, ptr %pTabToDel, align 8
  %nTabRef214 = getelementptr inbounds nuw %struct.Table, ptr %175, i32 0, i32 8
  %176 = load i32, ptr %nTabRef214, align 4
  %dec = add i32 %176, -1
  store i32 %dec, ptr %nTabRef214, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.else213, %cond.end
  %177 = load ptr, ptr %pSubitem, align 8
  %pTab216 = getelementptr inbounds nuw %struct.SrcList_item, ptr %177, i32 0, i32 4
  store ptr null, ptr %pTab216, align 8
  br label %if.end217

if.end217:                                        ; preds = %if.end215, %for.end194
  %178 = load ptr, ptr %p.addr, align 8
  store ptr %178, ptr %pParent, align 8
  br label %for.cond218

for.cond218:                                      ; preds = %for.inc326, %if.end217
  %179 = load ptr, ptr %pParent, align 8
  %tobool219 = icmp ne ptr %179, null
  br i1 %tobool219, label %for.body220, label %for.end329

for.body220:                                      ; preds = %for.cond218
  store i8 0, ptr %jointype221, align 1
  %180 = load ptr, ptr %pSub, align 8
  %pSrc222 = getelementptr inbounds nuw %struct.Select, ptr %180, i32 0, i32 8
  %181 = load ptr, ptr %pSrc222, align 8
  store ptr %181, ptr %pSubSrc, align 8
  %182 = load ptr, ptr %pSubSrc, align 8
  %nSrc223 = getelementptr inbounds nuw %struct.SrcList, ptr %182, i32 0, i32 0
  %183 = load i32, ptr %nSrc223, align 8
  store i32 %183, ptr %nSubSrc, align 4
  %184 = load ptr, ptr %pParent, align 8
  %pSrc224 = getelementptr inbounds nuw %struct.Select, ptr %184, i32 0, i32 8
  %185 = load ptr, ptr %pSrc224, align 8
  store ptr %185, ptr %pSrc, align 8
  %186 = load ptr, ptr %pSrc, align 8
  %tobool225 = icmp ne ptr %186, null
  br i1 %tobool225, label %if.then226, label %if.else229

if.then226:                                       ; preds = %for.body220
  %187 = load ptr, ptr %pSubitem, align 8
  %fg227 = getelementptr inbounds nuw %struct.SrcList_item, ptr %187, i32 0, i32 9
  %jointype228 = getelementptr inbounds nuw %struct.anon, ptr %fg227, i32 0, i32 0
  %188 = load i8, ptr %jointype228, align 4
  store i8 %188, ptr %jointype221, align 1
  br label %if.end236

if.else229:                                       ; preds = %for.body220
  %189 = load ptr, ptr %pParse.addr, align 8
  %call230 = call ptr @sqlite3SrcListAppend(ptr noundef %189, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %call230, ptr %pSrc, align 8
  %190 = load ptr, ptr %pSrc, align 8
  %cmp231 = icmp eq ptr %190, null
  br i1 %cmp231, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.else229
  br label %for.end329

if.end234:                                        ; preds = %if.else229
  %191 = load ptr, ptr %pSrc, align 8
  %192 = load ptr, ptr %pParent, align 8
  %pSrc235 = getelementptr inbounds nuw %struct.Select, ptr %192, i32 0, i32 8
  store ptr %191, ptr %pSrc235, align 8
  br label %if.end236

if.end236:                                        ; preds = %if.end234, %if.then226
  %193 = load i32, ptr %nSubSrc, align 4
  %cmp237 = icmp sgt i32 %193, 1
  br i1 %cmp237, label %if.then239, label %if.end246

if.then239:                                       ; preds = %if.end236
  %194 = load ptr, ptr %pParse.addr, align 8
  %195 = load ptr, ptr %pSrc, align 8
  %196 = load i32, ptr %nSubSrc, align 4
  %sub = sub nsw i32 %196, 1
  %197 = load i32, ptr %iFrom.addr, align 4
  %add = add nsw i32 %197, 1
  %call240 = call ptr @sqlite3SrcListEnlarge(ptr noundef %194, ptr noundef %195, i32 noundef %sub, i32 noundef %add)
  store ptr %call240, ptr %pSrc, align 8
  %198 = load ptr, ptr %pSrc, align 8
  %cmp241 = icmp eq ptr %198, null
  br i1 %cmp241, label %if.then243, label %if.end244

if.then243:                                       ; preds = %if.then239
  br label %for.end329

if.end244:                                        ; preds = %if.then239
  %199 = load ptr, ptr %pSrc, align 8
  %200 = load ptr, ptr %pParent, align 8
  %pSrc245 = getelementptr inbounds nuw %struct.Select, ptr %200, i32 0, i32 8
  store ptr %199, ptr %pSrc245, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.end244, %if.end236
  store i32 0, ptr %i, align 4
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc269, %if.end246
  %201 = load i32, ptr %i, align 4
  %202 = load i32, ptr %nSubSrc, align 4
  %cmp248 = icmp slt i32 %201, %202
  br i1 %cmp248, label %for.body250, label %for.end271

for.body250:                                      ; preds = %for.cond247
  %203 = load ptr, ptr %db, align 8
  %204 = load ptr, ptr %pSrc, align 8
  %a251 = getelementptr inbounds nuw %struct.SrcList, ptr %204, i32 0, i32 2
  %205 = load i32, ptr %i, align 4
  %206 = load i32, ptr %iFrom.addr, align 4
  %add252 = add nsw i32 %205, %206
  %idxprom253 = sext i32 %add252 to i64
  %arrayidx254 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a251, i64 0, i64 %idxprom253
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx254, i32 0, i32 12
  %207 = load ptr, ptr %pUsing, align 8
  call void @sqlite3IdListDelete(ptr noundef %203, ptr noundef %207)
  %208 = load ptr, ptr %pSrc, align 8
  %a255 = getelementptr inbounds nuw %struct.SrcList, ptr %208, i32 0, i32 2
  %209 = load i32, ptr %i, align 4
  %210 = load i32, ptr %iFrom.addr, align 4
  %add256 = add nsw i32 %209, %210
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a255, i64 0, i64 %idxprom257
  %211 = load ptr, ptr %pSubSrc, align 8
  %a259 = getelementptr inbounds nuw %struct.SrcList, ptr %211, i32 0, i32 2
  %212 = load i32, ptr %i, align 4
  %idxprom260 = sext i32 %212 to i64
  %arrayidx261 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a259, i64 0, i64 %idxprom260
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx258, ptr align 8 %arrayidx261, i64 112, i1 false)
  %213 = load ptr, ptr %pSubSrc, align 8
  %a262 = getelementptr inbounds nuw %struct.SrcList, ptr %213, i32 0, i32 2
  %214 = load i32, ptr %i, align 4
  %idxprom263 = sext i32 %214 to i64
  %arrayidx264 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a262, i64 0, i64 %idxprom263
  %iCursor265 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx264, i32 0, i32 10
  %215 = load i32, ptr %iCursor265, align 8
  store i32 %215, ptr %iNewParent, align 4
  %216 = load ptr, ptr %pSubSrc, align 8
  %a266 = getelementptr inbounds nuw %struct.SrcList, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %i, align 4
  %idxprom267 = sext i32 %217 to i64
  %arrayidx268 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a266, i64 0, i64 %idxprom267
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx268, i8 0, i64 112, i1 false)
  br label %for.inc269

for.inc269:                                       ; preds = %for.body250
  %218 = load i32, ptr %i, align 4
  %inc270 = add nsw i32 %218, 1
  store i32 %inc270, ptr %i, align 4
  br label %for.cond247, !llvm.loop !10

for.end271:                                       ; preds = %for.cond247
  %219 = load i8, ptr %jointype221, align 1
  %220 = load ptr, ptr %pSrc, align 8
  %a272 = getelementptr inbounds nuw %struct.SrcList, ptr %220, i32 0, i32 2
  %221 = load i32, ptr %iFrom.addr, align 4
  %idxprom273 = sext i32 %221 to i64
  %arrayidx274 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a272, i64 0, i64 %idxprom273
  %fg275 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx274, i32 0, i32 9
  %jointype276 = getelementptr inbounds nuw %struct.anon, ptr %fg275, i32 0, i32 0
  store i8 %219, ptr %jointype276, align 4
  %222 = load ptr, ptr %pSub, align 8
  %pOrderBy277 = getelementptr inbounds nuw %struct.Select, ptr %222, i32 0, i32 12
  %223 = load ptr, ptr %pOrderBy277, align 8
  %tobool278 = icmp ne ptr %223, null
  br i1 %tobool278, label %if.then279, label %if.end297

if.then279:                                       ; preds = %for.end271
  %224 = load ptr, ptr %pSub, align 8
  %pOrderBy281 = getelementptr inbounds nuw %struct.Select, ptr %224, i32 0, i32 12
  %225 = load ptr, ptr %pOrderBy281, align 8
  store ptr %225, ptr %pOrderBy280, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc292, %if.then279
  %226 = load i32, ptr %i, align 4
  %227 = load ptr, ptr %pOrderBy280, align 8
  %nExpr283 = getelementptr inbounds nuw %struct.ExprList, ptr %227, i32 0, i32 0
  %228 = load i32, ptr %nExpr283, align 8
  %cmp284 = icmp slt i32 %226, %228
  br i1 %cmp284, label %for.body286, label %for.end294

for.body286:                                      ; preds = %for.cond282
  %229 = load ptr, ptr %pOrderBy280, align 8
  %a287 = getelementptr inbounds nuw %struct.ExprList, ptr %229, i32 0, i32 1
  %230 = load i32, ptr %i, align 4
  %idxprom288 = sext i32 %230 to i64
  %arrayidx289 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a287, i64 0, i64 %idxprom288
  %u290 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx289, i32 0, i32 5
  %iOrderByCol291 = getelementptr inbounds nuw %struct.anon.12, ptr %u290, i32 0, i32 0
  store i16 0, ptr %iOrderByCol291, align 4
  br label %for.inc292

for.inc292:                                       ; preds = %for.body286
  %231 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %231, 1
  store i32 %inc293, ptr %i, align 4
  br label %for.cond282, !llvm.loop !11

for.end294:                                       ; preds = %for.cond282
  %232 = load ptr, ptr %pOrderBy280, align 8
  %233 = load ptr, ptr %pParent, align 8
  %pOrderBy295 = getelementptr inbounds nuw %struct.Select, ptr %233, i32 0, i32 12
  store ptr %232, ptr %pOrderBy295, align 8
  %234 = load ptr, ptr %pSub, align 8
  %pOrderBy296 = getelementptr inbounds nuw %struct.Select, ptr %234, i32 0, i32 12
  store ptr null, ptr %pOrderBy296, align 8
  br label %if.end297

if.end297:                                        ; preds = %for.end294, %for.end271
  %235 = load ptr, ptr %pSub, align 8
  %pWhere298 = getelementptr inbounds nuw %struct.Select, ptr %235, i32 0, i32 9
  %236 = load ptr, ptr %pWhere298, align 8
  store ptr %236, ptr %pWhere, align 8
  %237 = load ptr, ptr %pSub, align 8
  %pWhere299 = getelementptr inbounds nuw %struct.Select, ptr %237, i32 0, i32 9
  store ptr null, ptr %pWhere299, align 8
  %238 = load i32, ptr %isLeftJoin, align 4
  %cmp300 = icmp sgt i32 %238, 0
  br i1 %cmp300, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.end297
  %239 = load ptr, ptr %pWhere, align 8
  %240 = load i32, ptr %iNewParent, align 4
  call void @setJoinExpr(ptr noundef %239, i32 noundef %240)
  br label %if.end303

if.end303:                                        ; preds = %if.then302, %if.end297
  %241 = load ptr, ptr %pParse.addr, align 8
  %242 = load ptr, ptr %pWhere, align 8
  %243 = load ptr, ptr %pParent, align 8
  %pWhere304 = getelementptr inbounds nuw %struct.Select, ptr %243, i32 0, i32 9
  %244 = load ptr, ptr %pWhere304, align 8
  %call305 = call ptr @sqlite3ExprAnd(ptr noundef %241, ptr noundef %242, ptr noundef %244)
  %245 = load ptr, ptr %pParent, align 8
  %pWhere306 = getelementptr inbounds nuw %struct.Select, ptr %245, i32 0, i32 9
  store ptr %call305, ptr %pWhere306, align 8
  %246 = load ptr, ptr %db, align 8
  %mallocFailed307 = getelementptr inbounds nuw %struct.sqlite3, ptr %246, i32 0, i32 19
  %247 = load i8, ptr %mallocFailed307, align 1
  %conv308 = zext i8 %247 to i32
  %cmp309 = icmp eq i32 %conv308, 0
  br i1 %cmp309, label %if.then311, label %if.end315

if.then311:                                       ; preds = %if.end303
  %248 = load ptr, ptr %pParse.addr, align 8
  %pParse312 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 0
  store ptr %248, ptr %pParse312, align 8
  %249 = load i32, ptr %iParent, align 4
  %iTable = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 1
  store i32 %249, ptr %iTable, align 8
  %250 = load i32, ptr %iNewParent, align 4
  %iNewTable = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 2
  store i32 %250, ptr %iNewTable, align 4
  %251 = load i32, ptr %isLeftJoin, align 4
  %isLeftJoin313 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 3
  store i32 %251, ptr %isLeftJoin313, align 8
  %252 = load ptr, ptr %pSub, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %252, i32 0, i32 0
  %253 = load ptr, ptr %pEList, align 8
  %pEList314 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 4
  store ptr %253, ptr %pEList314, align 8
  %254 = load ptr, ptr %pParent, align 8
  call void @substSelect(ptr noundef %x, ptr noundef %254, i32 noundef 0)
  br label %if.end315

if.end315:                                        ; preds = %if.then311, %if.end303
  %255 = load ptr, ptr %pSub, align 8
  %selFlags316 = getelementptr inbounds nuw %struct.Select, ptr %255, i32 0, i32 3
  %256 = load i32, ptr %selFlags316, align 4
  %and317 = and i32 %256, 256
  %257 = load ptr, ptr %pParent, align 8
  %selFlags318 = getelementptr inbounds nuw %struct.Select, ptr %257, i32 0, i32 3
  %258 = load i32, ptr %selFlags318, align 4
  %or = or i32 %258, %and317
  store i32 %or, ptr %selFlags318, align 4
  %259 = load ptr, ptr %pSub, align 8
  %pLimit319 = getelementptr inbounds nuw %struct.Select, ptr %259, i32 0, i32 15
  %260 = load ptr, ptr %pLimit319, align 8
  %tobool320 = icmp ne ptr %260, null
  br i1 %tobool320, label %if.then321, label %if.end325

if.then321:                                       ; preds = %if.end315
  %261 = load ptr, ptr %pSub, align 8
  %pLimit322 = getelementptr inbounds nuw %struct.Select, ptr %261, i32 0, i32 15
  %262 = load ptr, ptr %pLimit322, align 8
  %263 = load ptr, ptr %pParent, align 8
  %pLimit323 = getelementptr inbounds nuw %struct.Select, ptr %263, i32 0, i32 15
  store ptr %262, ptr %pLimit323, align 8
  %264 = load ptr, ptr %pSub, align 8
  %pLimit324 = getelementptr inbounds nuw %struct.Select, ptr %264, i32 0, i32 15
  store ptr null, ptr %pLimit324, align 8
  br label %if.end325

if.end325:                                        ; preds = %if.then321, %if.end315
  br label %for.inc326

for.inc326:                                       ; preds = %if.end325
  %265 = load ptr, ptr %pParent, align 8
  %pPrior327 = getelementptr inbounds nuw %struct.Select, ptr %265, i32 0, i32 13
  %266 = load ptr, ptr %pPrior327, align 8
  store ptr %266, ptr %pParent, align 8
  %267 = load ptr, ptr %pSub, align 8
  %pPrior328 = getelementptr inbounds nuw %struct.Select, ptr %267, i32 0, i32 13
  %268 = load ptr, ptr %pPrior328, align 8
  store ptr %268, ptr %pSub, align 8
  br label %for.cond218, !llvm.loop !12

for.end329:                                       ; preds = %if.then243, %if.then233, %for.cond218
  %269 = load ptr, ptr %db, align 8
  %270 = load ptr, ptr %pSub1, align 8
  call void @sqlite3SelectDelete(ptr noundef %269, ptr noundef %270)
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end329, %if.then190, %if.then151, %if.then133, %if.then114, %if.then102, %if.then95, %if.then79, %if.then74, %if.then65, %if.then58, %if.then52, %if.then46, %if.then36, %if.then31, %if.then27, %if.then19, %if.then12, %if.then6, %if.then
  %271 = load i32, ptr %retval, align 4
  ret i32 %271
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListEnlarge(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @substSelect(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
