; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @estimateIndexWidth(ptr noundef %pIdx) #0 {
entry:
  %pIdx.addr = alloca ptr, align 8
  %wIndex = alloca i32, align 4
  %i = alloca i32, align 4
  %aCol = alloca ptr, align 8
  %x = alloca i16, align 2
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 0, ptr %wIndex, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pTable, align 8
  %aCol1 = getelementptr inbounds nuw %struct.Table, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %aCol1, align 8
  store ptr %2, ptr %aCol, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %4, i32 0, i32 14
  %5 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %5 to i32
  %cmp = icmp slt i32 %3, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %aiColumn, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %9 = load i16, ptr %arrayidx, align 2
  store i16 %9, ptr %x, align 2
  %10 = load i16, ptr %x, align 2
  %conv3 = sext i16 %10 to i32
  %cmp4 = icmp slt i32 %conv3, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load ptr, ptr %aCol, align 8
  %12 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn6 = getelementptr inbounds nuw %struct.Index, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %aiColumn6, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %13, i64 %idxprom7
  %15 = load i16, ptr %arrayidx8, align 2
  %idxprom9 = sext i16 %15 to i64
  %arrayidx10 = getelementptr inbounds %struct.Column, ptr %11, i64 %idxprom9
  %szEst = getelementptr inbounds nuw %struct.Column, ptr %arrayidx10, i32 0, i32 5
  %16 = load i8, ptr %szEst, align 2
  %conv11 = zext i8 %16 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv11, %cond.false ]
  %17 = load i32, ptr %wIndex, align 4
  %add = add i32 %17, %cond
  store i32 %add, ptr %wIndex, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %wIndex, align 4
  %mul = mul i32 %19, 4
  %conv12 = zext i32 %mul to i64
  %call = call signext i16 @sqlite3LogEst(i64 noundef %conv12)
  %20 = load ptr, ptr %pIdx.addr, align 8
  %szIdxRow = getelementptr inbounds nuw %struct.Index, ptr %20, i32 0, i32 12
  store i16 %call, ptr %szIdxRow, align 4
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
