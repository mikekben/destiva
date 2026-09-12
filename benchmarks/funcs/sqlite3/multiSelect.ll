; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.663 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.726 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.728 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.729 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.730 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.731 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.732 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3KeyInfoUnref(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @findRightmost(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsInteger(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @selectOpName(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoRef(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @multiSelect(ptr noundef %pParse, ptr noundef %p, ptr noundef %pDest) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPrior = alloca ptr, align 8
  %v = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %pDelete = alloca ptr, align 8
  %db = alloca ptr, align 8
  %addr = alloca i32, align 4
  %nLimit = alloca i32, align 4
  %unionTab = alloca i32, align 4
  %op92 = alloca i8, align 1
  %priorOp = alloca i32, align 4
  %pLimit93 = alloca ptr, align 8
  %addr94 = alloca i32, align 4
  %uniondest = alloca %struct.SelectDest, align 8
  %iCont = alloca i32, align 4
  %iBreak = alloca i32, align 4
  %iStart = alloca i32, align 4
  %tab1 = alloca i32, align 4
  %tab2 = alloca i32, align 4
  %iCont155 = alloca i32, align 4
  %iBreak156 = alloca i32, align 4
  %iStart157 = alloca i32, align 4
  %pLimit158 = alloca ptr, align 8
  %addr159 = alloca i32, align 4
  %intersectdest = alloca %struct.SelectDest, align 8
  %r1 = alloca i32, align 4
  %i = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %apColl = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %addr239 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pDelete, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pPrior2 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pPrior2, align 8
  store ptr %3, ptr %pPrior, align 8
  %4 = load ptr, ptr %pDest.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dest, ptr align 8 %4, i64 32, i1 false)
  %5 = load ptr, ptr %pPrior, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pOrderBy, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %pPrior, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 15
  %8 = load ptr, ptr %pLimit, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pPrior, align 8
  %pOrderBy4 = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pOrderBy4, align 8
  %cmp = icmp ne ptr %11, null
  %12 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.726, ptr @.str.729
  %13 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 1
  %14 = load i8, ptr %op, align 8
  %conv = zext i8 %14 to i32
  %call = call ptr @selectOpName(i32 noundef %conv)
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %9, ptr noundef @.str.728, ptr noundef %cond, ptr noundef %call)
  store i32 1, ptr %rc, align 4
  br label %multi_select_end

if.end:                                           ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pParse.addr, align 8
  %call5 = call ptr @sqlite3GetVdbe(ptr noundef %15)
  store ptr %call5, ptr %v, align 8
  %eDest = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  %16 = load i8, ptr %eDest, align 8
  %conv6 = zext i8 %16 to i32
  %cmp7 = icmp eq i32 %conv6, 12
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %v, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %18 = load i32, ptr %iSDParm, align 4
  %19 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %nExpr, align 8
  %call10 = call i32 @sqlite3VdbeAddOp2(ptr noundef %17, i32 noundef 112, i32 noundef %18, i32 noundef %21)
  %eDest11 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  store i8 14, ptr %eDest11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %22 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %selFlags, align 4
  %and = and i32 %23, 1024
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %call15 = call i32 @multiSelectValues(ptr noundef %24, ptr noundef %25, ptr noundef %dest)
  store i32 %call15, ptr %rc, align 4
  br label %multi_select_end

if.end16:                                         ; preds = %if.end12
  %26 = load ptr, ptr %p.addr, align 8
  %selFlags17 = getelementptr inbounds nuw %struct.Select, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %selFlags17, align 4
  %and18 = and i32 %27, 8192
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %p.addr, align 8
  call void @generateWithRecursiveQuery(ptr noundef %28, ptr noundef %29, ptr noundef %dest)
  br label %if.end213

if.else:                                          ; preds = %if.end16
  %30 = load ptr, ptr %p.addr, align 8
  %pOrderBy21 = getelementptr inbounds nuw %struct.Select, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %pOrderBy21, align 8
  %tobool22 = icmp ne ptr %31, null
  br i1 %tobool22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %p.addr, align 8
  %34 = load ptr, ptr %pDest.addr, align 8
  %call24 = call i32 @multiSelectOrderBy(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  store i32 %call24, ptr %retval, align 4
  br label %return

if.else25:                                        ; preds = %if.else
  %35 = load ptr, ptr %pPrior, align 8
  %pPrior26 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 13
  %36 = load ptr, ptr %pPrior26, align 8
  %cmp27 = icmp eq ptr %36, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else25
  %37 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %37, i8 noundef zeroext 1, ptr noundef @.str.730)
  %38 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %38, i8 noundef zeroext 1, ptr noundef @.str.731)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else25
  %39 = load ptr, ptr %p.addr, align 8
  %op31 = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 1
  %40 = load i8, ptr %op31, align 8
  %conv32 = zext i8 %40 to i32
  switch i32 %conv32, label %sw.default [
    i32 131, label %sw.bb
    i32 132, label %sw.bb91
    i32 130, label %sw.bb91
  ]

sw.bb:                                            ; preds = %if.end30
  store i32 0, ptr %addr, align 4
  %41 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %iLimit, align 8
  %43 = load ptr, ptr %pPrior, align 8
  %iLimit33 = getelementptr inbounds nuw %struct.Select, ptr %43, i32 0, i32 4
  store i32 %42, ptr %iLimit33, align 8
  %44 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %44, i32 0, i32 5
  %45 = load i32, ptr %iOffset, align 4
  %46 = load ptr, ptr %pPrior, align 8
  %iOffset34 = getelementptr inbounds nuw %struct.Select, ptr %46, i32 0, i32 5
  store i32 %45, ptr %iOffset34, align 4
  %47 = load ptr, ptr %p.addr, align 8
  %pLimit35 = getelementptr inbounds nuw %struct.Select, ptr %47, i32 0, i32 15
  %48 = load ptr, ptr %pLimit35, align 8
  %49 = load ptr, ptr %pPrior, align 8
  %pLimit36 = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 15
  store ptr %48, ptr %pLimit36, align 8
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pPrior, align 8
  %call37 = call i32 @sqlite3Select(ptr noundef %50, ptr noundef %51, ptr noundef %dest)
  store i32 %call37, ptr %rc, align 4
  %52 = load ptr, ptr %p.addr, align 8
  %pLimit38 = getelementptr inbounds nuw %struct.Select, ptr %52, i32 0, i32 15
  store ptr null, ptr %pLimit38, align 8
  %53 = load i32, ptr %rc, align 4
  %tobool39 = icmp ne i32 %53, 0
  br i1 %tobool39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %sw.bb
  br label %multi_select_end

if.end41:                                         ; preds = %sw.bb
  %54 = load ptr, ptr %p.addr, align 8
  %pPrior42 = getelementptr inbounds nuw %struct.Select, ptr %54, i32 0, i32 13
  store ptr null, ptr %pPrior42, align 8
  %55 = load ptr, ptr %pPrior, align 8
  %iLimit43 = getelementptr inbounds nuw %struct.Select, ptr %55, i32 0, i32 4
  %56 = load i32, ptr %iLimit43, align 8
  %57 = load ptr, ptr %p.addr, align 8
  %iLimit44 = getelementptr inbounds nuw %struct.Select, ptr %57, i32 0, i32 4
  store i32 %56, ptr %iLimit44, align 8
  %58 = load ptr, ptr %pPrior, align 8
  %iOffset45 = getelementptr inbounds nuw %struct.Select, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %iOffset45, align 4
  %60 = load ptr, ptr %p.addr, align 8
  %iOffset46 = getelementptr inbounds nuw %struct.Select, ptr %60, i32 0, i32 5
  store i32 %59, ptr %iOffset46, align 4
  %61 = load ptr, ptr %p.addr, align 8
  %iLimit47 = getelementptr inbounds nuw %struct.Select, ptr %61, i32 0, i32 4
  %62 = load i32, ptr %iLimit47, align 8
  %tobool48 = icmp ne i32 %62, 0
  br i1 %tobool48, label %if.then49, label %if.end60

if.then49:                                        ; preds = %if.end41
  %63 = load ptr, ptr %v, align 8
  %64 = load ptr, ptr %p.addr, align 8
  %iLimit50 = getelementptr inbounds nuw %struct.Select, ptr %64, i32 0, i32 4
  %65 = load i32, ptr %iLimit50, align 8
  %call51 = call i32 @sqlite3VdbeAddOp1(ptr noundef %63, i32 noundef 20, i32 noundef %65)
  store i32 %call51, ptr %addr, align 4
  %66 = load ptr, ptr %p.addr, align 8
  %iOffset52 = getelementptr inbounds nuw %struct.Select, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %iOffset52, align 4
  %tobool53 = icmp ne i32 %67, 0
  br i1 %tobool53, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.then49
  %68 = load ptr, ptr %v, align 8
  %69 = load ptr, ptr %p.addr, align 8
  %iLimit55 = getelementptr inbounds nuw %struct.Select, ptr %69, i32 0, i32 4
  %70 = load i32, ptr %iLimit55, align 8
  %71 = load ptr, ptr %p.addr, align 8
  %iOffset56 = getelementptr inbounds nuw %struct.Select, ptr %71, i32 0, i32 5
  %72 = load i32, ptr %iOffset56, align 4
  %add = add nsw i32 %72, 1
  %73 = load ptr, ptr %p.addr, align 8
  %iOffset57 = getelementptr inbounds nuw %struct.Select, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %iOffset57, align 4
  %call58 = call i32 @sqlite3VdbeAddOp3(ptr noundef %68, i32 noundef 152, i32 noundef %70, i32 noundef %add, i32 noundef %74)
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.then49
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end41
  %75 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %75, i8 noundef zeroext 1, ptr noundef @.str.663)
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %p.addr, align 8
  %call61 = call i32 @sqlite3Select(ptr noundef %76, ptr noundef %77, ptr noundef %dest)
  store i32 %call61, ptr %rc, align 4
  %78 = load ptr, ptr %p.addr, align 8
  %pPrior62 = getelementptr inbounds nuw %struct.Select, ptr %78, i32 0, i32 13
  %79 = load ptr, ptr %pPrior62, align 8
  store ptr %79, ptr %pDelete, align 8
  %80 = load ptr, ptr %pPrior, align 8
  %81 = load ptr, ptr %p.addr, align 8
  %pPrior63 = getelementptr inbounds nuw %struct.Select, ptr %81, i32 0, i32 13
  store ptr %80, ptr %pPrior63, align 8
  %82 = load ptr, ptr %p.addr, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %82, i32 0, i32 2
  %83 = load i16, ptr %nSelectRow, align 2
  %84 = load ptr, ptr %pPrior, align 8
  %nSelectRow64 = getelementptr inbounds nuw %struct.Select, ptr %84, i32 0, i32 2
  %85 = load i16, ptr %nSelectRow64, align 2
  %call65 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %83, i16 noundef signext %85)
  %86 = load ptr, ptr %p.addr, align 8
  %nSelectRow66 = getelementptr inbounds nuw %struct.Select, ptr %86, i32 0, i32 2
  store i16 %call65, ptr %nSelectRow66, align 2
  %87 = load ptr, ptr %pPrior, align 8
  %pLimit67 = getelementptr inbounds nuw %struct.Select, ptr %87, i32 0, i32 15
  %88 = load ptr, ptr %pLimit67, align 8
  %tobool68 = icmp ne ptr %88, null
  br i1 %tobool68, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %if.end60
  %89 = load ptr, ptr %pPrior, align 8
  %pLimit69 = getelementptr inbounds nuw %struct.Select, ptr %89, i32 0, i32 15
  %90 = load ptr, ptr %pLimit69, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %90, i32 0, i32 4
  %91 = load ptr, ptr %pLeft, align 8
  %call70 = call i32 @sqlite3ExprIsInteger(ptr noundef %91, ptr noundef %nLimit)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %land.lhs.true72, label %if.end87

land.lhs.true72:                                  ; preds = %land.lhs.true
  %92 = load i32, ptr %nLimit, align 4
  %cmp73 = icmp sgt i32 %92, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end87

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %93 = load ptr, ptr %p.addr, align 8
  %nSelectRow76 = getelementptr inbounds nuw %struct.Select, ptr %93, i32 0, i32 2
  %94 = load i16, ptr %nSelectRow76, align 2
  %conv77 = sext i16 %94 to i32
  %95 = load i32, ptr %nLimit, align 4
  %conv78 = sext i32 %95 to i64
  %call79 = call signext i16 @sqlite3LogEst(i64 noundef %conv78)
  %conv80 = sext i16 %call79 to i32
  %cmp81 = icmp sgt i32 %conv77, %conv80
  br i1 %cmp81, label %if.then83, label %if.end87

if.then83:                                        ; preds = %land.lhs.true75
  %96 = load i32, ptr %nLimit, align 4
  %conv84 = sext i32 %96 to i64
  %call85 = call signext i16 @sqlite3LogEst(i64 noundef %conv84)
  %97 = load ptr, ptr %p.addr, align 8
  %nSelectRow86 = getelementptr inbounds nuw %struct.Select, ptr %97, i32 0, i32 2
  store i16 %call85, ptr %nSelectRow86, align 2
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %land.lhs.true75, %land.lhs.true72, %land.lhs.true, %if.end60
  %98 = load i32, ptr %addr, align 4
  %tobool88 = icmp ne i32 %98, 0
  br i1 %tobool88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end87
  %99 = load ptr, ptr %v, align 8
  %100 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %99, i32 noundef %100)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end87
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end30, %if.end30
  store i8 0, ptr %op92, align 1
  store i32 1, ptr %priorOp, align 4
  %eDest95 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  %101 = load i8, ptr %eDest95, align 8
  %conv96 = zext i8 %101 to i32
  %102 = load i32, ptr %priorOp, align 4
  %cmp97 = icmp eq i32 %conv96, %102
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %sw.bb91
  %iSDParm100 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %103 = load i32, ptr %iSDParm100, align 4
  store i32 %103, ptr %unionTab, align 4
  br label %if.end105

if.else101:                                       ; preds = %sw.bb91
  %104 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %104, i32 0, i32 17
  %105 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %105, 1
  store i32 %inc, ptr %nTab, align 4
  store i32 %105, ptr %unionTab, align 4
  %106 = load ptr, ptr %v, align 8
  %107 = load i32, ptr %unionTab, align 4
  %call102 = call i32 @sqlite3VdbeAddOp2(ptr noundef %106, i32 noundef 112, i32 noundef %107, i32 noundef 0)
  store i32 %call102, ptr %addr94, align 4
  %108 = load i32, ptr %addr94, align 4
  %109 = load ptr, ptr %p.addr, align 8
  %addrOpenEphm = getelementptr inbounds nuw %struct.Select, ptr %109, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i32], ptr %addrOpenEphm, i64 0, i64 0
  store i32 %108, ptr %arrayidx, align 4
  %110 = load ptr, ptr %p.addr, align 8
  %call103 = call ptr @findRightmost(ptr noundef %110)
  %selFlags104 = getelementptr inbounds nuw %struct.Select, ptr %call103, i32 0, i32 3
  %111 = load i32, ptr %selFlags104, align 4
  %or = or i32 %111, 32
  store i32 %or, ptr %selFlags104, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else101, %if.then99
  %112 = load i32, ptr %priorOp, align 4
  %113 = load i32, ptr %unionTab, align 4
  call void @sqlite3SelectDestInit(ptr noundef %uniondest, i32 noundef %112, i32 noundef %113)
  %114 = load ptr, ptr %pParse.addr, align 8
  %115 = load ptr, ptr %pPrior, align 8
  %call106 = call i32 @sqlite3Select(ptr noundef %114, ptr noundef %115, ptr noundef %uniondest)
  store i32 %call106, ptr %rc, align 4
  %116 = load i32, ptr %rc, align 4
  %tobool107 = icmp ne i32 %116, 0
  br i1 %tobool107, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end105
  br label %multi_select_end

if.end109:                                        ; preds = %if.end105
  %117 = load ptr, ptr %p.addr, align 8
  %op110 = getelementptr inbounds nuw %struct.Select, ptr %117, i32 0, i32 1
  %118 = load i8, ptr %op110, align 8
  %conv111 = zext i8 %118 to i32
  %cmp112 = icmp eq i32 %conv111, 132
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.end109
  store i8 2, ptr %op92, align 1
  br label %if.end116

if.else115:                                       ; preds = %if.end109
  store i8 1, ptr %op92, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.else115, %if.then114
  %119 = load ptr, ptr %p.addr, align 8
  %pPrior117 = getelementptr inbounds nuw %struct.Select, ptr %119, i32 0, i32 13
  store ptr null, ptr %pPrior117, align 8
  %120 = load ptr, ptr %p.addr, align 8
  %pLimit118 = getelementptr inbounds nuw %struct.Select, ptr %120, i32 0, i32 15
  %121 = load ptr, ptr %pLimit118, align 8
  store ptr %121, ptr %pLimit93, align 8
  %122 = load ptr, ptr %p.addr, align 8
  %pLimit119 = getelementptr inbounds nuw %struct.Select, ptr %122, i32 0, i32 15
  store ptr null, ptr %pLimit119, align 8
  %123 = load i8, ptr %op92, align 1
  %eDest120 = getelementptr inbounds nuw %struct.SelectDest, ptr %uniondest, i32 0, i32 0
  store i8 %123, ptr %eDest120, align 8
  %124 = load ptr, ptr %pParse.addr, align 8
  %125 = load ptr, ptr %p.addr, align 8
  %op121 = getelementptr inbounds nuw %struct.Select, ptr %125, i32 0, i32 1
  %126 = load i8, ptr %op121, align 8
  %conv122 = zext i8 %126 to i32
  %call123 = call ptr @selectOpName(i32 noundef %conv122)
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %124, i8 noundef zeroext 1, ptr noundef @.str.732, ptr noundef %call123)
  %127 = load ptr, ptr %pParse.addr, align 8
  %128 = load ptr, ptr %p.addr, align 8
  %call124 = call i32 @sqlite3Select(ptr noundef %127, ptr noundef %128, ptr noundef %uniondest)
  store i32 %call124, ptr %rc, align 4
  %129 = load ptr, ptr %db, align 8
  %130 = load ptr, ptr %p.addr, align 8
  %pOrderBy125 = getelementptr inbounds nuw %struct.Select, ptr %130, i32 0, i32 12
  %131 = load ptr, ptr %pOrderBy125, align 8
  call void @sqlite3ExprListDelete(ptr noundef %129, ptr noundef %131)
  %132 = load ptr, ptr %p.addr, align 8
  %pPrior126 = getelementptr inbounds nuw %struct.Select, ptr %132, i32 0, i32 13
  %133 = load ptr, ptr %pPrior126, align 8
  store ptr %133, ptr %pDelete, align 8
  %134 = load ptr, ptr %pPrior, align 8
  %135 = load ptr, ptr %p.addr, align 8
  %pPrior127 = getelementptr inbounds nuw %struct.Select, ptr %135, i32 0, i32 13
  store ptr %134, ptr %pPrior127, align 8
  %136 = load ptr, ptr %p.addr, align 8
  %pOrderBy128 = getelementptr inbounds nuw %struct.Select, ptr %136, i32 0, i32 12
  store ptr null, ptr %pOrderBy128, align 8
  %137 = load ptr, ptr %p.addr, align 8
  %op129 = getelementptr inbounds nuw %struct.Select, ptr %137, i32 0, i32 1
  %138 = load i8, ptr %op129, align 8
  %conv130 = zext i8 %138 to i32
  %cmp131 = icmp eq i32 %conv130, 130
  br i1 %cmp131, label %if.then133, label %if.end138

if.then133:                                       ; preds = %if.end116
  %139 = load ptr, ptr %p.addr, align 8
  %nSelectRow134 = getelementptr inbounds nuw %struct.Select, ptr %139, i32 0, i32 2
  %140 = load i16, ptr %nSelectRow134, align 2
  %141 = load ptr, ptr %pPrior, align 8
  %nSelectRow135 = getelementptr inbounds nuw %struct.Select, ptr %141, i32 0, i32 2
  %142 = load i16, ptr %nSelectRow135, align 2
  %call136 = call signext i16 @sqlite3LogEstAdd(i16 noundef signext %140, i16 noundef signext %142)
  %143 = load ptr, ptr %p.addr, align 8
  %nSelectRow137 = getelementptr inbounds nuw %struct.Select, ptr %143, i32 0, i32 2
  store i16 %call136, ptr %nSelectRow137, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then133, %if.end116
  %144 = load ptr, ptr %db, align 8
  %145 = load ptr, ptr %p.addr, align 8
  %pLimit139 = getelementptr inbounds nuw %struct.Select, ptr %145, i32 0, i32 15
  %146 = load ptr, ptr %pLimit139, align 8
  call void @sqlite3ExprDelete(ptr noundef %144, ptr noundef %146)
  %147 = load ptr, ptr %pLimit93, align 8
  %148 = load ptr, ptr %p.addr, align 8
  %pLimit140 = getelementptr inbounds nuw %struct.Select, ptr %148, i32 0, i32 15
  store ptr %147, ptr %pLimit140, align 8
  %149 = load ptr, ptr %p.addr, align 8
  %iLimit141 = getelementptr inbounds nuw %struct.Select, ptr %149, i32 0, i32 4
  store i32 0, ptr %iLimit141, align 8
  %150 = load ptr, ptr %p.addr, align 8
  %iOffset142 = getelementptr inbounds nuw %struct.Select, ptr %150, i32 0, i32 5
  store i32 0, ptr %iOffset142, align 4
  %eDest143 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  %151 = load i8, ptr %eDest143, align 8
  %conv144 = zext i8 %151 to i32
  %152 = load i32, ptr %priorOp, align 4
  %cmp145 = icmp ne i32 %conv144, %152
  br i1 %cmp145, label %if.then147, label %if.end154

if.then147:                                       ; preds = %if.end138
  %153 = load ptr, ptr %pParse.addr, align 8
  %call148 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %153)
  store i32 %call148, ptr %iBreak, align 4
  %154 = load ptr, ptr %pParse.addr, align 8
  %call149 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %154)
  store i32 %call149, ptr %iCont, align 4
  %155 = load ptr, ptr %pParse.addr, align 8
  %156 = load ptr, ptr %p.addr, align 8
  %157 = load i32, ptr %iBreak, align 4
  call void @computeLimitRegisters(ptr noundef %155, ptr noundef %156, i32 noundef %157)
  %158 = load ptr, ptr %v, align 8
  %159 = load i32, ptr %unionTab, align 4
  %160 = load i32, ptr %iBreak, align 4
  %call150 = call i32 @sqlite3VdbeAddOp2(ptr noundef %158, i32 noundef 36, i32 noundef %159, i32 noundef %160)
  %161 = load ptr, ptr %v, align 8
  %call151 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %161)
  store i32 %call151, ptr %iStart, align 4
  %162 = load ptr, ptr %pParse.addr, align 8
  %163 = load ptr, ptr %p.addr, align 8
  %164 = load i32, ptr %unionTab, align 4
  %165 = load i32, ptr %iCont, align 4
  %166 = load i32, ptr %iBreak, align 4
  call void @selectInnerLoop(ptr noundef %162, ptr noundef %163, i32 noundef %164, ptr noundef null, ptr noundef null, ptr noundef %dest, i32 noundef %165, i32 noundef %166)
  %167 = load ptr, ptr %v, align 8
  %168 = load i32, ptr %iCont, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %167, i32 noundef %168)
  %169 = load ptr, ptr %v, align 8
  %170 = load i32, ptr %unionTab, align 4
  %171 = load i32, ptr %iStart, align 4
  %call152 = call i32 @sqlite3VdbeAddOp2(ptr noundef %169, i32 noundef 5, i32 noundef %170, i32 noundef %171)
  %172 = load ptr, ptr %v, align 8
  %173 = load i32, ptr %iBreak, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %172, i32 noundef %173)
  %174 = load ptr, ptr %v, align 8
  %175 = load i32, ptr %unionTab, align 4
  %call153 = call i32 @sqlite3VdbeAddOp2(ptr noundef %174, i32 noundef 117, i32 noundef %175, i32 noundef 0)
  br label %if.end154

if.end154:                                        ; preds = %if.then147, %if.end138
  br label %sw.epilog

sw.default:                                       ; preds = %if.end30
  %176 = load ptr, ptr %pParse.addr, align 8
  %nTab160 = getelementptr inbounds nuw %struct.Parse, ptr %176, i32 0, i32 17
  %177 = load i32, ptr %nTab160, align 4
  %inc161 = add nsw i32 %177, 1
  store i32 %inc161, ptr %nTab160, align 4
  store i32 %177, ptr %tab1, align 4
  %178 = load ptr, ptr %pParse.addr, align 8
  %nTab162 = getelementptr inbounds nuw %struct.Parse, ptr %178, i32 0, i32 17
  %179 = load i32, ptr %nTab162, align 4
  %inc163 = add nsw i32 %179, 1
  store i32 %inc163, ptr %nTab162, align 4
  store i32 %179, ptr %tab2, align 4
  %180 = load ptr, ptr %v, align 8
  %181 = load i32, ptr %tab1, align 4
  %call164 = call i32 @sqlite3VdbeAddOp2(ptr noundef %180, i32 noundef 112, i32 noundef %181, i32 noundef 0)
  store i32 %call164, ptr %addr159, align 4
  %182 = load i32, ptr %addr159, align 4
  %183 = load ptr, ptr %p.addr, align 8
  %addrOpenEphm165 = getelementptr inbounds nuw %struct.Select, ptr %183, i32 0, i32 7
  %arrayidx166 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm165, i64 0, i64 0
  store i32 %182, ptr %arrayidx166, align 4
  %184 = load ptr, ptr %p.addr, align 8
  %call167 = call ptr @findRightmost(ptr noundef %184)
  %selFlags168 = getelementptr inbounds nuw %struct.Select, ptr %call167, i32 0, i32 3
  %185 = load i32, ptr %selFlags168, align 4
  %or169 = or i32 %185, 32
  store i32 %or169, ptr %selFlags168, align 4
  %186 = load i32, ptr %tab1, align 4
  call void @sqlite3SelectDestInit(ptr noundef %intersectdest, i32 noundef 1, i32 noundef %186)
  %187 = load ptr, ptr %pParse.addr, align 8
  %188 = load ptr, ptr %pPrior, align 8
  %call170 = call i32 @sqlite3Select(ptr noundef %187, ptr noundef %188, ptr noundef %intersectdest)
  store i32 %call170, ptr %rc, align 4
  %189 = load i32, ptr %rc, align 4
  %tobool171 = icmp ne i32 %189, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %sw.default
  br label %multi_select_end

if.end173:                                        ; preds = %sw.default
  %190 = load ptr, ptr %v, align 8
  %191 = load i32, ptr %tab2, align 4
  %call174 = call i32 @sqlite3VdbeAddOp2(ptr noundef %190, i32 noundef 112, i32 noundef %191, i32 noundef 0)
  store i32 %call174, ptr %addr159, align 4
  %192 = load i32, ptr %addr159, align 4
  %193 = load ptr, ptr %p.addr, align 8
  %addrOpenEphm175 = getelementptr inbounds nuw %struct.Select, ptr %193, i32 0, i32 7
  %arrayidx176 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm175, i64 0, i64 1
  store i32 %192, ptr %arrayidx176, align 4
  %194 = load ptr, ptr %p.addr, align 8
  %pPrior177 = getelementptr inbounds nuw %struct.Select, ptr %194, i32 0, i32 13
  store ptr null, ptr %pPrior177, align 8
  %195 = load ptr, ptr %p.addr, align 8
  %pLimit178 = getelementptr inbounds nuw %struct.Select, ptr %195, i32 0, i32 15
  %196 = load ptr, ptr %pLimit178, align 8
  store ptr %196, ptr %pLimit158, align 8
  %197 = load ptr, ptr %p.addr, align 8
  %pLimit179 = getelementptr inbounds nuw %struct.Select, ptr %197, i32 0, i32 15
  store ptr null, ptr %pLimit179, align 8
  %198 = load i32, ptr %tab2, align 4
  %iSDParm180 = getelementptr inbounds nuw %struct.SelectDest, ptr %intersectdest, i32 0, i32 1
  store i32 %198, ptr %iSDParm180, align 4
  %199 = load ptr, ptr %pParse.addr, align 8
  %200 = load ptr, ptr %p.addr, align 8
  %op181 = getelementptr inbounds nuw %struct.Select, ptr %200, i32 0, i32 1
  %201 = load i8, ptr %op181, align 8
  %conv182 = zext i8 %201 to i32
  %call183 = call ptr @selectOpName(i32 noundef %conv182)
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %199, i8 noundef zeroext 1, ptr noundef @.str.732, ptr noundef %call183)
  %202 = load ptr, ptr %pParse.addr, align 8
  %203 = load ptr, ptr %p.addr, align 8
  %call184 = call i32 @sqlite3Select(ptr noundef %202, ptr noundef %203, ptr noundef %intersectdest)
  store i32 %call184, ptr %rc, align 4
  %204 = load ptr, ptr %p.addr, align 8
  %pPrior185 = getelementptr inbounds nuw %struct.Select, ptr %204, i32 0, i32 13
  %205 = load ptr, ptr %pPrior185, align 8
  store ptr %205, ptr %pDelete, align 8
  %206 = load ptr, ptr %pPrior, align 8
  %207 = load ptr, ptr %p.addr, align 8
  %pPrior186 = getelementptr inbounds nuw %struct.Select, ptr %207, i32 0, i32 13
  store ptr %206, ptr %pPrior186, align 8
  %208 = load ptr, ptr %p.addr, align 8
  %nSelectRow187 = getelementptr inbounds nuw %struct.Select, ptr %208, i32 0, i32 2
  %209 = load i16, ptr %nSelectRow187, align 2
  %conv188 = sext i16 %209 to i32
  %210 = load ptr, ptr %pPrior, align 8
  %nSelectRow189 = getelementptr inbounds nuw %struct.Select, ptr %210, i32 0, i32 2
  %211 = load i16, ptr %nSelectRow189, align 2
  %conv190 = sext i16 %211 to i32
  %cmp191 = icmp sgt i32 %conv188, %conv190
  br i1 %cmp191, label %if.then193, label %if.end196

if.then193:                                       ; preds = %if.end173
  %212 = load ptr, ptr %pPrior, align 8
  %nSelectRow194 = getelementptr inbounds nuw %struct.Select, ptr %212, i32 0, i32 2
  %213 = load i16, ptr %nSelectRow194, align 2
  %214 = load ptr, ptr %p.addr, align 8
  %nSelectRow195 = getelementptr inbounds nuw %struct.Select, ptr %214, i32 0, i32 2
  store i16 %213, ptr %nSelectRow195, align 2
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end173
  %215 = load ptr, ptr %db, align 8
  %216 = load ptr, ptr %p.addr, align 8
  %pLimit197 = getelementptr inbounds nuw %struct.Select, ptr %216, i32 0, i32 15
  %217 = load ptr, ptr %pLimit197, align 8
  call void @sqlite3ExprDelete(ptr noundef %215, ptr noundef %217)
  %218 = load ptr, ptr %pLimit158, align 8
  %219 = load ptr, ptr %p.addr, align 8
  %pLimit198 = getelementptr inbounds nuw %struct.Select, ptr %219, i32 0, i32 15
  store ptr %218, ptr %pLimit198, align 8
  %220 = load ptr, ptr %pParse.addr, align 8
  %call199 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %220)
  store i32 %call199, ptr %iBreak156, align 4
  %221 = load ptr, ptr %pParse.addr, align 8
  %call200 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %221)
  store i32 %call200, ptr %iCont155, align 4
  %222 = load ptr, ptr %pParse.addr, align 8
  %223 = load ptr, ptr %p.addr, align 8
  %224 = load i32, ptr %iBreak156, align 4
  call void @computeLimitRegisters(ptr noundef %222, ptr noundef %223, i32 noundef %224)
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %tab1, align 4
  %227 = load i32, ptr %iBreak156, align 4
  %call201 = call i32 @sqlite3VdbeAddOp2(ptr noundef %225, i32 noundef 36, i32 noundef %226, i32 noundef %227)
  %228 = load ptr, ptr %pParse.addr, align 8
  %call202 = call i32 @sqlite3GetTempReg(ptr noundef %228)
  store i32 %call202, ptr %r1, align 4
  %229 = load ptr, ptr %v, align 8
  %230 = load i32, ptr %tab1, align 4
  %231 = load i32, ptr %r1, align 4
  %call203 = call i32 @sqlite3VdbeAddOp2(ptr noundef %229, i32 noundef 127, i32 noundef %230, i32 noundef %231)
  store i32 %call203, ptr %iStart157, align 4
  %232 = load ptr, ptr %v, align 8
  %233 = load i32, ptr %tab2, align 4
  %234 = load i32, ptr %iCont155, align 4
  %235 = load i32, ptr %r1, align 4
  %call204 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %232, i32 noundef 28, i32 noundef %233, i32 noundef %234, i32 noundef %235, i32 noundef 0)
  %236 = load ptr, ptr %pParse.addr, align 8
  %237 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %236, i32 noundef %237)
  %238 = load ptr, ptr %pParse.addr, align 8
  %239 = load ptr, ptr %p.addr, align 8
  %240 = load i32, ptr %tab1, align 4
  %241 = load i32, ptr %iCont155, align 4
  %242 = load i32, ptr %iBreak156, align 4
  call void @selectInnerLoop(ptr noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef null, ptr noundef null, ptr noundef %dest, i32 noundef %241, i32 noundef %242)
  %243 = load ptr, ptr %v, align 8
  %244 = load i32, ptr %iCont155, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %243, i32 noundef %244)
  %245 = load ptr, ptr %v, align 8
  %246 = load i32, ptr %tab1, align 4
  %247 = load i32, ptr %iStart157, align 4
  %call205 = call i32 @sqlite3VdbeAddOp2(ptr noundef %245, i32 noundef 5, i32 noundef %246, i32 noundef %247)
  %248 = load ptr, ptr %v, align 8
  %249 = load i32, ptr %iBreak156, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %248, i32 noundef %249)
  %250 = load ptr, ptr %v, align 8
  %251 = load i32, ptr %tab2, align 4
  %call206 = call i32 @sqlite3VdbeAddOp2(ptr noundef %250, i32 noundef 117, i32 noundef %251, i32 noundef 0)
  %252 = load ptr, ptr %v, align 8
  %253 = load i32, ptr %tab1, align 4
  %call207 = call i32 @sqlite3VdbeAddOp2(ptr noundef %252, i32 noundef 117, i32 noundef %253, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end196, %if.end154, %if.end90
  %254 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %254, i32 0, i32 14
  %255 = load ptr, ptr %pNext, align 8
  %cmp208 = icmp eq ptr %255, null
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %sw.epilog
  %256 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3VdbeExplainPop(ptr noundef %256)
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %sw.epilog
  br label %if.end212

if.end212:                                        ; preds = %if.end211
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.then20
  %257 = load ptr, ptr %p.addr, align 8
  %selFlags214 = getelementptr inbounds nuw %struct.Select, ptr %257, i32 0, i32 3
  %258 = load i32, ptr %selFlags214, align 4
  %and215 = and i32 %258, 32
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then217, label %if.end256

if.then217:                                       ; preds = %if.end213
  %259 = load ptr, ptr %p.addr, align 8
  %pEList218 = getelementptr inbounds nuw %struct.Select, ptr %259, i32 0, i32 0
  %260 = load ptr, ptr %pEList218, align 8
  %nExpr219 = getelementptr inbounds nuw %struct.ExprList, ptr %260, i32 0, i32 0
  %261 = load i32, ptr %nExpr219, align 8
  store i32 %261, ptr %nCol, align 4
  %262 = load ptr, ptr %db, align 8
  %263 = load i32, ptr %nCol, align 4
  %call220 = call ptr @sqlite3KeyInfoAlloc(ptr noundef %262, i32 noundef %263, i32 noundef 1)
  store ptr %call220, ptr %pKeyInfo, align 8
  %264 = load ptr, ptr %pKeyInfo, align 8
  %tobool221 = icmp ne ptr %264, null
  br i1 %tobool221, label %if.end223, label %if.then222

if.then222:                                       ; preds = %if.then217
  store i32 7, ptr %rc, align 4
  br label %multi_select_end

if.end223:                                        ; preds = %if.then217
  store i32 0, ptr %i, align 4
  %265 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %265, i32 0, i32 6
  %arraydecay = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 0
  store ptr %arraydecay, ptr %apColl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end223
  %266 = load i32, ptr %i, align 4
  %267 = load i32, ptr %nCol, align 4
  %cmp224 = icmp slt i32 %266, %267
  br i1 %cmp224, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %268 = load ptr, ptr %pParse.addr, align 8
  %269 = load ptr, ptr %p.addr, align 8
  %270 = load i32, ptr %i, align 4
  %call226 = call ptr @multiSelectCollSeq(ptr noundef %268, ptr noundef %269, i32 noundef %270)
  %271 = load ptr, ptr %apColl, align 8
  store ptr %call226, ptr %271, align 8
  %272 = load ptr, ptr %apColl, align 8
  %273 = load ptr, ptr %272, align 8
  %cmp227 = icmp eq ptr null, %273
  br i1 %cmp227, label %if.then229, label %if.end230

if.then229:                                       ; preds = %for.body
  %274 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %274, i32 0, i32 2
  %275 = load ptr, ptr %pDfltColl, align 8
  %276 = load ptr, ptr %apColl, align 8
  store ptr %275, ptr %276, align 8
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end230
  %277 = load i32, ptr %i, align 4
  %inc231 = add nsw i32 %277, 1
  store i32 %inc231, ptr %i, align 4
  %278 = load ptr, ptr %apColl, align 8
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %278, i32 1
  store ptr %incdec.ptr, ptr %apColl, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %279 = load ptr, ptr %p.addr, align 8
  store ptr %279, ptr %pLoop, align 8
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc253, %for.end
  %280 = load ptr, ptr %pLoop, align 8
  %tobool233 = icmp ne ptr %280, null
  br i1 %tobool233, label %for.body234, label %for.end255

for.body234:                                      ; preds = %for.cond232
  store i32 0, ptr %i, align 4
  br label %for.cond235

for.cond235:                                      ; preds = %for.inc250, %for.body234
  %281 = load i32, ptr %i, align 4
  %cmp236 = icmp slt i32 %281, 2
  br i1 %cmp236, label %for.body238, label %for.end252

for.body238:                                      ; preds = %for.cond235
  %282 = load ptr, ptr %pLoop, align 8
  %addrOpenEphm240 = getelementptr inbounds nuw %struct.Select, ptr %282, i32 0, i32 7
  %283 = load i32, ptr %i, align 4
  %idxprom = sext i32 %283 to i64
  %arrayidx241 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm240, i64 0, i64 %idxprom
  %284 = load i32, ptr %arrayidx241, align 4
  store i32 %284, ptr %addr239, align 4
  %285 = load i32, ptr %addr239, align 4
  %cmp242 = icmp slt i32 %285, 0
  br i1 %cmp242, label %if.then244, label %if.end245

if.then244:                                       ; preds = %for.body238
  br label %for.end252

if.end245:                                        ; preds = %for.body238
  %286 = load ptr, ptr %v, align 8
  %287 = load i32, ptr %addr239, align 4
  %288 = load i32, ptr %nCol, align 4
  call void @sqlite3VdbeChangeP2(ptr noundef %286, i32 noundef %287, i32 noundef %288)
  %289 = load ptr, ptr %v, align 8
  %290 = load i32, ptr %addr239, align 4
  %291 = load ptr, ptr %pKeyInfo, align 8
  %call246 = call ptr @sqlite3KeyInfoRef(ptr noundef %291)
  call void @sqlite3VdbeChangeP4(ptr noundef %289, i32 noundef %290, ptr noundef %call246, i32 noundef -9)
  %292 = load ptr, ptr %pLoop, align 8
  %addrOpenEphm247 = getelementptr inbounds nuw %struct.Select, ptr %292, i32 0, i32 7
  %293 = load i32, ptr %i, align 4
  %idxprom248 = sext i32 %293 to i64
  %arrayidx249 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm247, i64 0, i64 %idxprom248
  store i32 -1, ptr %arrayidx249, align 4
  br label %for.inc250

for.inc250:                                       ; preds = %if.end245
  %294 = load i32, ptr %i, align 4
  %inc251 = add nsw i32 %294, 1
  store i32 %inc251, ptr %i, align 4
  br label %for.cond235, !llvm.loop !8

for.end252:                                       ; preds = %if.then244, %for.cond235
  br label %for.inc253

for.inc253:                                       ; preds = %for.end252
  %295 = load ptr, ptr %pLoop, align 8
  %pPrior254 = getelementptr inbounds nuw %struct.Select, ptr %295, i32 0, i32 13
  %296 = load ptr, ptr %pPrior254, align 8
  store ptr %296, ptr %pLoop, align 8
  br label %for.cond232, !llvm.loop !9

for.end255:                                       ; preds = %for.cond232
  %297 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3KeyInfoUnref(ptr noundef %297)
  br label %if.end256

if.end256:                                        ; preds = %for.end255, %if.end213
  br label %multi_select_end

multi_select_end:                                 ; preds = %if.end256, %if.then222, %if.then172, %if.then108, %if.then40, %if.then14, %if.then
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  %298 = load i32, ptr %iSdst, align 8
  %299 = load ptr, ptr %pDest.addr, align 8
  %iSdst257 = getelementptr inbounds nuw %struct.SelectDest, ptr %299, i32 0, i32 2
  store i32 %298, ptr %iSdst257, align 8
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 3
  %300 = load i32, ptr %nSdst, align 4
  %301 = load ptr, ptr %pDest.addr, align 8
  %nSdst258 = getelementptr inbounds nuw %struct.SelectDest, ptr %301, i32 0, i32 3
  store i32 %300, ptr %nSdst258, align 4
  %302 = load ptr, ptr %db, align 8
  %303 = load ptr, ptr %pDelete, align 8
  call void @sqlite3SelectDelete(ptr noundef %302, ptr noundef %303)
  %304 = load i32, ptr %rc, align 4
  store i32 %304, ptr %retval, align 4
  br label %return

return:                                           ; preds = %multi_select_end, %if.then23
  %305 = load i32, ptr %retval, align 4
  ret i32 %305
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplainPop(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @computeLimitRegisters(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @selectInnerLoop(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @multiSelectValues(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @generateWithRecursiveQuery(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @multiSelectOrderBy(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext, i16 noundef signext) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @multiSelectCollSeq(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
