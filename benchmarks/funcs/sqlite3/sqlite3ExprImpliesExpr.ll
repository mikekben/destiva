; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprImpliesExpr(ptr noundef %pParse, ptr noundef %pE1, ptr noundef %pE2, i32 noundef %iTab) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pE1.addr = alloca ptr, align 8
  %pE2.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pE1, ptr %pE1.addr, align 8
  store ptr %pE2, ptr %pE2.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pE1.addr, align 8
  %2 = load ptr, ptr %pE2.addr, align 8
  %3 = load i32, ptr %iTab.addr, align 4
  %call = call i32 @sqlite3ExprCompare(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pE2.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op, align 8
  %conv = zext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 43
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pE1.addr, align 8
  %8 = load ptr, ptr %pE2.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pLeft, align 8
  %10 = load i32, ptr %iTab.addr, align 4
  %call3 = call i32 @sqlite3ExprImpliesExpr(ptr noundef %6, ptr noundef %7, ptr noundef %9, i32 noundef %10)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pE1.addr, align 8
  %13 = load ptr, ptr %pE2.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pRight, align 8
  %15 = load i32, ptr %iTab.addr, align 4
  %call4 = call i32 @sqlite3ExprImpliesExpr(ptr noundef %11, ptr noundef %12, ptr noundef %14, i32 noundef %15)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %pE2.addr, align 8
  %op8 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 0
  %17 = load i8, ptr %op8, align 8
  %conv9 = zext i8 %17 to i32
  %cmp10 = icmp eq i32 %conv9, 51
  br i1 %cmp10, label %land.lhs.true12, label %if.end17

land.lhs.true12:                                  ; preds = %if.end7
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %pE1.addr, align 8
  %20 = load ptr, ptr %pE2.addr, align 8
  %pLeft13 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pLeft13, align 8
  %22 = load i32, ptr %iTab.addr, align 4
  %call14 = call i32 @exprImpliesNotNull(ptr noundef %18, ptr noundef %19, ptr noundef %21, i32 noundef %22, i32 noundef 0)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true12
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %land.lhs.true12, %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then6, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @exprImpliesNotNull(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
