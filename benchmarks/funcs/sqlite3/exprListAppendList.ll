; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @exprListAppendList(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pAppend, i32 noundef %bIntToNull) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pAppend.addr = alloca ptr, align 8
  %bIntToNull.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %nInit = alloca i32, align 4
  %pDup = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pAppend, ptr %pAppend.addr, align 8
  store i32 %bIntToNull, ptr %bIntToNull.addr, align 4
  %0 = load ptr, ptr %pAppend.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pList.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nInit, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pAppend.addr, align 8
  %nExpr2 = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr2, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %pAppend.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %11 = load ptr, ptr %pExpr, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %8, ptr noundef %11, i32 noundef 0)
  store ptr %call, ptr %pDup, align 8
  %12 = load i32, ptr %bIntToNull.addr, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %pDup, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = load ptr, ptr %pDup, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 0
  %15 = load i8, ptr %op, align 8
  %conv = zext i8 %15 to i32
  %cmp6 = icmp eq i32 %conv, 150
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true5
  %16 = load ptr, ptr %pDup, align 8
  %op9 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 0
  store i8 117, ptr %op9, align 8
  %17 = load ptr, ptr %pDup, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %flags, align 4
  %and = and i32 %18, -805307393
  store i32 %and, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true5, %land.lhs.true, %for.body
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pList.addr, align 8
  %21 = load ptr, ptr %pDup, align 8
  %call10 = call ptr @sqlite3ExprListAppend(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store ptr %call10, ptr %pList.addr, align 8
  %22 = load ptr, ptr %pList.addr, align 8
  %tobool11 = icmp ne ptr %22, null
  br i1 %tobool11, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end
  %23 = load ptr, ptr %pAppend.addr, align 8
  %a13 = getelementptr inbounds nuw %struct.ExprList, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a13, i64 0, i64 %idxprom14
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx15, i32 0, i32 3
  %25 = load i8, ptr %sortFlags, align 8
  %26 = load ptr, ptr %pList.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.ExprList, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nInit, align 4
  %28 = load i32, ptr %i, align 4
  %add = add nsw i32 %27, %28
  %idxprom17 = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a16, i64 0, i64 %idxprom17
  %sortFlags19 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx18, i32 0, i32 3
  store i8 %25, ptr %sortFlags19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end21

if.end21:                                         ; preds = %for.end, %entry
  %30 = load ptr, ptr %pList.addr, align 8
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
