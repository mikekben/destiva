; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vwin = external hidden global [8 x ptr], align 16

; Function Attrs: nounwind uwtable
define dso_local void @_vorbis_apply_window(ptr noundef %d, ptr noundef %winno, ptr noundef %blocksizes, i32 noundef %lW, i32 noundef %W, i32 noundef %nW) #0 {
entry:
  %d.addr = alloca ptr, align 8
  %winno.addr = alloca ptr, align 8
  %blocksizes.addr = alloca ptr, align 8
  %lW.addr = alloca i32, align 4
  %W.addr = alloca i32, align 4
  %nW.addr = alloca i32, align 4
  %windowLW = alloca ptr, align 8
  %windowNW = alloca ptr, align 8
  %n = alloca i64, align 8
  %ln = alloca i64, align 8
  %rn = alloca i64, align 8
  %leftbegin = alloca i64, align 8
  %leftend = alloca i64, align 8
  %rightbegin = alloca i64, align 8
  %rightend = alloca i64, align 8
  %i = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  store ptr %winno, ptr %winno.addr, align 8
  store ptr %blocksizes, ptr %blocksizes.addr, align 8
  store i32 %lW, ptr %lW.addr, align 4
  store i32 %W, ptr %W.addr, align 4
  store i32 %nW, ptr %nW.addr, align 4
  %0 = load i32, ptr %W.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %lW.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %lW.addr, align 4
  %2 = load i32, ptr %W.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  %3 = load i32, ptr %nW.addr, align 4
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ %3, %cond.true2 ], [ 0, %cond.false3 ]
  store i32 %cond5, ptr %nW.addr, align 4
  %4 = load ptr, ptr %winno.addr, align 8
  %5 = load i32, ptr %lW.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [8 x ptr], ptr @vwin, i64 0, i64 %idxprom6
  %7 = load ptr, ptr %arrayidx7, align 8
  store ptr %7, ptr %windowLW, align 8
  %8 = load ptr, ptr %winno.addr, align 8
  %9 = load i32, ptr %nW.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [8 x ptr], ptr @vwin, i64 0, i64 %idxprom10
  %11 = load ptr, ptr %arrayidx11, align 8
  store ptr %11, ptr %windowNW, align 8
  %12 = load ptr, ptr %blocksizes.addr, align 8
  %13 = load i32, ptr %W.addr, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds i64, ptr %12, i64 %idxprom12
  %14 = load i64, ptr %arrayidx13, align 8
  store i64 %14, ptr %n, align 8
  %15 = load ptr, ptr %blocksizes.addr, align 8
  %16 = load i32, ptr %lW.addr, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %15, i64 %idxprom14
  %17 = load i64, ptr %arrayidx15, align 8
  store i64 %17, ptr %ln, align 8
  %18 = load ptr, ptr %blocksizes.addr, align 8
  %19 = load i32, ptr %nW.addr, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds i64, ptr %18, i64 %idxprom16
  %20 = load i64, ptr %arrayidx17, align 8
  store i64 %20, ptr %rn, align 8
  %21 = load i64, ptr %n, align 8
  %div = sdiv i64 %21, 4
  %22 = load i64, ptr %ln, align 8
  %div18 = sdiv i64 %22, 4
  %sub = sub nsw i64 %div, %div18
  store i64 %sub, ptr %leftbegin, align 8
  %23 = load i64, ptr %leftbegin, align 8
  %24 = load i64, ptr %ln, align 8
  %div19 = sdiv i64 %24, 2
  %add = add nsw i64 %23, %div19
  store i64 %add, ptr %leftend, align 8
  %25 = load i64, ptr %n, align 8
  %div20 = sdiv i64 %25, 2
  %26 = load i64, ptr %n, align 8
  %div21 = sdiv i64 %26, 4
  %add22 = add nsw i64 %div20, %div21
  %27 = load i64, ptr %rn, align 8
  %div23 = sdiv i64 %27, 4
  %sub24 = sub nsw i64 %add22, %div23
  store i64 %sub24, ptr %rightbegin, align 8
  %28 = load i64, ptr %rightbegin, align 8
  %29 = load i64, ptr %rn, align 8
  %div25 = sdiv i64 %29, 2
  %add26 = add nsw i64 %28, %div25
  store i64 %add26, ptr %rightend, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end4
  %30 = load i32, ptr %i, align 4
  %conv = sext i32 %30 to i64
  %31 = load i64, ptr %leftbegin, align 8
  %cmp = icmp slt i64 %conv, %31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %d.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %32, i64 %idxprom28
  store float 0.000000e+00, ptr %arrayidx29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %p, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end
  %35 = load i32, ptr %i, align 4
  %conv31 = sext i32 %35 to i64
  %36 = load i64, ptr %leftend, align 8
  %cmp32 = icmp slt i64 %conv31, %36
  br i1 %cmp32, label %for.body34, label %for.end42

for.body34:                                       ; preds = %for.cond30
  %37 = load ptr, ptr %windowLW, align 8
  %38 = load i32, ptr %p, align 4
  %idxprom35 = sext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %37, i64 %idxprom35
  %39 = load float, ptr %arrayidx36, align 4
  %40 = load ptr, ptr %d.addr, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %40, i64 %idxprom37
  %42 = load float, ptr %arrayidx38, align 4
  %mul = fmul float %42, %39
  store float %mul, ptr %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body34
  %43 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %43, 1
  store i32 %inc40, ptr %i, align 4
  %44 = load i32, ptr %p, align 4
  %inc41 = add nsw i32 %44, 1
  store i32 %inc41, ptr %p, align 4
  br label %for.cond30, !llvm.loop !8

for.end42:                                        ; preds = %for.cond30
  %45 = load i64, ptr %rightbegin, align 8
  %conv43 = trunc i64 %45 to i32
  store i32 %conv43, ptr %i, align 4
  %46 = load i64, ptr %rn, align 8
  %div44 = sdiv i64 %46, 2
  %sub45 = sub nsw i64 %div44, 1
  %conv46 = trunc i64 %sub45 to i32
  store i32 %conv46, ptr %p, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc57, %for.end42
  %47 = load i32, ptr %i, align 4
  %conv48 = sext i32 %47 to i64
  %48 = load i64, ptr %rightend, align 8
  %cmp49 = icmp slt i64 %conv48, %48
  br i1 %cmp49, label %for.body51, label %for.end59

for.body51:                                       ; preds = %for.cond47
  %49 = load ptr, ptr %windowNW, align 8
  %50 = load i32, ptr %p, align 4
  %idxprom52 = sext i32 %50 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %49, i64 %idxprom52
  %51 = load float, ptr %arrayidx53, align 4
  %52 = load ptr, ptr %d.addr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %53 to i64
  %arrayidx55 = getelementptr inbounds float, ptr %52, i64 %idxprom54
  %54 = load float, ptr %arrayidx55, align 4
  %mul56 = fmul float %54, %51
  store float %mul56, ptr %arrayidx55, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body51
  %55 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %55, 1
  store i32 %inc58, ptr %i, align 4
  %56 = load i32, ptr %p, align 4
  %dec = add nsw i32 %56, -1
  store i32 %dec, ptr %p, align 4
  br label %for.cond47, !llvm.loop !9

for.end59:                                        ; preds = %for.cond47
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc67, %for.end59
  %57 = load i32, ptr %i, align 4
  %conv61 = sext i32 %57 to i64
  %58 = load i64, ptr %n, align 8
  %cmp62 = icmp slt i64 %conv61, %58
  br i1 %cmp62, label %for.body64, label %for.end69

for.body64:                                       ; preds = %for.cond60
  %59 = load ptr, ptr %d.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %60 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %59, i64 %idxprom65
  store float 0.000000e+00, ptr %arrayidx66, align 4
  br label %for.inc67

for.inc67:                                        ; preds = %for.body64
  %61 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %61, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond60, !llvm.loop !10

for.end69:                                        ; preds = %for.cond60
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
