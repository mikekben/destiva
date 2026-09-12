; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeTarget(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @exprCodeBetween(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %dest, ptr noundef %xJump, i32 noundef %jumpIfNull) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %dest.addr = alloca i32, align 4
  %xJump.addr = alloca ptr, align 8
  %jumpIfNull.addr = alloca i32, align 4
  %exprAnd = alloca %struct.Expr, align 8
  %compLeft = alloca %struct.Expr, align 8
  %compRight = alloca %struct.Expr, align 8
  %regFree1 = alloca i32, align 4
  %pDel = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %dest, ptr %dest.addr, align 4
  store ptr %xJump, ptr %xJump.addr, align 8
  store i32 %jumpIfNull, ptr %jumpIfNull.addr, align 4
  store i32 0, ptr %regFree1, align 4
  store ptr null, ptr %pDel, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %compLeft, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %compRight, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %exprAnd, i8 0, i64 72, i1 false)
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pLeft, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %2, ptr noundef %4, i32 noundef 0)
  store ptr %call, ptr %pDel, align 8
  %5 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 19
  %6 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %op = getelementptr inbounds nuw %struct.Expr, ptr %exprAnd, i32 0, i32 0
  store i8 44, ptr %op, align 8
  %pLeft3 = getelementptr inbounds nuw %struct.Expr, ptr %exprAnd, i32 0, i32 4
  store ptr %compLeft, ptr %pLeft3, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %exprAnd, i32 0, i32 5
  store ptr %compRight, ptr %pRight, align 8
  %op4 = getelementptr inbounds nuw %struct.Expr, ptr %compLeft, i32 0, i32 0
  store i8 57, ptr %op4, align 8
  %7 = load ptr, ptr %pDel, align 8
  %pLeft5 = getelementptr inbounds nuw %struct.Expr, ptr %compLeft, i32 0, i32 4
  store ptr %7, ptr %pLeft5, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %x, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr6 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %10 = load ptr, ptr %pExpr6, align 8
  %pRight7 = getelementptr inbounds nuw %struct.Expr, ptr %compLeft, i32 0, i32 5
  store ptr %10, ptr %pRight7, align 8
  %op8 = getelementptr inbounds nuw %struct.Expr, ptr %compRight, i32 0, i32 0
  store i8 55, ptr %op8, align 8
  %11 = load ptr, ptr %pDel, align 8
  %pLeft9 = getelementptr inbounds nuw %struct.Expr, ptr %compRight, i32 0, i32 4
  store ptr %11, ptr %pLeft9, align 8
  %12 = load ptr, ptr %pExpr.addr, align 8
  %x10 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %x10, align 8
  %a11 = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a11, i64 0, i64 1
  %pExpr13 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx12, i32 0, i32 0
  %14 = load ptr, ptr %pExpr13, align 8
  %pRight14 = getelementptr inbounds nuw %struct.Expr, ptr %compRight, i32 0, i32 5
  store ptr %14, ptr %pRight14, align 8
  %15 = load ptr, ptr %pDel, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pDel, align 8
  %call15 = call i32 @exprCodeVector(ptr noundef %16, ptr noundef %17, ptr noundef %regFree1)
  call void @exprToRegister(ptr noundef %15, i32 noundef %call15)
  %18 = load ptr, ptr %xJump.addr, align 8
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.then
  %19 = load ptr, ptr %xJump.addr, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load i32, ptr %dest.addr, align 4
  %22 = load i32, ptr %jumpIfNull.addr, align 4
  call void %19(ptr noundef %20, ptr noundef %exprAnd, i32 noundef %21, i32 noundef %22)
  br label %if.end

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %pDel, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %flags, align 4
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load i32, ptr %dest.addr, align 4
  %call17 = call i32 @sqlite3ExprCodeTarget(ptr noundef %25, ptr noundef %exprAnd, i32 noundef %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load i32, ptr %regFree1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %27, i32 noundef %28)
  br label %if.end18

if.end18:                                         ; preds = %if.end, %entry
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pDel, align 8
  call void @sqlite3ExprDelete(ptr noundef %29, ptr noundef %30)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @exprToRegister(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @exprCodeVector(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
