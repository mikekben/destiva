; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalIterator = type { i32, i32, [1 x %struct.WalSegment] }
%struct.WalSegment = type { i32, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @walIteratorNext(ptr noundef %p, ptr noundef %piPage, ptr noundef %piFrame) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %piPage.addr = alloca ptr, align 8
  %piFrame.addr = alloca ptr, align 8
  %iMin = alloca i32, align 4
  %iRet = alloca i32, align 4
  %i = alloca i32, align 4
  %pSegment = alloca ptr, align 8
  %iPg = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %piPage, ptr %piPage.addr, align 8
  store ptr %piFrame, ptr %piFrame.addr, align 8
  store i32 -1, ptr %iRet, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %iPrior = getelementptr inbounds nuw %struct.WalIterator, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %iPrior, align 8
  store i32 %1, ptr %iMin, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %nSegment = getelementptr inbounds nuw %struct.WalIterator, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nSegment, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p.addr, align 8
  %aSegment = getelementptr inbounds nuw %struct.WalIterator, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.WalSegment], ptr %aSegment, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pSegment, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %for.body
  %7 = load ptr, ptr %pSegment, align 8
  %iNext = getelementptr inbounds nuw %struct.WalSegment, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %iNext, align 8
  %9 = load ptr, ptr %pSegment, align 8
  %nEntry = getelementptr inbounds nuw %struct.WalSegment, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %nEntry, align 8
  %cmp1 = icmp slt i32 %8, %10
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %pSegment, align 8
  %aPgno = getelementptr inbounds nuw %struct.WalSegment, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %aPgno, align 8
  %13 = load ptr, ptr %pSegment, align 8
  %aIndex = getelementptr inbounds nuw %struct.WalSegment, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %aIndex, align 8
  %15 = load ptr, ptr %pSegment, align 8
  %iNext2 = getelementptr inbounds nuw %struct.WalSegment, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %iNext2, align 8
  %idxprom3 = sext i32 %16 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %14, i64 %idxprom3
  %17 = load i16, ptr %arrayidx4, align 2
  %idxprom5 = zext i16 %17 to i64
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %12, i64 %idxprom5
  %18 = load i32, ptr %arrayidx6, align 4
  store i32 %18, ptr %iPg, align 4
  %19 = load i32, ptr %iPg, align 4
  %20 = load i32, ptr %iMin, align 4
  %cmp7 = icmp ugt i32 %19, %20
  br i1 %cmp7, label %if.then, label %if.end14

if.then:                                          ; preds = %while.body
  %21 = load i32, ptr %iPg, align 4
  %22 = load i32, ptr %iRet, align 4
  %cmp8 = icmp ult i32 %21, %22
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %23 = load i32, ptr %iPg, align 4
  store i32 %23, ptr %iRet, align 4
  %24 = load ptr, ptr %pSegment, align 8
  %iZero = getelementptr inbounds nuw %struct.WalSegment, ptr %24, i32 0, i32 4
  %25 = load i32, ptr %iZero, align 4
  %26 = load ptr, ptr %pSegment, align 8
  %aIndex10 = getelementptr inbounds nuw %struct.WalSegment, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %aIndex10, align 8
  %28 = load ptr, ptr %pSegment, align 8
  %iNext11 = getelementptr inbounds nuw %struct.WalSegment, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %iNext11, align 8
  %idxprom12 = sext i32 %29 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %27, i64 %idxprom12
  %30 = load i16, ptr %arrayidx13, align 2
  %conv = zext i16 %30 to i32
  %add = add nsw i32 %25, %conv
  %31 = load ptr, ptr %piFrame.addr, align 8
  store i32 %add, ptr %31, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %while.end

if.end14:                                         ; preds = %while.body
  %32 = load ptr, ptr %pSegment, align 8
  %iNext15 = getelementptr inbounds nuw %struct.WalSegment, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %iNext15, align 8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %iNext15, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %34 = load i32, ptr %i, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %35 = load i32, ptr %iRet, align 4
  %36 = load ptr, ptr %p.addr, align 8
  %iPrior16 = getelementptr inbounds nuw %struct.WalIterator, ptr %36, i32 0, i32 0
  store i32 %35, ptr %iPrior16, align 8
  %37 = load ptr, ptr %piPage.addr, align 8
  store i32 %35, ptr %37, align 4
  %38 = load i32, ptr %iRet, align 4
  %cmp17 = icmp eq i32 %38, -1
  %conv18 = zext i1 %cmp17 to i32
  ret i32 %conv18
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
