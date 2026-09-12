; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }
%struct.noiseguard = type { i32, i32, i32 }
%struct.noise3 = type { [3 x [17 x i32]] }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_noisebias_setup(ptr noundef %vi, double noundef %s, i32 noundef %block, ptr noundef %suppress, ptr noundef %in, ptr noundef %guard, double noundef %userbias) #1 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %block.addr = alloca i32, align 4
  %suppress.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %guard.addr = alloca ptr, align 8
  %userbias.addr = alloca double, align 8
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %j = alloca i32, align 4
  %ds = alloca double, align 8
  %ci = alloca ptr, align 8
  %p = alloca ptr, align 8
  %min = alloca float, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  store ptr %suppress, ptr %suppress.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %guard, ptr %guard.addr, align 8
  store double %userbias, ptr %userbias.addr, align 8
  %0 = load double, ptr %s.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, ptr %is, align 4
  %1 = load double, ptr %s.addr, align 8
  %2 = load i32, ptr %is, align 4
  %conv1 = sitofp i32 %2 to double
  %sub = fsub double %1, %conv1
  store double %sub, ptr %ds, align 8
  %3 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %codec_setup, align 8
  store ptr %4, ptr %ci, align 8
  %5 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %block.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %suppress.addr, align 8
  %9 = load i32, ptr %is, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4
  %conv4 = sitofp i32 %10 to double
  %11 = load double, ptr %ds, align 8
  %sub5 = fsub double 1.000000e+00, %11
  %12 = load ptr, ptr %suppress.addr, align 8
  %13 = load i32, ptr %is, align 4
  %add = add nsw i32 %13, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom6
  %14 = load i32, ptr %arrayidx7, align 4
  %conv8 = sitofp i32 %14 to double
  %15 = load double, ptr %ds, align 8
  %mul9 = fmul double %conv8, %15
  %16 = call double @llvm.fmuladd.f64(double %conv4, double %sub5, double %mul9)
  %conv10 = fptrunc double %16 to float
  %17 = load ptr, ptr %p, align 8
  %noisemaxsupp = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %17, i32 0, i32 9
  store float %conv10, ptr %noisemaxsupp, align 4
  %18 = load ptr, ptr %guard.addr, align 8
  %19 = load i32, ptr %block.addr, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds %struct.noiseguard, ptr %18, i64 %idxprom11
  %lo = getelementptr inbounds nuw %struct.noiseguard, ptr %arrayidx12, i32 0, i32 0
  %20 = load i32, ptr %lo, align 4
  %21 = load ptr, ptr %p, align 8
  %noisewindowlomin = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %21, i32 0, i32 12
  store i32 %20, ptr %noisewindowlomin, align 8
  %22 = load ptr, ptr %guard.addr, align 8
  %23 = load i32, ptr %block.addr, align 4
  %idxprom13 = sext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds %struct.noiseguard, ptr %22, i64 %idxprom13
  %hi = getelementptr inbounds nuw %struct.noiseguard, ptr %arrayidx14, i32 0, i32 1
  %24 = load i32, ptr %hi, align 4
  %25 = load ptr, ptr %p, align 8
  %noisewindowhimin = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %25, i32 0, i32 13
  store i32 %24, ptr %noisewindowhimin, align 4
  %26 = load ptr, ptr %guard.addr, align 8
  %27 = load i32, ptr %block.addr, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds %struct.noiseguard, ptr %26, i64 %idxprom15
  %fixed = getelementptr inbounds nuw %struct.noiseguard, ptr %arrayidx16, i32 0, i32 2
  %28 = load i32, ptr %fixed, align 4
  %29 = load ptr, ptr %p, align 8
  %noisewindowfixed = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %29, i32 0, i32 14
  store i32 %28, ptr %noisewindowfixed, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %30 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %30, 3
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %for.body
  %31 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %31, 17
  br i1 %cmp19, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond18
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load i32, ptr %is, align 4
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds %struct.noise3, ptr %32, i64 %idxprom22
  %data = getelementptr inbounds nuw %struct.noise3, ptr %arrayidx23, i32 0, i32 0
  %34 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %34 to i64
  %arrayidx25 = getelementptr inbounds [3 x [17 x i32]], ptr %data, i64 0, i64 %idxprom24
  %35 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds [17 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %36 = load i32, ptr %arrayidx27, align 4
  %conv28 = sitofp i32 %36 to double
  %37 = load double, ptr %ds, align 8
  %sub29 = fsub double 1.000000e+00, %37
  %38 = load ptr, ptr %in.addr, align 8
  %39 = load i32, ptr %is, align 4
  %add30 = add nsw i32 %39, 1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds %struct.noise3, ptr %38, i64 %idxprom31
  %data33 = getelementptr inbounds nuw %struct.noise3, ptr %arrayidx32, i32 0, i32 0
  %40 = load i32, ptr %j, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds [3 x [17 x i32]], ptr %data33, i64 0, i64 %idxprom34
  %41 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %41 to i64
  %arrayidx37 = getelementptr inbounds [17 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %42 = load i32, ptr %arrayidx37, align 4
  %conv38 = sitofp i32 %42 to double
  %43 = load double, ptr %ds, align 8
  %mul39 = fmul double %conv38, %43
  %44 = call double @llvm.fmuladd.f64(double %conv28, double %sub29, double %mul39)
  %conv40 = fptrunc double %44 to float
  %45 = load ptr, ptr %p, align 8
  %noiseoff = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %45, i32 0, i32 15
  %46 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff, i64 0, i64 %idxprom41
  %47 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %47 to i64
  %arrayidx44 = getelementptr inbounds [17 x float], ptr %arrayidx42, i64 0, i64 %idxprom43
  store float %conv40, ptr %arrayidx44, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body21
  %48 = load i32, ptr %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond18, !llvm.loop !6

for.end:                                          ; preds = %for.cond18
  br label %for.inc45

for.inc45:                                        ; preds = %for.end
  %49 = load i32, ptr %j, align 4
  %inc46 = add nsw i32 %49, 1
  store i32 %inc46, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end47:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc84, %for.end47
  %50 = load i32, ptr %j, align 4
  %cmp49 = icmp slt i32 %50, 3
  br i1 %cmp49, label %for.body51, label %for.end86

for.body51:                                       ; preds = %for.cond48
  %51 = load ptr, ptr %p, align 8
  %noiseoff52 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %51, i32 0, i32 15
  %52 = load i32, ptr %j, align 4
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff52, i64 0, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [17 x float], ptr %arrayidx54, i64 0, i64 0
  %53 = load float, ptr %arrayidx55, align 4
  %add56 = fadd float %53, 6.000000e+00
  store float %add56, ptr %min, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc81, %for.body51
  %54 = load i32, ptr %i, align 4
  %cmp58 = icmp slt i32 %54, 17
  br i1 %cmp58, label %for.body60, label %for.end83

for.body60:                                       ; preds = %for.cond57
  %55 = load double, ptr %userbias.addr, align 8
  %56 = load ptr, ptr %p, align 8
  %noiseoff61 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %56, i32 0, i32 15
  %57 = load i32, ptr %j, align 4
  %idxprom62 = sext i32 %57 to i64
  %arrayidx63 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff61, i64 0, i64 %idxprom62
  %58 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %58 to i64
  %arrayidx65 = getelementptr inbounds [17 x float], ptr %arrayidx63, i64 0, i64 %idxprom64
  %59 = load float, ptr %arrayidx65, align 4
  %conv66 = fpext float %59 to double
  %add67 = fadd double %conv66, %55
  %conv68 = fptrunc double %add67 to float
  store float %conv68, ptr %arrayidx65, align 4
  %60 = load ptr, ptr %p, align 8
  %noiseoff69 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %60, i32 0, i32 15
  %61 = load i32, ptr %j, align 4
  %idxprom70 = sext i32 %61 to i64
  %arrayidx71 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff69, i64 0, i64 %idxprom70
  %62 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %62 to i64
  %arrayidx73 = getelementptr inbounds [17 x float], ptr %arrayidx71, i64 0, i64 %idxprom72
  %63 = load float, ptr %arrayidx73, align 4
  %64 = load float, ptr %min, align 4
  %cmp74 = fcmp olt float %63, %64
  br i1 %cmp74, label %if.then, label %if.end

if.then:                                          ; preds = %for.body60
  %65 = load float, ptr %min, align 4
  %66 = load ptr, ptr %p, align 8
  %noiseoff76 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %66, i32 0, i32 15
  %67 = load i32, ptr %j, align 4
  %idxprom77 = sext i32 %67 to i64
  %arrayidx78 = getelementptr inbounds [3 x [17 x float]], ptr %noiseoff76, i64 0, i64 %idxprom77
  %68 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %68 to i64
  %arrayidx80 = getelementptr inbounds [17 x float], ptr %arrayidx78, i64 0, i64 %idxprom79
  store float %65, ptr %arrayidx80, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body60
  br label %for.inc81

for.inc81:                                        ; preds = %if.end
  %69 = load i32, ptr %i, align 4
  %inc82 = add nsw i32 %69, 1
  store i32 %inc82, ptr %i, align 4
  br label %for.cond57, !llvm.loop !9

for.end83:                                        ; preds = %for.cond57
  br label %for.inc84

for.inc84:                                        ; preds = %for.end83
  %70 = load i32, ptr %j, align 4
  %inc85 = add nsw i32 %70, 1
  store i32 %inc85, ptr %j, align 4
  br label %for.cond48, !llvm.loop !10

for.end86:                                        ; preds = %for.cond48
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
