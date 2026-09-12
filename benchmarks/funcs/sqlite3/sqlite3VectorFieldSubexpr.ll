; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef %pVector, i32 noundef %i) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVector.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %pVector, ptr %pVector.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %pVector.addr, align 8
  %call = call i32 @sqlite3ExprIsVector(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pVector.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 134
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load ptr, ptr %pVector.addr, align 8
  %op2 = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 12
  %4 = load i8, ptr %op2, align 2
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 134
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %5 = load ptr, ptr %pVector.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %9 = load ptr, ptr %pExpr, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pVector.addr, align 8
  %x6 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x6, align 8
  %a7 = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %i.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a7, i64 0, i64 %idxprom8
  %pExpr10 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx9, i32 0, i32 0
  %13 = load ptr, ptr %pExpr10, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %14 = load ptr, ptr %pVector.addr, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then5
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
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
