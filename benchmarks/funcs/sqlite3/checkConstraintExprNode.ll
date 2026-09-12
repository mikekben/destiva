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

; Function Attrs: nounwind uwtable
define hidden i32 @checkConstraintExprNode(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 162
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 9
  %3 = load i16, ptr %iColumn, align 8
  %conv2 = sext i16 %3 to i32
  %cmp3 = icmp sge i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %u, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %iColumn6 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 9
  %7 = load i16, ptr %iColumn6, align 8
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %cmp7 = icmp sge i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then5
  %9 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %9, i32 0, i32 5
  %10 = load i8, ptr %eCode, align 4
  %conv10 = zext i8 %10 to i32
  %or = or i32 %conv10, 1
  %conv11 = trunc i32 %or to i8
  store i8 %conv11, ptr %eCode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then5
  br label %if.end16

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %pWalker.addr, align 8
  %eCode12 = getelementptr inbounds nuw %struct.Walker, ptr %11, i32 0, i32 5
  %12 = load i8, ptr %eCode12, align 4
  %conv13 = zext i8 %12 to i32
  %or14 = or i32 %conv13, 2
  %conv15 = trunc i32 %or14 to i8
  store i8 %conv15, ptr %eCode12, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  ret i32 0
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
