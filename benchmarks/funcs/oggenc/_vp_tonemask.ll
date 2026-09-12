; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define dso_local void @_vp_tonemask(ptr noundef %p, ptr noundef %logfft, ptr noundef %logmask, float noundef %global_specmax, float noundef %local_specmax) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %logfft.addr = alloca ptr, align 8
  %logmask.addr = alloca ptr, align 8
  %global_specmax.addr = alloca float, align 4
  %local_specmax.addr = alloca float, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %seed = alloca ptr, align 8
  %att = alloca float, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %logfft, ptr %logfft.addr, align 8
  store ptr %logmask, ptr %logmask.addr, align 8
  store float %global_specmax, ptr %global_specmax.addr, align 4
  store float %local_specmax, ptr %local_specmax.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %total_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %total_octave_lines, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 4, %conv
  %4 = alloca i8, i64 %mul, align 16
  store ptr %4, ptr %seed, align 8
  %5 = load float, ptr %local_specmax.addr, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %vi, align 8
  %ath_adjatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %7, i32 0, i32 1
  %8 = load float, ptr %ath_adjatt, align 4
  %add = fadd float %5, %8
  store float %add, ptr %att, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %total_octave_lines2 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %10, i32 0, i32 10
  %11 = load i32, ptr %total_octave_lines2, align 4
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %seed, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds float, ptr %12, i64 %idxprom
  store float -9.999000e+03, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load float, ptr %att, align 4
  %16 = load ptr, ptr %p.addr, align 8
  %vi4 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %vi4, align 8
  %ath_maxatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %17, i32 0, i32 2
  %18 = load float, ptr %ath_maxatt, align 8
  %cmp5 = fcmp olt float %15, %18
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = load ptr, ptr %p.addr, align 8
  %vi7 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %vi7, align 8
  %ath_maxatt8 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %20, i32 0, i32 2
  %21 = load float, ptr %ath_maxatt8, align 8
  store float %21, ptr %att, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc18, %if.end
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %n, align 4
  %cmp10 = icmp slt i32 %22, %23
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond9
  %24 = load ptr, ptr %p.addr, align 8
  %ath = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %ath, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %26 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %25, i64 %idxprom13
  %27 = load float, ptr %arrayidx14, align 4
  %28 = load float, ptr %att, align 4
  %add15 = fadd float %27, %28
  %29 = load ptr, ptr %logmask.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %29, i64 %idxprom16
  store float %add15, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %31 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end20:                                        ; preds = %for.cond9
  %32 = load ptr, ptr %p.addr, align 8
  %33 = load ptr, ptr %p.addr, align 8
  %tonecurves = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %tonecurves, align 8
  %35 = load ptr, ptr %logfft.addr, align 8
  %36 = load ptr, ptr %logmask.addr, align 8
  %37 = load ptr, ptr %seed, align 8
  %38 = load float, ptr %global_specmax.addr, align 4
  call void @seed_loop(ptr noundef %32, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, float noundef %38)
  %39 = load ptr, ptr %p.addr, align 8
  %40 = load ptr, ptr %seed, align 8
  %41 = load ptr, ptr %logmask.addr, align 8
  call void @max_seeds(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @seed_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @max_seeds(ptr noundef, ptr noundef, ptr noundef) #0

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
