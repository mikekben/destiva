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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprImpliesNonNullRow(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @impliesNotNullRow(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op, align 8
  %conv = zext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 166, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 45, label %sw.bb
    i32 43, label %sw.bb
    i32 152, label %sw.bb
    i32 49, label %sw.bb
    i32 167, label %sw.bb
    i32 170, label %sw.bb
    i32 162, label %sw.bb1
    i32 44, label %sw.bb6
    i32 48, label %sw.bb14
    i32 53, label %sw.bb17
    i32 52, label %sw.bb17
    i32 56, label %sw.bb17
    i32 55, label %sw.bb17
    i32 54, label %sw.bb17
    i32 57, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  %4 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %u, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %iTable, align 4
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb1
  %8 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %8, i32 0, i32 5
  store i8 1, ptr %eCode, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %sw.bb1
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %if.end
  %9 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pLeft, align 8
  %11 = load ptr, ptr %pWalker.addr, align 8
  %u7 = getelementptr inbounds nuw %struct.Walker, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %u7, align 8
  %call = call i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %10, i32 noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %sw.bb6
  %13 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pRight, align 8
  %15 = load ptr, ptr %pWalker.addr, align 8
  %u8 = getelementptr inbounds nuw %struct.Walker, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %u8, align 8
  %call9 = call i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %14, i32 noundef %16)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %pWalker.addr, align 8
  %eCode12 = getelementptr inbounds nuw %struct.Walker, ptr %17, i32 0, i32 5
  store i8 1, ptr %eCode12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %sw.bb6
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %if.end
  %18 = load ptr, ptr %pWalker.addr, align 8
  %19 = load ptr, ptr %pExpr.addr, align 8
  %pLeft15 = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %pLeft15, align 8
  %call16 = call i32 @sqlite3WalkExpr(ptr noundef %18, ptr noundef %20)
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %21 = load ptr, ptr %pExpr.addr, align 8
  %pLeft18 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pLeft18, align 8
  %op19 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 0
  %23 = load i8, ptr %op19, align 8
  %conv20 = zext i8 %23 to i32
  %cmp21 = icmp eq i32 %conv20, 162
  br i1 %cmp21, label %land.lhs.true23, label %lor.lhs.false

land.lhs.true23:                                  ; preds = %sw.bb17
  %24 = load ptr, ptr %pExpr.addr, align 8
  %pLeft24 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pLeft24, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 14
  %26 = load ptr, ptr %y, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 16
  %27 = load i32, ptr %nModuleArg, align 4
  %tobool25 = icmp ne i32 %27, 0
  br i1 %tobool25, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true23, %sw.bb17
  %28 = load ptr, ptr %pExpr.addr, align 8
  %pRight26 = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %pRight26, align 8
  %op27 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 0
  %30 = load i8, ptr %op27, align 8
  %conv28 = zext i8 %30 to i32
  %cmp29 = icmp eq i32 %conv28, 162
  br i1 %cmp29, label %land.lhs.true31, label %if.end37

land.lhs.true31:                                  ; preds = %lor.lhs.false
  %31 = load ptr, ptr %pExpr.addr, align 8
  %pRight32 = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 5
  %32 = load ptr, ptr %pRight32, align 8
  %y33 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %y33, align 8
  %nModuleArg34 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %nModuleArg34, align 4
  %tobool35 = icmp ne i32 %34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true31, %land.lhs.true23
  store i32 1, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %land.lhs.true31, %lor.lhs.false
  br label %sw.default

sw.default:                                       ; preds = %if.end37, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.then36, %sw.bb14, %if.end13, %if.end5, %if.then4, %sw.bb, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
