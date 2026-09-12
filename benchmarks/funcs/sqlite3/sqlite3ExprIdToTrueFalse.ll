; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.681 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.682 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprIdToTrueFalse(ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pExpr.addr = alloca ptr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 67108864
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %u, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %3, ptr noundef @.str.681)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %pExpr.addr, align 8
  %u2 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %u2, align 8
  %call3 = call i32 @sqlite3StrICmp(ptr noundef %5, ptr noundef @.str.682)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  store i8 -91, ptr %op, align 8
  %7 = load ptr, ptr %pExpr.addr, align 8
  %u5 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %u5, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 0
  %10 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 268435456, i32 536870912
  %11 = load ptr, ptr %pExpr.addr, align 8
  %flags8 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %flags8, align 4
  %or = or i32 %12, %cond
  store i32 %or, ptr %flags8, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
