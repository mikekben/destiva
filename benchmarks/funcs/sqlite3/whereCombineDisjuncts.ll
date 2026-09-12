; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereClauseInsert(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprAnalyze(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereCombineDisjuncts(ptr noundef %pSrc, ptr noundef %pWC, ptr noundef %pOne, ptr noundef %pTwo) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %pOne.addr = alloca ptr, align 8
  %pTwo.addr = alloca ptr, align 8
  %eOp = alloca i16, align 2
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %op = alloca i32, align 4
  %idxNew = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pOne, ptr %pOne.addr, align 8
  store ptr %pTwo, ptr %pTwo.addr, align 8
  %0 = load ptr, ptr %pOne.addr, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 4
  %1 = load i16, ptr %eOperator, align 4
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr %pTwo.addr, align 8
  %eOperator1 = getelementptr inbounds nuw %struct.WhereTerm, ptr %2, i32 0, i32 4
  %3 = load i16, ptr %eOperator1, align 4
  %conv2 = zext i16 %3 to i32
  %or = or i32 %conv, %conv2
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, ptr %eOp, align 2
  %4 = load ptr, ptr %pOne.addr, align 8
  %eOperator4 = getelementptr inbounds nuw %struct.WhereTerm, ptr %4, i32 0, i32 4
  %5 = load i16, ptr %eOperator4, align 4
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 62
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pTwo.addr, align 8
  %eOperator7 = getelementptr inbounds nuw %struct.WhereTerm, ptr %6, i32 0, i32 4
  %7 = load i16, ptr %eOperator7, align 4
  %conv8 = zext i16 %7 to i32
  %and9 = and i32 %conv8, 62
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %return

if.end13:                                         ; preds = %if.end
  %8 = load i16, ptr %eOp, align 2
  %conv14 = zext i16 %8 to i32
  %and15 = and i32 %conv14, 26
  %9 = load i16, ptr %eOp, align 2
  %conv16 = zext i16 %9 to i32
  %cmp17 = icmp ne i32 %and15, %conv16
  br i1 %cmp17, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end13
  %10 = load i16, ptr %eOp, align 2
  %conv19 = zext i16 %10 to i32
  %and20 = and i32 %conv19, 38
  %11 = load i16, ptr %eOp, align 2
  %conv21 = zext i16 %11 to i32
  %cmp22 = icmp ne i32 %and20, %conv21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end13
  %12 = load ptr, ptr %pOne.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pExpr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pLeft, align 8
  %15 = load ptr, ptr %pTwo.addr, align 8
  %pExpr26 = getelementptr inbounds nuw %struct.WhereTerm, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pExpr26, align 8
  %pLeft27 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pLeft27, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %14, ptr noundef %17, i32 noundef -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  br label %return

if.end29:                                         ; preds = %if.end25
  %18 = load ptr, ptr %pOne.addr, align 8
  %pExpr30 = getelementptr inbounds nuw %struct.WhereTerm, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pExpr30, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %pRight, align 8
  %21 = load ptr, ptr %pTwo.addr, align 8
  %pExpr31 = getelementptr inbounds nuw %struct.WhereTerm, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pExpr31, align 8
  %pRight32 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %pRight32, align 8
  %call33 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %20, ptr noundef %23, i32 noundef -1)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end29
  br label %return

if.end36:                                         ; preds = %if.end29
  %24 = load i16, ptr %eOp, align 2
  %conv37 = zext i16 %24 to i32
  %25 = load i16, ptr %eOp, align 2
  %conv38 = zext i16 %25 to i32
  %sub = sub nsw i32 %conv38, 1
  %and39 = and i32 %conv37, %sub
  %cmp40 = icmp ne i32 %and39, 0
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end36
  %26 = load i16, ptr %eOp, align 2
  %conv43 = zext i16 %26 to i32
  %and44 = and i32 %conv43, 24
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  store i16 8, ptr %eOp, align 2
  br label %if.end47

if.else:                                          ; preds = %if.then42
  store i16 32, ptr %eOp, align 2
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end36
  %27 = load ptr, ptr %pWC.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pParse, align 8
  %db49 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %db49, align 8
  store ptr %30, ptr %db, align 8
  %31 = load ptr, ptr %db, align 8
  %32 = load ptr, ptr %pOne.addr, align 8
  %pExpr50 = getelementptr inbounds nuw %struct.WhereTerm, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pExpr50, align 8
  %call51 = call ptr @sqlite3ExprDup(ptr noundef %31, ptr noundef %33, i32 noundef 0)
  store ptr %call51, ptr %pNew, align 8
  %34 = load ptr, ptr %pNew, align 8
  %cmp52 = icmp eq ptr %34, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end48
  br label %return

if.end55:                                         ; preds = %if.end48
  store i32 53, ptr %op, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end55
  %35 = load i16, ptr %eOp, align 2
  %conv56 = zext i16 %35 to i32
  %36 = load i32, ptr %op, align 4
  %sub57 = sub nsw i32 %36, 53
  %shl = shl i32 2, %sub57
  %cmp58 = icmp ne i32 %conv56, %shl
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %op, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %op, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %38 = load i32, ptr %op, align 4
  %conv60 = trunc i32 %38 to i8
  %39 = load ptr, ptr %pNew, align 8
  %op61 = getelementptr inbounds nuw %struct.Expr, ptr %39, i32 0, i32 0
  store i8 %conv60, ptr %op61, align 8
  %40 = load ptr, ptr %pWC.addr, align 8
  %41 = load ptr, ptr %pNew, align 8
  %call62 = call i32 @whereClauseInsert(ptr noundef %40, ptr noundef %41, i16 noundef zeroext 3)
  store i32 %call62, ptr %idxNew, align 4
  %42 = load ptr, ptr %pSrc.addr, align 8
  %43 = load ptr, ptr %pWC.addr, align 8
  %44 = load i32, ptr %idxNew, align 4
  call void @exprAnalyze(ptr noundef %42, ptr noundef %43, i32 noundef %44)
  br label %return

return:                                           ; preds = %for.end, %if.then54, %if.then35, %if.then28, %if.then24, %if.then12, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
