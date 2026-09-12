; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprSimplifiedAndOr(ptr noundef %pExpr) #0 {
entry:
  %pExpr.addr = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 44
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then, label %if.end40

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pExpr.addr, align 8
  %pRight6 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pRight6, align 8
  %call = call ptr @sqlite3ExprSimplifiedAndOr(ptr noundef %5)
  store ptr %call, ptr %pRight, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %pLeft7 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pLeft7, align 8
  %call8 = call ptr @sqlite3ExprSimplifiedAndOr(ptr noundef %7)
  store ptr %call8, ptr %pLeft, align 8
  %8 = load ptr, ptr %pLeft, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 268435457
  %cmp9 = icmp eq i32 %and, 268435456
  br i1 %cmp9, label %if.then16, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.then
  %10 = load ptr, ptr %pRight, align 8
  %flags12 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %flags12, align 4
  %and13 = and i32 %11, 536870913
  %cmp14 = icmp eq i32 %and13, 536870912
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %lor.lhs.false11, %if.then
  %12 = load ptr, ptr %pExpr.addr, align 8
  %op17 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 0
  %13 = load i8, ptr %op17, align 8
  %conv18 = zext i8 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 44
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  %14 = load ptr, ptr %pRight, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  %15 = load ptr, ptr %pLeft, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %14, %cond.true ], [ %15, %cond.false ]
  store ptr %cond, ptr %pExpr.addr, align 8
  br label %if.end39

if.else:                                          ; preds = %lor.lhs.false11
  %16 = load ptr, ptr %pRight, align 8
  %flags21 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags21, align 4
  %and22 = and i32 %17, 268435457
  %cmp23 = icmp eq i32 %and22, 268435456
  br i1 %cmp23, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.else
  %18 = load ptr, ptr %pLeft, align 8
  %flags26 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags26, align 4
  %and27 = and i32 %19, 536870913
  %cmp28 = icmp eq i32 %and27, 536870912
  br i1 %cmp28, label %if.then30, label %if.end

if.then30:                                        ; preds = %lor.lhs.false25, %if.else
  %20 = load ptr, ptr %pExpr.addr, align 8
  %op31 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 0
  %21 = load i8, ptr %op31, align 8
  %conv32 = zext i8 %21 to i32
  %cmp33 = icmp eq i32 %conv32, 44
  br i1 %cmp33, label %cond.true35, label %cond.false36

cond.true35:                                      ; preds = %if.then30
  %22 = load ptr, ptr %pLeft, align 8
  br label %cond.end37

cond.false36:                                     ; preds = %if.then30
  %23 = load ptr, ptr %pRight, align 8
  br label %cond.end37

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi ptr [ %22, %cond.true35 ], [ %23, %cond.false36 ]
  store ptr %cond38, ptr %pExpr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end37, %lor.lhs.false25
  br label %if.end39

if.end39:                                         ; preds = %if.end, %cond.end
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %lor.lhs.false
  %24 = load ptr, ptr %pExpr.addr, align 8
  ret ptr %24
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
