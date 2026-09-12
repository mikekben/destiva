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
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_restart(ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %hs = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %backend_state, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vi, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %codec_setup, align 8
  store ptr %6, ptr %ci, align 8
  %7 = load ptr, ptr %ci, align 8
  %tobool5 = icmp ne ptr %7, null
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %8 = load ptr, ptr %ci, align 8
  %halfrate_flag = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 20
  %9 = load i32, ptr %halfrate_flag, align 8
  store i32 %9, ptr %hs, align 4
  %10 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %10, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 1
  %11 = load i64, ptr %arrayidx, align 8
  %12 = load i32, ptr %hs, align 4
  %add = add nsw i32 %12, 1
  %sh_prom = zext i32 %add to i64
  %shr = ashr i64 %11, %sh_prom
  %13 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %13, i32 0, i32 12
  store i64 %shr, ptr %centerW, align 8
  %14 = load ptr, ptr %v.addr, align 8
  %centerW8 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %14, i32 0, i32 12
  %15 = load i64, ptr %centerW8, align 8
  %16 = load i32, ptr %hs, align 4
  %sh_prom9 = zext i32 %16 to i64
  %shr10 = ashr i64 %15, %sh_prom9
  %conv = trunc i64 %shr10 to i32
  %17 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %17, i32 0, i32 5
  store i32 %conv, ptr %pcm_current, align 4
  %18 = load ptr, ptr %v.addr, align 8
  %pcm_returned = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %18, i32 0, i32 6
  store i32 -1, ptr %pcm_returned, align 8
  %19 = load ptr, ptr %v.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %19, i32 0, i32 13
  store i64 -1, ptr %granulepos, align 8
  %20 = load ptr, ptr %v.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %20, i32 0, i32 14
  store i64 -1, ptr %sequence, align 8
  %21 = load ptr, ptr %v.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %21, i32 0, i32 8
  store i32 0, ptr %eofflag, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %backend_state11 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %backend_state11, align 8
  %sample_count = getelementptr inbounds nuw %struct.private_state, ptr %23, i32 0, i32 13
  store i64 -1, ptr %sample_count, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
