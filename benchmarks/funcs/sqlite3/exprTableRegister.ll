; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @exprTableRegister(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %regBase, i16 noundef signext %iCol) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %regBase.addr = alloca i32, align 4
  %iCol.addr = alloca i16, align 2
  %pExpr = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %zColl = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %regBase, ptr %regBase.addr, align 4
  store i16 %iCol, ptr %iCol.addr, align 2
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3Expr(ptr noundef %2, i32 noundef 171, ptr noundef null)
  store ptr %call, ptr %pExpr, align 8
  %3 = load ptr, ptr %pExpr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %4 = load i16, ptr %iCol.addr, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i16, ptr %iCol.addr, align 2
  %conv3 = sext i16 %5 to i32
  %6 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %iPKey, align 4
  %conv4 = sext i16 %7 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aCol, align 8
  %10 = load i16, ptr %iCol.addr, align 2
  %idxprom = sext i16 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %pCol, align 8
  %11 = load i32, ptr %regBase.addr, align 4
  %12 = load i16, ptr %iCol.addr, align 2
  %conv8 = sext i16 %12 to i32
  %add = add nsw i32 %11, %conv8
  %add9 = add nsw i32 %add, 1
  %13 = load ptr, ptr %pExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 8
  store i32 %add9, ptr %iTable, align 4
  %14 = load ptr, ptr %pCol, align 8
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %14, i32 0, i32 4
  %15 = load i8, ptr %affinity, align 1
  %16 = load ptr, ptr %pExpr, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 1
  store i8 %15, ptr %affExpr, align 1
  %17 = load ptr, ptr %pCol, align 8
  %zColl10 = getelementptr inbounds nuw %struct.Column, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %zColl10, align 8
  store ptr %18, ptr %zColl, align 8
  %19 = load ptr, ptr %zColl, align 8
  %cmp11 = icmp eq ptr %19, null
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then7
  %20 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pDfltColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zName, align 8
  store ptr %22, ptr %zColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then7
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pExpr, align 8
  %25 = load ptr, ptr %zColl, align 8
  %call14 = call ptr @sqlite3ExprAddCollateString(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store ptr %call14, ptr %pExpr, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %if.then
  %26 = load i32, ptr %regBase.addr, align 4
  %27 = load ptr, ptr %pExpr, align 8
  %iTable15 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 8
  store i32 %26, ptr %iTable15, align 4
  %28 = load ptr, ptr %pExpr, align 8
  %affExpr16 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 1
  store i8 68, ptr %affExpr16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  %29 = load ptr, ptr %pExpr, align 8
  ret ptr %29
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
