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
declare hidden i32 @sqlite3ExprCodeTemp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprVectorRegister(ptr noundef %pParse, ptr noundef %pVector, i32 noundef %iField, i32 noundef %regSelect, ptr noundef %ppExpr, ptr noundef %pRegFree) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pVector.addr = alloca ptr, align 8
  %iField.addr = alloca i32, align 4
  %regSelect.addr = alloca i32, align 4
  %ppExpr.addr = alloca ptr, align 8
  %pRegFree.addr = alloca ptr, align 8
  %op = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pVector, ptr %pVector.addr, align 8
  store i32 %iField, ptr %iField.addr, align 4
  store i32 %regSelect, ptr %regSelect.addr, align 4
  store ptr %ppExpr, ptr %ppExpr.addr, align 8
  store ptr %pRegFree, ptr %pRegFree.addr, align 8
  %0 = load ptr, ptr %pVector.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op1, align 8
  store i8 %1, ptr %op, align 1
  %2 = load i8, ptr %op, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 171
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVector.addr, align 8
  %4 = load i32, ptr %iField.addr, align 4
  %call = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %ppExpr.addr, align 8
  store ptr %call, ptr %5, align 8
  %6 = load ptr, ptr %pVector.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %iTable, align 4
  %8 = load i32, ptr %iField.addr, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i8, ptr %op, align 1
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 134
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %pVector.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %iField.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %14 = load ptr, ptr %pExpr, align 8
  %15 = load ptr, ptr %ppExpr.addr, align 8
  store ptr %14, ptr %15, align 8
  %16 = load i32, ptr %regSelect.addr, align 4
  %17 = load i32, ptr %iField.addr, align 4
  %add7 = add nsw i32 %16, %17
  store i32 %add7, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %18 = load ptr, ptr %pVector.addr, align 8
  %x9 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %x9, align 8
  %a10 = getelementptr inbounds nuw %struct.ExprList, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %iField.addr, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a10, i64 0, i64 %idxprom11
  %pExpr13 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx12, i32 0, i32 0
  %21 = load ptr, ptr %pExpr13, align 8
  %22 = load ptr, ptr %ppExpr.addr, align 8
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %ppExpr.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %pRegFree.addr, align 8
  %call14 = call i32 @sqlite3ExprCodeTemp(ptr noundef %23, ptr noundef %25, ptr noundef %26)
  store i32 %call14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
