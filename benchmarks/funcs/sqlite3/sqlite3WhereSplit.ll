; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WhereSplit(ptr noundef %pWC, ptr noundef %pExpr, i8 noundef zeroext %op) #0 {
entry:
  %pWC.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %op.addr = alloca i8, align 1
  %pE2 = alloca ptr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i8 %op, ptr %op.addr, align 1
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %0)
  store ptr %call, ptr %pE2, align 8
  %1 = load i8, ptr %op.addr, align 1
  %2 = load ptr, ptr %pWC.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.WhereClause, ptr %2, i32 0, i32 2
  store i8 %1, ptr %op1, align 8
  %3 = load ptr, ptr %pE2, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pE2, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %op2, align 8
  %conv = zext i8 %5 to i32
  %6 = load i8, ptr %op.addr, align 1
  %conv3 = zext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %pWC.addr, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %call7 = call i32 @whereClauseInsert(ptr noundef %7, ptr noundef %8, i16 noundef zeroext 0)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %pWC.addr, align 8
  %10 = load ptr, ptr %pE2, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pLeft, align 8
  %12 = load i8, ptr %op.addr, align 1
  call void @sqlite3WhereSplit(ptr noundef %9, ptr noundef %11, i8 noundef zeroext %12)
  %13 = load ptr, ptr %pWC.addr, align 8
  %14 = load ptr, ptr %pE2, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pRight, align 8
  %16 = load i8, ptr %op.addr, align 1
  call void @sqlite3WhereSplit(ptr noundef %13, ptr noundef %15, i8 noundef zeroext %16)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereClauseInsert(ptr noundef, ptr noundef, i16 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
