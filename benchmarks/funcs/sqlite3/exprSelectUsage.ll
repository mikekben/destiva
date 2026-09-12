; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprListUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @exprSelectUsage(ptr noundef %pMaskSet, ptr noundef %pS) #0 {
entry:
  %pMaskSet.addr = alloca ptr, align 8
  %pS.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %pSrc = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pMaskSet, ptr %pMaskSet.addr, align 8
  store ptr %pS, ptr %pS.addr, align 8
  store i64 0, ptr %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %entry
  %0 = load ptr, ptr %pS.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pS.addr, align 8
  %pSrc1 = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %pSrc1, align 8
  store ptr %2, ptr %pSrc, align 8
  %3 = load ptr, ptr %pMaskSet.addr, align 8
  %4 = load ptr, ptr %pS.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pEList, align 8
  %call = call i64 @sqlite3WhereExprListUsage(ptr noundef %3, ptr noundef %5)
  %6 = load i64, ptr %mask, align 8
  %or = or i64 %6, %call
  store i64 %or, ptr %mask, align 8
  %7 = load ptr, ptr %pMaskSet.addr, align 8
  %8 = load ptr, ptr %pS.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %pGroupBy, align 8
  %call2 = call i64 @sqlite3WhereExprListUsage(ptr noundef %7, ptr noundef %9)
  %10 = load i64, ptr %mask, align 8
  %or3 = or i64 %10, %call2
  store i64 %or3, ptr %mask, align 8
  %11 = load ptr, ptr %pMaskSet.addr, align 8
  %12 = load ptr, ptr %pS.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pOrderBy, align 8
  %call4 = call i64 @sqlite3WhereExprListUsage(ptr noundef %11, ptr noundef %13)
  %14 = load i64, ptr %mask, align 8
  %or5 = or i64 %14, %call4
  store i64 %or5, ptr %mask, align 8
  %15 = load ptr, ptr %pMaskSet.addr, align 8
  %16 = load ptr, ptr %pS.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %pWhere, align 8
  %call6 = call i64 @sqlite3WhereExprUsage(ptr noundef %15, ptr noundef %17)
  %18 = load i64, ptr %mask, align 8
  %or7 = or i64 %18, %call6
  store i64 %or7, ptr %mask, align 8
  %19 = load ptr, ptr %pMaskSet.addr, align 8
  %20 = load ptr, ptr %pS.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %pHaving, align 8
  %call8 = call i64 @sqlite3WhereExprUsage(ptr noundef %19, ptr noundef %21)
  %22 = load i64, ptr %mask, align 8
  %or9 = or i64 %22, %call8
  store i64 %or9, ptr %mask, align 8
  %23 = load ptr, ptr %pSrc, align 8
  %cmp = icmp ne ptr %23, null
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %while.body
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %25, i32 0, i32 0
  %26 = load i32, ptr %nSrc, align 8
  %cmp10 = icmp slt i32 %24, %26
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pMaskSet.addr, align 8
  %28 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  %30 = load ptr, ptr %pSelect, align 8
  %call11 = call i64 @exprSelectUsage(ptr noundef %27, ptr noundef %30)
  %31 = load i64, ptr %mask, align 8
  %or12 = or i64 %31, %call11
  store i64 %or12, ptr %mask, align 8
  %32 = load ptr, ptr %pMaskSet.addr, align 8
  %33 = load ptr, ptr %pSrc, align 8
  %a13 = getelementptr inbounds nuw %struct.SrcList, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %34 to i64
  %arrayidx15 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a13, i64 0, i64 %idxprom14
  %pOn = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx15, i32 0, i32 11
  %35 = load ptr, ptr %pOn, align 8
  %call16 = call i64 @sqlite3WhereExprUsage(ptr noundef %32, ptr noundef %35)
  %36 = load i64, ptr %mask, align 8
  %or17 = or i64 %36, %call16
  store i64 %or17, ptr %mask, align 8
  %37 = load ptr, ptr %pSrc, align 8
  %a18 = getelementptr inbounds nuw %struct.SrcList, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %38 to i64
  %arrayidx20 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a18, i64 0, i64 %idxprom19
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx20, i32 0, i32 9
  %isTabFunc = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 1
  %bf.load = load i8, ptr %isTabFunc, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool21 = icmp ne i32 %bf.cast, 0
  br i1 %tobool21, label %if.then22, label %if.end

if.then22:                                        ; preds = %for.body
  %39 = load ptr, ptr %pMaskSet.addr, align 8
  %40 = load ptr, ptr %pSrc, align 8
  %a23 = getelementptr inbounds nuw %struct.SrcList, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %41 to i64
  %arrayidx25 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a23, i64 0, i64 %idxprom24
  %u1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx25, i32 0, i32 14
  %42 = load ptr, ptr %u1, align 8
  %call26 = call i64 @sqlite3WhereExprListUsage(ptr noundef %39, ptr noundef %42)
  %43 = load i64, ptr %mask, align 8
  %or27 = or i64 %43, %call26
  store i64 %or27, ptr %mask, align 8
  br label %if.end

if.end:                                           ; preds = %if.then22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, ptr %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end28

if.end28:                                         ; preds = %for.end, %while.body
  %45 = load ptr, ptr %pS.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %45, i32 0, i32 13
  %46 = load ptr, ptr %pPrior, align 8
  store ptr %46, ptr %pS.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %47 = load i64, ptr %mask, align 8
  ret i64 %47
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
!8 = distinct !{!8, !7}
