; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define dso_local void @_vp_noisemask(ptr noundef %p, ptr noundef %logmdct, ptr noundef %logmask) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %logmdct.addr = alloca ptr, align 8
  %logmask.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %work = alloca ptr, align 8
  %dB = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %logmdct, ptr %logmdct.addr, align 8
  store ptr %logmask, ptr %logmask.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load i32, ptr %n, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %3 = alloca i8, i64 %mul, align 16
  store ptr %3, ptr %work, align 8
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %bark = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %bark, align 8
  %7 = load ptr, ptr %logmdct.addr, align 8
  %8 = load ptr, ptr %logmask.addr, align 8
  call void @bark_noise_hybridmp(i32 noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef %8, float noundef 1.400000e+02, i32 noundef -1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %logmdct.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds float, ptr %11, i64 %idxprom
  %13 = load float, ptr %arrayidx, align 4
  %14 = load ptr, ptr %logmask.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %14, i64 %idxprom3
  %16 = load float, ptr %arrayidx4, align 4
  %sub = fsub float %13, %16
  %17 = load ptr, ptr %work, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %18 to i64
  %arrayidx6 = getelementptr inbounds float, ptr %17, i64 %idxprom5
  store float %sub, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load i32, ptr %n, align 4
  %21 = load ptr, ptr %p.addr, align 8
  %bark7 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %bark7, align 8
  %23 = load ptr, ptr %work, align 8
  %24 = load ptr, ptr %logmask.addr, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %vi, align 8
  %noisewindowfixed = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %26, i32 0, i32 14
  %27 = load i32, ptr %noisewindowfixed, align 8
  call void @bark_noise_hybridmp(i32 noundef %20, ptr noundef %22, ptr noundef %23, ptr noundef %24, float noundef 0.000000e+00, i32 noundef %27)
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.end
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %n, align 4
  %cmp9 = icmp slt i32 %28, %29
  br i1 %cmp9, label %for.body11, label %for.end21

for.body11:                                       ; preds = %for.cond8
  %30 = load ptr, ptr %logmdct.addr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %31 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %30, i64 %idxprom12
  %32 = load float, ptr %arrayidx13, align 4
  %33 = load ptr, ptr %work, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %34 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %33, i64 %idxprom14
  %35 = load float, ptr %arrayidx15, align 4
  %sub16 = fsub float %32, %35
  %36 = load ptr, ptr %work, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %37 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %36, i64 %idxprom17
  store float %sub16, ptr %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %38 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %38, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond8, !llvm.loop !8

for.end21:                                        ; preds = %for.cond8
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc44, %for.end21
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %n, align 4
  %cmp23 = icmp slt i32 %39, %40
  br i1 %cmp23, label %for.body25, label %for.end46

for.body25:                                       ; preds = %for.cond22
  %41 = load ptr, ptr %logmask.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %42 to i64
  %arrayidx27 = getelementptr inbounds float, ptr %41, i64 %idxprom26
  %43 = load float, ptr %arrayidx27, align 4
  %conv28 = fpext float %43 to double
  %add = fadd double %conv28, 5.000000e-01
  %conv29 = fptosi double %add to i32
  store i32 %conv29, ptr %dB, align 4
  %44 = load i32, ptr %dB, align 4
  %cmp30 = icmp sge i32 %44, 40
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %for.body25
  store i32 39, ptr %dB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body25
  %45 = load i32, ptr %dB, align 4
  %cmp32 = icmp slt i32 %45, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end
  store i32 0, ptr %dB, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end
  %46 = load ptr, ptr %work, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %46, i64 %idxprom36
  %48 = load float, ptr %arrayidx37, align 4
  %49 = load ptr, ptr %p.addr, align 8
  %vi38 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %vi38, align 8
  %noisecompand = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %50, i32 0, i32 16
  %51 = load i32, ptr %dB, align 4
  %idxprom39 = sext i32 %51 to i64
  %arrayidx40 = getelementptr inbounds [40 x float], ptr %noisecompand, i64 0, i64 %idxprom39
  %52 = load float, ptr %arrayidx40, align 4
  %add41 = fadd float %48, %52
  %53 = load ptr, ptr %logmask.addr, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %53, i64 %idxprom42
  store float %add41, ptr %arrayidx43, align 4
  br label %for.inc44

for.inc44:                                        ; preds = %if.end35
  %55 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %55, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond22, !llvm.loop !9

for.end46:                                        ; preds = %for.cond22
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @bark_noise_hybridmp(i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) #0

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
