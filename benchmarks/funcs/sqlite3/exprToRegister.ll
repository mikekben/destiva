; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden void @exprToRegister(ptr noundef %pExpr, i32 noundef %iReg) #0 {
entry:
  %pExpr.addr = alloca ptr, align 8
  %iReg.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %iReg, ptr %iReg.addr, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %3 = load ptr, ptr %p, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 12
  store i8 %2, ptr %op2, align 2
  %4 = load ptr, ptr %p, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  store i8 -85, ptr %op1, align 8
  %5 = load i32, ptr %iReg.addr, align 4
  %6 = load ptr, ptr %p, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 8
  store i32 %5, ptr %iTable, align 4
  %7 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, -4097
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
