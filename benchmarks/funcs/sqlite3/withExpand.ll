; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Cte = type { ptr, ptr, ptr, ptr }
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
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.645 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.646 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.647 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.648 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.649 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @withExpand(ptr noundef %pWalker, ptr noundef %pFrom) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pCte = alloca ptr, align 8
  %pWith = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %bMayRecursive = alloca i32, align 4
  %pSavedWith = alloca ptr, align 8
  %i = alloca i32, align 4
  %pSrc = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pPrior = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pParse, align 8
  %pWith3 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 66
  %5 = load ptr, ptr %pWith3, align 8
  %6 = load ptr, ptr %pFrom.addr, align 8
  %call = call ptr @searchWith(ptr noundef %5, ptr noundef %6, ptr noundef %pWith)
  store ptr %call, ptr %pCte, align 8
  %7 = load ptr, ptr %pCte, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end112

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pCte, align 8
  %zCteErr = getelementptr inbounds nuw %struct.Cte, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %zCteErr, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %pParse, align 8
  %11 = load ptr, ptr %pCte, align 8
  %zCteErr6 = getelementptr inbounds nuw %struct.Cte, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %zCteErr6, align 8
  %13 = load ptr, ptr %pCte, align 8
  %zName = getelementptr inbounds nuw %struct.Cte, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %10, ptr noundef %12, ptr noundef %14)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load ptr, ptr %pParse, align 8
  %16 = load ptr, ptr %pFrom.addr, align 8
  %call7 = call i32 @cannotBeFunction(ptr noundef %15, ptr noundef %16)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %17 = load ptr, ptr %db, align 8
  %call11 = call ptr @sqlite3DbMallocZero(ptr noundef %17, i64 noundef 128)
  store ptr %call11, ptr %pTab, align 8
  %18 = load ptr, ptr %pFrom.addr, align 8
  %pTab12 = getelementptr inbounds nuw %struct.SrcList_item, ptr %18, i32 0, i32 4
  store ptr %call11, ptr %pTab12, align 8
  %19 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  store i32 2, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %20 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %pCte, align 8
  %zName15 = getelementptr inbounds nuw %struct.Cte, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName15, align 8
  %call16 = call ptr @sqlite3DbStrDup(ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %pTab, align 8
  %zName17 = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 0
  store ptr %call16, ptr %zName17, align 8
  %25 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %25, i32 0, i32 10
  store i16 -1, ptr %iPKey, align 4
  %26 = load ptr, ptr %pTab, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 12
  store i16 200, ptr %nRowLogEst, align 8
  %27 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 9
  %28 = load i32, ptr %tabFlags, align 8
  %or = or i32 %28, 66
  store i32 %or, ptr %tabFlags, align 8
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pCte, align 8
  %pSelect = getelementptr inbounds nuw %struct.Cte, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %pSelect, align 8
  %call18 = call ptr @sqlite3SelectDup(ptr noundef %29, ptr noundef %31, i32 noundef 0)
  %32 = load ptr, ptr %pFrom.addr, align 8
  %pSelect19 = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 0, i32 5
  store ptr %call18, ptr %pSelect19, align 8
  %33 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 19
  %34 = load i8, ptr %mallocFailed, align 1
  %tobool20 = icmp ne i8 %34, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end14
  store i32 7, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end14
  %35 = load ptr, ptr %pFrom.addr, align 8
  %pSelect23 = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %pSelect23, align 8
  store ptr %36, ptr %pSel, align 8
  %37 = load ptr, ptr %pSel, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %37, i32 0, i32 1
  %38 = load i8, ptr %op, align 8
  %conv = zext i8 %38 to i32
  %cmp24 = icmp eq i32 %conv, 131
  br i1 %cmp24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end22
  %39 = load ptr, ptr %pSel, align 8
  %op26 = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 1
  %40 = load i8, ptr %op26, align 8
  %conv27 = zext i8 %40 to i32
  %cmp28 = icmp eq i32 %conv27, 130
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end22
  %41 = phi i1 [ true, %if.end22 ], [ %cmp28, %lor.rhs ]
  %lor.ext = zext i1 %41 to i32
  store i32 %lor.ext, ptr %bMayRecursive, align 4
  %42 = load i32, ptr %bMayRecursive, align 4
  %tobool30 = icmp ne i32 %42, 0
  br i1 %tobool30, label %if.then31, label %if.end53

if.then31:                                        ; preds = %lor.end
  %43 = load ptr, ptr %pFrom.addr, align 8
  %pSelect32 = getelementptr inbounds nuw %struct.SrcList_item, ptr %43, i32 0, i32 5
  %44 = load ptr, ptr %pSelect32, align 8
  %pSrc33 = getelementptr inbounds nuw %struct.Select, ptr %44, i32 0, i32 8
  %45 = load ptr, ptr %pSrc33, align 8
  store ptr %45, ptr %pSrc, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then31
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %47, i32 0, i32 0
  %48 = load i32, ptr %nSrc, align 8
  %cmp34 = icmp slt i32 %46, %48
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %i, align 4
  %idxprom = sext i32 %50 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %51 = load ptr, ptr %pItem, align 8
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %zDatabase, align 8
  %cmp36 = icmp eq ptr %52, null
  br i1 %cmp36, label %land.lhs.true, label %if.end51

land.lhs.true:                                    ; preds = %for.body
  %53 = load ptr, ptr %pItem, align 8
  %zName38 = getelementptr inbounds nuw %struct.SrcList_item, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %zName38, align 8
  %cmp39 = icmp ne ptr %54, null
  br i1 %cmp39, label %land.lhs.true41, label %if.end51

land.lhs.true41:                                  ; preds = %land.lhs.true
  %55 = load ptr, ptr %pItem, align 8
  %zName42 = getelementptr inbounds nuw %struct.SrcList_item, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %zName42, align 8
  %57 = load ptr, ptr %pCte, align 8
  %zName43 = getelementptr inbounds nuw %struct.Cte, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zName43, align 8
  %call44 = call i32 @sqlite3StrICmp(ptr noundef %56, ptr noundef %58)
  %cmp45 = icmp eq i32 0, %call44
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %land.lhs.true41
  %59 = load ptr, ptr %pTab, align 8
  %60 = load ptr, ptr %pItem, align 8
  %pTab48 = getelementptr inbounds nuw %struct.SrcList_item, ptr %60, i32 0, i32 4
  store ptr %59, ptr %pTab48, align 8
  %61 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %61, i32 0, i32 9
  %isRecursive = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isRecursive, align 1
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, 32
  store i8 %bf.set, ptr %isRecursive, align 1
  %62 = load ptr, ptr %pTab, align 8
  %nTabRef49 = getelementptr inbounds nuw %struct.Table, ptr %62, i32 0, i32 8
  %63 = load i32, ptr %nTabRef49, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %nTabRef49, align 4
  %64 = load ptr, ptr %pSel, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 3
  %65 = load i32, ptr %selFlags, align 4
  %or50 = or i32 %65, 8192
  store i32 %or50, ptr %selFlags, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %land.lhs.true41, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %66 = load i32, ptr %i, align 4
  %inc52 = add nsw i32 %66, 1
  store i32 %inc52, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end53

if.end53:                                         ; preds = %for.end, %lor.end
  %67 = load ptr, ptr %pTab, align 8
  %nTabRef54 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 8
  %68 = load i32, ptr %nTabRef54, align 4
  %cmp55 = icmp ugt i32 %68, 2
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  %69 = load ptr, ptr %pParse, align 8
  %70 = load ptr, ptr %pCte, align 8
  %zName58 = getelementptr inbounds nuw %struct.Cte, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %zName58, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %69, ptr noundef @.str.645, ptr noundef %71)
  store i32 1, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end53
  %72 = load ptr, ptr %pCte, align 8
  %zCteErr60 = getelementptr inbounds nuw %struct.Cte, ptr %72, i32 0, i32 3
  store ptr @.str.646, ptr %zCteErr60, align 8
  %73 = load ptr, ptr %pParse, align 8
  %pWith61 = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 66
  %74 = load ptr, ptr %pWith61, align 8
  store ptr %74, ptr %pSavedWith, align 8
  %75 = load ptr, ptr %pWith, align 8
  %76 = load ptr, ptr %pParse, align 8
  %pWith62 = getelementptr inbounds nuw %struct.Parse, ptr %76, i32 0, i32 66
  store ptr %75, ptr %pWith62, align 8
  %77 = load i32, ptr %bMayRecursive, align 4
  %tobool63 = icmp ne i32 %77, 0
  br i1 %tobool63, label %if.then64, label %if.else

if.then64:                                        ; preds = %if.end59
  %78 = load ptr, ptr %pSel, align 8
  %pPrior65 = getelementptr inbounds nuw %struct.Select, ptr %78, i32 0, i32 13
  %79 = load ptr, ptr %pPrior65, align 8
  store ptr %79, ptr %pPrior, align 8
  %80 = load ptr, ptr %pSel, align 8
  %pWith66 = getelementptr inbounds nuw %struct.Select, ptr %80, i32 0, i32 16
  %81 = load ptr, ptr %pWith66, align 8
  %82 = load ptr, ptr %pPrior, align 8
  %pWith67 = getelementptr inbounds nuw %struct.Select, ptr %82, i32 0, i32 16
  store ptr %81, ptr %pWith67, align 8
  %83 = load ptr, ptr %pWalker.addr, align 8
  %84 = load ptr, ptr %pPrior, align 8
  %call68 = call i32 @sqlite3WalkSelect(ptr noundef %83, ptr noundef %84)
  %85 = load ptr, ptr %pPrior, align 8
  %pWith69 = getelementptr inbounds nuw %struct.Select, ptr %85, i32 0, i32 16
  store ptr null, ptr %pWith69, align 8
  br label %if.end71

if.else:                                          ; preds = %if.end59
  %86 = load ptr, ptr %pWalker.addr, align 8
  %87 = load ptr, ptr %pSel, align 8
  %call70 = call i32 @sqlite3WalkSelect(ptr noundef %86, ptr noundef %87)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then64
  %88 = load ptr, ptr %pWith, align 8
  %89 = load ptr, ptr %pParse, align 8
  %pWith72 = getelementptr inbounds nuw %struct.Parse, ptr %89, i32 0, i32 66
  store ptr %88, ptr %pWith72, align 8
  %90 = load ptr, ptr %pSel, align 8
  store ptr %90, ptr %pLeft, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc77, %if.end71
  %91 = load ptr, ptr %pLeft, align 8
  %pPrior74 = getelementptr inbounds nuw %struct.Select, ptr %91, i32 0, i32 13
  %92 = load ptr, ptr %pPrior74, align 8
  %tobool75 = icmp ne ptr %92, null
  br i1 %tobool75, label %for.body76, label %for.end79

for.body76:                                       ; preds = %for.cond73
  br label %for.inc77

for.inc77:                                        ; preds = %for.body76
  %93 = load ptr, ptr %pLeft, align 8
  %pPrior78 = getelementptr inbounds nuw %struct.Select, ptr %93, i32 0, i32 13
  %94 = load ptr, ptr %pPrior78, align 8
  store ptr %94, ptr %pLeft, align 8
  br label %for.cond73, !llvm.loop !8

for.end79:                                        ; preds = %for.cond73
  %95 = load ptr, ptr %pLeft, align 8
  %pEList80 = getelementptr inbounds nuw %struct.Select, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %pEList80, align 8
  store ptr %96, ptr %pEList, align 8
  %97 = load ptr, ptr %pCte, align 8
  %pCols = getelementptr inbounds nuw %struct.Cte, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %pCols, align 8
  %tobool81 = icmp ne ptr %98, null
  br i1 %tobool81, label %if.then82, label %if.end97

if.then82:                                        ; preds = %for.end79
  %99 = load ptr, ptr %pEList, align 8
  %tobool83 = icmp ne ptr %99, null
  br i1 %tobool83, label %land.lhs.true84, label %if.end95

land.lhs.true84:                                  ; preds = %if.then82
  %100 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %100, i32 0, i32 0
  %101 = load i32, ptr %nExpr, align 8
  %102 = load ptr, ptr %pCte, align 8
  %pCols85 = getelementptr inbounds nuw %struct.Cte, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %pCols85, align 8
  %nExpr86 = getelementptr inbounds nuw %struct.ExprList, ptr %103, i32 0, i32 0
  %104 = load i32, ptr %nExpr86, align 8
  %cmp87 = icmp ne i32 %101, %104
  br i1 %cmp87, label %if.then89, label %if.end95

if.then89:                                        ; preds = %land.lhs.true84
  %105 = load ptr, ptr %pParse, align 8
  %106 = load ptr, ptr %pCte, align 8
  %zName90 = getelementptr inbounds nuw %struct.Cte, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %zName90, align 8
  %108 = load ptr, ptr %pEList, align 8
  %nExpr91 = getelementptr inbounds nuw %struct.ExprList, ptr %108, i32 0, i32 0
  %109 = load i32, ptr %nExpr91, align 8
  %110 = load ptr, ptr %pCte, align 8
  %pCols92 = getelementptr inbounds nuw %struct.Cte, ptr %110, i32 0, i32 1
  %111 = load ptr, ptr %pCols92, align 8
  %nExpr93 = getelementptr inbounds nuw %struct.ExprList, ptr %111, i32 0, i32 0
  %112 = load i32, ptr %nExpr93, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %105, ptr noundef @.str.647, ptr noundef %107, i32 noundef %109, i32 noundef %112)
  %113 = load ptr, ptr %pSavedWith, align 8
  %114 = load ptr, ptr %pParse, align 8
  %pWith94 = getelementptr inbounds nuw %struct.Parse, ptr %114, i32 0, i32 66
  store ptr %113, ptr %pWith94, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %land.lhs.true84, %if.then82
  %115 = load ptr, ptr %pCte, align 8
  %pCols96 = getelementptr inbounds nuw %struct.Cte, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %pCols96, align 8
  store ptr %116, ptr %pEList, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end95, %for.end79
  %117 = load ptr, ptr %pParse, align 8
  %118 = load ptr, ptr %pEList, align 8
  %119 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %119, i32 0, i32 11
  %120 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %120, i32 0, i32 1
  %call98 = call i32 @sqlite3ColumnsFromExprList(ptr noundef %117, ptr noundef %118, ptr noundef %nCol, ptr noundef %aCol)
  %121 = load i32, ptr %bMayRecursive, align 4
  %tobool99 = icmp ne i32 %121, 0
  br i1 %tobool99, label %if.then100, label %if.end109

if.then100:                                       ; preds = %if.end97
  %122 = load ptr, ptr %pSel, align 8
  %selFlags101 = getelementptr inbounds nuw %struct.Select, ptr %122, i32 0, i32 3
  %123 = load i32, ptr %selFlags101, align 4
  %and = and i32 %123, 8192
  %tobool102 = icmp ne i32 %and, 0
  br i1 %tobool102, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.then100
  %124 = load ptr, ptr %pCte, align 8
  %zCteErr104 = getelementptr inbounds nuw %struct.Cte, ptr %124, i32 0, i32 3
  store ptr @.str.648, ptr %zCteErr104, align 8
  br label %if.end107

if.else105:                                       ; preds = %if.then100
  %125 = load ptr, ptr %pCte, align 8
  %zCteErr106 = getelementptr inbounds nuw %struct.Cte, ptr %125, i32 0, i32 3
  store ptr @.str.649, ptr %zCteErr106, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else105, %if.then103
  %126 = load ptr, ptr %pWalker.addr, align 8
  %127 = load ptr, ptr %pSel, align 8
  %call108 = call i32 @sqlite3WalkSelect(ptr noundef %126, ptr noundef %127)
  br label %if.end109

if.end109:                                        ; preds = %if.end107, %if.end97
  %128 = load ptr, ptr %pCte, align 8
  %zCteErr110 = getelementptr inbounds nuw %struct.Cte, ptr %128, i32 0, i32 3
  store ptr null, ptr %zCteErr110, align 8
  %129 = load ptr, ptr %pSavedWith, align 8
  %130 = load ptr, ptr %pParse, align 8
  %pWith111 = getelementptr inbounds nuw %struct.Parse, ptr %130, i32 0, i32 66
  store ptr %129, ptr %pWith111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end109, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end112, %if.then89, %if.then57, %if.then21, %if.then13, %if.then9, %if.then5
  %131 = load i32, ptr %retval, align 4
  ret i32 %131
}

; Function Attrs: nounwind uwtable
declare hidden i32 @cannotBeFunction(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @searchWith(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ColumnsFromExprList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
