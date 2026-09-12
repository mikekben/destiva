; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GenerateIndexKey(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResolvePartIdxLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3GenerateRowIndexDelete(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %iDataCur, i32 noundef %iIdxCur, ptr noundef %aRegIdx, i32 noundef %iIdxNoSeek) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iDataCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %aRegIdx.addr = alloca ptr, align 8
  %iIdxNoSeek.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r1 = alloca i32, align 4
  %iPartIdxLabel = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %pPrior = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iDataCur, ptr %iDataCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  store ptr %aRegIdx, ptr %aRegIdx.addr, align 8
  store i32 %iIdxNoSeek, ptr %iIdxNoSeek.addr, align 4
  store i32 -1, ptr %r1, align 4
  store ptr null, ptr %pPrior, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %tabFlags, align 8
  %and = and i32 %3, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call, %cond.false ]
  store ptr %cond, ptr %pPk, align 8
  store i32 0, ptr %i, align 4
  %5 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pIndex, align 8
  store ptr %6, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load ptr, ptr %pIdx, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %aRegIdx.addr, align 8
  %cmp1 = icmp ne ptr %8, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %aRegIdx.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %for.body
  %12 = load ptr, ptr %pIdx, align 8
  %13 = load ptr, ptr %pPk, align 8
  %cmp3 = icmp eq ptr %12, %13
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %14 = load i32, ptr %iIdxCur.addr, align 4
  %15 = load i32, ptr %i, align 4
  %add = add nsw i32 %14, %15
  %16 = load i32, ptr %iIdxNoSeek.addr, align 4
  %cmp6 = icmp eq i32 %add, %16
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %for.inc

if.end8:                                          ; preds = %if.end5
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pIdx, align 8
  %19 = load i32, ptr %iDataCur.addr, align 4
  %20 = load ptr, ptr %pPrior, align 8
  %21 = load i32, ptr %r1, align 4
  %call9 = call i32 @sqlite3GenerateIndexKey(ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef 0, i32 noundef 1, ptr noundef %iPartIdxLabel, ptr noundef %20, i32 noundef %21)
  store i32 %call9, ptr %r1, align 4
  %22 = load ptr, ptr %v, align 8
  %23 = load i32, ptr %iIdxCur.addr, align 4
  %24 = load i32, ptr %i, align 4
  %add10 = add nsw i32 %23, %24
  %25 = load i32, ptr %r1, align 4
  %26 = load ptr, ptr %pIdx, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 16
  %bf.load = load i16, ptr %uniqNotNull, align 1
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool11 = icmp ne i32 %bf.cast, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %if.end8
  %27 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 13
  %28 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %28 to i32
  br label %cond.end15

cond.false13:                                     ; preds = %if.end8
  %29 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %29, i32 0, i32 14
  %30 = load i16, ptr %nColumn, align 8
  %conv14 = zext i16 %30 to i32
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false13, %cond.true12
  %cond16 = phi i32 [ %conv, %cond.true12 ], [ %conv14, %cond.false13 ]
  %call17 = call i32 @sqlite3VdbeAddOp3(ptr noundef %22, i32 noundef 133, i32 noundef %add10, i32 noundef %25, i32 noundef %cond16)
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load i32, ptr %iPartIdxLabel, align 4
  call void @sqlite3ResolvePartIdxLabel(ptr noundef %31, i32 noundef %32)
  %33 = load ptr, ptr %pIdx, align 8
  store ptr %33, ptr %pPrior, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end15, %if.then7, %if.then4, %if.then
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  %35 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %pNext, align 8
  store ptr %36, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
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
