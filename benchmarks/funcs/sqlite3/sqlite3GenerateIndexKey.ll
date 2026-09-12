; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3GenerateIndexKey(ptr noundef %pParse, ptr noundef %pIdx, i32 noundef %iDataCur, i32 noundef %regOut, i32 noundef %prefixOnly, ptr noundef %piPartIdxLabel, ptr noundef %pPrior, i32 noundef %regPrior) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %iDataCur.addr = alloca i32, align 4
  %regOut.addr = alloca i32, align 4
  %prefixOnly.addr = alloca i32, align 4
  %piPartIdxLabel.addr = alloca ptr, align 8
  %pPrior.addr = alloca ptr, align 8
  %regPrior.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %j = alloca i32, align 4
  %regBase = alloca i32, align 4
  %nCol = alloca i32, align 4
  %zAff = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iDataCur, ptr %iDataCur.addr, align 4
  store i32 %regOut, ptr %regOut.addr, align 4
  store i32 %prefixOnly, ptr %prefixOnly.addr, align 4
  store ptr %piPartIdxLabel, ptr %piPartIdxLabel.addr, align 8
  store ptr %pPrior, ptr %pPrior.addr, align 8
  store i32 %regPrior, ptr %regPrior.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %piPartIdxLabel.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pIdx.addr, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %pPartIdxWhere, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %5)
  %6 = load ptr, ptr %piPartIdxLabel.addr, align 8
  store i32 %call, ptr %6, align 4
  %7 = load i32, ptr %iDataCur.addr, align 4
  %add = add nsw i32 %7, 1
  %8 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 20
  store i32 %add, ptr %iSelfTab, align 8
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pIdx.addr, align 8
  %pPartIdxWhere3 = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %pPartIdxWhere3, align 8
  %12 = load ptr, ptr %piPartIdxLabel.addr, align 8
  %13 = load i32, ptr %12, align 4
  call void @sqlite3ExprIfFalseDup(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef 16)
  %14 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab4 = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 20
  store i32 0, ptr %iSelfTab4, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %piPartIdxLabel.addr, align 8
  store i32 0, ptr %15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %16 = load i32, ptr %prefixOnly.addr, align 4
  %tobool6 = icmp ne i32 %16, 0
  br i1 %tobool6, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end5
  %17 = load ptr, ptr %pIdx.addr, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %17, i32 0, i32 16
  %bf.load = load i16, ptr %uniqNotNull, align 1
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool7 = icmp ne i32 %bf.cast, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %pIdx.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 13
  %19 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %19 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end5
  %20 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %20, i32 0, i32 14
  %21 = load i16, ptr %nColumn, align 8
  %conv8 = zext i16 %21 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv8, %cond.false ]
  store i32 %cond, ptr %nCol, align 4
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load i32, ptr %nCol, align 4
  %call9 = call i32 @sqlite3GetTempRange(ptr noundef %22, i32 noundef %23)
  store i32 %call9, ptr %regBase, align 4
  %24 = load ptr, ptr %pPrior.addr, align 8
  %tobool10 = icmp ne ptr %24, null
  br i1 %tobool10, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %cond.end
  %25 = load i32, ptr %regBase, align 4
  %26 = load i32, ptr %regPrior.addr, align 4
  %cmp = icmp ne i32 %25, %26
  br i1 %cmp, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true11
  %27 = load ptr, ptr %pPrior.addr, align 8
  %pPartIdxWhere13 = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %pPartIdxWhere13, align 8
  %tobool14 = icmp ne ptr %28, null
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true11
  store ptr null, ptr %pPrior.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %lor.lhs.false, %cond.end
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %29 = load i32, ptr %j, align 4
  %30 = load i32, ptr %nCol, align 4
  %cmp17 = icmp slt i32 %29, %30
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %pPrior.addr, align 8
  %tobool19 = icmp ne ptr %31, null
  br i1 %tobool19, label %land.lhs.true20, label %if.end36

land.lhs.true20:                                  ; preds = %for.body
  %32 = load ptr, ptr %pPrior.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %aiColumn, align 8
  %34 = load i32, ptr %j, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds i16, ptr %33, i64 %idxprom
  %35 = load i16, ptr %arrayidx, align 2
  %conv21 = sext i16 %35 to i32
  %36 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn22 = getelementptr inbounds nuw %struct.Index, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %aiColumn22, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %38 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %37, i64 %idxprom23
  %39 = load i16, ptr %arrayidx24, align 2
  %conv25 = sext i16 %39 to i32
  %cmp26 = icmp eq i32 %conv21, %conv25
  br i1 %cmp26, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %land.lhs.true20
  %40 = load ptr, ptr %pPrior.addr, align 8
  %aiColumn29 = getelementptr inbounds nuw %struct.Index, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aiColumn29, align 8
  %42 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %42 to i64
  %arrayidx31 = getelementptr inbounds i16, ptr %41, i64 %idxprom30
  %43 = load i16, ptr %arrayidx31, align 2
  %conv32 = sext i16 %43 to i32
  %cmp33 = icmp ne i32 %conv32, -2
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true28
  br label %for.inc

if.end36:                                         ; preds = %land.lhs.true28, %land.lhs.true20, %for.body
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %pIdx.addr, align 8
  %46 = load i32, ptr %iDataCur.addr, align 4
  %47 = load i32, ptr %j, align 4
  %48 = load i32, ptr %regBase, align 4
  %49 = load i32, ptr %j, align 4
  %add37 = add nsw i32 %48, %49
  call void @sqlite3ExprCodeLoadIndexColumn(ptr noundef %44, ptr noundef %45, i32 noundef %46, i32 noundef %47, i32 noundef %add37)
  %50 = load ptr, ptr %v, align 8
  %call38 = call i32 @sqlite3VdbeDeletePriorOpcode(ptr noundef %50, i8 noundef zeroext 84)
  br label %for.inc

for.inc:                                          ; preds = %if.end36, %if.then35
  %51 = load i32, ptr %j, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %52 = load i32, ptr %regOut.addr, align 4
  %tobool39 = icmp ne i32 %52, 0
  br i1 %tobool39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %for.end
  %53 = load ptr, ptr %v, align 8
  %54 = load i32, ptr %regBase, align 4
  %55 = load i32, ptr %nCol, align 4
  %56 = load i32, ptr %regOut.addr, align 4
  %call41 = call i32 @sqlite3VdbeAddOp3(ptr noundef %53, i32 noundef 92, i32 noundef %54, i32 noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %57, i32 0, i32 3
  %58 = load ptr, ptr %pTable, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %pSelect, align 8
  %tobool42 = icmp ne ptr %59, null
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then40
  %60 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %pIdx.addr, align 8
  %call44 = call ptr @sqlite3IndexAffinityStr(ptr noundef %61, ptr noundef %62)
  store ptr %call44, ptr %zAff, align 8
  %63 = load ptr, ptr %v, align 8
  %64 = load ptr, ptr %zAff, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %63, i32 noundef -1, ptr noundef %64, i32 noundef 0)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then40
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %for.end
  %65 = load ptr, ptr %pParse.addr, align 8
  %66 = load i32, ptr %regBase, align 4
  %67 = load i32, ptr %nCol, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %65, i32 noundef %66, i32 noundef %67)
  %68 = load i32, ptr %regBase, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalseDup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeLoadIndexColumn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeDeletePriorOpcode(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IndexAffinityStr(ptr noundef, ptr noundef) #0

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
