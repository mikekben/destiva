; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @whereUsablePartialIndex(i32 noundef %iTab, ptr noundef %pWC, ptr noundef %pWhere) #0 {
entry:
  %retval = alloca i32, align 4
  %iTab.addr = alloca i32, align 4
  %pWC.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTerm = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  %0 = load ptr, ptr %pWC.addr, align 8
  %pWInfo = getelementptr inbounds nuw %struct.WhereClause, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WhereInfo, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pParse1, align 8
  store ptr %2, ptr %pParse, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %pWhere.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op, align 8
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 44
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %iTab.addr, align 4
  %6 = load ptr, ptr %pWC.addr, align 8
  %7 = load ptr, ptr %pWhere.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pLeft, align 8
  %call = call i32 @whereUsablePartialIndex(i32 noundef %5, ptr noundef %6, ptr noundef %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %pWhere.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pRight, align 8
  store ptr %10, ptr %pWhere.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %11 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 7
  %13 = load i64, ptr %flags, align 8
  %and = and i64 %13, 8388608
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.end
  store ptr null, ptr %pParse, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %while.end
  store i32 0, ptr %i, align 4
  %14 = load ptr, ptr %pWC.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %a, align 8
  store ptr %15, ptr %pTerm, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %pWC.addr, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %17, i32 0, i32 4
  %18 = load i32, ptr %nTerm, align 4
  %cmp6 = icmp slt i32 %16, %18
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 3
  %20 = load i16, ptr %wtFlags, align 2
  %conv8 = zext i16 %20 to i32
  %and9 = and i32 %conv8, 8192
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %21 = load ptr, ptr %pTerm, align 8
  %pExpr13 = getelementptr inbounds nuw %struct.WhereTerm, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pExpr13, align 8
  store ptr %22, ptr %pExpr, align 8
  %23 = load ptr, ptr %pExpr, align 8
  %flags14 = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %flags14, align 4
  %and15 = and i32 %24, 1
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end12
  %25 = load ptr, ptr %pExpr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 11
  %26 = load i16, ptr %iRightJoinTable, align 4
  %conv18 = sext i16 %26 to i32
  %27 = load i32, ptr %iTab.addr, align 4
  %cmp19 = icmp eq i32 %conv18, %27
  br i1 %cmp19, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end12
  %28 = load ptr, ptr %pParse, align 8
  %29 = load ptr, ptr %pExpr, align 8
  %30 = load ptr, ptr %pWhere.addr, align 8
  %31 = load i32, ptr %iTab.addr, align 4
  %call21 = call i32 @sqlite3ExprImpliesExpr(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then11
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  %33 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %33, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then23, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprImpliesExpr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
