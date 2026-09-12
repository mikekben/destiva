; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @walkExpr(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.then10, %entry
  %0 = load ptr, ptr %pWalker.addr, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %xExprCallback, align 8
  %2 = load ptr, ptr %pWalker.addr, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 %1(ptr noundef %2, ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %rc, align 4
  %and = and i32 %5, 2
  store i32 %and, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %flags, align 4
  %and1 = and i32 %7, 8404992
  %cmp = icmp ne i32 %and1, 0
  br i1 %cmp, label %if.end41, label %if.then2

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pLeft, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.then2
  %10 = load ptr, ptr %pWalker.addr, align 8
  %11 = load ptr, ptr %pExpr.addr, align 8
  %pLeft4 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pLeft4, align 8
  %call5 = call i32 @walkExpr(ptr noundef %10, ptr noundef %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.then2
  %13 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pRight, align 8
  %tobool9 = icmp ne ptr %14, null
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %15 = load ptr, ptr %pExpr.addr, align 8
  %pRight11 = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %pRight11, align 8
  store ptr %16, ptr %pExpr.addr, align 8
  br label %while.body

if.else:                                          ; preds = %if.end8
  %17 = load ptr, ptr %pExpr.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %flags12, align 4
  %and13 = and i32 %18, 2048
  %cmp14 = icmp ne i32 %and13, 0
  br i1 %cmp14, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.else
  %19 = load ptr, ptr %pWalker.addr, align 8
  %20 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 6
  %21 = load ptr, ptr %x, align 8
  %call16 = call i32 @sqlite3WalkSelect(ptr noundef %19, ptr noundef %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  store i32 2, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then15
  br label %if.end39

if.else20:                                        ; preds = %if.else
  %22 = load ptr, ptr %pExpr.addr, align 8
  %x21 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %x21, align 8
  %tobool22 = icmp ne ptr %23, null
  br i1 %tobool22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.else20
  %24 = load ptr, ptr %pWalker.addr, align 8
  %25 = load ptr, ptr %pExpr.addr, align 8
  %x24 = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %x24, align 8
  %call25 = call i32 @sqlite3WalkExprList(ptr noundef %24, ptr noundef %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  store i32 2, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.else20
  %27 = load ptr, ptr %pExpr.addr, align 8
  %flags30 = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %flags30, align 4
  %and31 = and i32 %28, 16777216
  %cmp32 = icmp ne i32 %and31, 0
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end29
  %29 = load ptr, ptr %pWalker.addr, align 8
  %30 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 14
  %31 = load ptr, ptr %y, align 8
  %call34 = call i32 @walkWindowList(ptr noundef %29, ptr noundef %31)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then33
  store i32 2, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then33
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end29
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end19
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end
  br label %while.end

while.end:                                        ; preds = %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then36, %if.then27, %if.then18, %if.then7, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walkWindowList(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
