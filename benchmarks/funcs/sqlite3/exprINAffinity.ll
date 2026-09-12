; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden ptr @exprINAffinity(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %pSelect = alloca ptr, align 8
  %zRet = alloca ptr, align 8
  %i = alloca i32, align 4
  %pA = alloca ptr, align 8
  %a = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %pLeft1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pLeft1, align 8
  store ptr %1, ptr %pLeft, align 8
  %2 = load ptr, ptr %pLeft, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %2)
  store i32 %call, ptr %nVal, align 4
  %3 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %x, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pSelect, align 8
  %7 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %9 = load i32, ptr %nVal, align 4
  %add = add nsw i32 %9, 1
  %conv = sext i32 %add to i64
  %call2 = call ptr @sqlite3DbMallocRaw(ptr noundef %8, i64 noundef %conv)
  store ptr %call2, ptr %zRet, align 8
  %10 = load ptr, ptr %zRet, align 8
  %tobool3 = icmp ne ptr %10, null
  br i1 %tobool3, label %if.then, label %if.end18

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nVal, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pLeft, align 8
  %14 = load i32, ptr %i, align 4
  %call5 = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %13, i32 noundef %14)
  store ptr %call5, ptr %pA, align 8
  %15 = load ptr, ptr %pA, align 8
  %call6 = call signext i8 @sqlite3ExprAffinity(ptr noundef %15)
  store i8 %call6, ptr %a, align 1
  %16 = load ptr, ptr %pSelect, align 8
  %tobool7 = icmp ne ptr %16, null
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.body
  %17 = load ptr, ptr %pSelect, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pEList, align 8
  %a9 = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a9, i64 0, i64 %idxprom
  %pExpr10 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %20 = load ptr, ptr %pExpr10, align 8
  %21 = load i8, ptr %a, align 1
  %call11 = call signext i8 @sqlite3CompareAffinity(ptr noundef %20, i8 noundef signext %21)
  %22 = load ptr, ptr %zRet, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %22, i64 %idxprom12
  store i8 %call11, ptr %arrayidx13, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %24 = load i8, ptr %a, align 1
  %25 = load ptr, ptr %zRet, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %26 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %25, i64 %idxprom14
  store i8 %24, ptr %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %zRet, align 8
  %29 = load i32, ptr %nVal, align 4
  %idxprom16 = sext i32 %29 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %28, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %for.end, %cond.end
  %30 = load ptr, ptr %zRet, align 8
  ret ptr %30
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
