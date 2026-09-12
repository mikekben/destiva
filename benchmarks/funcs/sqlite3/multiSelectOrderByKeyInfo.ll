; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.anon.12 = type { i16, i16 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @multiSelectCollSeq(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @multiSelectOrderByKeyInfo(ptr noundef %pParse, ptr noundef %p, i32 noundef %nExtra) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nExtra.addr = alloca i32, align 4
  %pOrderBy = alloca ptr, align 8
  %nOrderBy = alloca i32, align 4
  %db = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nExtra, ptr %nExtra.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pOrderBy1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pOrderBy1, align 8
  store ptr %1, ptr %pOrderBy, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pOrderBy2 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pOrderBy2, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  store i32 %4, ptr %nOrderBy, align 4
  %5 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db3, align 8
  store ptr %6, ptr %db, align 8
  %7 = load ptr, ptr %db, align 8
  %8 = load i32, ptr %nOrderBy, align 4
  %9 = load i32, ptr %nExtra.addr, align 4
  %add = add nsw i32 %8, %9
  %call = call ptr @sqlite3KeyInfoAlloc(ptr noundef %7, i32 noundef %add, i32 noundef 1)
  store ptr %call, ptr %pRet, align 8
  %10 = load ptr, ptr %pRet, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nOrderBy, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pOrderBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %15 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pExpr, align 8
  store ptr %16, ptr %pTerm, align 8
  %17 = load ptr, ptr %pTerm, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, 256
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pTerm, align 8
  %call6 = call ptr @sqlite3ExprCollSeq(ptr noundef %19, ptr noundef %20)
  store ptr %call6, ptr %pColl, align 8
  br label %if.end16

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %23 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %23, i32 0, i32 5
  %iOrderByCol = getelementptr inbounds nuw %struct.anon.12, ptr %u, i32 0, i32 0
  %24 = load i16, ptr %iOrderByCol, align 4
  %conv = zext i16 %24 to i32
  %sub = sub nsw i32 %conv, 1
  %call7 = call ptr @multiSelectCollSeq(ptr noundef %21, ptr noundef %22, i32 noundef %sub)
  store ptr %call7, ptr %pColl, align 8
  %25 = load ptr, ptr %pColl, align 8
  %cmp8 = icmp eq ptr %25, null
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %26 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pDfltColl, align 8
  store ptr %27, ptr %pColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pTerm, align 8
  %30 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zName, align 8
  %call11 = call ptr @sqlite3ExprAddCollateString(ptr noundef %28, ptr noundef %29, ptr noundef %31)
  %32 = load ptr, ptr %pOrderBy, align 8
  %a12 = getelementptr inbounds nuw %struct.ExprList, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %33 to i64
  %arrayidx14 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a12, i64 0, i64 %idxprom13
  %pExpr15 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx14, i32 0, i32 0
  store ptr %call11, ptr %pExpr15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then5
  %34 = load ptr, ptr %pColl, align 8
  %35 = load ptr, ptr %pRet, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %36 to i64
  %arrayidx18 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom17
  store ptr %34, ptr %arrayidx18, align 8
  %37 = load ptr, ptr %pOrderBy, align 8
  %a19 = getelementptr inbounds nuw %struct.ExprList, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %38 to i64
  %arrayidx21 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a19, i64 0, i64 %idxprom20
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx21, i32 0, i32 3
  %39 = load i8, ptr %sortFlags, align 8
  %40 = load ptr, ptr %pRet, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %aSortFlags, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %42 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %41, i64 %idxprom22
  store i8 %39, ptr %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %43 = load i32, ptr %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %entry
  %44 = load ptr, ptr %pRet, align 8
  ret ptr %44
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
