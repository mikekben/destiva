; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.AggInfo_col = type { ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @updateAccumulator(ptr noundef %pParse, i32 noundef %regAcc, ptr noundef %pAggInfo) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %regAcc.addr = alloca i32, align 4
  %pAggInfo.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %regHit = alloca i32, align 4
  %addrHitTest = alloca i32, align 4
  %pF = alloca ptr, align 8
  %pC = alloca ptr, align 8
  %nArg = alloca i32, align 4
  %addrNext = alloca i32, align 4
  %regAgg = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pFilter = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %regAcc, ptr %regAcc.addr, align 4
  store ptr %pAggInfo, ptr %pAggInfo.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  store i32 0, ptr %regHit, align 4
  store i32 0, ptr %addrHitTest, align 4
  %2 = load ptr, ptr %pAggInfo.addr, align 8
  %directMode = getelementptr inbounds nuw %struct.AggInfo, ptr %2, i32 0, i32 0
  store i8 1, ptr %directMode, align 8
  store i32 0, ptr %i, align 4
  %3 = load ptr, ptr %pAggInfo.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %3, i32 0, i32 11
  %4 = load ptr, ptr %aFunc, align 8
  store ptr %4, ptr %pF, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pAggInfo.addr, align 8
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %nFunc, align 8
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %addrNext, align 4
  %8 = load ptr, ptr %pF, align 8
  %pExpr = getelementptr inbounds nuw %struct.AggInfo_func, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pExpr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %x, align 8
  store ptr %10, ptr %pList, align 8
  %11 = load ptr, ptr %pF, align 8
  %pExpr1 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pExpr1, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 16777216
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %pF, align 8
  %pExpr3 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pExpr3, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 14
  %16 = load ptr, ptr %y, align 8
  %pFilter4 = getelementptr inbounds nuw %struct.Window, ptr %16, i32 0, i32 13
  %17 = load ptr, ptr %pFilter4, align 8
  store ptr %17, ptr %pFilter, align 8
  %18 = load ptr, ptr %pAggInfo.addr, align 8
  %nAccumulator = getelementptr inbounds nuw %struct.AggInfo, ptr %18, i32 0, i32 10
  %19 = load i32, ptr %nAccumulator, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %20 = load ptr, ptr %pF, align 8
  %pFunc = getelementptr inbounds nuw %struct.AggInfo_func, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %funcFlags, align 4
  %and5 = and i32 %22, 32
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %land.lhs.true
  %23 = load i32, ptr %regHit, align 4
  %cmp8 = icmp eq i32 %23, 0
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then7
  %24 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 18
  %25 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regHit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then7
  %26 = load ptr, ptr %v, align 8
  %27 = load i32, ptr %regAcc.addr, align 4
  %28 = load i32, ptr %regHit, align 4
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %26, i32 noundef 78, i32 noundef %27, i32 noundef %28)
  br label %if.end10

if.end10:                                         ; preds = %if.end, %land.lhs.true, %if.then
  %29 = load ptr, ptr %pParse.addr, align 8
  %call11 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %29)
  store i32 %call11, ptr %addrNext, align 4
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pFilter, align 8
  %32 = load i32, ptr %addrNext, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %30, ptr noundef %31, i32 noundef %32, i32 noundef 16)
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %for.body
  %33 = load ptr, ptr %pList, align 8
  %tobool13 = icmp ne ptr %33, null
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %34 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %34, i32 0, i32 0
  %35 = load i32, ptr %nExpr, align 8
  store i32 %35, ptr %nArg, align 4
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load i32, ptr %nArg, align 4
  %call15 = call i32 @sqlite3GetTempRange(ptr noundef %36, i32 noundef %37)
  store i32 %call15, ptr %regAgg, align 4
  %38 = load ptr, ptr %pParse.addr, align 8
  %39 = load ptr, ptr %pList, align 8
  %40 = load i32, ptr %regAgg, align 4
  %call16 = call i32 @sqlite3ExprCodeExprList(ptr noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef 0, i8 noundef zeroext 1)
  br label %if.end17

if.else:                                          ; preds = %if.end12
  store i32 0, ptr %nArg, align 4
  store i32 0, ptr %regAgg, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %41 = load ptr, ptr %pF, align 8
  %iDistinct = getelementptr inbounds nuw %struct.AggInfo_func, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %iDistinct, align 4
  %cmp18 = icmp sge i32 %42, 0
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %if.end17
  %43 = load i32, ptr %addrNext, align 4
  %cmp20 = icmp eq i32 %43, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then19
  %44 = load ptr, ptr %pParse.addr, align 8
  %call22 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %44)
  store i32 %call22, ptr %addrNext, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pF, align 8
  %iDistinct24 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %46, i32 0, i32 3
  %47 = load i32, ptr %iDistinct24, align 4
  %48 = load i32, ptr %addrNext, align 4
  %49 = load i32, ptr %regAgg, align 4
  call void @codeDistinct(ptr noundef %45, i32 noundef %47, i32 noundef %48, i32 noundef 1, i32 noundef %49)
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end17
  %50 = load ptr, ptr %pF, align 8
  %pFunc26 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %pFunc26, align 8
  %funcFlags27 = getelementptr inbounds nuw %struct.FuncDef, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %funcFlags27, align 4
  %and28 = and i32 %52, 32
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then30, label %if.end50

if.then30:                                        ; preds = %if.end25
  store ptr null, ptr %pColl, align 8
  store i32 0, ptr %j, align 4
  %53 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %53, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.then30
  %54 = load ptr, ptr %pColl, align 8
  %tobool32 = icmp ne ptr %54, null
  br i1 %tobool32, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond31
  %55 = load i32, ptr %j, align 4
  %56 = load i32, ptr %nArg, align 4
  %cmp33 = icmp slt i32 %55, %56
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond31
  %57 = phi i1 [ false, %for.cond31 ], [ %cmp33, %land.rhs ]
  br i1 %57, label %for.body34, label %for.end

for.body34:                                       ; preds = %land.end
  %58 = load ptr, ptr %pParse.addr, align 8
  %59 = load ptr, ptr %pItem, align 8
  %pExpr35 = getelementptr inbounds nuw %struct.ExprList_item, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pExpr35, align 8
  %call36 = call ptr @sqlite3ExprCollSeq(ptr noundef %58, ptr noundef %60)
  store ptr %call36, ptr %pColl, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body34
  %61 = load i32, ptr %j, align 4
  %inc37 = add nsw i32 %61, 1
  store i32 %inc37, ptr %j, align 4
  %62 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %62, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond31, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %63 = load ptr, ptr %pColl, align 8
  %tobool38 = icmp ne ptr %63, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %for.end
  %64 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %pDfltColl, align 8
  store ptr %66, ptr %pColl, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %for.end
  %67 = load i32, ptr %regHit, align 4
  %cmp41 = icmp eq i32 %67, 0
  br i1 %cmp41, label %land.lhs.true42, label %if.end48

land.lhs.true42:                                  ; preds = %if.end40
  %68 = load ptr, ptr %pAggInfo.addr, align 8
  %nAccumulator43 = getelementptr inbounds nuw %struct.AggInfo, ptr %68, i32 0, i32 10
  %69 = load i32, ptr %nAccumulator43, align 4
  %tobool44 = icmp ne i32 %69, 0
  br i1 %tobool44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.lhs.true42
  %70 = load ptr, ptr %pParse.addr, align 8
  %nMem46 = getelementptr inbounds nuw %struct.Parse, ptr %70, i32 0, i32 18
  %71 = load i32, ptr %nMem46, align 8
  %inc47 = add nsw i32 %71, 1
  store i32 %inc47, ptr %nMem46, align 8
  store i32 %inc47, ptr %regHit, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true42, %if.end40
  %72 = load ptr, ptr %v, align 8
  %73 = load i32, ptr %regHit, align 4
  %74 = load ptr, ptr %pColl, align 8
  %call49 = call i32 @sqlite3VdbeAddOp4(ptr noundef %72, i32 noundef 82, i32 noundef %73, i32 noundef 0, i32 noundef 0, ptr noundef %74, i32 noundef -2)
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end25
  %75 = load ptr, ptr %v, align 8
  %76 = load i32, ptr %regAgg, align 4
  %77 = load ptr, ptr %pF, align 8
  %iMem = getelementptr inbounds nuw %struct.AggInfo_func, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %iMem, align 8
  %call51 = call i32 @sqlite3VdbeAddOp3(ptr noundef %75, i32 noundef 154, i32 noundef 0, i32 noundef %76, i32 noundef %78)
  %79 = load ptr, ptr %v, align 8
  %80 = load ptr, ptr %pF, align 8
  %pFunc52 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %pFunc52, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %79, ptr noundef %81, i32 noundef -8)
  %82 = load ptr, ptr %v, align 8
  %83 = load i32, ptr %nArg, align 4
  %conv = trunc i32 %83 to i8
  %conv53 = zext i8 %conv to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %82, i16 noundef zeroext %conv53)
  %84 = load ptr, ptr %pParse.addr, align 8
  %85 = load i32, ptr %regAgg, align 4
  %86 = load i32, ptr %nArg, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %84, i32 noundef %85, i32 noundef %86)
  %87 = load i32, ptr %addrNext, align 4
  %tobool54 = icmp ne i32 %87, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  %88 = load ptr, ptr %v, align 8
  %89 = load i32, ptr %addrNext, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %88, i32 noundef %89)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %90 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %90, 1
  store i32 %inc58, ptr %i, align 4
  %91 = load ptr, ptr %pF, align 8
  %incdec.ptr59 = getelementptr inbounds nuw %struct.AggInfo_func, ptr %91, i32 1
  store ptr %incdec.ptr59, ptr %pF, align 8
  br label %for.cond, !llvm.loop !8

for.end60:                                        ; preds = %for.cond
  %92 = load i32, ptr %regHit, align 4
  %cmp61 = icmp eq i32 %92, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end67

land.lhs.true63:                                  ; preds = %for.end60
  %93 = load ptr, ptr %pAggInfo.addr, align 8
  %nAccumulator64 = getelementptr inbounds nuw %struct.AggInfo, ptr %93, i32 0, i32 10
  %94 = load i32, ptr %nAccumulator64, align 4
  %tobool65 = icmp ne i32 %94, 0
  br i1 %tobool65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %land.lhs.true63
  %95 = load i32, ptr %regAcc.addr, align 4
  store i32 %95, ptr %regHit, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %land.lhs.true63, %for.end60
  %96 = load i32, ptr %regHit, align 4
  %tobool68 = icmp ne i32 %96, 0
  br i1 %tobool68, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end67
  %97 = load ptr, ptr %v, align 8
  %98 = load i32, ptr %regHit, align 4
  %call70 = call i32 @sqlite3VdbeAddOp1(ptr noundef %97, i32 noundef 18, i32 noundef %98)
  store i32 %call70, ptr %addrHitTest, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end67
  store i32 0, ptr %i, align 4
  %99 = load ptr, ptr %pAggInfo.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.AggInfo, ptr %99, i32 0, i32 8
  %100 = load ptr, ptr %aCol, align 8
  store ptr %100, ptr %pC, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc79, %if.end71
  %101 = load i32, ptr %i, align 4
  %102 = load ptr, ptr %pAggInfo.addr, align 8
  %nAccumulator73 = getelementptr inbounds nuw %struct.AggInfo, ptr %102, i32 0, i32 10
  %103 = load i32, ptr %nAccumulator73, align 4
  %cmp74 = icmp slt i32 %101, %103
  br i1 %cmp74, label %for.body76, label %for.end82

for.body76:                                       ; preds = %for.cond72
  %104 = load ptr, ptr %pParse.addr, align 8
  %105 = load ptr, ptr %pC, align 8
  %pExpr77 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %105, i32 0, i32 5
  %106 = load ptr, ptr %pExpr77, align 8
  %107 = load ptr, ptr %pC, align 8
  %iMem78 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %107, i32 0, i32 4
  %108 = load i32, ptr %iMem78, align 4
  call void @sqlite3ExprCode(ptr noundef %104, ptr noundef %106, i32 noundef %108)
  br label %for.inc79

for.inc79:                                        ; preds = %for.body76
  %109 = load i32, ptr %i, align 4
  %inc80 = add nsw i32 %109, 1
  store i32 %inc80, ptr %i, align 4
  %110 = load ptr, ptr %pC, align 8
  %incdec.ptr81 = getelementptr inbounds nuw %struct.AggInfo_col, ptr %110, i32 1
  store ptr %incdec.ptr81, ptr %pC, align 8
  br label %for.cond72, !llvm.loop !9

for.end82:                                        ; preds = %for.cond72
  %111 = load ptr, ptr %pAggInfo.addr, align 8
  %directMode83 = getelementptr inbounds nuw %struct.AggInfo, ptr %111, i32 0, i32 0
  store i8 0, ptr %directMode83, align 8
  %112 = load i32, ptr %addrHitTest, align 4
  %tobool84 = icmp ne i32 %112, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.end82
  %113 = load ptr, ptr %v, align 8
  %114 = load i32, ptr %addrHitTest, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %113, i32 noundef %114)
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.end82
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @codeDistinct(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
