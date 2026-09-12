; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.744 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WhereTabFuncArgs(ptr noundef %pParse, ptr noundef %pItem, ptr noundef %pWC) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pItem.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pArgs = alloca ptr, align 8
  %pColRef = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pRhs = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pItem, ptr %pItem.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  %0 = load ptr, ptr %pItem.addr, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %0, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %cmp = icmp eq i32 %bf.cast, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pItem.addr, align 8
  %pTab1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pTab1, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load ptr, ptr %pItem.addr, align 8
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %3, i32 0, i32 14
  %4 = load ptr, ptr %u1, align 8
  store ptr %4, ptr %pArgs, align 8
  %5 = load ptr, ptr %pArgs, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %k, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %j, align 4
  %7 = load ptr, ptr %pArgs, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nExpr, align 8
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %9 = load i32, ptr %k, align 4
  %10 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 11
  %11 = load i16, ptr %nCol, align 2
  %conv = sext i16 %11 to i32
  %cmp6 = icmp slt i32 %9, %conv
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aCol, align 8
  %14 = load i32, ptr %k, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.Column, ptr %13, i64 %idxprom
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx, i32 0, i32 6
  %15 = load i8, ptr %colFlags, align 1
  %conv8 = zext i8 %15 to i32
  %and = and i32 %conv8, 2
  %cmp9 = icmp eq i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load i32, ptr %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %k, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %18 = load i32, ptr %k, align 4
  %19 = load ptr, ptr %pTab, align 8
  %nCol11 = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 11
  %20 = load i16, ptr %nCol11, align 2
  %conv12 = sext i16 %20 to i32
  %cmp13 = icmp sge i32 %18, %conv12
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.end
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName, align 8
  %24 = load i32, ptr %j, align 4
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %21, ptr noundef @.str.744, ptr noundef %23, i32 noundef %24)
  br label %for.end

if.end16:                                         ; preds = %while.end
  %25 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3ExprAlloc(ptr noundef %26, i32 noundef 162, ptr noundef null, i32 noundef 0)
  store ptr %call, ptr %pColRef, align 8
  %27 = load ptr, ptr %pColRef, align 8
  %cmp17 = icmp eq ptr %27, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %for.end

if.end20:                                         ; preds = %if.end16
  %28 = load ptr, ptr %pItem.addr, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %28, i32 0, i32 10
  %29 = load i32, ptr %iCursor, align 8
  %30 = load ptr, ptr %pColRef, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 8
  store i32 %29, ptr %iTable, align 4
  %31 = load i32, ptr %k, align 4
  %inc21 = add nsw i32 %31, 1
  store i32 %inc21, ptr %k, align 4
  %conv22 = trunc i32 %31 to i16
  %32 = load ptr, ptr %pColRef, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 9
  store i16 %conv22, ptr %iColumn, align 8
  %33 = load ptr, ptr %pTab, align 8
  %34 = load ptr, ptr %pColRef, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 14
  store ptr %33, ptr %y, align 8
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pParse.addr, align 8
  %db23 = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %db23, align 8
  %38 = load ptr, ptr %pArgs, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %39 to i64
  %arrayidx25 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom24
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx25, i32 0, i32 0
  %40 = load ptr, ptr %pExpr, align 8
  %call26 = call ptr @sqlite3ExprDup(ptr noundef %37, ptr noundef %40, i32 noundef 0)
  %call27 = call ptr @sqlite3PExpr(ptr noundef %35, i32 noundef 169, ptr noundef %call26, ptr noundef null)
  store ptr %call27, ptr %pRhs, align 8
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load ptr, ptr %pColRef, align 8
  %43 = load ptr, ptr %pRhs, align 8
  %call28 = call ptr @sqlite3PExpr(ptr noundef %41, i32 noundef 53, ptr noundef %42, ptr noundef %43)
  store ptr %call28, ptr %pTerm, align 8
  %44 = load ptr, ptr %pWC.addr, align 8
  %45 = load ptr, ptr %pTerm, align 8
  %call29 = call i32 @whereClauseInsert(ptr noundef %44, ptr noundef %45, i16 noundef zeroext 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %46 = load i32, ptr %j, align 4
  %inc30 = add nsw i32 %46, 1
  store i32 %inc30, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.then19, %if.then15, %for.cond, %if.then3, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
