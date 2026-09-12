; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3TableColumnAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereRangeVectorLen(ptr noundef %pParse, i32 noundef %iCur, ptr noundef %pIdx, i32 noundef %nEq, ptr noundef %pTerm) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %nEq.addr = alloca i32, align 4
  %pTerm.addr = alloca ptr, align 8
  %nCmp = alloca i32, align 4
  %i = alloca i32, align 4
  %aff = alloca i8, align 1
  %idxaff = alloca i8, align 1
  %pColl = alloca ptr, align 8
  %pLhs = alloca ptr, align 8
  %pRhs = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %nEq, ptr %nEq.addr, align 4
  store ptr %pTerm, ptr %pTerm.addr, align 8
  %0 = load ptr, ptr %pTerm.addr, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pExpr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pLeft, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %2)
  store i32 %call, ptr %nCmp, align 4
  %3 = load i32, ptr %nCmp, align 4
  %4 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 14
  %5 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %5 to i32
  %6 = load i32, ptr %nEq.addr, align 4
  %sub = sub nsw i32 %conv, %6
  %cmp = icmp slt i32 %3, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %nCmp, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %pIdx.addr, align 8
  %nColumn2 = getelementptr inbounds nuw %struct.Index, ptr %8, i32 0, i32 14
  %9 = load i16, ptr %nColumn2, align 8
  %conv3 = zext i16 %9 to i32
  %10 = load i32, ptr %nEq.addr, align 4
  %sub4 = sub nsw i32 %conv3, %10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %sub4, %cond.false ]
  store i32 %cond, ptr %nCmp, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nCmp, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %idxaff, align 1
  %13 = load ptr, ptr %pTerm.addr, align 8
  %pExpr7 = getelementptr inbounds nuw %struct.WhereTerm, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pExpr7, align 8
  %pLeft8 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pLeft8, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %x, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr9 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %18 = load ptr, ptr %pExpr9, align 8
  store ptr %18, ptr %pLhs, align 8
  %19 = load ptr, ptr %pTerm.addr, align 8
  %pExpr10 = getelementptr inbounds nuw %struct.WhereTerm, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pExpr10, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pRight, align 8
  store ptr %21, ptr %pRhs, align 8
  %22 = load ptr, ptr %pRhs, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %flags, align 4
  %and = and i32 %23, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %24 = load ptr, ptr %pRhs, align 8
  %x11 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %x11, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pEList, align 8
  %a12 = getelementptr inbounds nuw %struct.ExprList, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a12, i64 0, i64 %idxprom13
  %pExpr15 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx14, i32 0, i32 0
  %28 = load ptr, ptr %pExpr15, align 8
  store ptr %28, ptr %pRhs, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %29 = load ptr, ptr %pRhs, align 8
  %x16 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %x16, align 8
  %a17 = getelementptr inbounds nuw %struct.ExprList, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %31 to i64
  %arrayidx19 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a17, i64 0, i64 %idxprom18
  %pExpr20 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx19, i32 0, i32 0
  %32 = load ptr, ptr %pExpr20, align 8
  store ptr %32, ptr %pRhs, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %33 = load ptr, ptr %pLhs, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 0
  %34 = load i8, ptr %op, align 8
  %conv21 = zext i8 %34 to i32
  %cmp22 = icmp ne i32 %conv21, 162
  br i1 %cmp22, label %if.then44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %35 = load ptr, ptr %pLhs, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %35, i32 0, i32 8
  %36 = load i32, ptr %iTable, align 4
  %37 = load i32, ptr %iCur.addr, align 4
  %cmp24 = icmp ne i32 %36, %37
  br i1 %cmp24, label %if.then44, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %38 = load ptr, ptr %pLhs, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %38, i32 0, i32 9
  %39 = load i16, ptr %iColumn, align 8
  %conv27 = sext i16 %39 to i32
  %40 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aiColumn, align 8
  %42 = load i32, ptr %i, align 4
  %43 = load i32, ptr %nEq.addr, align 4
  %add = add nsw i32 %42, %43
  %idxprom28 = sext i32 %add to i64
  %arrayidx29 = getelementptr inbounds i16, ptr %41, i64 %idxprom28
  %44 = load i16, ptr %arrayidx29, align 2
  %conv30 = sext i16 %44 to i32
  %cmp31 = icmp ne i32 %conv27, %conv30
  br i1 %cmp31, label %if.then44, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false26
  %45 = load ptr, ptr %pIdx.addr, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %aSortOrder, align 8
  %47 = load i32, ptr %i, align 4
  %48 = load i32, ptr %nEq.addr, align 4
  %add34 = add nsw i32 %47, %48
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %46, i64 %idxprom35
  %49 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %49 to i32
  %50 = load ptr, ptr %pIdx.addr, align 8
  %aSortOrder38 = getelementptr inbounds nuw %struct.Index, ptr %50, i32 0, i32 7
  %51 = load ptr, ptr %aSortOrder38, align 8
  %52 = load i32, ptr %nEq.addr, align 4
  %idxprom39 = sext i32 %52 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %51, i64 %idxprom39
  %53 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %53 to i32
  %cmp42 = icmp ne i32 %conv37, %conv41
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.lhs.false33, %lor.lhs.false26, %lor.lhs.false, %if.end
  br label %for.end

if.end45:                                         ; preds = %lor.lhs.false33
  %54 = load ptr, ptr %pRhs, align 8
  %55 = load ptr, ptr %pLhs, align 8
  %call46 = call signext i8 @sqlite3ExprAffinity(ptr noundef %55)
  %call47 = call signext i8 @sqlite3CompareAffinity(ptr noundef %54, i8 noundef signext %call46)
  store i8 %call47, ptr %aff, align 1
  %56 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %pTable, align 8
  %58 = load ptr, ptr %pLhs, align 8
  %iColumn48 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 9
  %59 = load i16, ptr %iColumn48, align 8
  %conv49 = sext i16 %59 to i32
  %call50 = call signext i8 @sqlite3TableColumnAffinity(ptr noundef %57, i32 noundef %conv49)
  store i8 %call50, ptr %idxaff, align 1
  %60 = load i8, ptr %aff, align 1
  %conv51 = sext i8 %60 to i32
  %61 = load i8, ptr %idxaff, align 1
  %conv52 = sext i8 %61 to i32
  %cmp53 = icmp ne i32 %conv51, %conv52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end45
  br label %for.end

if.end56:                                         ; preds = %if.end45
  %62 = load ptr, ptr %pParse.addr, align 8
  %63 = load ptr, ptr %pLhs, align 8
  %64 = load ptr, ptr %pRhs, align 8
  %call57 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %62, ptr noundef %63, ptr noundef %64)
  store ptr %call57, ptr %pColl, align 8
  %65 = load ptr, ptr %pColl, align 8
  %cmp58 = icmp eq ptr %65, null
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end56
  br label %for.end

if.end61:                                         ; preds = %if.end56
  %66 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %zName, align 8
  %68 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %68, i32 0, i32 8
  %69 = load ptr, ptr %azColl, align 8
  %70 = load i32, ptr %i, align 4
  %71 = load i32, ptr %nEq.addr, align 4
  %add62 = add nsw i32 %70, %71
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds ptr, ptr %69, i64 %idxprom63
  %72 = load ptr, ptr %arrayidx64, align 8
  %call65 = call i32 @sqlite3StrICmp(ptr noundef %67, ptr noundef %72)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end61
  br label %for.end

if.end68:                                         ; preds = %if.end61
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %73 = load i32, ptr %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then67, %if.then60, %if.then55, %if.then44, %for.cond
  %74 = load i32, ptr %i, align 4
  ret i32 %74
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
