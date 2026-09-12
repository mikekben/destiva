; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.IdxExprTrans = type { ptr, i32, i32, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereIndexExprTransNode(ptr noundef %p, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pX = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %pX, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %3 = load ptr, ptr %pX, align 8
  %pIdxExpr = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pIdxExpr, align 8
  %5 = load ptr, ptr %pX, align 8
  %iTabCur = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iTabCur, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %2, ptr noundef %4, i32 noundef %6)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pExpr.addr, align 8
  %call1 = call signext i8 @sqlite3ExprAffinity(ptr noundef %7)
  %8 = load ptr, ptr %pExpr.addr, align 8
  %affExpr = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 1
  store i8 %call1, ptr %affExpr, align 1
  %9 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  store i8 -94, ptr %op, align 8
  %10 = load ptr, ptr %pX, align 8
  %iIdxCur = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iIdxCur, align 4
  %12 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 8
  store i32 %11, ptr %iTable, align 4
  %13 = load ptr, ptr %pX, align 8
  %iIdxCol = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %iIdxCol, align 8
  %conv = trunc i32 %14 to i16
  %15 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 9
  store i16 %conv, ptr %iColumn, align 8
  %16 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 14
  store ptr null, ptr %y, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
