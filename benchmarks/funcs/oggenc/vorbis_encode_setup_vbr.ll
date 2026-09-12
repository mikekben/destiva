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

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_setup_vbr(ptr noundef %vi, i64 noundef %channels, i64 noundef %rate, float noundef %quality) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %channels.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %quality.addr = alloca float, align 4
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %channels, ptr %channels.addr, align 8
  store i64 %rate, ptr %rate.addr, align 8
  store float %quality, ptr %quality.addr, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load float, ptr %quality.addr, align 4
  %conv = fpext float %3 to double
  %add = fadd double %conv, 1.000000e-05
  %conv2 = fptrunc double %add to float
  store float %conv2, ptr %quality.addr, align 4
  %4 = load float, ptr %quality.addr, align 4
  %conv3 = fpext float %4 to double
  %cmp = fcmp oge double %conv3, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0x3FEFFF2E40000000, ptr %quality.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %vi.addr, align 8
  %6 = load i64, ptr %channels.addr, align 8
  %7 = load i64, ptr %rate.addr, align 8
  %8 = load float, ptr %quality.addr, align 4
  %conv5 = fpext float %8 to double
  call void @get_setup_template(ptr noundef %5, i64 noundef %6, i64 noundef %7, double noundef %conv5, i32 noundef 0)
  %9 = load ptr, ptr %hi, align 8
  %setup = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %setup, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  store i32 -130, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %vi.addr, align 8
  %12 = load i64, ptr %channels.addr, align 8
  %13 = load i64, ptr %rate.addr, align 8
  %call = call i32 @vorbis_encode_setup_setting(ptr noundef %11, i64 noundef %12, i64 noundef %13)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden void @get_setup_template(ptr noundef, i64 noundef, i64 noundef, double noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_encode_setup_setting(ptr noundef, i64 noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
