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
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %p, i32 noundef %iTab) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %w = alloca %struct.Walker, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %0)
  store ptr %call, ptr %p.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %1 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 51
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pLeft, align 8
  store ptr %5, ptr %p.addr, align 8
  br label %if.end13

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %p.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op2, align 8
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 44
  br i1 %cmp4, label %if.then6, label %if.else11

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %p.addr, align 8
  %pLeft7 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pLeft7, align 8
  %10 = load i32, ptr %iTab.addr, align 4
  %call8 = call i32 @sqlite3ExprImpliesNonNullRow(ptr noundef %9, i32 noundef %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  %11 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pRight, align 8
  store ptr %12, ptr %p.addr, align 8
  br label %if.end12

if.else11:                                        ; preds = %if.else
  br label %while.end

if.end12:                                         ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.else11, %while.cond
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @impliesNotNullRow, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr null, ptr %xSelectCallback, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr null, ptr %xSelectCallback2, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  store i8 0, ptr %eCode, align 4
  %13 = load i32, ptr %iTab.addr, align 4
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store i32 %13, ptr %u, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %call14 = call i32 @sqlite3WalkExpr(ptr noundef %w, ptr noundef %14)
  %eCode15 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 5
  %15 = load i8, ptr %eCode15, align 4
  %conv16 = zext i8 %15 to i32
  store i32 %conv16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @impliesNotNullRow(ptr noundef, ptr noundef) #0

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
