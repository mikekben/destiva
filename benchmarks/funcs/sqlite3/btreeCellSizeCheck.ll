; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeCellSizeCheck(ptr noundef %pPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %iCellFirst = alloca i32, align 4
  %iCellLast = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca i32, align 4
  %pc = alloca i32, align 4
  %data = alloca ptr, align 8
  %usableSize = alloca i32, align 4
  %cellOffset = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %cellOffset1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 12
  %1 = load i16, ptr %cellOffset1, align 2
  %conv = zext i16 %1 to i32
  %2 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 14
  %3 = load i16, ptr %nCell, align 8
  %conv2 = zext i16 %3 to i32
  %mul = mul nsw i32 2, %conv2
  %add = add nsw i32 %conv, %mul
  store i32 %add, ptr %iCellFirst, align 4
  %4 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pBt, align 8
  %usableSize3 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %usableSize3, align 4
  store i32 %6, ptr %usableSize, align 4
  %7 = load i32, ptr %usableSize, align 4
  %sub = sub nsw i32 %7, 4
  store i32 %sub, ptr %iCellLast, align 4
  %8 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 19
  %9 = load ptr, ptr %aData, align 8
  store ptr %9, ptr %data, align 8
  %10 = load ptr, ptr %pPage.addr, align 8
  %cellOffset4 = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 12
  %11 = load i16, ptr %cellOffset4, align 2
  %conv5 = zext i16 %11 to i32
  store i32 %conv5, ptr %cellOffset, align 4
  %12 = load ptr, ptr %pPage.addr, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 5
  %13 = load i8, ptr %leaf, align 8
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %iCellLast, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %iCellLast, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %pPage.addr, align 8
  %nCell6 = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 14
  %17 = load i16, ptr %nCell6, align 8
  %conv7 = zext i16 %17 to i32
  %cmp = icmp slt i32 %15, %conv7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %data, align 8
  %19 = load i32, ptr %cellOffset, align 4
  %20 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 %20, 2
  %add10 = add nsw i32 %19, %mul9
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %arrayidx11 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %21 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %21 to i32
  %shl = shl i32 %conv12, 8
  %22 = load ptr, ptr %data, align 8
  %23 = load i32, ptr %cellOffset, align 4
  %24 = load i32, ptr %i, align 4
  %mul13 = mul nsw i32 %24, 2
  %add14 = add nsw i32 %23, %mul13
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %22, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds i8, ptr %arrayidx16, i64 1
  %25 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %25 to i32
  %or = or i32 %shl, %conv18
  store i32 %or, ptr %pc, align 4
  %26 = load i32, ptr %pc, align 4
  %27 = load i32, ptr %iCellFirst, align 4
  %cmp19 = icmp slt i32 %26, %27
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %28 = load i32, ptr %pc, align 4
  %29 = load i32, ptr %iCellLast, align 4
  %cmp21 = icmp sgt i32 %28, %29
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false, %for.body
  %call = call i32 @sqlite3CorruptError(i32 noundef 65363)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %pPage.addr, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 24
  %31 = load ptr, ptr %xCellSize, align 8
  %32 = load ptr, ptr %pPage.addr, align 8
  %33 = load ptr, ptr %data, align 8
  %34 = load i32, ptr %pc, align 4
  %idxprom25 = sext i32 %34 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %33, i64 %idxprom25
  %call27 = call zeroext i16 %31(ptr noundef %32, ptr noundef %arrayidx26)
  %conv28 = zext i16 %call27 to i32
  store i32 %conv28, ptr %sz, align 4
  %35 = load i32, ptr %pc, align 4
  %36 = load i32, ptr %sz, align 4
  %add29 = add nsw i32 %35, %36
  %37 = load i32, ptr %usableSize, align 4
  %cmp30 = icmp sgt i32 %add29, %37
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end24
  %call33 = call i32 @sqlite3CorruptError(i32 noundef 65368)
  store i32 %call33, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end24
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then32, %if.then23
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
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
