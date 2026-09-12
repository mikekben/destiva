; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereApplyPartialIndexConstraints(ptr noundef %pTruth, i32 noundef %iTabCur, ptr noundef %pWC) #0 {
entry:
  %pTruth.addr = alloca ptr, align 8
  %iTabCur.addr = alloca i32, align 4
  %pWC.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTerm = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  store ptr %pTruth, ptr %pTruth.addr, align 8
  store i32 %iTabCur, ptr %iTabCur.addr, align 4
  store ptr %pWC, ptr %pWC.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %pTruth.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 44
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pTruth.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pLeft, align 8
  %4 = load i32, ptr %iTabCur.addr, align 4
  %5 = load ptr, ptr %pWC.addr, align 8
  call void @whereApplyPartialIndexConstraints(ptr noundef %3, i32 noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %pTruth.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pRight, align 8
  store ptr %7, ptr %pTruth.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4
  %8 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %a, align 8
  store ptr %9, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nTerm, align 4
  %cmp2 = icmp slt i32 %10, %12
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %13, i32 0, i32 3
  %14 = load i16, ptr %wtFlags, align 2
  %conv4 = zext i16 %14 to i32
  %and = and i32 %conv4, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %15 = load ptr, ptr %pTerm, align 8
  %pExpr5 = getelementptr inbounds nuw %struct.WhereTerm, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pExpr5, align 8
  store ptr %16, ptr %pExpr, align 8
  %17 = load ptr, ptr %pExpr, align 8
  %18 = load ptr, ptr %pTruth.addr, align 8
  %19 = load i32, ptr %iTabCur.addr, align 4
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %17, ptr noundef %18, i32 noundef %19)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %20 = load ptr, ptr %pTerm, align 8
  %wtFlags9 = getelementptr inbounds nuw %struct.WhereTerm, ptr %20, i32 0, i32 3
  %21 = load i16, ptr %wtFlags9, align 2
  %conv10 = zext i16 %21 to i32
  %or = or i32 %conv10, 4
  %conv11 = trunc i32 %or to i16
  store i16 %conv11, ptr %wtFlags9, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  %23 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
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
!8 = distinct !{!8, !7}
