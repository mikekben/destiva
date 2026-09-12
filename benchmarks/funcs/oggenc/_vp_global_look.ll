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
%struct.vorbis_look_psy_global = type { float, i32, ptr, [2 x [3 x i32]] }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @_vp_global_look(ptr noundef %vi) #1 {
entry:
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %look = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 17
  store ptr %psy_g_param, ptr %gi, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 40) #2
  store ptr %call, ptr %look, align 8
  %3 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %channels, align 4
  %5 = load ptr, ptr %look, align 8
  %channels1 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %5, i32 0, i32 1
  store i32 %4, ptr %channels1, align 4
  %6 = load ptr, ptr %look, align 8
  %ampmax = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %6, i32 0, i32 0
  store float -9.999000e+03, ptr %ampmax, align 8
  %7 = load ptr, ptr %gi, align 8
  %8 = load ptr, ptr %look, align 8
  %gi2 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %8, i32 0, i32 2
  store ptr %7, ptr %gi2, align 8
  %9 = load ptr, ptr %look, align 8
  ret ptr %9
}

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
