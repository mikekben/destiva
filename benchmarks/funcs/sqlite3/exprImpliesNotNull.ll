; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprImpliesNotNull(ptr noundef %pParse, ptr noundef %p, ptr noundef %pNN, i32 noundef %iTab, i32 noundef %seenNot) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pNN.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %seenNot.addr = alloca i32, align 4
  %pList = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pNN, ptr %pNN.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store i32 %seenNot, ptr %seenNot.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load ptr, ptr %pNN.addr, align 8
  %3 = load i32, ptr %iTab.addr, align 4
  %call = call i32 @sqlite3ExprCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pNN.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op, align 8
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 117
  %conv2 = zext i1 %cmp1 to i32
  store i32 %conv2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %op3 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op3, align 8
  %conv4 = zext i8 %7 to i32
  switch i32 %conv4, label %sw.epilog [
    i32 49, label %sw.bb
    i32 48, label %sw.bb10
    i32 53, label %sw.bb25
    i32 52, label %sw.bb25
    i32 56, label %sw.bb25
    i32 55, label %sw.bb25
    i32 54, label %sw.bb25
    i32 57, label %sw.bb25
    i32 103, label %sw.bb25
    i32 104, label %sw.bb25
    i32 100, label %sw.bb25
    i32 101, label %sw.bb25
    i32 102, label %sw.bb25
    i32 108, label %sw.bb25
    i32 105, label %sw.bb26
    i32 107, label %sw.bb26
    i32 99, label %sw.bb26
    i32 106, label %sw.bb26
    i32 176, label %sw.bb31
    i32 109, label %sw.bb31
    i32 169, label %sw.bb31
    i32 168, label %sw.bb31
    i32 170, label %sw.bb34
    i32 110, label %sw.bb45
    i32 19, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end
  %8 = load i32, ptr %seenNot.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %sw.bb
  %9 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 2048
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %sw.bb
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pLeft, align 8
  %14 = load ptr, ptr %pNN.addr, align 8
  %15 = load i32, ptr %iTab.addr, align 4
  %call9 = call i32 @exprImpliesNotNull(ptr noundef %11, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef 1)
  store i32 %call9, ptr %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %if.end
  %16 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %x, align 8
  store ptr %17, ptr %pList, align 8
  %18 = load i32, ptr %seenNot.addr, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb10
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %sw.bb10
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %21 = load ptr, ptr %pExpr, align 8
  %22 = load ptr, ptr %pNN.addr, align 8
  %23 = load i32, ptr %iTab.addr, align 4
  %call14 = call i32 @exprImpliesNotNull(ptr noundef %19, ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef 1)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end13
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pList, align 8
  %a16 = getelementptr inbounds nuw %struct.ExprList, ptr %25, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a16, i64 0, i64 1
  %pExpr18 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx17, i32 0, i32 0
  %26 = load ptr, ptr %pExpr18, align 8
  %27 = load ptr, ptr %pNN.addr, align 8
  %28 = load i32, ptr %iTab.addr, align 4
  %call19 = call i32 @exprImpliesNotNull(ptr noundef %24, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef 1)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false
  %29 = load ptr, ptr %pParse.addr, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %pLeft23 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %pLeft23, align 8
  %32 = load ptr, ptr %pNN.addr, align 8
  %33 = load i32, ptr %iTab.addr, align 4
  %call24 = call i32 @exprImpliesNotNull(ptr noundef %29, ptr noundef %31, ptr noundef %32, i32 noundef %33, i32 noundef 1)
  store i32 %call24, ptr %retval, align 4
  br label %return

sw.bb25:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  store i32 1, ptr %seenNot.addr, align 4
  br label %sw.bb26

sw.bb26:                                          ; preds = %sw.bb25, %if.end, %if.end, %if.end, %if.end
  %34 = load ptr, ptr %pParse.addr, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %pRight, align 8
  %37 = load ptr, ptr %pNN.addr, align 8
  %38 = load i32, ptr %iTab.addr, align 4
  %39 = load i32, ptr %seenNot.addr, align 4
  %call27 = call i32 @exprImpliesNotNull(ptr noundef %34, ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %sw.bb26
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %sw.bb26
  br label %sw.bb31

sw.bb31:                                          ; preds = %if.end30, %if.end, %if.end, %if.end, %if.end
  %40 = load ptr, ptr %pParse.addr, align 8
  %41 = load ptr, ptr %p.addr, align 8
  %pLeft32 = getelementptr inbounds nuw %struct.Expr, ptr %41, i32 0, i32 4
  %42 = load ptr, ptr %pLeft32, align 8
  %43 = load ptr, ptr %pNN.addr, align 8
  %44 = load i32, ptr %iTab.addr, align 4
  %45 = load i32, ptr %seenNot.addr, align 4
  %call33 = call i32 @exprImpliesNotNull(ptr noundef %40, ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %45)
  store i32 %call33, ptr %retval, align 4
  br label %return

sw.bb34:                                          ; preds = %if.end
  %46 = load i32, ptr %seenNot.addr, align 4
  %tobool35 = icmp ne i32 %46, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.bb34
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %sw.bb34
  %47 = load ptr, ptr %p.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %47, i32 0, i32 12
  %48 = load i8, ptr %op2, align 2
  %conv38 = zext i8 %48 to i32
  %cmp39 = icmp ne i32 %conv38, 45
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %49 = load ptr, ptr %pParse.addr, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %pLeft43 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %pLeft43, align 8
  %52 = load ptr, ptr %pNN.addr, align 8
  %53 = load i32, ptr %iTab.addr, align 4
  %call44 = call i32 @exprImpliesNotNull(ptr noundef %49, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef 1)
  store i32 %call44, ptr %retval, align 4
  br label %return

sw.bb45:                                          ; preds = %if.end, %if.end
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %p.addr, align 8
  %pLeft46 = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %pLeft46, align 8
  %57 = load ptr, ptr %pNN.addr, align 8
  %58 = load i32, ptr %iTab.addr, align 4
  %call47 = call i32 @exprImpliesNotNull(ptr noundef %54, ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef 1)
  store i32 %call47, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb45, %if.end42, %if.then41, %if.then36, %sw.bb31, %if.then29, %if.end22, %if.then21, %if.then12, %if.end8, %if.then7, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
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
