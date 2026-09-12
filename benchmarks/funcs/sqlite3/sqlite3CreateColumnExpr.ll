; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3CreateColumnExpr(ptr noundef %db, ptr noundef %pSrc, i32 noundef %iSrc, i32 noundef %iCol) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %iSrc.addr = alloca i32, align 4
  %iCol.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %iSrc, ptr %iSrc.addr, align 4
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3ExprAlloc(ptr noundef %0, i32 noundef 162, ptr noundef null, i32 noundef 0)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iSrc.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %4 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pTab, align 8
  %6 = load ptr, ptr %p, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 14
  store ptr %5, ptr %y, align 8
  %7 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %iCursor, align 8
  %9 = load ptr, ptr %p, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 8
  store i32 %8, ptr %iTable, align 4
  %10 = load ptr, ptr %p, align 8
  %y1 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 14
  %11 = load ptr, ptr %y1, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 10
  %12 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %12 to i32
  %13 = load i32, ptr %iCol.addr, align 4
  %cmp = icmp eq i32 %conv, %13
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %14 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 9
  store i16 -1, ptr %iColumn, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load i32, ptr %iCol.addr, align 4
  %conv4 = trunc i32 %15 to i16
  %16 = load ptr, ptr %p, align 8
  %iColumn5 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 9
  store i16 %conv4, ptr %iColumn5, align 8
  %17 = load i32, ptr %iCol.addr, align 4
  %cmp6 = icmp sge i32 %17, 64
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %18 = load i32, ptr %iCol.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 63, %cond.true ], [ %18, %cond.false ]
  %sh_prom = zext i32 %cond to i64
  %shl = shl i64 1, %sh_prom
  %19 = load ptr, ptr %pItem, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %19, i32 0, i32 13
  %20 = load i64, ptr %colUsed, align 8
  %or = or i64 %20, %shl
  store i64 %or, ptr %colUsed, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %21 = load ptr, ptr %p, align 8
  ret ptr %21
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
