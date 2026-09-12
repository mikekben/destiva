; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.931 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.932 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.933 = external hidden unnamed_addr constant [59 x i8], align 1
@.str.934 = external hidden unnamed_addr constant [53 x i8], align 1
@.str.935 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.936 = external hidden unnamed_addr constant [109 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AlterFinishAddColumn(ptr noundef %pParse, ptr noundef %pColDef) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pColDef.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %zTab = alloca ptr, align 8
  %zCol = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %pDflt = alloca ptr, align 8
  %db = alloca ptr, align 8
  %v = alloca ptr, align 8
  %r1 = alloca i32, align 4
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %savedDbFlags = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pColDef, ptr %pColDef.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 58
  %7 = load ptr, ptr %pNewTable, align 8
  store ptr %7, ptr %pNew, align 8
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %pNew, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %8, ptr noundef %10)
  store i32 %call, ptr %iDb, align 4
  %11 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %aDb, align 8
  %13 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %12, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %14 = load ptr, ptr %zDbSName, align 8
  store ptr %14, ptr %zDb, align 8
  %15 = load ptr, ptr %pNew, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zName, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %16, i64 16
  store ptr %arrayidx3, ptr %zTab, align 8
  %17 = load ptr, ptr %pNew, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %aCol, align 8
  %19 = load ptr, ptr %pNew, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 11
  %20 = load i16, ptr %nCol, align 2
  %conv4 = sext i16 %20 to i32
  %sub = sub nsw i32 %conv4, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds %struct.Column, ptr %18, i64 %idxprom5
  store ptr %arrayidx6, ptr %pCol, align 8
  %21 = load ptr, ptr %pCol, align 8
  %pDflt7 = getelementptr inbounds nuw %struct.Column, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pDflt7, align 8
  store ptr %22, ptr %pDflt, align 8
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %zTab, align 8
  %25 = load ptr, ptr %zDb, align 8
  %call8 = call ptr @sqlite3FindTable(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store ptr %call8, ptr %pTab, align 8
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %zDb, align 8
  %28 = load ptr, ptr %pTab, align 8
  %zName9 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zName9, align 8
  %call10 = call i32 @sqlite3AuthCheck(ptr noundef %26, i32 noundef 26, ptr noundef %27, ptr noundef %29, ptr noundef null)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %return

if.end13:                                         ; preds = %if.end
  %30 = load ptr, ptr %pDflt, align 8
  %tobool14 = icmp ne ptr %30, null
  br i1 %tobool14, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %31 = load ptr, ptr %pDflt, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pLeft, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 0
  %33 = load i8, ptr %op, align 8
  %conv15 = zext i8 %33 to i32
  %cmp = icmp eq i32 %conv15, 117
  br i1 %cmp, label %if.then17, label %if.end18

if.then17:                                        ; preds = %land.lhs.true
  store ptr null, ptr %pDflt, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end13
  %34 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %34, i32 0, i32 6
  %35 = load i8, ptr %colFlags, align 1
  %conv19 = zext i8 %35 to i32
  %and = and i32 %conv19, 1
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end18
  %36 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %36, ptr noundef @.str.931)
  br label %return

if.end22:                                         ; preds = %if.end18
  %37 = load ptr, ptr %pNew, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pIndex, align 8
  %tobool23 = icmp ne ptr %38, null
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  %39 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %39, ptr noundef @.str.932)
  br label %return

if.end25:                                         ; preds = %if.end22
  %40 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %flags, align 8
  %and26 = and i64 %41, 16384
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end33

land.lhs.true28:                                  ; preds = %if.end25
  %42 = load ptr, ptr %pNew, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %pFKey, align 8
  %tobool29 = icmp ne ptr %43, null
  br i1 %tobool29, label %land.lhs.true30, label %if.end33

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %44 = load ptr, ptr %pDflt, align 8
  %tobool31 = icmp ne ptr %44, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true30
  %45 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %45, ptr noundef @.str.933)
  br label %return

if.end33:                                         ; preds = %land.lhs.true30, %land.lhs.true28, %if.end25
  %46 = load ptr, ptr %pCol, align 8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %46, i32 0, i32 3
  %47 = load i8, ptr %notNull, align 8
  %conv34 = zext i8 %47 to i32
  %tobool35 = icmp ne i32 %conv34, 0
  br i1 %tobool35, label %land.lhs.true36, label %if.end39

land.lhs.true36:                                  ; preds = %if.end33
  %48 = load ptr, ptr %pDflt, align 8
  %tobool37 = icmp ne ptr %48, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %land.lhs.true36
  %49 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %49, ptr noundef @.str.934)
  br label %return

if.end39:                                         ; preds = %land.lhs.true36, %if.end33
  %50 = load ptr, ptr %pDflt, align 8
  %tobool40 = icmp ne ptr %50, null
  br i1 %tobool40, label %if.then41, label %if.end50

if.then41:                                        ; preds = %if.end39
  store ptr null, ptr %pVal, align 8
  %51 = load ptr, ptr %db, align 8
  %52 = load ptr, ptr %pDflt, align 8
  %call42 = call i32 @sqlite3ValueFromExpr(ptr noundef %51, ptr noundef %52, i8 noundef zeroext 1, i8 noundef zeroext 65, ptr noundef %pVal)
  store i32 %call42, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %53, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then41
  br label %return

if.end46:                                         ; preds = %if.then41
  %54 = load ptr, ptr %pVal, align 8
  %tobool47 = icmp ne ptr %54, null
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end46
  %55 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %55, ptr noundef @.str.935)
  br label %return

if.end49:                                         ; preds = %if.end46
  %56 = load ptr, ptr %pVal, align 8
  call void @sqlite3ValueFree(ptr noundef %56)
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end39
  %57 = load ptr, ptr %db, align 8
  %58 = load ptr, ptr %pColDef.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %z, align 8
  %60 = load ptr, ptr %pColDef.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %n, align 8
  %conv51 = zext i32 %61 to i64
  %call52 = call ptr @sqlite3DbStrNDup(ptr noundef %57, ptr noundef %59, i64 noundef %conv51)
  store ptr %call52, ptr %zCol, align 8
  %62 = load ptr, ptr %zCol, align 8
  %tobool53 = icmp ne ptr %62, null
  br i1 %tobool53, label %if.then54, label %if.end72

if.then54:                                        ; preds = %if.end50
  %63 = load ptr, ptr %zCol, align 8
  %64 = load ptr, ptr %pColDef.addr, align 8
  %n55 = getelementptr inbounds nuw %struct.Token, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %n55, align 8
  %sub56 = sub i32 %65, 1
  %idxprom57 = zext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds nuw i8, ptr %63, i64 %idxprom57
  store ptr %arrayidx58, ptr %zEnd, align 8
  %66 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %mDbFlags, align 4
  store i32 %67, ptr %savedDbFlags, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then54
  %68 = load ptr, ptr %zEnd, align 8
  %69 = load ptr, ptr %zCol, align 8
  %cmp59 = icmp ugt ptr %68, %69
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %70 = load ptr, ptr %zEnd, align 8
  %71 = load i8, ptr %70, align 1
  %conv61 = sext i8 %71 to i32
  %cmp62 = icmp eq i32 %conv61, 59
  br i1 %cmp62, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %72 = load ptr, ptr %zEnd, align 8
  %73 = load i8, ptr %72, align 1
  %idxprom64 = zext i8 %73 to i64
  %arrayidx65 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom64
  %74 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %74 to i32
  %and67 = and i32 %conv66, 1
  %tobool68 = icmp ne i32 %and67, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %75 = phi i1 [ true, %land.rhs ], [ %tobool68, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %76 = phi i1 [ false, %while.cond ], [ %75, %lor.end ]
  br i1 %76, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %77 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %77, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  store i8 0, ptr %77, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %78 = load ptr, ptr %db, align 8
  %mDbFlags69 = getelementptr inbounds nuw %struct.sqlite3, ptr %78, i32 0, i32 6
  %79 = load i32, ptr %mDbFlags69, align 4
  %or = or i32 %79, 2
  store i32 %or, ptr %mDbFlags69, align 4
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load ptr, ptr %zDb, align 8
  %82 = load ptr, ptr %pNew, align 8
  %addColOffset = getelementptr inbounds nuw %struct.Table, ptr %82, i32 0, i32 15
  %83 = load i32, ptr %addColOffset, align 8
  %84 = load ptr, ptr %zCol, align 8
  %85 = load ptr, ptr %pNew, align 8
  %addColOffset70 = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 15
  %86 = load i32, ptr %addColOffset70, align 8
  %add = add nsw i32 %86, 1
  %87 = load ptr, ptr %zTab, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %80, ptr noundef @.str.936, ptr noundef %81, ptr noundef @.str.320, i32 noundef %83, ptr noundef %84, i32 noundef %add, ptr noundef %87)
  %88 = load ptr, ptr %db, align 8
  %89 = load ptr, ptr %zCol, align 8
  call void @sqlite3DbFree(ptr noundef %88, ptr noundef %89)
  %90 = load i32, ptr %savedDbFlags, align 4
  %91 = load ptr, ptr %db, align 8
  %mDbFlags71 = getelementptr inbounds nuw %struct.sqlite3, ptr %91, i32 0, i32 6
  store i32 %90, ptr %mDbFlags71, align 4
  br label %if.end72

if.end72:                                         ; preds = %while.end, %if.end50
  %92 = load ptr, ptr %pParse.addr, align 8
  %call73 = call ptr @sqlite3GetVdbe(ptr noundef %92)
  store ptr %call73, ptr %v, align 8
  %93 = load ptr, ptr %v, align 8
  %tobool74 = icmp ne ptr %93, null
  br i1 %tobool74, label %if.then75, label %if.end83

if.then75:                                        ; preds = %if.end72
  %94 = load ptr, ptr %pParse.addr, align 8
  %call76 = call i32 @sqlite3GetTempReg(ptr noundef %94)
  store i32 %call76, ptr %r1, align 4
  %95 = load ptr, ptr %v, align 8
  %96 = load i32, ptr %iDb, align 4
  %97 = load i32, ptr %r1, align 4
  %call77 = call i32 @sqlite3VdbeAddOp3(ptr noundef %95, i32 noundef 94, i32 noundef %96, i32 noundef %97, i32 noundef 2)
  %98 = load ptr, ptr %v, align 8
  %99 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %r1, align 4
  %call78 = call i32 @sqlite3VdbeAddOp2(ptr noundef %100, i32 noundef 83, i32 noundef %101, i32 noundef -2)
  %102 = load ptr, ptr %v, align 8
  %103 = load i32, ptr %r1, align 4
  %104 = load ptr, ptr %v, align 8
  %call79 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %104)
  %add80 = add nsw i32 %call79, 2
  %call81 = call i32 @sqlite3VdbeAddOp2(ptr noundef %102, i32 noundef 47, i32 noundef %103, i32 noundef %add80)
  %105 = load ptr, ptr %v, align 8
  %106 = load i32, ptr %iDb, align 4
  %call82 = call i32 @sqlite3VdbeAddOp3(ptr noundef %105, i32 noundef 95, i32 noundef %106, i32 noundef 2, i32 noundef 3)
  %107 = load ptr, ptr %pParse.addr, align 8
  %108 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %107, i32 noundef %108)
  br label %if.end83

if.end83:                                         ; preds = %if.then75, %if.end72
  %109 = load ptr, ptr %pParse.addr, align 8
  %110 = load i32, ptr %iDb, align 4
  call void @renameReloadSchema(ptr noundef %109, i32 noundef %110)
  br label %return

return:                                           ; preds = %if.end83, %if.then48, %if.then45, %if.then38, %if.then32, %if.then24, %if.then21, %if.then12, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ValueFromExpr(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameReloadSchema(ptr noundef, i32 noundef) #0

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
