; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind uwtable
define dso_local float @_vp_ampmax_decay(float noundef %amp, ptr noundef %vd) #0 {
entry:
  %amp.addr = alloca float, align 4
  %vd.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %n = alloca i32, align 4
  %secs = alloca float, align 4
  store float %amp, ptr %amp.addr, align 4
  store ptr %vd, ptr %vd.addr, align 8
  %0 = load ptr, ptr %vd.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  %4 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %4, i32 0, i32 17
  store ptr %psy_g_param, ptr %gi, align 8
  %5 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %vd.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 10
  %7 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %7
  %8 = load i64, ptr %arrayidx, align 8
  %div = sdiv i64 %8, 2
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %n, align 4
  %9 = load i32, ptr %n, align 4
  %conv2 = sitofp i32 %9 to float
  %10 = load ptr, ptr %vi, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %rate, align 8
  %conv3 = sitofp i64 %11 to float
  %div4 = fdiv float %conv2, %conv3
  store float %div4, ptr %secs, align 4
  %12 = load float, ptr %secs, align 4
  %13 = load ptr, ptr %gi, align 8
  %ampmax_att_per_sec = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %13, i32 0, i32 5
  %14 = load float, ptr %ampmax_att_per_sec, align 4
  %15 = load float, ptr %amp.addr, align 4
  %16 = call float @llvm.fmuladd.f32(float %12, float %14, float %15)
  store float %16, ptr %amp.addr, align 4
  %17 = load float, ptr %amp.addr, align 4
  %cmp = fcmp olt float %17, -9.999000e+03
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float -9.999000e+03, ptr %amp.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load float, ptr %amp.addr, align 4
  ret float %18
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
