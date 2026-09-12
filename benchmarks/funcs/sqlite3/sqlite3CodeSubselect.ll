; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.6 = type { i32, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.332 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.558 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.572 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.573 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.574 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3CodeSubselect(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %addrOnce = alloca i32, align 4
  %rReg = alloca i32, align 4
  %pSel = alloca ptr, align 8
  %dest = alloca %struct.SelectDest, align 8
  %nReg = alloca i32, align 4
  %pLimit = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %addrOnce, align 4
  store i32 0, ptr %rReg, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %x, align 8
  store ptr %3, ptr %pSel, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 32
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pExpr.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %flags1, align 4
  %and2 = and i32 %7, 33554432
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pSel, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %selId, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %8, i8 noundef zeroext 0, ptr noundef @.str.572, i32 noundef %10)
  %11 = load ptr, ptr %v, align 8
  %12 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 14
  %regReturn = getelementptr inbounds nuw %struct.anon.6, ptr %y, i32 0, i32 1
  %13 = load i32, ptr %regReturn, align 4
  %14 = load ptr, ptr %pExpr.addr, align 8
  %y5 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 14
  %iAddr = getelementptr inbounds nuw %struct.anon.6, ptr %y5, i32 0, i32 0
  %15 = load i32, ptr %iAddr, align 8
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %11, i32 noundef 12, i32 noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 8
  %17 = load i32, ptr %iTable, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %18 = load ptr, ptr %pExpr.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags6, align 4
  %or = or i32 %19, 33554432
  store i32 %or, ptr %flags6, align 4
  %20 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 18
  %21 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %nMem, align 8
  %22 = load ptr, ptr %pExpr.addr, align 8
  %y7 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 14
  %regReturn8 = getelementptr inbounds nuw %struct.anon.6, ptr %y7, i32 0, i32 1
  store i32 %inc, ptr %regReturn8, align 4
  %23 = load ptr, ptr %v, align 8
  %24 = load ptr, ptr %pExpr.addr, align 8
  %y9 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 14
  %regReturn10 = getelementptr inbounds nuw %struct.anon.6, ptr %y9, i32 0, i32 1
  %25 = load i32, ptr %regReturn10, align 4
  %call11 = call i32 @sqlite3VdbeAddOp2(ptr noundef %23, i32 noundef 70, i32 noundef 0, i32 noundef %25)
  %add = add nsw i32 %call11, 1
  %26 = load ptr, ptr %pExpr.addr, align 8
  %y12 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 14
  %iAddr13 = getelementptr inbounds nuw %struct.anon.6, ptr %y12, i32 0, i32 0
  store i32 %add, ptr %iAddr13, align 8
  %27 = load ptr, ptr %v, align 8
  %call14 = call i32 @sqlite3VdbeAddOp0(ptr noundef %27, i32 noundef 17)
  store i32 %call14, ptr %addrOnce, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load i32, ptr %addrOnce, align 4
  %tobool = icmp ne i32 %29, 0
  %30 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.3, ptr @.str.574
  %31 = load ptr, ptr %pSel, align 8
  %selId16 = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %selId16, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %28, i8 noundef zeroext 1, ptr noundef @.str.573, ptr noundef %cond, i32 noundef %32)
  %33 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 0
  %34 = load i8, ptr %op, align 8
  %conv = zext i8 %34 to i32
  %cmp17 = icmp eq i32 %conv, 134
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %35 = load ptr, ptr %pSel, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond19 = phi i32 [ %37, %cond.true ], [ 1, %cond.false ]
  store i32 %cond19, ptr %nReg, align 4
  %38 = load ptr, ptr %pParse.addr, align 8
  %nMem20 = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 18
  %39 = load i32, ptr %nMem20, align 8
  %add21 = add nsw i32 %39, 1
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 0, i32 noundef %add21)
  %40 = load i32, ptr %nReg, align 4
  %41 = load ptr, ptr %pParse.addr, align 8
  %nMem22 = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 18
  %42 = load i32, ptr %nMem22, align 8
  %add23 = add nsw i32 %42, %40
  store i32 %add23, ptr %nMem22, align 8
  %43 = load ptr, ptr %pExpr.addr, align 8
  %op24 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 0
  %44 = load i8, ptr %op24, align 8
  %conv25 = zext i8 %44 to i32
  %cmp26 = icmp eq i32 %conv25, 134
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %cond.end
  %eDest = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  store i8 10, ptr %eDest, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %45 = load i32, ptr %iSDParm, align 4
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  store i32 %45, ptr %iSdst, align 8
  %46 = load i32, ptr %nReg, align 4
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 3
  store i32 %46, ptr %nSdst, align 4
  %47 = load ptr, ptr %v, align 8
  %iSDParm29 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %48 = load i32, ptr %iSDParm29, align 4
  %iSDParm30 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %49 = load i32, ptr %iSDParm30, align 4
  %50 = load i32, ptr %nReg, align 4
  %add31 = add nsw i32 %49, %50
  %sub = sub nsw i32 %add31, 1
  %call32 = call i32 @sqlite3VdbeAddOp3(ptr noundef %47, i32 noundef 73, i32 noundef 0, i32 noundef %48, i32 noundef %sub)
  br label %if.end36

if.else:                                          ; preds = %cond.end
  %eDest33 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 0
  store i8 3, ptr %eDest33, align 8
  %51 = load ptr, ptr %v, align 8
  %iSDParm34 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %52 = load i32, ptr %iSDParm34, align 4
  %call35 = call i32 @sqlite3VdbeAddOp2(ptr noundef %51, i32 noundef 70, i32 noundef 0, i32 noundef %52)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then28
  %53 = load ptr, ptr %pSel, align 8
  %pLimit37 = getelementptr inbounds nuw %struct.Select, ptr %53, i32 0, i32 15
  %54 = load ptr, ptr %pLimit37, align 8
  %tobool38 = icmp ne ptr %54, null
  br i1 %tobool38, label %if.then39, label %if.else52

if.then39:                                        ; preds = %if.end36
  %55 = load ptr, ptr %pParse.addr, align 8
  %db40 = getelementptr inbounds nuw %struct.Parse, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %db40, align 8
  store ptr %56, ptr %db, align 8
  %57 = load ptr, ptr %db, align 8
  %call41 = call ptr @sqlite3Expr(ptr noundef %57, i32 noundef 150, ptr noundef @.str.558)
  store ptr %call41, ptr %pLimit, align 8
  %58 = load ptr, ptr %pLimit, align 8
  %tobool42 = icmp ne ptr %58, null
  br i1 %tobool42, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.then39
  %59 = load ptr, ptr %pLimit, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %59, i32 0, i32 1
  store i8 67, ptr %affExpr, align 1
  %60 = load ptr, ptr %pParse.addr, align 8
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %pSel, align 8
  %pLimit44 = getelementptr inbounds nuw %struct.Select, ptr %62, i32 0, i32 15
  %63 = load ptr, ptr %pLimit44, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %pLeft, align 8
  %call45 = call ptr @sqlite3ExprDup(ptr noundef %61, ptr noundef %64, i32 noundef 0)
  %65 = load ptr, ptr %pLimit, align 8
  %call46 = call ptr @sqlite3PExpr(ptr noundef %60, i32 noundef 52, ptr noundef %call45, ptr noundef %65)
  store ptr %call46, ptr %pLimit, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then39
  %66 = load ptr, ptr %db, align 8
  %67 = load ptr, ptr %pSel, align 8
  %pLimit48 = getelementptr inbounds nuw %struct.Select, ptr %67, i32 0, i32 15
  %68 = load ptr, ptr %pLimit48, align 8
  %pLeft49 = getelementptr inbounds nuw %struct.Expr, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %pLeft49, align 8
  call void @sqlite3ExprDelete(ptr noundef %66, ptr noundef %69)
  %70 = load ptr, ptr %pLimit, align 8
  %71 = load ptr, ptr %pSel, align 8
  %pLimit50 = getelementptr inbounds nuw %struct.Select, ptr %71, i32 0, i32 15
  %72 = load ptr, ptr %pLimit50, align 8
  %pLeft51 = getelementptr inbounds nuw %struct.Expr, ptr %72, i32 0, i32 4
  store ptr %70, ptr %pLeft51, align 8
  br label %if.end57

if.else52:                                        ; preds = %if.end36
  %73 = load ptr, ptr %pParse.addr, align 8
  %db53 = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %db53, align 8
  %call54 = call ptr @sqlite3Expr(ptr noundef %74, i32 noundef 150, ptr noundef @.str.332)
  store ptr %call54, ptr %pLimit, align 8
  %75 = load ptr, ptr %pParse.addr, align 8
  %76 = load ptr, ptr %pLimit, align 8
  %call55 = call ptr @sqlite3PExpr(ptr noundef %75, i32 noundef 144, ptr noundef %76, ptr noundef null)
  %77 = load ptr, ptr %pSel, align 8
  %pLimit56 = getelementptr inbounds nuw %struct.Select, ptr %77, i32 0, i32 15
  store ptr %call55, ptr %pLimit56, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.end47
  %78 = load ptr, ptr %pSel, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %78, i32 0, i32 4
  store i32 0, ptr %iLimit, align 8
  %79 = load ptr, ptr %pParse.addr, align 8
  %80 = load ptr, ptr %pSel, align 8
  %call58 = call i32 @sqlite3Select(ptr noundef %79, ptr noundef %80, ptr noundef %dest)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.end57
  %iSDParm62 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %81 = load i32, ptr %iSDParm62, align 4
  store i32 %81, ptr %rReg, align 4
  %82 = load ptr, ptr %pExpr.addr, align 8
  %iTable63 = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 8
  store i32 %81, ptr %iTable63, align 4
  %83 = load i32, ptr %addrOnce, align 4
  %tobool64 = icmp ne i32 %83, 0
  br i1 %tobool64, label %if.then65, label %if.end74

if.then65:                                        ; preds = %if.end61
  %84 = load ptr, ptr %v, align 8
  %85 = load i32, ptr %addrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %84, i32 noundef %85)
  %86 = load ptr, ptr %v, align 8
  %87 = load ptr, ptr %pExpr.addr, align 8
  %y66 = getelementptr inbounds nuw %struct.Expr, ptr %87, i32 0, i32 14
  %regReturn67 = getelementptr inbounds nuw %struct.anon.6, ptr %y66, i32 0, i32 1
  %88 = load i32, ptr %regReturn67, align 4
  %call68 = call i32 @sqlite3VdbeAddOp1(ptr noundef %86, i32 noundef 66, i32 noundef %88)
  %89 = load ptr, ptr %v, align 8
  %90 = load ptr, ptr %pExpr.addr, align 8
  %y69 = getelementptr inbounds nuw %struct.Expr, ptr %90, i32 0, i32 14
  %iAddr70 = getelementptr inbounds nuw %struct.anon.6, ptr %y69, i32 0, i32 0
  %91 = load i32, ptr %iAddr70, align 8
  %sub71 = sub nsw i32 %91, 1
  %92 = load ptr, ptr %v, align 8
  %call72 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %92)
  %sub73 = sub nsw i32 %call72, 1
  call void @sqlite3VdbeChangeP1(ptr noundef %89, i32 noundef %sub71, i32 noundef %sub73)
  %93 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ClearTempRegCache(ptr noundef %93)
  br label %if.end74

if.end74:                                         ; preds = %if.then65, %if.end61
  %94 = load i32, ptr %rReg, align 4
  store i32 %94, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then60, %if.then4
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearTempRegCache(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
