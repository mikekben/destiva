; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3TableColumnAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3AffinityType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden signext i8 @sqlite3ExprAffinity(ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i8, align 1
  %pExpr.addr = alloca ptr, align 8
  %op = alloca i32, align 4
  store ptr %pExpr, ptr %pExpr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4096
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pLeft, align 8
  store ptr %3, ptr %pExpr.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %pExpr.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op1, align 8
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %op, align 4
  %6 = load i32, ptr %op, align 4
  %cmp2 = icmp eq i32 %6, 134
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %7 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr4 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %10 = load ptr, ptr %pExpr4, align 8
  %call = call signext i8 @sqlite3ExprAffinity(ptr noundef %10)
  store i8 %call, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %while.end
  %11 = load i32, ptr %op, align 4
  %cmp5 = icmp eq i32 %11, 171
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %pExpr.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 12
  %13 = load i8, ptr %op2, align 2
  %conv8 = zext i8 %13 to i32
  store i32 %conv8, ptr %op, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %14 = load i32, ptr %op, align 4
  %cmp10 = icmp eq i32 %14, 36
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %15 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %u, align 8
  %call13 = call signext i8 @sqlite3AffinityType(ptr noundef %16, ptr noundef null)
  store i8 %call13, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.end9
  %17 = load i32, ptr %op, align 4
  %cmp15 = icmp eq i32 %17, 164
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end14
  %18 = load i32, ptr %op, align 4
  %cmp17 = icmp eq i32 %18, 162
  br i1 %cmp17, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end14
  %19 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 14
  %20 = load ptr, ptr %y, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then19, label %if.end23

if.then19:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %pExpr.addr, align 8
  %y20 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %y20, align 8
  %23 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 9
  %24 = load i16, ptr %iColumn, align 8
  %conv21 = sext i16 %24 to i32
  %call22 = call signext i8 @sqlite3TableColumnAffinity(ptr noundef %22, i32 noundef %conv21)
  store i8 %call22, ptr %retval, align 1
  br label %return

if.end23:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %25 = load i32, ptr %op, align 4
  %cmp24 = icmp eq i32 %25, 173
  br i1 %cmp24, label %if.then26, label %if.end35

if.then26:                                        ; preds = %if.end23
  %26 = load ptr, ptr %pExpr.addr, align 8
  %pLeft27 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pLeft27, align 8
  %x28 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %x28, align 8
  %pEList29 = getelementptr inbounds nuw %struct.Select, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pEList29, align 8
  %a30 = getelementptr inbounds nuw %struct.ExprList, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %pExpr.addr, align 8
  %iColumn31 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 9
  %31 = load i16, ptr %iColumn31, align 8
  %idxprom = sext i16 %31 to i64
  %arrayidx32 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a30, i64 0, i64 %idxprom
  %pExpr33 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx32, i32 0, i32 0
  %32 = load ptr, ptr %pExpr33, align 8
  %call34 = call signext i8 @sqlite3ExprAffinity(ptr noundef %32)
  store i8 %call34, ptr %retval, align 1
  br label %return

if.end35:                                         ; preds = %if.end23
  %33 = load ptr, ptr %pExpr.addr, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 1
  %34 = load i8, ptr %affExpr, align 1
  store i8 %34, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end35, %if.then26, %if.then19, %if.then12, %if.then
  %35 = load i8, ptr %retval, align 1
  ret i8 %35
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
