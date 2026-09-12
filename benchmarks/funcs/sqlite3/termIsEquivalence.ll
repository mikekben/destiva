; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsBinary(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @termIsEquivalence(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %aff1 = alloca i8, align 1
  %aff2 = alloca i8, align 1
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 15
  %2 = load i16, ptr %dbOptFlags, align 4
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op, align 8
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 53
  br i1 %cmp3, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %pExpr.addr, align 8
  %op5 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %op5, align 8
  %conv6 = zext i8 %6 to i32
  %cmp7 = icmp ne i32 %conv6, 45
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %7 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags, align 4
  %and11 = and i32 %8, 1
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %9 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pLeft, align 8
  %call = call signext i8 @sqlite3ExprAffinity(ptr noundef %10)
  store i8 %call, ptr %aff1, align 1
  %11 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pRight, align 8
  %call16 = call signext i8 @sqlite3ExprAffinity(ptr noundef %12)
  store i8 %call16, ptr %aff2, align 1
  %13 = load i8, ptr %aff1, align 1
  %conv17 = sext i8 %13 to i32
  %14 = load i8, ptr %aff2, align 1
  %conv18 = sext i8 %14 to i32
  %cmp19 = icmp ne i32 %conv17, %conv18
  br i1 %cmp19, label %land.lhs.true21, label %if.end29

land.lhs.true21:                                  ; preds = %if.end15
  %15 = load i8, ptr %aff1, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp sge i32 %conv22, 67
  br i1 %cmp23, label %lor.lhs.false, label %if.then28

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %16 = load i8, ptr %aff2, align 1
  %conv25 = sext i8 %16 to i32
  %cmp26 = icmp sge i32 %conv25, 67
  br i1 %cmp26, label %if.end29, label %if.then28

if.then28:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %lor.lhs.false, %if.end15
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pExpr.addr, align 8
  %pLeft30 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pLeft30, align 8
  %20 = load ptr, ptr %pExpr.addr, align 8
  %pRight31 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pRight31, align 8
  %call32 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store ptr %call32, ptr %pColl, align 8
  %22 = load ptr, ptr %pColl, align 8
  %call33 = call i32 @sqlite3IsBinary(ptr noundef %22)
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  store i32 1, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end29
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pExpr.addr, align 8
  %pLeft36 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pLeft36, align 8
  %26 = load ptr, ptr %pExpr.addr, align 8
  %pRight37 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pRight37, align 8
  %call38 = call i32 @sqlite3ExprCollSeqMatch(ptr noundef %23, ptr noundef %25, ptr noundef %27)
  store i32 %call38, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then34, %if.then28, %if.then14, %if.then9, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCollSeqMatch(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
