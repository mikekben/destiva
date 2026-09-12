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
%struct.ve_setup_data_template = type { i32, ptr, ptr, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vorbis_encode_setup_setting(ptr noundef %vi, i64 noundef %channels, i64 noundef %rate) #1 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %channels.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %setup = alloca ptr, align 8
  %ds = alloca double, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %channels, ptr %channels.addr, align 8
  store i64 %rate, ptr %rate.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load ptr, ptr %hi, align 8
  %setup2 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %setup2, align 8
  store ptr %4, ptr %setup, align 8
  %5 = load ptr, ptr %vi.addr, align 8
  %6 = load i64, ptr %channels.addr, align 8
  %conv = trunc i64 %6 to i32
  %7 = load i64, ptr %rate.addr, align 8
  %call = call i32 @vorbis_encode_toplevel_setup(ptr noundef %5, i32 noundef %conv, i64 noundef %7)
  store i32 %call, ptr %ret, align 4
  %8 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %ret, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %hi, align 8
  %base_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %10, i32 0, i32 2
  %11 = load double, ptr %base_setting, align 8
  %conv3 = fptosi double %11 to i32
  store i32 %conv3, ptr %is, align 4
  %12 = load ptr, ptr %hi, align 8
  %base_setting4 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %12, i32 0, i32 2
  %13 = load double, ptr %base_setting4, align 8
  %14 = load i32, ptr %is, align 4
  %conv5 = sitofp i32 %14 to double
  %sub = fsub double %13, %conv5
  store double %sub, ptr %ds, align 8
  %15 = load ptr, ptr %hi, align 8
  %base_setting6 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %15, i32 0, i32 2
  %16 = load double, ptr %base_setting6, align 8
  %17 = load ptr, ptr %hi, align 8
  %short_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %17, i32 0, i32 4
  store double %16, ptr %short_setting, align 8
  %18 = load ptr, ptr %hi, align 8
  %base_setting7 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %18, i32 0, i32 2
  %19 = load double, ptr %base_setting7, align 8
  %20 = load ptr, ptr %hi, align 8
  %long_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %20, i32 0, i32 3
  store double %19, ptr %long_setting, align 8
  %21 = load ptr, ptr %hi, align 8
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %21, i32 0, i32 6
  store i32 0, ptr %managed, align 8
  %22 = load ptr, ptr %hi, align 8
  %impulse_block_p = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %22, i32 0, i32 14
  store i32 1, ptr %impulse_block_p, align 8
  %23 = load ptr, ptr %hi, align 8
  %noise_normalize_p = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %23, i32 0, i32 15
  store i32 1, ptr %noise_normalize_p, align 4
  %24 = load ptr, ptr %hi, align 8
  %base_setting8 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %24, i32 0, i32 2
  %25 = load double, ptr %base_setting8, align 8
  %26 = load ptr, ptr %hi, align 8
  %stereo_point_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %26, i32 0, i32 16
  store double %25, ptr %stereo_point_setting, align 8
  %27 = load ptr, ptr %setup, align 8
  %psy_lowpass = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %27, i32 0, i32 28
  %28 = load ptr, ptr %psy_lowpass, align 8
  %29 = load i32, ptr %is, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds double, ptr %28, i64 %idxprom
  %30 = load double, ptr %arrayidx, align 8
  %31 = load double, ptr %ds, align 8
  %sub9 = fsub double 1.000000e+00, %31
  %32 = load ptr, ptr %setup, align 8
  %psy_lowpass10 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %32, i32 0, i32 28
  %33 = load ptr, ptr %psy_lowpass10, align 8
  %34 = load i32, ptr %is, align 4
  %add = add nsw i32 %34, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds double, ptr %33, i64 %idxprom11
  %35 = load double, ptr %arrayidx12, align 8
  %36 = load double, ptr %ds, align 8
  %mul13 = fmul double %35, %36
  %37 = call double @llvm.fmuladd.f64(double %30, double %sub9, double %mul13)
  %38 = load ptr, ptr %hi, align 8
  %lowpass_kHz = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %38, i32 0, i32 17
  store double %37, ptr %lowpass_kHz, align 8
  %39 = load ptr, ptr %setup, align 8
  %psy_ath_float = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %39, i32 0, i32 26
  %40 = load ptr, ptr %psy_ath_float, align 8
  %41 = load i32, ptr %is, align 4
  %idxprom14 = sext i32 %41 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %40, i64 %idxprom14
  %42 = load i32, ptr %arrayidx15, align 4
  %conv16 = sitofp i32 %42 to double
  %43 = load double, ptr %ds, align 8
  %sub17 = fsub double 1.000000e+00, %43
  %44 = load ptr, ptr %setup, align 8
  %psy_ath_float18 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %44, i32 0, i32 26
  %45 = load ptr, ptr %psy_ath_float18, align 8
  %46 = load i32, ptr %is, align 4
  %add19 = add nsw i32 %46, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %45, i64 %idxprom20
  %47 = load i32, ptr %arrayidx21, align 4
  %conv22 = sitofp i32 %47 to double
  %48 = load double, ptr %ds, align 8
  %mul23 = fmul double %conv22, %48
  %49 = call double @llvm.fmuladd.f64(double %conv16, double %sub17, double %mul23)
  %50 = load ptr, ptr %hi, align 8
  %ath_floating_dB = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %50, i32 0, i32 18
  store double %49, ptr %ath_floating_dB, align 8
  %51 = load ptr, ptr %setup, align 8
  %psy_ath_abs = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %51, i32 0, i32 27
  %52 = load ptr, ptr %psy_ath_abs, align 8
  %53 = load i32, ptr %is, align 4
  %idxprom24 = sext i32 %53 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %52, i64 %idxprom24
  %54 = load i32, ptr %arrayidx25, align 4
  %conv26 = sitofp i32 %54 to double
  %55 = load double, ptr %ds, align 8
  %sub27 = fsub double 1.000000e+00, %55
  %56 = load ptr, ptr %setup, align 8
  %psy_ath_abs28 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %56, i32 0, i32 27
  %57 = load ptr, ptr %psy_ath_abs28, align 8
  %58 = load i32, ptr %is, align 4
  %add29 = add nsw i32 %58, 1
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %57, i64 %idxprom30
  %59 = load i32, ptr %arrayidx31, align 4
  %conv32 = sitofp i32 %59 to double
  %60 = load double, ptr %ds, align 8
  %mul33 = fmul double %conv32, %60
  %61 = call double @llvm.fmuladd.f64(double %conv26, double %sub27, double %mul33)
  %62 = load ptr, ptr %hi, align 8
  %ath_absolute_dB = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %62, i32 0, i32 19
  store double %61, ptr %ath_absolute_dB, align 8
  %63 = load ptr, ptr %hi, align 8
  %amplitude_track_dBpersec = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %63, i32 0, i32 20
  store double -6.000000e+00, ptr %amplitude_track_dBpersec, align 8
  %64 = load ptr, ptr %hi, align 8
  %base_setting34 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %64, i32 0, i32 2
  %65 = load double, ptr %base_setting34, align 8
  %66 = load ptr, ptr %hi, align 8
  %trigger_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %66, i32 0, i32 21
  store double %65, ptr %trigger_setting, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %67 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %67, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load ptr, ptr %hi, align 8
  %base_setting36 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %68, i32 0, i32 2
  %69 = load double, ptr %base_setting36, align 8
  %70 = load ptr, ptr %hi, align 8
  %block = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %70, i32 0, i32 22
  %71 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %71 to i64
  %arrayidx38 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block, i64 0, i64 %idxprom37
  %tone_mask_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx38, i32 0, i32 0
  store double %69, ptr %tone_mask_setting, align 8
  %72 = load ptr, ptr %hi, align 8
  %base_setting39 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %72, i32 0, i32 2
  %73 = load double, ptr %base_setting39, align 8
  %74 = load ptr, ptr %hi, align 8
  %block40 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %74, i32 0, i32 22
  %75 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %75 to i64
  %arrayidx42 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block40, i64 0, i64 %idxprom41
  %tone_peaklimit_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx42, i32 0, i32 1
  store double %73, ptr %tone_peaklimit_setting, align 8
  %76 = load ptr, ptr %hi, align 8
  %base_setting43 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %76, i32 0, i32 2
  %77 = load double, ptr %base_setting43, align 8
  %78 = load ptr, ptr %hi, align 8
  %block44 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %78, i32 0, i32 22
  %79 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %79 to i64
  %arrayidx46 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block44, i64 0, i64 %idxprom45
  %noise_bias_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx46, i32 0, i32 2
  store double %77, ptr %noise_bias_setting, align 8
  %80 = load ptr, ptr %hi, align 8
  %base_setting47 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %80, i32 0, i32 2
  %81 = load double, ptr %base_setting47, align 8
  %82 = load ptr, ptr %hi, align 8
  %block48 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %82, i32 0, i32 22
  %83 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %83 to i64
  %arrayidx50 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block48, i64 0, i64 %idxprom49
  %noise_compand_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx50, i32 0, i32 3
  store double %81, ptr %noise_compand_setting, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %84 = load i32, ptr %i, align 4
  %inc = add nsw i32 %84, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %85 = load i32, ptr %ret, align 4
  store i32 %85, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %86 = load i32, ptr %retval, align 4
  ret i32 %86
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_encode_toplevel_setup(ptr noundef, i32 noundef, i64 noundef) #1

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
