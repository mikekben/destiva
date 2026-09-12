; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeDeferredSeek(ptr noundef %pWInfo, ptr noundef %pIdx, i32 noundef %iCur, i32 noundef %iIdxCur) #0 {
entry:
  %pWInfo.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %ai = alloca ptr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  %0 = load ptr, ptr %pWInfo.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WhereInfo, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %v, align 8
  %5 = load i32, ptr %iIdxCur.addr, align 4
  %6 = load i32, ptr %iCur.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %4, i32 noundef 134, i32 noundef %5, i32 noundef 0, i32 noundef %6)
  %7 = load ptr, ptr %pWInfo.addr, align 8
  %wctrlFlags = getelementptr inbounds nuw %struct.WhereInfo, ptr %7, i32 0, i32 10
  %8 = load i16, ptr %wctrlFlags, align 8
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end29

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %pParse, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 35
  %10 = load ptr, ptr %pToplevel, align 8
  %tobool2 = icmp ne ptr %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %pParse, align 8
  %pToplevel3 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 35
  %12 = load ptr, ptr %pToplevel3, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true
  %13 = load ptr, ptr %pParse, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ %13, %cond.false ]
  %writeMask = getelementptr inbounds nuw %struct.Parse, ptr %cond, i32 0, i32 26
  %14 = load i32, ptr %writeMask, align 8
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %cond.end
  %15 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pTable, align 8
  store ptr %16, ptr %pTab, align 8
  %17 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 11
  %20 = load i16, ptr %nCol, align 2
  %conv5 = sext i16 %20 to i32
  %add = add nsw i32 %conv5, 1
  %conv6 = sext i32 %add to i64
  %mul = mul i64 4, %conv6
  %call7 = call ptr @sqlite3DbMallocZero(ptr noundef %18, i64 noundef %mul)
  store ptr %call7, ptr %ai, align 8
  %21 = load ptr, ptr %ai, align 8
  %tobool8 = icmp ne ptr %21, null
  br i1 %tobool8, label %if.then9, label %if.end28

if.then9:                                         ; preds = %if.then
  %22 = load ptr, ptr %pTab, align 8
  %nCol10 = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 11
  %23 = load i16, ptr %nCol10, align 2
  %conv11 = sext i16 %23 to i32
  %24 = load ptr, ptr %ai, align 8
  %arrayidx = getelementptr inbounds i32, ptr %24, i64 0
  store i32 %conv11, ptr %arrayidx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 14
  %27 = load i16, ptr %nColumn, align 8
  %conv12 = zext i16 %27 to i32
  %sub = sub nsw i32 %conv12, 1
  %cmp13 = icmp slt i32 %25, %sub
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %aiColumn, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %29, i64 %idxprom
  %31 = load i16, ptr %arrayidx15, align 2
  %conv16 = sext i16 %31 to i32
  %cmp17 = icmp sge i32 %conv16, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %add20 = add nsw i32 %32, 1
  %33 = load ptr, ptr %ai, align 8
  %34 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn21 = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %aiColumn21, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %35, i64 %idxprom22
  %37 = load i16, ptr %arrayidx23, align 2
  %conv24 = sext i16 %37 to i32
  %add25 = add nsw i32 %conv24, 1
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %33, i64 %idxprom26
  store i32 %add20, ptr %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load ptr, ptr %v, align 8
  %40 = load ptr, ptr %ai, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %39, i32 noundef -1, ptr noundef %40, i32 noundef -15)
  br label %if.end28

if.end28:                                         ; preds = %for.end, %if.then
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %cond.end, %entry
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
