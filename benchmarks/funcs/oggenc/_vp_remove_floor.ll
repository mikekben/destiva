; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }

@FLOOR1_fromdB_INV_LOOKUP = external hidden global [256 x float], align 16

; Function Attrs: nounwind uwtable
define dso_local void @_vp_remove_floor(ptr noundef %p, ptr noundef %mdct, ptr noundef %codedflr, ptr noundef %residue, i32 noundef %sliding_lowpass) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %mdct.addr = alloca ptr, align 8
  %codedflr.addr = alloca ptr, align 8
  %residue.addr = alloca ptr, align 8
  %sliding_lowpass.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %mdct, ptr %mdct.addr, align 8
  store ptr %codedflr, ptr %codedflr.addr, align 8
  store ptr %residue, ptr %residue.addr, align 8
  store i32 %sliding_lowpass, ptr %sliding_lowpass.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load i32, ptr %sliding_lowpass.addr, align 4
  %3 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %n, align 4
  store i32 %4, ptr %sliding_lowpass.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %sliding_lowpass.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %mdct.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds float, ptr %7, i64 %idxprom
  %9 = load float, ptr %arrayidx, align 4
  %10 = load ptr, ptr %codedflr.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x float], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 0, i64 %idxprom5
  %13 = load float, ptr %arrayidx6, align 4
  %mul = fmul float %9, %13
  %14 = load ptr, ptr %residue.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %14, i64 %idxprom7
  store float %mul, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %n, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body11, label %for.end16

for.body11:                                       ; preds = %for.cond9
  %19 = load ptr, ptr %residue.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %19, i64 %idxprom12
  store float 0.000000e+00, ptr %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %21 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %21, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end16:                                        ; preds = %for.cond9
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
