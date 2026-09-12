; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @exprNodeIsConstant(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsBinary(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprNodeIsConstantOrGroupBy(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pGroupBy = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %pGroupBy, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pGroupBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pGroupBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr1 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %7 = load ptr, ptr %pExpr1, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %9 = load ptr, ptr %p, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %8, ptr noundef %9, i32 noundef -1)
  %cmp2 = icmp slt i32 %call, 2
  br i1 %cmp2, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %pWalker.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParse, align 8
  %12 = load ptr, ptr %p, align 8
  %call3 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %11, ptr noundef %12)
  store ptr %call3, ptr %pColl, align 8
  %13 = load ptr, ptr %pColl, align 8
  %call4 = call i32 @sqlite3IsBinary(ptr noundef %13)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 2048
  %cmp7 = icmp ne i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  %17 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %17, i32 0, i32 5
  store i8 0, ptr %eCode, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %for.end
  %18 = load ptr, ptr %pWalker.addr, align 8
  %19 = load ptr, ptr %pExpr.addr, align 8
  %call10 = call i32 @exprNodeIsConstant(ptr noundef %18, ptr noundef %19)
  store i32 %call10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8, %if.then5
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
