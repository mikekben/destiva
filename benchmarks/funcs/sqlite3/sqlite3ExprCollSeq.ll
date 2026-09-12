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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprCollSeq(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %p = alloca ptr, align 8
  %op = alloca i32, align 4
  %j = alloca i32, align 4
  %zColl = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pColl, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  store ptr %2, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.then29, %entry
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op2, align 8
  %conv = zext i8 %5 to i32
  store i32 %conv, ptr %op, align 4
  %6 = load i32, ptr %op, align 4
  %cmp = icmp eq i32 %6, 171
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load ptr, ptr %p, align 8
  %op24 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 12
  %8 = load i8, ptr %op24, align 2
  %conv5 = zext i8 %8 to i32
  store i32 %conv5, ptr %op, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, ptr %op, align 4
  %cmp6 = icmp eq i32 %9, 164
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, ptr %op, align 4
  %cmp8 = icmp eq i32 %10, 162
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %11 = load i32, ptr %op, align 4
  %cmp11 = icmp eq i32 %11, 77
  br i1 %cmp11, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  %12 = load ptr, ptr %p, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %y, align 8
  %cmp13 = icmp ne ptr %13, null
  br i1 %cmp13, label %if.then15, label %if.end23

if.then15:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 9
  %15 = load i16, ptr %iColumn, align 8
  %conv16 = sext i16 %15 to i32
  store i32 %conv16, ptr %j, align 4
  %16 = load i32, ptr %j, align 4
  %cmp17 = icmp sge i32 %16, 0
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.then15
  %17 = load ptr, ptr %p, align 8
  %y20 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 14
  %18 = load ptr, ptr %y20, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %aCol, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %19, i64 %idxprom
  %zColl21 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 2
  %21 = load ptr, ptr %zColl21, align 8
  store ptr %21, ptr %zColl, align 8
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %db, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 16
  %24 = load i8, ptr %enc, align 2
  %25 = load ptr, ptr %zColl, align 8
  %call = call ptr @sqlite3FindCollSeq(ptr noundef %22, i8 noundef zeroext %24, ptr noundef %25, i32 noundef 0)
  store ptr %call, ptr %pColl, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then15
  br label %while.end

if.end23:                                         ; preds = %land.lhs.true, %lor.lhs.false10
  %26 = load i32, ptr %op, align 4
  %cmp24 = icmp eq i32 %26, 36
  br i1 %cmp24, label %if.then29, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end23
  %27 = load i32, ptr %op, align 4
  %cmp27 = icmp eq i32 %27, 169
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %lor.lhs.false26, %if.end23
  %28 = load ptr, ptr %p, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %pLeft, align 8
  store ptr %29, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

if.end30:                                         ; preds = %lor.lhs.false26
  %30 = load i32, ptr %op, align 4
  %cmp31 = icmp eq i32 %30, 109
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %db, align 8
  %enc34 = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 16
  %33 = load i8, ptr %enc34, align 2
  %34 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %u, align 8
  %call35 = call ptr @sqlite3GetCollSeq(ptr noundef %31, i8 noundef zeroext %33, ptr noundef null, ptr noundef %35)
  store ptr %call35, ptr %pColl, align 8
  br label %while.end

if.end36:                                         ; preds = %if.end30
  %36 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %flags, align 4
  %and = and i32 %37, 256
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %if.then38, label %if.else77

if.then38:                                        ; preds = %if.end36
  %38 = load ptr, ptr %p, align 8
  %pLeft39 = getelementptr inbounds nuw %struct.Expr, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %pLeft39, align 8
  %tobool40 = icmp ne ptr %39, null
  br i1 %tobool40, label %land.lhs.true41, label %if.else

land.lhs.true41:                                  ; preds = %if.then38
  %40 = load ptr, ptr %p, align 8
  %pLeft42 = getelementptr inbounds nuw %struct.Expr, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %pLeft42, align 8
  %flags43 = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %flags43, align 4
  %and44 = and i32 %42, 256
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %land.lhs.true41
  %43 = load ptr, ptr %p, align 8
  %pLeft48 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %pLeft48, align 8
  store ptr %44, ptr %p, align 8
  br label %if.end76

if.else:                                          ; preds = %land.lhs.true41, %if.then38
  %45 = load ptr, ptr %p, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %pRight, align 8
  store ptr %46, ptr %pNext, align 8
  %47 = load ptr, ptr %p, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %47, i32 0, i32 6
  %48 = load ptr, ptr %x, align 8
  %cmp49 = icmp ne ptr %48, null
  br i1 %cmp49, label %land.lhs.true51, label %if.end75

land.lhs.true51:                                  ; preds = %if.else
  %49 = load ptr, ptr %p, align 8
  %flags52 = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %flags52, align 4
  %and53 = and i32 %50, 2048
  %cmp54 = icmp ne i32 %and53, 0
  br i1 %cmp54, label %if.end75, label %if.then56

if.then56:                                        ; preds = %land.lhs.true51
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then56
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %p, align 8
  %x57 = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %x57, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %nExpr, align 8
  %cmp58 = icmp slt i32 %51, %54
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load ptr, ptr %p, align 8
  %x60 = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %x60, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %57 to i64
  %arrayidx62 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom61
  %pExpr63 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx62, i32 0, i32 0
  %58 = load ptr, ptr %pExpr63, align 8
  %flags64 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %flags64, align 4
  %and65 = and i32 %59, 256
  %cmp66 = icmp ne i32 %and65, 0
  br i1 %cmp66, label %if.then68, label %if.end74

if.then68:                                        ; preds = %for.body
  %60 = load ptr, ptr %p, align 8
  %x69 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 6
  %61 = load ptr, ptr %x69, align 8
  %a70 = getelementptr inbounds nuw %struct.ExprList, ptr %61, i32 0, i32 1
  %62 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %62 to i64
  %arrayidx72 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a70, i64 0, i64 %idxprom71
  %pExpr73 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx72, i32 0, i32 0
  %63 = load ptr, ptr %pExpr73, align 8
  store ptr %63, ptr %pNext, align 8
  br label %for.end

if.end74:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end74
  %64 = load i32, ptr %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then68, %for.cond
  br label %if.end75

if.end75:                                         ; preds = %for.end, %land.lhs.true51, %if.else
  %65 = load ptr, ptr %pNext, align 8
  store ptr %65, ptr %p, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then47
  br label %if.end78

if.else77:                                        ; preds = %if.end36
  br label %while.end

if.end78:                                         ; preds = %if.end76
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.else77, %if.then33, %if.end22, %while.cond
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pColl, align 8
  %call79 = call i32 @sqlite3CheckCollSeq(ptr noundef %66, ptr noundef %67)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %while.end
  store ptr null, ptr %pColl, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %while.end
  %68 = load ptr, ptr %pColl, align 8
  ret ptr %68
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CheckCollSeq(ptr noundef, ptr noundef) #0

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
