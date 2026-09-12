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
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_setup_managed(ptr noundef %vi, i64 noundef %channels, i64 noundef %rate, i64 noundef %max_bitrate, i64 noundef %nominal_bitrate, i64 noundef %min_bitrate) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %channels.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %max_bitrate.addr = alloca i64, align 8
  %nominal_bitrate.addr = alloca i64, align 8
  %min_bitrate.addr = alloca i64, align 8
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %tnominal = alloca double, align 8
  %ret = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %channels, ptr %channels.addr, align 8
  store i64 %rate, ptr %rate.addr, align 8
  store i64 %max_bitrate, ptr %max_bitrate.addr, align 8
  store i64 %nominal_bitrate, ptr %nominal_bitrate.addr, align 8
  store i64 %min_bitrate, ptr %min_bitrate.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load i64, ptr %nominal_bitrate.addr, align 8
  %conv = sitofp i64 %3 to double
  store double %conv, ptr %tnominal, align 8
  store i32 0, ptr %ret, align 4
  %4 = load i64, ptr %nominal_bitrate.addr, align 8
  %conv2 = sitofp i64 %4 to double
  %cmp = fcmp ole double %conv2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %max_bitrate.addr, align 8
  %conv4 = sitofp i64 %5 to double
  %cmp5 = fcmp ogt double %conv4, 0.000000e+00
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %6 = load i64, ptr %max_bitrate.addr, align 8
  %conv8 = sitofp i64 %6 to double
  %mul = fmul double %conv8, 8.750000e-01
  %conv9 = fptosi double %mul to i64
  store i64 %conv9, ptr %nominal_bitrate.addr, align 8
  br label %if.end15

if.else:                                          ; preds = %if.then
  %7 = load i64, ptr %min_bitrate.addr, align 8
  %conv10 = sitofp i64 %7 to double
  %cmp11 = fcmp ogt double %conv10, 0.000000e+00
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else
  %8 = load i64, ptr %min_bitrate.addr, align 8
  store i64 %8, ptr %nominal_bitrate.addr, align 8
  br label %if.end

if.else14:                                        ; preds = %if.else
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then13
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %9 = load ptr, ptr %vi.addr, align 8
  %10 = load i64, ptr %channels.addr, align 8
  %11 = load i64, ptr %rate.addr, align 8
  %12 = load i64, ptr %nominal_bitrate.addr, align 8
  %conv17 = sitofp i64 %12 to double
  call void @get_setup_template(ptr noundef %9, i64 noundef %10, i64 noundef %11, double noundef %conv17, i32 noundef 1)
  %13 = load ptr, ptr %hi, align 8
  %setup = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %setup, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  store i32 -130, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end16
  %15 = load ptr, ptr %vi.addr, align 8
  %16 = load i64, ptr %channels.addr, align 8
  %17 = load i64, ptr %rate.addr, align 8
  %call = call i32 @vorbis_encode_setup_setting(ptr noundef %15, i64 noundef %16, i64 noundef %17)
  store i32 %call, ptr %ret, align 4
  %18 = load i32, ptr %ret, align 4
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end19
  %19 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %19)
  %20 = load i32, ptr %ret, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end19
  %21 = load ptr, ptr %hi, align 8
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %21, i32 0, i32 6
  store i32 1, ptr %managed, align 8
  %22 = load ptr, ptr %hi, align 8
  %bitrate_av_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %22, i32 0, i32 12
  store double 4.000000e+00, ptr %bitrate_av_window, align 8
  %23 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %23, i32 0, i32 13
  store double 5.000000e-01, ptr %bitrate_av_window_center, align 8
  %24 = load ptr, ptr %hi, align 8
  %bitrate_limit_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %24, i32 0, i32 11
  store double 2.000000e+00, ptr %bitrate_limit_window, align 8
  %25 = load i64, ptr %min_bitrate.addr, align 8
  %26 = load ptr, ptr %hi, align 8
  %bitrate_min = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %26, i32 0, i32 7
  store i64 %25, ptr %bitrate_min, align 8
  %27 = load i64, ptr %max_bitrate.addr, align 8
  %28 = load ptr, ptr %hi, align 8
  %bitrate_max = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %28, i32 0, i32 10
  store i64 %27, ptr %bitrate_max, align 8
  %29 = load double, ptr %tnominal, align 8
  %conv23 = fptosi double %29 to i64
  %30 = load ptr, ptr %hi, align 8
  %bitrate_av_lo = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %30, i32 0, i32 8
  store i64 %conv23, ptr %bitrate_av_lo, align 8
  %31 = load double, ptr %tnominal, align 8
  %conv24 = fptosi double %31 to i64
  %32 = load ptr, ptr %hi, align 8
  %bitrate_av_hi = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %32, i32 0, i32 9
  store i64 %conv24, ptr %bitrate_av_hi, align 8
  %33 = load i32, ptr %ret, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then21, %if.then18, %if.else14
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
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
