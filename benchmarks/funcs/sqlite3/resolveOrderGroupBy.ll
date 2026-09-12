; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.anon.12 = type { i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @resolveOrderGroupBy(ptr noundef %pNC, ptr noundef %pSelect, ptr noundef %pOrderBy, ptr noundef %zType) #0 {
entry:
  %retval = alloca i32, align 4
  %pNC.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %zType.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iCol = alloca i32, align 4
  %pItem = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %nResult = alloca i32, align 4
  %pE = alloca ptr, align 8
  %pE2 = alloca ptr, align 8
  store ptr %pNC, ptr %pNC.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %zType, ptr %zType.addr, align 8
  %0 = load ptr, ptr %pOrderBy.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  store i32 %3, ptr %nResult, align 4
  %4 = load ptr, ptr %pNC.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.NameContext, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParse1, align 8
  store ptr %5, ptr %pParse, align 8
  store i32 0, ptr %i, align 4
  %6 = load ptr, ptr %pOrderBy.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr2 = getelementptr inbounds nuw %struct.ExprList, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nExpr2, align 8
  %cmp3 = icmp slt i32 %7, %9
  br i1 %cmp3, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pExpr, align 8
  store ptr %11, ptr %pE, align 8
  %12 = load ptr, ptr %pE, align 8
  %call = call ptr @sqlite3ExprSkipCollateAndLikely(ptr noundef %12)
  store ptr %call, ptr %pE2, align 8
  %13 = load ptr, ptr %zType.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp4 = icmp ne i32 %conv, 71
  br i1 %cmp4, label %if.then6, label %if.end14

if.then6:                                         ; preds = %for.body
  %15 = load ptr, ptr %pParse, align 8
  %16 = load ptr, ptr %pSelect.addr, align 8
  %pEList7 = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pEList7, align 8
  %18 = load ptr, ptr %pE2, align 8
  %call8 = call i32 @resolveAsName(ptr noundef %15, ptr noundef %17, ptr noundef %18)
  store i32 %call8, ptr %iCol, align 4
  %19 = load i32, ptr %iCol, align 4
  %cmp9 = icmp sgt i32 %19, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then6
  %20 = load i32, ptr %iCol, align 4
  %conv12 = trunc i32 %20 to i16
  %21 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %21, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  store i16 %conv12, ptr %iOrderByCol, align 4
  br label %for.inc52

if.end13:                                         ; preds = %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.body
  %22 = load ptr, ptr %pE2, align 8
  %call15 = call i32 @sqlite3ExprIsInteger(ptr noundef %22, ptr noundef %iCol)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.end14
  %23 = load i32, ptr %iCol, align 4
  %cmp17 = icmp slt i32 %23, 1
  br i1 %cmp17, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16
  %24 = load i32, ptr %iCol, align 4
  %cmp19 = icmp sgt i32 %24, 65535
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false, %if.then16
  %25 = load ptr, ptr %pParse, align 8
  %26 = load ptr, ptr %zType.addr, align 8
  %27 = load i32, ptr %i, align 4
  %add = add nsw i32 %27, 1
  %28 = load i32, ptr %nResult, align 4
  call void @resolveOutOfRangeError(ptr noundef %25, ptr noundef %26, i32 noundef %add, i32 noundef %28)
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %lor.lhs.false
  %29 = load i32, ptr %iCol, align 4
  %conv23 = trunc i32 %29 to i16
  %30 = load ptr, ptr %pItem, align 8
  %u24 = getelementptr inbounds nuw %struct.ExprList_item, ptr %30, i32 0, i32 5
  %iOrderByCol25 = getelementptr inbounds nuw %struct.anon.12, ptr %u24, i32 0, i32 0
  store i16 %conv23, ptr %iOrderByCol25, align 4
  br label %for.inc52

if.end26:                                         ; preds = %if.end14
  %31 = load ptr, ptr %pItem, align 8
  %u27 = getelementptr inbounds nuw %struct.ExprList_item, ptr %31, i32 0, i32 5
  %iOrderByCol28 = getelementptr inbounds nuw %struct.anon.12, ptr %u27, i32 0, i32 0
  store i16 0, ptr %iOrderByCol28, align 4
  %32 = load ptr, ptr %pNC.addr, align 8
  %33 = load ptr, ptr %pE, align 8
  %call29 = call i32 @sqlite3ResolveExprNames(ptr noundef %32, ptr noundef %33)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %if.end32
  %34 = load i32, ptr %j, align 4
  %35 = load ptr, ptr %pSelect.addr, align 8
  %pEList34 = getelementptr inbounds nuw %struct.Select, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pEList34, align 8
  %nExpr35 = getelementptr inbounds nuw %struct.ExprList, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %nExpr35, align 8
  %cmp36 = icmp slt i32 %34, %37
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond33
  %38 = load ptr, ptr %pE, align 8
  %39 = load ptr, ptr %pSelect.addr, align 8
  %pEList39 = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pEList39, align 8
  %a40 = getelementptr inbounds nuw %struct.ExprList, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %j, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx41 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a40, i64 0, i64 %idxprom
  %pExpr42 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx41, i32 0, i32 0
  %42 = load ptr, ptr %pExpr42, align 8
  %call43 = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %38, ptr noundef %42, i32 noundef -1)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end51

if.then46:                                        ; preds = %for.body38
  %43 = load ptr, ptr %pSelect.addr, align 8
  %44 = load ptr, ptr %pE, align 8
  call void @windowRemoveExprFromSelect(ptr noundef %43, ptr noundef %44)
  %45 = load i32, ptr %j, align 4
  %add47 = add nsw i32 %45, 1
  %conv48 = trunc i32 %add47 to i16
  %46 = load ptr, ptr %pItem, align 8
  %u49 = getelementptr inbounds nuw %struct.ExprList_item, ptr %46, i32 0, i32 5
  %iOrderByCol50 = getelementptr inbounds nuw %struct.anon.12, ptr %u49, i32 0, i32 0
  store i16 %conv48, ptr %iOrderByCol50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %for.body38
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %47 = load i32, ptr %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond33, !llvm.loop !6

for.end:                                          ; preds = %for.cond33
  br label %for.inc52

for.inc52:                                        ; preds = %for.end, %if.end22, %if.then11
  %48 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %48, 1
  store i32 %inc53, ptr %i, align 4
  %49 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %49, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !8

for.end54:                                        ; preds = %for.cond
  %50 = load ptr, ptr %pParse, align 8
  %51 = load ptr, ptr %pSelect.addr, align 8
  %52 = load ptr, ptr %pOrderBy.addr, align 8
  %53 = load ptr, ptr %zType.addr, align 8
  %call55 = call i32 @sqlite3ResolveOrderGroupBy(ptr noundef %50, ptr noundef %51, ptr noundef %52, ptr noundef %53)
  store i32 %call55, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end54, %if.then31, %if.then21, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveAsName(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsInteger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @resolveOutOfRangeError(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowRemoveExprFromSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveOrderGroupBy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
