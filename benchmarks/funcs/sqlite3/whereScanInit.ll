; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereScan = type { ptr, ptr, ptr, ptr, i8, i8, i8, i32, i32, [11 x i32], [11 x i16] }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden ptr @whereScanInit(ptr noundef %pScan, ptr noundef %pWC, i32 noundef %iCur, i32 noundef %iColumn, i32 noundef %opMask, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca ptr, align 8
  %pScan.addr = alloca ptr, align 8
  %pWC.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %iColumn.addr = alloca i32, align 4
  %opMask.addr = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %pScan, ptr %pScan.addr, align 8
  store ptr %pWC, ptr %pWC.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store i32 %iColumn, ptr %iColumn.addr, align 4
  store i32 %opMask, ptr %opMask.addr, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pWC.addr, align 8
  %1 = load ptr, ptr %pScan.addr, align 8
  %pOrigWC = getelementptr inbounds nuw %struct.WhereScan, ptr %1, i32 0, i32 0
  store ptr %0, ptr %pOrigWC, align 8
  %2 = load ptr, ptr %pWC.addr, align 8
  %3 = load ptr, ptr %pScan.addr, align 8
  %pWC1 = getelementptr inbounds nuw %struct.WhereScan, ptr %3, i32 0, i32 1
  store ptr %2, ptr %pWC1, align 8
  %4 = load ptr, ptr %pScan.addr, align 8
  %pIdxExpr = getelementptr inbounds nuw %struct.WhereScan, ptr %4, i32 0, i32 3
  store ptr null, ptr %pIdxExpr, align 8
  %5 = load ptr, ptr %pScan.addr, align 8
  %idxaff = getelementptr inbounds nuw %struct.WhereScan, ptr %5, i32 0, i32 4
  store i8 0, ptr %idxaff, align 8
  %6 = load ptr, ptr %pScan.addr, align 8
  %zCollName = getelementptr inbounds nuw %struct.WhereScan, ptr %6, i32 0, i32 2
  store ptr null, ptr %zCollName, align 8
  %7 = load i32, ptr %opMask.addr, align 4
  %8 = load ptr, ptr %pScan.addr, align 8
  %opMask2 = getelementptr inbounds nuw %struct.WhereScan, ptr %8, i32 0, i32 7
  store i32 %7, ptr %opMask2, align 4
  %9 = load ptr, ptr %pScan.addr, align 8
  %k = getelementptr inbounds nuw %struct.WhereScan, ptr %9, i32 0, i32 8
  store i32 0, ptr %k, align 8
  %10 = load i32, ptr %iCur.addr, align 4
  %11 = load ptr, ptr %pScan.addr, align 8
  %aiCur = getelementptr inbounds nuw %struct.WhereScan, ptr %11, i32 0, i32 9
  %arrayidx = getelementptr inbounds [11 x i32], ptr %aiCur, i64 0, i64 0
  store i32 %10, ptr %arrayidx, align 4
  %12 = load ptr, ptr %pScan.addr, align 8
  %nEquiv = getelementptr inbounds nuw %struct.WhereScan, ptr %12, i32 0, i32 5
  store i8 1, ptr %nEquiv, align 1
  %13 = load ptr, ptr %pScan.addr, align 8
  %iEquiv = getelementptr inbounds nuw %struct.WhereScan, ptr %13, i32 0, i32 6
  store i8 1, ptr %iEquiv, align 2
  %14 = load ptr, ptr %pIdx.addr, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then, label %if.else32

if.then:                                          ; preds = %entry
  %15 = load i32, ptr %iColumn.addr, align 4
  store i32 %15, ptr %j, align 4
  %16 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %aiColumn, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %17, i64 %idxprom
  %19 = load i16, ptr %arrayidx3, align 2
  %conv = sext i16 %19 to i32
  store i32 %conv, ptr %iColumn.addr, align 4
  %20 = load i32, ptr %iColumn.addr, align 4
  %cmp = icmp eq i32 %20, -2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %21 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 10
  %22 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %23 to i64
  %arrayidx7 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom6
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx7, i32 0, i32 0
  %24 = load ptr, ptr %pExpr, align 8
  %25 = load ptr, ptr %pScan.addr, align 8
  %pIdxExpr8 = getelementptr inbounds nuw %struct.WhereScan, ptr %25, i32 0, i32 3
  store ptr %24, ptr %pIdxExpr8, align 8
  %26 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 8
  %27 = load ptr, ptr %azColl, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %28 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %27, i64 %idxprom9
  %29 = load ptr, ptr %arrayidx10, align 8
  %30 = load ptr, ptr %pScan.addr, align 8
  %zCollName11 = getelementptr inbounds nuw %struct.WhereScan, ptr %30, i32 0, i32 2
  store ptr %29, ptr %zCollName11, align 8
  %31 = load ptr, ptr %pScan.addr, align 8
  %aiColumn12 = getelementptr inbounds nuw %struct.WhereScan, ptr %31, i32 0, i32 10
  %arrayidx13 = getelementptr inbounds [11 x i16], ptr %aiColumn12, i64 0, i64 0
  store i16 -2, ptr %arrayidx13, align 8
  %32 = load ptr, ptr %pScan.addr, align 8
  %call = call ptr @whereScanInitIndexExpr(ptr noundef %32)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %33 = load i32, ptr %iColumn.addr, align 4
  %34 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %pTable, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 10
  %36 = load i16, ptr %iPKey, align 4
  %conv14 = sext i16 %36 to i32
  %cmp15 = icmp eq i32 %33, %conv14
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  store i32 -1, ptr %iColumn.addr, align 4
  br label %if.end30

if.else18:                                        ; preds = %if.else
  %37 = load i32, ptr %iColumn.addr, align 4
  %cmp19 = icmp sge i32 %37, 0
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else18
  %38 = load ptr, ptr %pIdx.addr, align 8
  %pTable22 = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %pTable22, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %aCol, align 8
  %41 = load i32, ptr %iColumn.addr, align 4
  %idxprom23 = sext i32 %41 to i64
  %arrayidx24 = getelementptr inbounds %struct.Column, ptr %40, i64 %idxprom23
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx24, i32 0, i32 4
  %42 = load i8, ptr %affinity, align 1
  %43 = load ptr, ptr %pScan.addr, align 8
  %idxaff25 = getelementptr inbounds nuw %struct.WhereScan, ptr %43, i32 0, i32 4
  store i8 %42, ptr %idxaff25, align 8
  %44 = load ptr, ptr %pIdx.addr, align 8
  %azColl26 = getelementptr inbounds nuw %struct.Index, ptr %44, i32 0, i32 8
  %45 = load ptr, ptr %azColl26, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %46 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %45, i64 %idxprom27
  %47 = load ptr, ptr %arrayidx28, align 8
  %48 = load ptr, ptr %pScan.addr, align 8
  %zCollName29 = getelementptr inbounds nuw %struct.WhereScan, ptr %48, i32 0, i32 2
  store ptr %47, ptr %zCollName29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else18
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then17
  br label %if.end31

if.end31:                                         ; preds = %if.end30
  br label %if.end37

if.else32:                                        ; preds = %entry
  %49 = load i32, ptr %iColumn.addr, align 4
  %cmp33 = icmp eq i32 %49, -2
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.else32
  store ptr null, ptr %retval, align 8
  br label %return

if.end36:                                         ; preds = %if.else32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end31
  %50 = load i32, ptr %iColumn.addr, align 4
  %conv38 = trunc i32 %50 to i16
  %51 = load ptr, ptr %pScan.addr, align 8
  %aiColumn39 = getelementptr inbounds nuw %struct.WhereScan, ptr %51, i32 0, i32 10
  %arrayidx40 = getelementptr inbounds [11 x i16], ptr %aiColumn39, i64 0, i64 0
  store i16 %conv38, ptr %arrayidx40, align 8
  %52 = load ptr, ptr %pScan.addr, align 8
  %call41 = call ptr @whereScanNext(ptr noundef %52)
  store ptr %call41, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %if.then5
  %53 = load ptr, ptr %retval, align 8
  ret ptr %53
}

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @whereScanInitIndexExpr(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
