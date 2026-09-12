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
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSimplifiedAndOr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprIfTrue(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %dest, i32 noundef %jumpIfNull) #0 {
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
  %destIfFalse = alloca i32, align 4
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
  store i32 %conv, ptr %op, align 4
  %6 = load i32, ptr %op, align 4
  switch i32 %6, label %sw.default [
    i32 44, label %sw.bb
    i32 43, label %sw.bb
    i32 19, label %sw.bb17
    i32 170, label %sw.bb19
    i32 45, label %sw.bb34
    i32 166, label %sw.bb34
    i32 56, label %sw.bb38
    i32 55, label %sw.bb38
    i32 54, label %sw.bb38
    i32 57, label %sw.bb38
    i32 52, label %sw.bb38
    i32 53, label %sw.bb38
    i32 50, label %sw.bb51
    i32 51, label %sw.bb51
    i32 48, label %sw.bb55
    i32 49, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end3, %if.end3
  %7 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprSimplifiedAndOr(ptr noundef %7)
  store ptr %call, ptr %pAlt, align 8
  %8 = load ptr, ptr %pAlt, align 8
  %9 = load ptr, ptr %pExpr.addr, align 8
  %cmp5 = icmp ne ptr %8, %9
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pAlt, align 8
  %12 = load i32, ptr %dest.addr, align 4
  %13 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13)
  br label %if.end16

if.else:                                          ; preds = %sw.bb
  %14 = load i32, ptr %op, align 4
  %cmp8 = icmp eq i32 %14, 44
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  %15 = load ptr, ptr %pParse.addr, align 8
  %call11 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %15)
  store i32 %call11, ptr %d2, align 4
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pLeft, align 8
  %19 = load i32, ptr %d2, align 4
  %20 = load i32, ptr %jumpIfNull.addr, align 4
  %xor = xor i32 %20, 16
  call void @sqlite3ExprIfFalse(ptr noundef %16, ptr noundef %18, i32 noundef %19, i32 noundef %xor)
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %pRight, align 8
  %24 = load i32, ptr %dest.addr, align 4
  %25 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %21, ptr noundef %23, i32 noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %v, align 8
  %27 = load i32, ptr %d2, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %26, i32 noundef %27)
  br label %if.end15

if.else12:                                        ; preds = %if.else
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pExpr.addr, align 8
  %pLeft13 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %pLeft13, align 8
  %31 = load i32, ptr %dest.addr, align 4
  %32 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %28, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pExpr.addr, align 8
  %pRight14 = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %pRight14, align 8
  %36 = load i32, ptr %dest.addr, align 4
  %37 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %33, ptr noundef %35, i32 noundef %36, i32 noundef %37)
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then7
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end3
  %38 = load ptr, ptr %pParse.addr, align 8
  %39 = load ptr, ptr %pExpr.addr, align 8
  %pLeft18 = getelementptr inbounds nuw %struct.Expr, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %pLeft18, align 8
  %41 = load i32, ptr %dest.addr, align 4
  %42 = load i32, ptr %jumpIfNull.addr, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %38, ptr noundef %40, i32 noundef %41, i32 noundef %42)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end3
  %43 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 12
  %44 = load i8, ptr %op2, align 2
  %conv20 = zext i8 %44 to i32
  %cmp21 = icmp eq i32 %conv20, 166
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, ptr %isNot, align 4
  %45 = load ptr, ptr %pExpr.addr, align 8
  %pRight23 = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %pRight23, align 8
  %call24 = call i32 @sqlite3ExprTruthValue(ptr noundef %46)
  store i32 %call24, ptr %isTrue, align 4
  %47 = load i32, ptr %isTrue, align 4
  %48 = load i32, ptr %isNot, align 4
  %xor25 = xor i32 %47, %48
  %tobool = icmp ne i32 %xor25, 0
  br i1 %tobool, label %if.then26, label %if.else29

if.then26:                                        ; preds = %sw.bb19
  %49 = load ptr, ptr %pParse.addr, align 8
  %50 = load ptr, ptr %pExpr.addr, align 8
  %pLeft27 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %pLeft27, align 8
  %52 = load i32, ptr %dest.addr, align 4
  %53 = load i32, ptr %isNot, align 4
  %tobool28 = icmp ne i32 %53, 0
  %54 = zext i1 %tobool28 to i64
  %cond = select i1 %tobool28, i32 16, i32 0
  call void @sqlite3ExprIfTrue(ptr noundef %49, ptr noundef %51, i32 noundef %52, i32 noundef %cond)
  br label %if.end33

if.else29:                                        ; preds = %sw.bb19
  %55 = load ptr, ptr %pParse.addr, align 8
  %56 = load ptr, ptr %pExpr.addr, align 8
  %pLeft30 = getelementptr inbounds nuw %struct.Expr, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %pLeft30, align 8
  %58 = load i32, ptr %dest.addr, align 4
  %59 = load i32, ptr %isNot, align 4
  %tobool31 = icmp ne i32 %59, 0
  %60 = zext i1 %tobool31 to i64
  %cond32 = select i1 %tobool31, i32 16, i32 0
  call void @sqlite3ExprIfFalse(ptr noundef %55, ptr noundef %57, i32 noundef %58, i32 noundef %cond32)
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then26
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end3, %if.end3
  %61 = load i32, ptr %op, align 4
  %cmp35 = icmp eq i32 %61, 45
  %62 = zext i1 %cmp35 to i64
  %cond37 = select i1 %cmp35, i32 53, i32 52
  store i32 %cond37, ptr %op, align 4
  store i32 128, ptr %jumpIfNull.addr, align 4
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb34, %if.end3, %if.end3, %if.end3, %if.end3, %if.end3, %if.end3
  %63 = load ptr, ptr %pExpr.addr, align 8
  %pLeft39 = getelementptr inbounds nuw %struct.Expr, ptr %63, i32 0, i32 4
  %64 = load ptr, ptr %pLeft39, align 8
  %call40 = call i32 @sqlite3ExprIsVector(ptr noundef %64)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %sw.bb38
  br label %default_expr

if.end43:                                         ; preds = %sw.bb38
  %65 = load ptr, ptr %pParse.addr, align 8
  %66 = load ptr, ptr %pExpr.addr, align 8
  %pLeft44 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %pLeft44, align 8
  %call45 = call i32 @sqlite3ExprCodeTemp(ptr noundef %65, ptr noundef %67, ptr noundef %regFree1)
  store i32 %call45, ptr %r1, align 4
  %68 = load ptr, ptr %pParse.addr, align 8
  %69 = load ptr, ptr %pExpr.addr, align 8
  %pRight46 = getelementptr inbounds nuw %struct.Expr, ptr %69, i32 0, i32 5
  %70 = load ptr, ptr %pRight46, align 8
  %call47 = call i32 @sqlite3ExprCodeTemp(ptr noundef %68, ptr noundef %70, ptr noundef %regFree2)
  store i32 %call47, ptr %r2, align 4
  %71 = load ptr, ptr %pParse.addr, align 8
  %72 = load ptr, ptr %pExpr.addr, align 8
  %pLeft48 = getelementptr inbounds nuw %struct.Expr, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %pLeft48, align 8
  %74 = load ptr, ptr %pExpr.addr, align 8
  %pRight49 = getelementptr inbounds nuw %struct.Expr, ptr %74, i32 0, i32 5
  %75 = load ptr, ptr %pRight49, align 8
  %76 = load i32, ptr %op, align 4
  %77 = load i32, ptr %r1, align 4
  %78 = load i32, ptr %r2, align 4
  %79 = load i32, ptr %dest.addr, align 4
  %80 = load i32, ptr %jumpIfNull.addr, align 4
  %call50 = call i32 @codeCompare(ptr noundef %71, ptr noundef %73, ptr noundef %75, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %80)
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end3, %if.end3
  %81 = load ptr, ptr %pParse.addr, align 8
  %82 = load ptr, ptr %pExpr.addr, align 8
  %pLeft52 = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %pLeft52, align 8
  %call53 = call i32 @sqlite3ExprCodeTemp(ptr noundef %81, ptr noundef %83, ptr noundef %regFree1)
  store i32 %call53, ptr %r1, align 4
  %84 = load ptr, ptr %v, align 8
  %85 = load i32, ptr %op, align 4
  %86 = load i32, ptr %r1, align 4
  %87 = load i32, ptr %dest.addr, align 4
  %call54 = call i32 @sqlite3VdbeAddOp2(ptr noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87)
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end3
  %88 = load ptr, ptr %pParse.addr, align 8
  %89 = load ptr, ptr %pExpr.addr, align 8
  %90 = load i32, ptr %dest.addr, align 4
  %91 = load i32, ptr %jumpIfNull.addr, align 4
  call void @exprCodeBetween(ptr noundef %88, ptr noundef %89, i32 noundef %90, ptr noundef @sqlite3ExprIfTrue, i32 noundef %91)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end3
  %92 = load ptr, ptr %pParse.addr, align 8
  %call57 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %92)
  store i32 %call57, ptr %destIfFalse, align 4
  %93 = load i32, ptr %jumpIfNull.addr, align 4
  %tobool58 = icmp ne i32 %93, 0
  br i1 %tobool58, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb56
  %94 = load i32, ptr %dest.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb56
  %95 = load i32, ptr %destIfFalse, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond59 = phi i32 [ %94, %cond.true ], [ %95, %cond.false ]
  store i32 %cond59, ptr %destIfNull, align 4
  %96 = load ptr, ptr %pParse.addr, align 8
  %97 = load ptr, ptr %pExpr.addr, align 8
  %98 = load i32, ptr %destIfFalse, align 4
  %99 = load i32, ptr %destIfNull, align 4
  call void @sqlite3ExprCodeIN(ptr noundef %96, ptr noundef %97, i32 noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %v, align 8
  %101 = load i32, ptr %dest.addr, align 4
  %call60 = call i32 @sqlite3VdbeGoto(ptr noundef %100, i32 noundef %101)
  %102 = load ptr, ptr %v, align 8
  %103 = load i32, ptr %destIfFalse, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %102, i32 noundef %103)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end3
  br label %default_expr

default_expr:                                     ; preds = %sw.default, %if.then42
  %104 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %104, i32 0, i32 2
  %105 = load i32, ptr %flags, align 4
  %and = and i32 %105, 268435457
  %cmp61 = icmp eq i32 %and, 268435456
  br i1 %cmp61, label %if.then63, label %if.else65

if.then63:                                        ; preds = %default_expr
  %106 = load ptr, ptr %v, align 8
  %107 = load i32, ptr %dest.addr, align 4
  %call64 = call i32 @sqlite3VdbeGoto(ptr noundef %106, i32 noundef %107)
  br label %if.end77

if.else65:                                        ; preds = %default_expr
  %108 = load ptr, ptr %pExpr.addr, align 8
  %flags66 = getelementptr inbounds nuw %struct.Expr, ptr %108, i32 0, i32 2
  %109 = load i32, ptr %flags66, align 4
  %and67 = and i32 %109, 536870913
  %cmp68 = icmp eq i32 %and67, 536870912
  br i1 %cmp68, label %if.then70, label %if.else71

if.then70:                                        ; preds = %if.else65
  br label %if.end76

if.else71:                                        ; preds = %if.else65
  %110 = load ptr, ptr %pParse.addr, align 8
  %111 = load ptr, ptr %pExpr.addr, align 8
  %call72 = call i32 @sqlite3ExprCodeTemp(ptr noundef %110, ptr noundef %111, ptr noundef %regFree1)
  store i32 %call72, ptr %r1, align 4
  %112 = load ptr, ptr %v, align 8
  %113 = load i32, ptr %r1, align 4
  %114 = load i32, ptr %dest.addr, align 4
  %115 = load i32, ptr %jumpIfNull.addr, align 4
  %cmp73 = icmp ne i32 %115, 0
  %conv74 = zext i1 %cmp73 to i32
  %call75 = call i32 @sqlite3VdbeAddOp3(ptr noundef %112, i32 noundef 18, i32 noundef %113, i32 noundef %114, i32 noundef %conv74)
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %if.then70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.then63
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end77, %cond.end, %sw.bb55, %sw.bb51, %if.end43, %if.end33, %sw.bb17, %if.end16
  %116 = load ptr, ptr %pParse.addr, align 8
  %117 = load i32, ptr %regFree1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %116, i32 noundef %117)
  %118 = load ptr, ptr %pParse.addr, align 8
  %119 = load i32, ptr %regFree2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %118, i32 noundef %119)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then2, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
