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

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_ath_setup(ptr noundef %vi, i32 noundef %block) #0 {
entry:
  %vi.addr = alloca ptr, align 8
  %block.addr = alloca i32, align 4
  %ci = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %block.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %p, align 8
  %5 = load ptr, ptr %ci, align 8
  %hi = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 19
  %ath_floating_dB = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi, i32 0, i32 18
  %6 = load double, ptr %ath_floating_dB, align 8
  %conv = fptrunc double %6 to float
  %7 = load ptr, ptr %p, align 8
  %ath_adjatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %7, i32 0, i32 1
  store float %conv, ptr %ath_adjatt, align 4
  %8 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 19
  %ath_absolute_dB = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi1, i32 0, i32 19
  %9 = load double, ptr %ath_absolute_dB, align 8
  %conv2 = fptrunc double %9 to float
  %10 = load ptr, ptr %p, align 8
  %ath_maxatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %10, i32 0, i32 2
  store float %conv2, ptr %ath_maxatt, align 8
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
