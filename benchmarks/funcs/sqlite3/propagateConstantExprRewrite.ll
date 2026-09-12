; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.WhereConst = type { ptr, i32, i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @propagateConstantExprRewrite(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pConst = alloca ptr, align 8
  %pColumn = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 162
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %u, align 8
  store ptr %5, ptr %pConst, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %pConst, align 8
  %nConst = getelementptr inbounds nuw %struct.WhereConst, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nConst, align 8
  %cmp6 = icmp slt i32 %6, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pConst, align 8
  %apExpr = getelementptr inbounds nuw %struct.WhereConst, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %apExpr, align 8
  %11 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %11, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %pColumn, align 8
  %13 = load ptr, ptr %pColumn, align 8
  %14 = load ptr, ptr %pExpr.addr, align 8
  %cmp8 = icmp eq ptr %13, %14
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %15 = load ptr, ptr %pColumn, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %iTable, align 4
  %17 = load ptr, ptr %pExpr.addr, align 8
  %iTable12 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %iTable12, align 4
  %cmp13 = icmp ne i32 %16, %18
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  br label %for.inc

if.end16:                                         ; preds = %if.end11
  %19 = load ptr, ptr %pColumn, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 9
  %20 = load i16, ptr %iColumn, align 8
  %conv17 = sext i16 %20 to i32
  %21 = load ptr, ptr %pExpr.addr, align 8
  %iColumn18 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 9
  %22 = load i16, ptr %iColumn18, align 8
  %conv19 = sext i16 %22 to i32
  %cmp20 = icmp ne i32 %conv17, %conv19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  br label %for.inc

if.end23:                                         ; preds = %if.end16
  %23 = load ptr, ptr %pConst, align 8
  %nChng = getelementptr inbounds nuw %struct.WhereConst, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %nChng, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %nChng, align 4
  %25 = load ptr, ptr %pExpr.addr, align 8
  %flags24 = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %flags24, align 4
  %and25 = and i32 %26, -8388609
  store i32 %and25, ptr %flags24, align 4
  %27 = load ptr, ptr %pExpr.addr, align 8
  %flags26 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %flags26, align 4
  %or = or i32 %28, 8
  store i32 %or, ptr %flags26, align 4
  %29 = load ptr, ptr %pConst, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereConst, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %db, align 8
  %32 = load ptr, ptr %pConst, align 8
  %apExpr27 = getelementptr inbounds nuw %struct.WhereConst, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %apExpr27, align 8
  %34 = load i32, ptr %i, align 4
  %mul28 = mul nsw i32 %34, 2
  %add = add nsw i32 %mul28, 1
  %idxprom29 = sext i32 %add to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %33, i64 %idxprom29
  %35 = load ptr, ptr %arrayidx30, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %31, ptr noundef %35, i32 noundef 0)
  %36 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %36, i32 0, i32 4
  store ptr %call, ptr %pLeft, align 8
  br label %for.end

for.inc:                                          ; preds = %if.then22, %if.then15, %if.then10
  %37 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %37, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end23, %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
