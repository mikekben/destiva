; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.703 = external hidden unnamed_addr constant [24 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FixExpr(ptr noundef %pFix, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pFix.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pFix, ptr %pFix.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %0 = load ptr, ptr %pExpr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 1073741824
  store i32 %or, ptr %flags, align 4
  %3 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op, align 8
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 151
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %pFix.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.DbFixer, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %8 = load i8, ptr %busy, align 1
  %tobool2 = icmp ne i8 %8, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %pExpr.addr, align 8
  %op4 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  store i8 117, ptr %op4, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %pFix.addr, align 8
  %pParse5 = getelementptr inbounds nuw %struct.DbFixer, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParse5, align 8
  %12 = load ptr, ptr %pFix.addr, align 8
  %zType = getelementptr inbounds nuw %struct.DbFixer, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %zType, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %11, ptr noundef @.str.703, ptr noundef %13)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %while.body
  %14 = load ptr, ptr %pExpr.addr, align 8
  %flags7 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %flags7, align 4
  %and = and i32 %15, 8404992
  %cmp8 = icmp ne i32 %and, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %while.end

if.end11:                                         ; preds = %if.end6
  %16 = load ptr, ptr %pExpr.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %flags12, align 4
  %and13 = and i32 %17, 2048
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.end11
  %18 = load ptr, ptr %pFix.addr, align 8
  %19 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %x, align 8
  %call = call i32 @sqlite3FixSelect(ptr noundef %18, ptr noundef %20)
  %tobool17 = icmp ne i32 %call, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then16
  br label %if.end26

if.else20:                                        ; preds = %if.end11
  %21 = load ptr, ptr %pFix.addr, align 8
  %22 = load ptr, ptr %pExpr.addr, align 8
  %x21 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %x21, align 8
  %call22 = call i32 @sqlite3FixExprList(ptr noundef %21, ptr noundef %23)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else20
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.else20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end19
  %24 = load ptr, ptr %pFix.addr, align 8
  %25 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pRight, align 8
  %call27 = call i32 @sqlite3FixExpr(ptr noundef %24, ptr noundef %26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %27 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pLeft, align 8
  store ptr %28, ptr %pExpr.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then10, %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then29, %if.then24, %if.then18, %if.else
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExprList(ptr noundef, ptr noundef) #0

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
