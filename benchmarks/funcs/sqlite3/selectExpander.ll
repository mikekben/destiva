; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.638 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.639 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.640 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.641 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.642 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.643 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.644 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetName(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WithPush(ptr noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TokenInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MatchSpanName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @selectExpander(ptr noundef %pWalker, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pTabList = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pE = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  %selFlags = alloca i16, align 2
  %elistFlags = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  %nCol = alloca i16, align 2
  %eCodeOrig = alloca i8, align 1
  %a132 = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %flags135 = alloca i32, align 4
  %longNames = alloca i32, align 4
  %tableSeen = alloca i32, align 4
  %zTName = alloca ptr, align 8
  %pTab217 = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %zTabName = alloca ptr, align 8
  %zSchemaName = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %zName256 = alloca ptr, align 8
  %zColname = alloca ptr, align 8
  %zToFree = alloca ptr, align 8
  %sColname = alloca %struct.Token, align 8
  %pLeft317 = alloca ptr, align 8
  %pX = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %selFlags3 = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %selFlags3, align 4
  %conv = trunc i32 %5 to i16
  store i16 %conv, ptr %selFlags, align 2
  store i32 0, ptr %elistFlags, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %selFlags4 = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %selFlags4, align 4
  %or = or i32 %7, 64
  store i32 %or, ptr %selFlags4, align 4
  %8 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 19
  %9 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i16, ptr %selFlags, align 2
  %conv5 = zext i16 %10 to i32
  %and = and i32 %conv5, 64
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %11, i32 0, i32 5
  %12 = load i8, ptr %eCode, align 4
  %tobool9 = icmp ne i8 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %13 = load ptr, ptr %pParse, align 8
  %nSelect = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 31
  %14 = load i32, ptr %nSelect, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nSelect, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %15, i32 0, i32 6
  store i32 %inc, ptr %selId, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %16 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %pSrc, align 8
  store ptr %17, ptr %pTabList, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %pEList12 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pEList12, align 8
  store ptr %19, ptr %pEList, align 8
  %20 = load ptr, ptr %pParse, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %21, i32 0, i32 16
  %22 = load ptr, ptr %pWith, align 8
  call void @sqlite3WithPush(ptr noundef %20, ptr noundef %22, i8 noundef zeroext 0)
  %23 = load ptr, ptr %pParse, align 8
  %24 = load ptr, ptr %pTabList, align 8
  call void @sqlite3SrcListAssignCursors(ptr noundef %23, ptr noundef %24)
  store i32 0, ptr %i, align 4
  %25 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pFrom, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %26 = load i32, ptr %i, align 4
  %27 = load ptr, ptr %pTabList, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %nSrc, align 8
  %cmp13 = icmp slt i32 %26, %28
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pFrom, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 9
  %isRecursive = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isRecursive, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool15 = icmp ne i32 %bf.cast, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.body
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %30 = load ptr, ptr %pWalker.addr, align 8
  %31 = load ptr, ptr %pFrom, align 8
  %call = call i32 @withExpand(ptr noundef %30, ptr noundef %31)
  %tobool18 = icmp ne i32 %call, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 2, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %32 = load ptr, ptr %pFrom, align 8
  %pTab21 = getelementptr inbounds nuw %struct.SrcList_item, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %pTab21, align 8
  %tobool22 = icmp ne ptr %33, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end20
  br label %if.end86

if.else:                                          ; preds = %if.end20
  %34 = load ptr, ptr %pFrom, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %34, i32 0, i32 2
  %35 = load ptr, ptr %zName, align 8
  %cmp24 = icmp eq ptr %35, null
  br i1 %cmp24, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.else
  %36 = load ptr, ptr %pFrom, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %36, i32 0, i32 5
  %37 = load ptr, ptr %pSelect, align 8
  store ptr %37, ptr %pSel, align 8
  %38 = load ptr, ptr %pWalker.addr, align 8
  %39 = load ptr, ptr %pSel, align 8
  %call27 = call i32 @sqlite3WalkSelect(ptr noundef %38, ptr noundef %39)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  store i32 2, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then26
  %40 = load ptr, ptr %pParse, align 8
  %41 = load ptr, ptr %pFrom, align 8
  %call31 = call i32 @sqlite3ExpandSubquery(ptr noundef %40, ptr noundef %41)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store i32 2, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end30
  br label %if.end85

if.else35:                                        ; preds = %if.else
  %42 = load ptr, ptr %pParse, align 8
  %43 = load ptr, ptr %pFrom, align 8
  %call36 = call ptr @sqlite3LocateTableItem(ptr noundef %42, i32 noundef 0, ptr noundef %43)
  store ptr %call36, ptr %pTab, align 8
  %44 = load ptr, ptr %pFrom, align 8
  %pTab37 = getelementptr inbounds nuw %struct.SrcList_item, ptr %44, i32 0, i32 4
  store ptr %call36, ptr %pTab37, align 8
  %45 = load ptr, ptr %pTab, align 8
  %cmp38 = icmp eq ptr %45, null
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else35
  store i32 2, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.else35
  %46 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %46, i32 0, i32 8
  %47 = load i32, ptr %nTabRef, align 4
  %cmp42 = icmp uge i32 %47, 65535
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.end41
  %48 = load ptr, ptr %pParse, align 8
  %49 = load ptr, ptr %pTab, align 8
  %zName45 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %zName45, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %48, ptr noundef @.str.638, ptr noundef %50)
  %51 = load ptr, ptr %pFrom, align 8
  %pTab46 = getelementptr inbounds nuw %struct.SrcList_item, ptr %51, i32 0, i32 4
  store ptr null, ptr %pTab46, align 8
  store i32 2, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end41
  %52 = load ptr, ptr %pTab, align 8
  %nTabRef48 = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 8
  %53 = load i32, ptr %nTabRef48, align 4
  %inc49 = add i32 %53, 1
  store i32 %inc49, ptr %nTabRef48, align 4
  %54 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 16
  %55 = load i32, ptr %nModuleArg, align 4
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.end54, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end47
  %56 = load ptr, ptr %pParse, align 8
  %57 = load ptr, ptr %pFrom, align 8
  %call51 = call i32 @cannotBeFunction(ptr noundef %56, ptr noundef %57)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %land.lhs.true, %if.end47
  %58 = load ptr, ptr %pTab, align 8
  %nModuleArg55 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 16
  %59 = load i32, ptr %nModuleArg55, align 4
  %tobool56 = icmp ne i32 %59, 0
  br i1 %tobool56, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end54
  %60 = load ptr, ptr %pTab, align 8
  %pSelect57 = getelementptr inbounds nuw %struct.Table, ptr %60, i32 0, i32 3
  %61 = load ptr, ptr %pSelect57, align 8
  %tobool58 = icmp ne ptr %61, null
  br i1 %tobool58, label %if.then59, label %if.end84

if.then59:                                        ; preds = %lor.lhs.false, %if.end54
  %62 = load ptr, ptr %pWalker.addr, align 8
  %eCode60 = getelementptr inbounds nuw %struct.Walker, ptr %62, i32 0, i32 5
  %63 = load i8, ptr %eCode60, align 4
  store i8 %63, ptr %eCodeOrig, align 1
  %64 = load ptr, ptr %pParse, align 8
  %65 = load ptr, ptr %pTab, align 8
  %call61 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %64, ptr noundef %65)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.then59
  store i32 2, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.then59
  %66 = load ptr, ptr %pTab, align 8
  %pSelect65 = getelementptr inbounds nuw %struct.Table, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %pSelect65, align 8
  %tobool66 = icmp ne ptr %67, null
  br i1 %tobool66, label %land.lhs.true67, label %if.end73

land.lhs.true67:                                  ; preds = %if.end64
  %68 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %68, i32 0, i32 7
  %69 = load i64, ptr %flags, align 8
  %and68 = and i64 %69, 2147483648
  %cmp69 = icmp eq i64 %and68, 0
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true67
  %70 = load ptr, ptr %pParse, align 8
  %71 = load ptr, ptr %pTab, align 8
  %zName72 = getelementptr inbounds nuw %struct.Table, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %zName72, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %70, ptr noundef @.str.639, ptr noundef %72)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true67, %if.end64
  %73 = load ptr, ptr %db, align 8
  %74 = load ptr, ptr %pTab, align 8
  %pSelect74 = getelementptr inbounds nuw %struct.Table, ptr %74, i32 0, i32 3
  %75 = load ptr, ptr %pSelect74, align 8
  %call75 = call ptr @sqlite3SelectDup(ptr noundef %73, ptr noundef %75, i32 noundef 0)
  %76 = load ptr, ptr %pFrom, align 8
  %pSelect76 = getelementptr inbounds nuw %struct.SrcList_item, ptr %76, i32 0, i32 5
  store ptr %call75, ptr %pSelect76, align 8
  %77 = load ptr, ptr %pTab, align 8
  %nCol77 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 11
  %78 = load i16, ptr %nCol77, align 2
  store i16 %78, ptr %nCol, align 2
  %79 = load ptr, ptr %pTab, align 8
  %nCol78 = getelementptr inbounds nuw %struct.Table, ptr %79, i32 0, i32 11
  store i16 -1, ptr %nCol78, align 2
  %80 = load ptr, ptr %pWalker.addr, align 8
  %eCode79 = getelementptr inbounds nuw %struct.Walker, ptr %80, i32 0, i32 5
  store i8 1, ptr %eCode79, align 4
  %81 = load ptr, ptr %pWalker.addr, align 8
  %82 = load ptr, ptr %pFrom, align 8
  %pSelect80 = getelementptr inbounds nuw %struct.SrcList_item, ptr %82, i32 0, i32 5
  %83 = load ptr, ptr %pSelect80, align 8
  %call81 = call i32 @sqlite3WalkSelect(ptr noundef %81, ptr noundef %83)
  %84 = load i8, ptr %eCodeOrig, align 1
  %85 = load ptr, ptr %pWalker.addr, align 8
  %eCode82 = getelementptr inbounds nuw %struct.Walker, ptr %85, i32 0, i32 5
  store i8 %84, ptr %eCode82, align 4
  %86 = load i16, ptr %nCol, align 2
  %87 = load ptr, ptr %pTab, align 8
  %nCol83 = getelementptr inbounds nuw %struct.Table, ptr %87, i32 0, i32 11
  store i16 %86, ptr %nCol83, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.end73, %lor.lhs.false
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end34
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then23
  %88 = load ptr, ptr %pParse, align 8
  %89 = load ptr, ptr %pFrom, align 8
  %call87 = call i32 @sqlite3IndexedByLookup(ptr noundef %88, ptr noundef %89)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end86
  store i32 2, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.end86
  br label %for.inc

for.inc:                                          ; preds = %if.end90, %if.then16
  %90 = load i32, ptr %i, align 4
  %inc91 = add nsw i32 %90, 1
  store i32 %inc91, ptr %i, align 4
  %91 = load ptr, ptr %pFrom, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %91, i32 1
  store ptr %incdec.ptr, ptr %pFrom, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %92 = load ptr, ptr %db, align 8
  %mallocFailed92 = getelementptr inbounds nuw %struct.sqlite3, ptr %92, i32 0, i32 19
  %93 = load i8, ptr %mallocFailed92, align 1
  %conv93 = zext i8 %93 to i32
  %tobool94 = icmp ne i32 %conv93, 0
  br i1 %tobool94, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %for.end
  %94 = load ptr, ptr %pParse, align 8
  %95 = load ptr, ptr %p.addr, align 8
  %call96 = call i32 @sqliteProcessJoin(ptr noundef %94, ptr noundef %95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then98, label %if.end99

if.then98:                                        ; preds = %lor.lhs.false95, %for.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %lor.lhs.false95
  store i32 0, ptr %k, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc125, %if.end99
  %96 = load i32, ptr %k, align 4
  %97 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %97, i32 0, i32 0
  %98 = load i32, ptr %nExpr, align 8
  %cmp101 = icmp slt i32 %96, %98
  br i1 %cmp101, label %for.body103, label %for.end127

for.body103:                                      ; preds = %for.cond100
  %99 = load ptr, ptr %pEList, align 8
  %a104 = getelementptr inbounds nuw %struct.ExprList, ptr %99, i32 0, i32 1
  %100 = load i32, ptr %k, align 4
  %idxprom = sext i32 %100 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a104, i64 0, i64 %idxprom
  %pExpr105 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %101 = load ptr, ptr %pExpr105, align 8
  store ptr %101, ptr %pE, align 8
  %102 = load ptr, ptr %pE, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %102, i32 0, i32 0
  %103 = load i8, ptr %op, align 8
  %conv106 = zext i8 %103 to i32
  %cmp107 = icmp eq i32 %conv106, 175
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.body103
  br label %for.end127

if.end110:                                        ; preds = %for.body103
  %104 = load ptr, ptr %pE, align 8
  %op111 = getelementptr inbounds nuw %struct.Expr, ptr %104, i32 0, i32 0
  %105 = load i8, ptr %op111, align 8
  %conv112 = zext i8 %105 to i32
  %cmp113 = icmp eq i32 %conv112, 137
  br i1 %cmp113, label %land.lhs.true115, label %if.end122

land.lhs.true115:                                 ; preds = %if.end110
  %106 = load ptr, ptr %pE, align 8
  %pRight116 = getelementptr inbounds nuw %struct.Expr, ptr %106, i32 0, i32 5
  %107 = load ptr, ptr %pRight116, align 8
  %op117 = getelementptr inbounds nuw %struct.Expr, ptr %107, i32 0, i32 0
  %108 = load i8, ptr %op117, align 8
  %conv118 = zext i8 %108 to i32
  %cmp119 = icmp eq i32 %conv118, 175
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %land.lhs.true115
  br label %for.end127

if.end122:                                        ; preds = %land.lhs.true115, %if.end110
  %109 = load ptr, ptr %pE, align 8
  %flags123 = getelementptr inbounds nuw %struct.Expr, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %flags123, align 4
  %111 = load i32, ptr %elistFlags, align 4
  %or124 = or i32 %111, %110
  store i32 %or124, ptr %elistFlags, align 4
  br label %for.inc125

for.inc125:                                       ; preds = %if.end122
  %112 = load i32, ptr %k, align 4
  %inc126 = add nsw i32 %112, 1
  store i32 %inc126, ptr %k, align 4
  br label %for.cond100, !llvm.loop !8

for.end127:                                       ; preds = %if.then121, %if.then109, %for.cond100
  %113 = load i32, ptr %k, align 4
  %114 = load ptr, ptr %pEList, align 8
  %nExpr128 = getelementptr inbounds nuw %struct.ExprList, ptr %114, i32 0, i32 0
  %115 = load i32, ptr %nExpr128, align 8
  %cmp129 = icmp slt i32 %113, %115
  br i1 %cmp129, label %if.then131, label %if.end379

if.then131:                                       ; preds = %for.end127
  %116 = load ptr, ptr %pEList, align 8
  %a133 = getelementptr inbounds nuw %struct.ExprList, ptr %116, i32 0, i32 1
  %arraydecay134 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a133, i64 0, i64 0
  store ptr %arraydecay134, ptr %a132, align 8
  store ptr null, ptr %pNew, align 8
  %117 = load ptr, ptr %pParse, align 8
  %db136 = getelementptr inbounds nuw %struct.Parse, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %db136, align 8
  %flags137 = getelementptr inbounds nuw %struct.sqlite3, ptr %118, i32 0, i32 7
  %119 = load i64, ptr %flags137, align 8
  %conv138 = trunc i64 %119 to i32
  store i32 %conv138, ptr %flags135, align 4
  %120 = load i32, ptr %flags135, align 4
  %and139 = and i32 %120, 4
  %cmp140 = icmp ne i32 %and139, 0
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then131
  %121 = load i32, ptr %flags135, align 4
  %and142 = and i32 %121, 64
  %cmp143 = icmp eq i32 %and142, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then131
  %122 = phi i1 [ false, %if.then131 ], [ %cmp143, %land.rhs ]
  %land.ext = zext i1 %122 to i32
  store i32 %land.ext, ptr %longNames, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond145

for.cond145:                                      ; preds = %for.inc375, %land.end
  %123 = load i32, ptr %k, align 4
  %124 = load ptr, ptr %pEList, align 8
  %nExpr146 = getelementptr inbounds nuw %struct.ExprList, ptr %124, i32 0, i32 0
  %125 = load i32, ptr %nExpr146, align 8
  %cmp147 = icmp slt i32 %123, %125
  br i1 %cmp147, label %for.body149, label %for.end377

for.body149:                                      ; preds = %for.cond145
  %126 = load ptr, ptr %a132, align 8
  %127 = load i32, ptr %k, align 4
  %idxprom150 = sext i32 %127 to i64
  %arrayidx151 = getelementptr inbounds %struct.ExprList_item, ptr %126, i64 %idxprom150
  %pExpr152 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx151, i32 0, i32 0
  %128 = load ptr, ptr %pExpr152, align 8
  store ptr %128, ptr %pE, align 8
  %129 = load ptr, ptr %pE, align 8
  %flags153 = getelementptr inbounds nuw %struct.Expr, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %flags153, align 4
  %131 = load i32, ptr %elistFlags, align 4
  %or154 = or i32 %131, %130
  store i32 %or154, ptr %elistFlags, align 4
  %132 = load ptr, ptr %pE, align 8
  %pRight155 = getelementptr inbounds nuw %struct.Expr, ptr %132, i32 0, i32 5
  %133 = load ptr, ptr %pRight155, align 8
  store ptr %133, ptr %pRight, align 8
  %134 = load ptr, ptr %pE, align 8
  %op156 = getelementptr inbounds nuw %struct.Expr, ptr %134, i32 0, i32 0
  %135 = load i8, ptr %op156, align 8
  %conv157 = zext i8 %135 to i32
  %cmp158 = icmp ne i32 %conv157, 175
  br i1 %cmp158, label %land.lhs.true160, label %if.else203

land.lhs.true160:                                 ; preds = %for.body149
  %136 = load ptr, ptr %pE, align 8
  %op161 = getelementptr inbounds nuw %struct.Expr, ptr %136, i32 0, i32 0
  %137 = load i8, ptr %op161, align 8
  %conv162 = zext i8 %137 to i32
  %cmp163 = icmp ne i32 %conv162, 137
  br i1 %cmp163, label %if.then170, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %land.lhs.true160
  %138 = load ptr, ptr %pRight, align 8
  %op166 = getelementptr inbounds nuw %struct.Expr, ptr %138, i32 0, i32 0
  %139 = load i8, ptr %op166, align 8
  %conv167 = zext i8 %139 to i32
  %cmp168 = icmp ne i32 %conv167, 175
  br i1 %cmp168, label %if.then170, label %if.else203

if.then170:                                       ; preds = %lor.lhs.false165, %land.lhs.true160
  %140 = load ptr, ptr %pParse, align 8
  %141 = load ptr, ptr %pNew, align 8
  %142 = load ptr, ptr %a132, align 8
  %143 = load i32, ptr %k, align 4
  %idxprom171 = sext i32 %143 to i64
  %arrayidx172 = getelementptr inbounds %struct.ExprList_item, ptr %142, i64 %idxprom171
  %pExpr173 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx172, i32 0, i32 0
  %144 = load ptr, ptr %pExpr173, align 8
  %call174 = call ptr @sqlite3ExprListAppend(ptr noundef %140, ptr noundef %141, ptr noundef %144)
  store ptr %call174, ptr %pNew, align 8
  %145 = load ptr, ptr %pNew, align 8
  %tobool175 = icmp ne ptr %145, null
  br i1 %tobool175, label %if.then176, label %if.end199

if.then176:                                       ; preds = %if.then170
  %146 = load ptr, ptr %a132, align 8
  %147 = load i32, ptr %k, align 4
  %idxprom177 = sext i32 %147 to i64
  %arrayidx178 = getelementptr inbounds %struct.ExprList_item, ptr %146, i64 %idxprom177
  %zName179 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx178, i32 0, i32 1
  %148 = load ptr, ptr %zName179, align 8
  %149 = load ptr, ptr %pNew, align 8
  %a180 = getelementptr inbounds nuw %struct.ExprList, ptr %149, i32 0, i32 1
  %150 = load ptr, ptr %pNew, align 8
  %nExpr181 = getelementptr inbounds nuw %struct.ExprList, ptr %150, i32 0, i32 0
  %151 = load i32, ptr %nExpr181, align 8
  %sub = sub nsw i32 %151, 1
  %idxprom182 = sext i32 %sub to i64
  %arrayidx183 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a180, i64 0, i64 %idxprom182
  %zName184 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx183, i32 0, i32 1
  store ptr %148, ptr %zName184, align 8
  %152 = load ptr, ptr %a132, align 8
  %153 = load i32, ptr %k, align 4
  %idxprom185 = sext i32 %153 to i64
  %arrayidx186 = getelementptr inbounds %struct.ExprList_item, ptr %152, i64 %idxprom185
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx186, i32 0, i32 2
  %154 = load ptr, ptr %zSpan, align 8
  %155 = load ptr, ptr %pNew, align 8
  %a187 = getelementptr inbounds nuw %struct.ExprList, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %pNew, align 8
  %nExpr188 = getelementptr inbounds nuw %struct.ExprList, ptr %156, i32 0, i32 0
  %157 = load i32, ptr %nExpr188, align 8
  %sub189 = sub nsw i32 %157, 1
  %idxprom190 = sext i32 %sub189 to i64
  %arrayidx191 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a187, i64 0, i64 %idxprom190
  %zSpan192 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx191, i32 0, i32 2
  store ptr %154, ptr %zSpan192, align 8
  %158 = load ptr, ptr %a132, align 8
  %159 = load i32, ptr %k, align 4
  %idxprom193 = sext i32 %159 to i64
  %arrayidx194 = getelementptr inbounds %struct.ExprList_item, ptr %158, i64 %idxprom193
  %zName195 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx194, i32 0, i32 1
  store ptr null, ptr %zName195, align 8
  %160 = load ptr, ptr %a132, align 8
  %161 = load i32, ptr %k, align 4
  %idxprom196 = sext i32 %161 to i64
  %arrayidx197 = getelementptr inbounds %struct.ExprList_item, ptr %160, i64 %idxprom196
  %zSpan198 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx197, i32 0, i32 2
  store ptr null, ptr %zSpan198, align 8
  br label %if.end199

if.end199:                                        ; preds = %if.then176, %if.then170
  %162 = load ptr, ptr %a132, align 8
  %163 = load i32, ptr %k, align 4
  %idxprom200 = sext i32 %163 to i64
  %arrayidx201 = getelementptr inbounds %struct.ExprList_item, ptr %162, i64 %idxprom200
  %pExpr202 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx201, i32 0, i32 0
  store ptr null, ptr %pExpr202, align 8
  br label %if.end374

if.else203:                                       ; preds = %lor.lhs.false165, %for.body149
  store i32 0, ptr %tableSeen, align 4
  store ptr null, ptr %zTName, align 8
  %164 = load ptr, ptr %pE, align 8
  %op204 = getelementptr inbounds nuw %struct.Expr, ptr %164, i32 0, i32 0
  %165 = load i8, ptr %op204, align 8
  %conv205 = zext i8 %165 to i32
  %cmp206 = icmp eq i32 %conv205, 137
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %if.else203
  %166 = load ptr, ptr %pE, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %pLeft, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %167, i32 0, i32 3
  %168 = load ptr, ptr %u, align 8
  store ptr %168, ptr %zTName, align 8
  br label %if.end209

if.end209:                                        ; preds = %if.then208, %if.else203
  store i32 0, ptr %i, align 4
  %169 = load ptr, ptr %pTabList, align 8
  %a210 = getelementptr inbounds nuw %struct.SrcList, ptr %169, i32 0, i32 2
  %arraydecay211 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a210, i64 0, i64 0
  store ptr %arraydecay211, ptr %pFrom, align 8
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc363, %if.end209
  %170 = load i32, ptr %i, align 4
  %171 = load ptr, ptr %pTabList, align 8
  %nSrc213 = getelementptr inbounds nuw %struct.SrcList, ptr %171, i32 0, i32 0
  %172 = load i32, ptr %nSrc213, align 8
  %cmp214 = icmp slt i32 %170, %172
  br i1 %cmp214, label %for.body216, label %for.end366

for.body216:                                      ; preds = %for.cond212
  %173 = load ptr, ptr %pFrom, align 8
  %pTab218 = getelementptr inbounds nuw %struct.SrcList_item, ptr %173, i32 0, i32 4
  %174 = load ptr, ptr %pTab218, align 8
  store ptr %174, ptr %pTab217, align 8
  %175 = load ptr, ptr %pFrom, align 8
  %pSelect219 = getelementptr inbounds nuw %struct.SrcList_item, ptr %175, i32 0, i32 5
  %176 = load ptr, ptr %pSelect219, align 8
  store ptr %176, ptr %pSub, align 8
  %177 = load ptr, ptr %pFrom, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %177, i32 0, i32 3
  %178 = load ptr, ptr %zAlias, align 8
  store ptr %178, ptr %zTabName, align 8
  store ptr null, ptr %zSchemaName, align 8
  %179 = load ptr, ptr %zTabName, align 8
  %cmp220 = icmp eq ptr %179, null
  br i1 %cmp220, label %if.then222, label %if.end224

if.then222:                                       ; preds = %for.body216
  %180 = load ptr, ptr %pTab217, align 8
  %zName223 = getelementptr inbounds nuw %struct.Table, ptr %180, i32 0, i32 0
  %181 = load ptr, ptr %zName223, align 8
  store ptr %181, ptr %zTabName, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %for.body216
  %182 = load ptr, ptr %db, align 8
  %mallocFailed225 = getelementptr inbounds nuw %struct.sqlite3, ptr %182, i32 0, i32 19
  %183 = load i8, ptr %mallocFailed225, align 1
  %tobool226 = icmp ne i8 %183, 0
  br i1 %tobool226, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end224
  br label %for.end366

if.end228:                                        ; preds = %if.end224
  %184 = load ptr, ptr %pSub, align 8
  %cmp229 = icmp eq ptr %184, null
  br i1 %cmp229, label %if.then236, label %lor.lhs.false231

lor.lhs.false231:                                 ; preds = %if.end228
  %185 = load ptr, ptr %pSub, align 8
  %selFlags232 = getelementptr inbounds nuw %struct.Select, ptr %185, i32 0, i32 3
  %186 = load i32, ptr %selFlags232, align 4
  %and233 = and i32 %186, 2048
  %cmp234 = icmp eq i32 %and233, 0
  br i1 %cmp234, label %if.then236, label %if.end249

if.then236:                                       ; preds = %lor.lhs.false231, %if.end228
  store ptr null, ptr %pSub, align 8
  %187 = load ptr, ptr %zTName, align 8
  %tobool237 = icmp ne ptr %187, null
  br i1 %tobool237, label %land.lhs.true238, label %if.end243

land.lhs.true238:                                 ; preds = %if.then236
  %188 = load ptr, ptr %zTName, align 8
  %189 = load ptr, ptr %zTabName, align 8
  %call239 = call i32 @sqlite3StrICmp(ptr noundef %188, ptr noundef %189)
  %cmp240 = icmp ne i32 %call239, 0
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %land.lhs.true238
  br label %for.inc363

if.end243:                                        ; preds = %land.lhs.true238, %if.then236
  %190 = load ptr, ptr %db, align 8
  %191 = load ptr, ptr %pTab217, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %191, i32 0, i32 20
  %192 = load ptr, ptr %pSchema, align 8
  %call244 = call i32 @sqlite3SchemaToIndex(ptr noundef %190, ptr noundef %192)
  store i32 %call244, ptr %iDb, align 4
  %193 = load i32, ptr %iDb, align 4
  %cmp245 = icmp sge i32 %193, 0
  br i1 %cmp245, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end243
  %194 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %194, i32 0, i32 4
  %195 = load ptr, ptr %aDb, align 8
  %196 = load i32, ptr %iDb, align 4
  %idxprom247 = sext i32 %196 to i64
  %arrayidx248 = getelementptr inbounds %struct.Db, ptr %195, i64 %idxprom247
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx248, i32 0, i32 0
  %197 = load ptr, ptr %zDbSName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end243
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %197, %cond.true ], [ @.str.640, %cond.false ]
  store ptr %cond, ptr %zSchemaName, align 8
  br label %if.end249

if.end249:                                        ; preds = %cond.end, %lor.lhs.false231
  store i32 0, ptr %j, align 4
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc360, %if.end249
  %198 = load i32, ptr %j, align 4
  %199 = load ptr, ptr %pTab217, align 8
  %nCol251 = getelementptr inbounds nuw %struct.Table, ptr %199, i32 0, i32 11
  %200 = load i16, ptr %nCol251, align 2
  %conv252 = sext i16 %200 to i32
  %cmp253 = icmp slt i32 %198, %conv252
  br i1 %cmp253, label %for.body255, label %for.end362

for.body255:                                      ; preds = %for.cond250
  %201 = load ptr, ptr %pTab217, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %201, i32 0, i32 1
  %202 = load ptr, ptr %aCol, align 8
  %203 = load i32, ptr %j, align 4
  %idxprom257 = sext i32 %203 to i64
  %arrayidx258 = getelementptr inbounds %struct.Column, ptr %202, i64 %idxprom257
  %zName259 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx258, i32 0, i32 0
  %204 = load ptr, ptr %zName259, align 8
  store ptr %204, ptr %zName256, align 8
  %205 = load ptr, ptr %zTName, align 8
  %tobool260 = icmp ne ptr %205, null
  br i1 %tobool260, label %land.lhs.true261, label %if.end273

land.lhs.true261:                                 ; preds = %for.body255
  %206 = load ptr, ptr %pSub, align 8
  %tobool262 = icmp ne ptr %206, null
  br i1 %tobool262, label %land.lhs.true263, label %if.end273

land.lhs.true263:                                 ; preds = %land.lhs.true261
  %207 = load ptr, ptr %pSub, align 8
  %pEList264 = getelementptr inbounds nuw %struct.Select, ptr %207, i32 0, i32 0
  %208 = load ptr, ptr %pEList264, align 8
  %a265 = getelementptr inbounds nuw %struct.ExprList, ptr %208, i32 0, i32 1
  %209 = load i32, ptr %j, align 4
  %idxprom266 = sext i32 %209 to i64
  %arrayidx267 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a265, i64 0, i64 %idxprom266
  %zSpan268 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx267, i32 0, i32 2
  %210 = load ptr, ptr %zSpan268, align 8
  %211 = load ptr, ptr %zTName, align 8
  %call269 = call i32 @sqlite3MatchSpanName(ptr noundef %210, ptr noundef null, ptr noundef %211, ptr noundef null)
  %cmp270 = icmp eq i32 %call269, 0
  br i1 %cmp270, label %if.then272, label %if.end273

if.then272:                                       ; preds = %land.lhs.true263
  br label %for.inc360

if.end273:                                        ; preds = %land.lhs.true263, %land.lhs.true261, %for.body255
  %212 = load ptr, ptr %p.addr, align 8
  %selFlags274 = getelementptr inbounds nuw %struct.Select, ptr %212, i32 0, i32 3
  %213 = load i32, ptr %selFlags274, align 4
  %and275 = and i32 %213, 131072
  %cmp276 = icmp eq i32 %and275, 0
  br i1 %cmp276, label %land.lhs.true278, label %if.end287

land.lhs.true278:                                 ; preds = %if.end273
  %214 = load ptr, ptr %pTab217, align 8
  %aCol279 = getelementptr inbounds nuw %struct.Table, ptr %214, i32 0, i32 1
  %215 = load ptr, ptr %aCol279, align 8
  %216 = load i32, ptr %j, align 4
  %idxprom280 = sext i32 %216 to i64
  %arrayidx281 = getelementptr inbounds %struct.Column, ptr %215, i64 %idxprom280
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx281, i32 0, i32 6
  %217 = load i8, ptr %colFlags, align 1
  %conv282 = zext i8 %217 to i32
  %and283 = and i32 %conv282, 2
  %cmp284 = icmp ne i32 %and283, 0
  br i1 %cmp284, label %if.then286, label %if.end287

if.then286:                                       ; preds = %land.lhs.true278
  br label %for.inc360

if.end287:                                        ; preds = %land.lhs.true278, %if.end273
  store i32 1, ptr %tableSeen, align 4
  %218 = load i32, ptr %i, align 4
  %cmp288 = icmp sgt i32 %218, 0
  br i1 %cmp288, label %land.lhs.true290, label %if.end309

land.lhs.true290:                                 ; preds = %if.end287
  %219 = load ptr, ptr %zTName, align 8
  %cmp291 = icmp eq ptr %219, null
  br i1 %cmp291, label %if.then293, label %if.end309

if.then293:                                       ; preds = %land.lhs.true290
  %220 = load ptr, ptr %pFrom, align 8
  %fg294 = getelementptr inbounds nuw %struct.SrcList_item, ptr %220, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg294, i32 0, i32 0
  %221 = load i8, ptr %jointype, align 4
  %conv295 = zext i8 %221 to i32
  %and296 = and i32 %conv295, 4
  %cmp297 = icmp ne i32 %and296, 0
  br i1 %cmp297, label %land.lhs.true299, label %if.end303

land.lhs.true299:                                 ; preds = %if.then293
  %222 = load ptr, ptr %pTabList, align 8
  %223 = load i32, ptr %i, align 4
  %224 = load ptr, ptr %zName256, align 8
  %call300 = call i32 @tableAndColumnIndex(ptr noundef %222, i32 noundef %223, ptr noundef %224, ptr noundef null, ptr noundef null)
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.then302, label %if.end303

if.then302:                                       ; preds = %land.lhs.true299
  br label %for.inc360

if.end303:                                        ; preds = %land.lhs.true299, %if.then293
  %225 = load ptr, ptr %pFrom, align 8
  %pUsing = getelementptr inbounds nuw %struct.SrcList_item, ptr %225, i32 0, i32 12
  %226 = load ptr, ptr %pUsing, align 8
  %227 = load ptr, ptr %zName256, align 8
  %call304 = call i32 @sqlite3IdListIndex(ptr noundef %226, ptr noundef %227)
  %cmp305 = icmp sge i32 %call304, 0
  br i1 %cmp305, label %if.then307, label %if.end308

if.then307:                                       ; preds = %if.end303
  br label %for.inc360

if.end308:                                        ; preds = %if.end303
  br label %if.end309

if.end309:                                        ; preds = %if.end308, %land.lhs.true290, %if.end287
  %228 = load ptr, ptr %db, align 8
  %229 = load ptr, ptr %zName256, align 8
  %call310 = call ptr @sqlite3Expr(ptr noundef %228, i32 noundef 59, ptr noundef %229)
  store ptr %call310, ptr %pRight, align 8
  %230 = load ptr, ptr %zName256, align 8
  store ptr %230, ptr %zColname, align 8
  store ptr null, ptr %zToFree, align 8
  %231 = load i32, ptr %longNames, align 4
  %tobool311 = icmp ne i32 %231, 0
  br i1 %tobool311, label %if.then316, label %lor.lhs.false312

lor.lhs.false312:                                 ; preds = %if.end309
  %232 = load ptr, ptr %pTabList, align 8
  %nSrc313 = getelementptr inbounds nuw %struct.SrcList, ptr %232, i32 0, i32 0
  %233 = load i32, ptr %nSrc313, align 8
  %cmp314 = icmp sgt i32 %233, 1
  br i1 %cmp314, label %if.then316, label %if.else329

if.then316:                                       ; preds = %lor.lhs.false312, %if.end309
  %234 = load ptr, ptr %db, align 8
  %235 = load ptr, ptr %zTabName, align 8
  %call318 = call ptr @sqlite3Expr(ptr noundef %234, i32 noundef 59, ptr noundef %235)
  store ptr %call318, ptr %pLeft317, align 8
  %236 = load ptr, ptr %pParse, align 8
  %237 = load ptr, ptr %pLeft317, align 8
  %238 = load ptr, ptr %pRight, align 8
  %call319 = call ptr @sqlite3PExpr(ptr noundef %236, i32 noundef 137, ptr noundef %237, ptr noundef %238)
  store ptr %call319, ptr %pExpr, align 8
  %239 = load ptr, ptr %zSchemaName, align 8
  %tobool320 = icmp ne ptr %239, null
  br i1 %tobool320, label %if.then321, label %if.end324

if.then321:                                       ; preds = %if.then316
  %240 = load ptr, ptr %db, align 8
  %241 = load ptr, ptr %zSchemaName, align 8
  %call322 = call ptr @sqlite3Expr(ptr noundef %240, i32 noundef 59, ptr noundef %241)
  store ptr %call322, ptr %pLeft317, align 8
  %242 = load ptr, ptr %pParse, align 8
  %243 = load ptr, ptr %pLeft317, align 8
  %244 = load ptr, ptr %pExpr, align 8
  %call323 = call ptr @sqlite3PExpr(ptr noundef %242, i32 noundef 137, ptr noundef %243, ptr noundef %244)
  store ptr %call323, ptr %pExpr, align 8
  br label %if.end324

if.end324:                                        ; preds = %if.then321, %if.then316
  %245 = load i32, ptr %longNames, align 4
  %tobool325 = icmp ne i32 %245, 0
  br i1 %tobool325, label %if.then326, label %if.end328

if.then326:                                       ; preds = %if.end324
  %246 = load ptr, ptr %db, align 8
  %247 = load ptr, ptr %zTabName, align 8
  %248 = load ptr, ptr %zName256, align 8
  %call327 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %246, ptr noundef @.str.530, ptr noundef %247, ptr noundef %248)
  store ptr %call327, ptr %zColname, align 8
  %249 = load ptr, ptr %zColname, align 8
  store ptr %249, ptr %zToFree, align 8
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %if.end324
  br label %if.end330

if.else329:                                       ; preds = %lor.lhs.false312
  %250 = load ptr, ptr %pRight, align 8
  store ptr %250, ptr %pExpr, align 8
  br label %if.end330

if.end330:                                        ; preds = %if.else329, %if.end328
  %251 = load ptr, ptr %pParse, align 8
  %252 = load ptr, ptr %pNew, align 8
  %253 = load ptr, ptr %pExpr, align 8
  %call331 = call ptr @sqlite3ExprListAppend(ptr noundef %251, ptr noundef %252, ptr noundef %253)
  store ptr %call331, ptr %pNew, align 8
  %254 = load ptr, ptr %zColname, align 8
  call void @sqlite3TokenInit(ptr noundef %sColname, ptr noundef %254)
  %255 = load ptr, ptr %pParse, align 8
  %256 = load ptr, ptr %pNew, align 8
  call void @sqlite3ExprListSetName(ptr noundef %255, ptr noundef %256, ptr noundef %sColname, i32 noundef 0)
  %257 = load ptr, ptr %pNew, align 8
  %tobool332 = icmp ne ptr %257, null
  br i1 %tobool332, label %land.lhs.true333, label %if.end359

land.lhs.true333:                                 ; preds = %if.end330
  %258 = load ptr, ptr %p.addr, align 8
  %selFlags334 = getelementptr inbounds nuw %struct.Select, ptr %258, i32 0, i32 3
  %259 = load i32, ptr %selFlags334, align 4
  %and335 = and i32 %259, 2048
  %cmp336 = icmp ne i32 %and335, 0
  br i1 %cmp336, label %if.then338, label %if.end359

if.then338:                                       ; preds = %land.lhs.true333
  %260 = load ptr, ptr %pNew, align 8
  %a339 = getelementptr inbounds nuw %struct.ExprList, ptr %260, i32 0, i32 1
  %261 = load ptr, ptr %pNew, align 8
  %nExpr340 = getelementptr inbounds nuw %struct.ExprList, ptr %261, i32 0, i32 0
  %262 = load i32, ptr %nExpr340, align 8
  %sub341 = sub nsw i32 %262, 1
  %idxprom342 = sext i32 %sub341 to i64
  %arrayidx343 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a339, i64 0, i64 %idxprom342
  store ptr %arrayidx343, ptr %pX, align 8
  %263 = load ptr, ptr %pSub, align 8
  %tobool344 = icmp ne ptr %263, null
  br i1 %tobool344, label %if.then345, label %if.else353

if.then345:                                       ; preds = %if.then338
  %264 = load ptr, ptr %db, align 8
  %265 = load ptr, ptr %pSub, align 8
  %pEList346 = getelementptr inbounds nuw %struct.Select, ptr %265, i32 0, i32 0
  %266 = load ptr, ptr %pEList346, align 8
  %a347 = getelementptr inbounds nuw %struct.ExprList, ptr %266, i32 0, i32 1
  %267 = load i32, ptr %j, align 4
  %idxprom348 = sext i32 %267 to i64
  %arrayidx349 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a347, i64 0, i64 %idxprom348
  %zSpan350 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx349, i32 0, i32 2
  %268 = load ptr, ptr %zSpan350, align 8
  %call351 = call ptr @sqlite3DbStrDup(ptr noundef %264, ptr noundef %268)
  %269 = load ptr, ptr %pX, align 8
  %zSpan352 = getelementptr inbounds nuw %struct.ExprList_item, ptr %269, i32 0, i32 2
  store ptr %call351, ptr %zSpan352, align 8
  br label %if.end356

if.else353:                                       ; preds = %if.then338
  %270 = load ptr, ptr %db, align 8
  %271 = load ptr, ptr %zSchemaName, align 8
  %272 = load ptr, ptr %zTabName, align 8
  %273 = load ptr, ptr %zColname, align 8
  %call354 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %270, ptr noundef @.str.641, ptr noundef %271, ptr noundef %272, ptr noundef %273)
  %274 = load ptr, ptr %pX, align 8
  %zSpan355 = getelementptr inbounds nuw %struct.ExprList_item, ptr %274, i32 0, i32 2
  store ptr %call354, ptr %zSpan355, align 8
  br label %if.end356

if.end356:                                        ; preds = %if.else353, %if.then345
  %275 = load ptr, ptr %pX, align 8
  %bSpanIsTab = getelementptr inbounds nuw %struct.ExprList_item, ptr %275, i32 0, i32 4
  %bf.load357 = load i8, ptr %bSpanIsTab, align 1
  %bf.clear358 = and i8 %bf.load357, -3
  %bf.set = or i8 %bf.clear358, 2
  store i8 %bf.set, ptr %bSpanIsTab, align 1
  br label %if.end359

if.end359:                                        ; preds = %if.end356, %land.lhs.true333, %if.end330
  %276 = load ptr, ptr %db, align 8
  %277 = load ptr, ptr %zToFree, align 8
  call void @sqlite3DbFree(ptr noundef %276, ptr noundef %277)
  br label %for.inc360

for.inc360:                                       ; preds = %if.end359, %if.then307, %if.then302, %if.then286, %if.then272
  %278 = load i32, ptr %j, align 4
  %inc361 = add nsw i32 %278, 1
  store i32 %inc361, ptr %j, align 4
  br label %for.cond250, !llvm.loop !9

for.end362:                                       ; preds = %for.cond250
  br label %for.inc363

for.inc363:                                       ; preds = %for.end362, %if.then242
  %279 = load i32, ptr %i, align 4
  %inc364 = add nsw i32 %279, 1
  store i32 %inc364, ptr %i, align 4
  %280 = load ptr, ptr %pFrom, align 8
  %incdec.ptr365 = getelementptr inbounds nuw %struct.SrcList_item, ptr %280, i32 1
  store ptr %incdec.ptr365, ptr %pFrom, align 8
  br label %for.cond212, !llvm.loop !10

for.end366:                                       ; preds = %if.then227, %for.cond212
  %281 = load i32, ptr %tableSeen, align 4
  %tobool367 = icmp ne i32 %281, 0
  br i1 %tobool367, label %if.end373, label %if.then368

if.then368:                                       ; preds = %for.end366
  %282 = load ptr, ptr %zTName, align 8
  %tobool369 = icmp ne ptr %282, null
  br i1 %tobool369, label %if.then370, label %if.else371

if.then370:                                       ; preds = %if.then368
  %283 = load ptr, ptr %pParse, align 8
  %284 = load ptr, ptr %zTName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %283, ptr noundef @.str.642, ptr noundef %284)
  br label %if.end372

if.else371:                                       ; preds = %if.then368
  %285 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %285, ptr noundef @.str.643)
  br label %if.end372

if.end372:                                        ; preds = %if.else371, %if.then370
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %for.end366
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %if.end199
  br label %for.inc375

for.inc375:                                       ; preds = %if.end374
  %286 = load i32, ptr %k, align 4
  %inc376 = add nsw i32 %286, 1
  store i32 %inc376, ptr %k, align 4
  br label %for.cond145, !llvm.loop !11

for.end377:                                       ; preds = %for.cond145
  %287 = load ptr, ptr %db, align 8
  %288 = load ptr, ptr %pEList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %287, ptr noundef %288)
  %289 = load ptr, ptr %pNew, align 8
  %290 = load ptr, ptr %p.addr, align 8
  %pEList378 = getelementptr inbounds nuw %struct.Select, ptr %290, i32 0, i32 0
  store ptr %289, ptr %pEList378, align 8
  br label %if.end379

if.end379:                                        ; preds = %for.end377, %for.end127
  %291 = load ptr, ptr %p.addr, align 8
  %pEList380 = getelementptr inbounds nuw %struct.Select, ptr %291, i32 0, i32 0
  %292 = load ptr, ptr %pEList380, align 8
  %tobool381 = icmp ne ptr %292, null
  br i1 %tobool381, label %if.then382, label %if.end397

if.then382:                                       ; preds = %if.end379
  %293 = load ptr, ptr %p.addr, align 8
  %pEList383 = getelementptr inbounds nuw %struct.Select, ptr %293, i32 0, i32 0
  %294 = load ptr, ptr %pEList383, align 8
  %nExpr384 = getelementptr inbounds nuw %struct.ExprList, ptr %294, i32 0, i32 0
  %295 = load i32, ptr %nExpr384, align 8
  %296 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %296, i32 0, i32 33
  %arrayidx385 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 2
  %297 = load i32, ptr %arrayidx385, align 4
  %cmp386 = icmp sgt i32 %295, %297
  br i1 %cmp386, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.then382
  %298 = load ptr, ptr %pParse, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %298, ptr noundef @.str.644)
  store i32 2, ptr %retval, align 4
  br label %return

if.end389:                                        ; preds = %if.then382
  %299 = load i32, ptr %elistFlags, align 4
  %and390 = and i32 %299, 2097156
  %cmp391 = icmp ne i32 %and390, 0
  br i1 %cmp391, label %if.then393, label %if.end396

if.then393:                                       ; preds = %if.end389
  %300 = load ptr, ptr %p.addr, align 8
  %selFlags394 = getelementptr inbounds nuw %struct.Select, ptr %300, i32 0, i32 3
  %301 = load i32, ptr %selFlags394, align 4
  %or395 = or i32 %301, 262144
  store i32 %or395, ptr %selFlags394, align 4
  br label %if.end396

if.end396:                                        ; preds = %if.then393, %if.end389
  br label %if.end397

if.end397:                                        ; preds = %if.end396, %if.end379
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end397, %if.then388, %if.then98, %if.then89, %if.then63, %if.then53, %if.then44, %if.then40, %if.then33, %if.then29, %if.then19, %if.then7, %if.then
  %302 = load i32, ptr %retval, align 4
  ret i32 %302
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListAssignCursors(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @withExpand(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExpandSubquery(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @cannotBeFunction(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexedByLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqliteProcessJoin(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @tableAndColumnIndex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IdListIndex(ptr noundef, ptr noundef) #0

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
