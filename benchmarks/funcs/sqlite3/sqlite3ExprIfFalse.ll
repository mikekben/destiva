; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprTruthValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeIN(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprCodeBetween(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprIfFalse(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %dest, i32 noundef %jumpIfNull) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %dest.addr = alloca i32, align 4
  %jumpIfNull.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %op = alloca i32, align 4
  %regFree1 = alloca i32, align 4
  %regFree2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %pAlt = alloca ptr, align 8
  %d2 = alloca i32, align 4
  %isNot = alloca i32, align 4
  %isTrue = alloca i32, align 4
  %destIfNull = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %dest, ptr %dest.addr, align 4
  store i32 %jumpIfNull, ptr %jumpIfNull.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  store i32 0, ptr %op, align 4
  store i32 0, ptr %regFree1, align 4
  store i32 0, ptr %regFree2, align 4
  %2 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pExpr.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pExpr.addr, align 8
  %op4 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op4, align 8
  %conv = zext i8 %5 to i32
  %add = add nsw i32 %conv, 0
  %xor = xor i32 %add, 1
  %sub = sub nsw i32 %xor, 0
  store i32 %sub, ptr %op, align 4
  %6 = load ptr, ptr %pExpr.addr, align 8
  %op5 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op5, align 8
  %conv6 = zext i8 %7 to i32
  switch i32 %conv6, label %sw.default [
    i32 44, label %sw.bb
    i32 43, label %sw.bb
    i32 19, label %sw.bb22
    i32 170, label %sw.bb24
    i32 45, label %sw.bb39
    i32 166, label %sw.bb39
    i32 56, label %sw.bb45
    i32 55, label %sw.bb45
    i32 54, label %sw.bb45
    i32 57, label %sw.bb45
    i32 52, label %sw.bb45
    i32 53, label %sw.bb45
    i32 50, label %sw.bb58
    i32 51, label %sw.bb58
    i32 48, label %sw.bb62
    i32 49, label %sw.bb63
  ]

sw.bb:                                            ; preds = %if.end3, %if.end3
  %8 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprSimplifiedAndOr(ptr noundef %8)
  store ptr %call, ptr %pAlt, align 8
  %9 = load ptr, ptr %pAlt, align 8
  %10 = load ptr, ptr %pExpr.addr, align 8
  %cmp7 = icmp ne ptr %9, %10
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pAlt, align 8
  %13 = load i32, ptr %dest.addr, align 4
  %14 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %11, ptr noundef %12, i32 noundef %13, i32 noundef %14)
  br label %if.end21

if.else:                                          ; preds = %sw.bb
  %15 = load ptr, ptr %pExpr.addr, align 8
  %op10 = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 0
  %16 = load i8, ptr %op10, align 8
  %conv11 = zext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 44
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pLeft, align 8
  %20 = load i32, ptr %dest.addr, align 4
  %21 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %17, ptr noundef %19, i32 noundef %20, i32 noundef %21)
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %pRight, align 8
  %25 = load i32, ptr %dest.addr, align 4
  %26 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %22, ptr noundef %24, i32 noundef %25, i32 noundef %26)
  br label %if.end20

if.else15:                                        ; preds = %if.else
  %27 = load ptr, ptr %pParse.addr, align 8
  %call16 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %27)
  store i32 %call16, ptr %d2, align 4
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pExpr.addr, align 8
  %pLeft17 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %pLeft17, align 8
  %31 = load i32, ptr %d2, align 4
  %32 = load i32, ptr %jumpIfNull.addr, align 4
  %xor18 = xor i32 %32, 16
  call void @sqlite3ExprIfTrue(ptr noundef %28, ptr noundef %30, i32 noundef %31, i32 noundef %xor18)
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pExpr.addr, align 8
  %pRight19 = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %pRight19, align 8
  %36 = load i32, ptr %dest.addr, align 4
  %37 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %33, ptr noundef %35, i32 noundef %36, i32 noundef %37)
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %d2, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %38, i32 noundef %39)
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then9
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end3
  %40 = load ptr, ptr %pParse.addr, align 8
  %41 = load ptr, ptr %pExpr.addr, align 8
  %pLeft23 = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %pLeft23, align 8
  %43 = load i32, ptr %dest.addr, align 4
  %44 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %40, ptr noundef %42, i32 noundef %43, i32 noundef %44)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end3
  %45 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 12
  %46 = load i8, ptr %op2, align 2
  %conv25 = zext i8 %46 to i32
  %cmp26 = icmp eq i32 %conv25, 166
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, ptr %isNot, align 4
  %47 = load ptr, ptr %pExpr.addr, align 8
  %pRight28 = getelementptr inbounds nuw %struct.Expr, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %pRight28, align 8
  %call29 = call i32 @sqlite3ExprTruthValue(ptr noundef %48)
  store i32 %call29, ptr %isTrue, align 4
  %49 = load i32, ptr %isTrue, align 4
  %50 = load i32, ptr %isNot, align 4
  %xor30 = xor i32 %49, %50
  %tobool = icmp ne i32 %xor30, 0
  br i1 %tobool, label %if.then31, label %if.else34

if.then31:                                        ; preds = %sw.bb24
  %51 = load ptr, ptr %pParse.addr, align 8
  %52 = load ptr, ptr %pExpr.addr, align 8
  %pLeft32 = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %pLeft32, align 8
  %54 = load i32, ptr %dest.addr, align 4
  %55 = load i32, ptr %isNot, align 4
  %tobool33 = icmp ne i32 %55, 0
  %56 = zext i1 %tobool33 to i64
  %cond = select i1 %tobool33, i32 0, i32 16
  call void @sqlite3ExprIfFalse(ptr noundef %51, ptr noundef %53, i32 noundef %54, i32 noundef %cond)
  br label %if.end38

if.else34:                                        ; preds = %sw.bb24
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load ptr, ptr %pExpr.addr, align 8
  %pLeft35 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %pLeft35, align 8
  %60 = load i32, ptr %dest.addr, align 4
  %61 = load i32, ptr %isNot, align 4
  %tobool36 = icmp ne i32 %61, 0
  %62 = zext i1 %tobool36 to i64
  %cond37 = select i1 %tobool36, i32 0, i32 16
  call void @sqlite3ExprIfTrue(ptr noundef %57, ptr noundef %59, i32 noundef %60, i32 noundef %cond37)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.then31
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end3, %if.end3
  %63 = load ptr, ptr %pExpr.addr, align 8
  %op40 = getelementptr inbounds nuw %struct.Expr, ptr %63, i32 0, i32 0
  %64 = load i8, ptr %op40, align 8
  %conv41 = zext i8 %64 to i32
  %cmp42 = icmp eq i32 %conv41, 45
  %65 = zext i1 %cmp42 to i64
  %cond44 = select i1 %cmp42, i32 52, i32 53
  store i32 %cond44, ptr %op, align 4
  store i32 128, ptr %jumpIfNull.addr, align 4
  br label %sw.bb45

sw.bb45:                                          ; preds = %sw.bb39, %if.end3, %if.end3, %if.end3, %if.end3, %if.end3, %if.end3
  %66 = load ptr, ptr %pExpr.addr, align 8
  %pLeft46 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %pLeft46, align 8
  %call47 = call i32 @sqlite3ExprIsVector(ptr noundef %67)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %sw.bb45
  br label %default_expr

if.end50:                                         ; preds = %sw.bb45
  %68 = load ptr, ptr %pParse.addr, align 8
  %69 = load ptr, ptr %pExpr.addr, align 8
  %pLeft51 = getelementptr inbounds nuw %struct.Expr, ptr %69, i32 0, i32 4
  %70 = load ptr, ptr %pLeft51, align 8
  %call52 = call i32 @sqlite3ExprCodeTemp(ptr noundef %68, ptr noundef %70, ptr noundef %regFree1)
  store i32 %call52, ptr %r1, align 4
  %71 = load ptr, ptr %pParse.addr, align 8
  %72 = load ptr, ptr %pExpr.addr, align 8
  %pRight53 = getelementptr inbounds nuw %struct.Expr, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %pRight53, align 8
  %call54 = call i32 @sqlite3ExprCodeTemp(ptr noundef %71, ptr noundef %73, ptr noundef %regFree2)
  store i32 %call54, ptr %r2, align 4
  %74 = load ptr, ptr %pParse.addr, align 8
  %75 = load ptr, ptr %pExpr.addr, align 8
  %pLeft55 = getelementptr inbounds nuw %struct.Expr, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %pLeft55, align 8
  %77 = load ptr, ptr %pExpr.addr, align 8
  %pRight56 = getelementptr inbounds nuw %struct.Expr, ptr %77, i32 0, i32 5
  %78 = load ptr, ptr %pRight56, align 8
  %79 = load i32, ptr %op, align 4
  %80 = load i32, ptr %r1, align 4
  %81 = load i32, ptr %r2, align 4
  %82 = load i32, ptr %dest.addr, align 4
  %83 = load i32, ptr %jumpIfNull.addr, align 4
  %call57 = call i32 @codeCompare(ptr noundef %74, ptr noundef %76, ptr noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end3, %if.end3
  %84 = load ptr, ptr %pParse.addr, align 8
  %85 = load ptr, ptr %pExpr.addr, align 8
  %pLeft59 = getelementptr inbounds nuw %struct.Expr, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %pLeft59, align 8
  %call60 = call i32 @sqlite3ExprCodeTemp(ptr noundef %84, ptr noundef %86, ptr noundef %regFree1)
  store i32 %call60, ptr %r1, align 4
  %87 = load ptr, ptr %v, align 8
  %88 = load i32, ptr %op, align 4
  %89 = load i32, ptr %r1, align 4
  %90 = load i32, ptr %dest.addr, align 4
  %call61 = call i32 @sqlite3VdbeAddOp2(ptr noundef %87, i32 noundef %88, i32 noundef %89, i32 noundef %90)
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end3
  %91 = load ptr, ptr %pParse.addr, align 8
  %92 = load ptr, ptr %pExpr.addr, align 8
  %93 = load i32, ptr %dest.addr, align 4
  %94 = load i32, ptr %jumpIfNull.addr, align 4
  call void @exprCodeBetween(ptr noundef %91, ptr noundef %92, i32 noundef %93, ptr noundef @sqlite3ExprIfFalse, i32 noundef %94)
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end3
  %95 = load i32, ptr %jumpIfNull.addr, align 4
  %tobool64 = icmp ne i32 %95, 0
  br i1 %tobool64, label %if.then65, label %if.else66

if.then65:                                        ; preds = %sw.bb63
  %96 = load ptr, ptr %pParse.addr, align 8
  %97 = load ptr, ptr %pExpr.addr, align 8
  %98 = load i32, ptr %dest.addr, align 4
  %99 = load i32, ptr %dest.addr, align 4
  call void @sqlite3ExprCodeIN(ptr noundef %96, ptr noundef %97, i32 noundef %98, i32 noundef %99)
  br label %if.end68

if.else66:                                        ; preds = %sw.bb63
  %100 = load ptr, ptr %pParse.addr, align 8
  %call67 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %100)
  store i32 %call67, ptr %destIfNull, align 4
  %101 = load ptr, ptr %pParse.addr, align 8
  %102 = load ptr, ptr %pExpr.addr, align 8
  %103 = load i32, ptr %dest.addr, align 4
  %104 = load i32, ptr %destIfNull, align 4
  call void @sqlite3ExprCodeIN(ptr noundef %101, ptr noundef %102, i32 noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %v, align 8
  %106 = load i32, ptr %destIfNull, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %105, i32 noundef %106)
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then65
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  br label %default_expr

default_expr:                                     ; preds = %sw.default, %if.then49
  %107 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %107, i32 0, i32 2
  %108 = load i32, ptr %flags, align 4
  %and = and i32 %108, 536870913
  %cmp69 = icmp eq i32 %and, 536870912
  br i1 %cmp69, label %if.then71, label %if.else73

if.then71:                                        ; preds = %default_expr
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %dest.addr, align 4
  %call72 = call i32 @sqlite3VdbeGoto(ptr noundef %109, i32 noundef %110)
  br label %if.end85

if.else73:                                        ; preds = %default_expr
  %111 = load ptr, ptr %pExpr.addr, align 8
  %flags74 = getelementptr inbounds nuw %struct.Expr, ptr %111, i32 0, i32 2
  %112 = load i32, ptr %flags74, align 4
  %and75 = and i32 %112, 268435457
  %cmp76 = icmp eq i32 %and75, 268435456
  br i1 %cmp76, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.else73
  br label %if.end84

if.else79:                                        ; preds = %if.else73
  %113 = load ptr, ptr %pParse.addr, align 8
  %114 = load ptr, ptr %pExpr.addr, align 8
  %call80 = call i32 @sqlite3ExprCodeTemp(ptr noundef %113, ptr noundef %114, ptr noundef %regFree1)
  store i32 %call80, ptr %r1, align 4
  %115 = load ptr, ptr %v, align 8
  %116 = load i32, ptr %r1, align 4
  %117 = load i32, ptr %dest.addr, align 4
  %118 = load i32, ptr %jumpIfNull.addr, align 4
  %cmp81 = icmp ne i32 %118, 0
  %conv82 = zext i1 %cmp81 to i32
  %call83 = call i32 @sqlite3VdbeAddOp3(ptr noundef %115, i32 noundef 20, i32 noundef %116, i32 noundef %117, i32 noundef %conv82)
  br label %if.end84

if.end84:                                         ; preds = %if.else79, %if.then78
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then71
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end85, %if.end68, %sw.bb62, %sw.bb58, %if.end50, %if.end38, %sw.bb22, %if.end21
  %119 = load ptr, ptr %pParse.addr, align 8
  %120 = load i32, ptr %regFree1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %119, i32 noundef %120)
  %121 = load ptr, ptr %pParse.addr, align 8
  %122 = load i32, ptr %regFree2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %121, i32 noundef %122)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSimplifiedAndOr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfTrue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
