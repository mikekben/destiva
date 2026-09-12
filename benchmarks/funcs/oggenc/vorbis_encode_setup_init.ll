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

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_setup_init(ptr noundef %vi) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %i0 = alloca i32, align 4
  %singleblock = alloca i32, align 4
  %ci = alloca ptr, align 8
  %setup = alloca ptr, align 8
  %hi = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 0, ptr %i0, align 4
  store i32 0, ptr %singleblock, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  store ptr null, ptr %setup, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load ptr, ptr %ci, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %hi, align 8
  %impulse_block_p = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %4, i32 0, i32 14
  %5 = load i32, ptr %impulse_block_p, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %i0, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %hi, align 8
  %ath_floating_dB = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %6, i32 0, i32 18
  %7 = load double, ptr %ath_floating_dB, align 8
  %cmp4 = fcmp ogt double %7, -8.000000e+01
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end3
  %8 = load ptr, ptr %hi, align 8
  %ath_floating_dB6 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %8, i32 0, i32 18
  store double -8.000000e+01, ptr %ath_floating_dB6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %9 = load ptr, ptr %hi, align 8
  %ath_floating_dB8 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %9, i32 0, i32 18
  %10 = load double, ptr %ath_floating_dB8, align 8
  %cmp9 = fcmp olt double %10, -2.000000e+02
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %hi, align 8
  %ath_floating_dB11 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %11, i32 0, i32 18
  store double -2.000000e+02, ptr %ath_floating_dB11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %12 = load ptr, ptr %hi, align 8
  %amplitude_track_dBpersec = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %12, i32 0, i32 20
  %13 = load double, ptr %amplitude_track_dBpersec, align 8
  %cmp13 = fcmp ogt double %13, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %14 = load ptr, ptr %hi, align 8
  %amplitude_track_dBpersec15 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %14, i32 0, i32 20
  store double 0.000000e+00, ptr %amplitude_track_dBpersec15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %15 = load ptr, ptr %hi, align 8
  %amplitude_track_dBpersec17 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %15, i32 0, i32 20
  %16 = load double, ptr %amplitude_track_dBpersec17, align 8
  %cmp18 = fcmp olt double %16, -9.999900e+04
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %17 = load ptr, ptr %hi, align 8
  %amplitude_track_dBpersec20 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %17, i32 0, i32 20
  store double -9.999900e+04, ptr %amplitude_track_dBpersec20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16
  %18 = load ptr, ptr %hi, align 8
  %setup22 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %setup22, align 8
  store ptr %19, ptr %setup, align 8
  %20 = load ptr, ptr %setup, align 8
  %cmp23 = icmp eq ptr %20, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 -131, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %21 = load ptr, ptr %hi, align 8
  %set_in_stone = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %21, i32 0, i32 1
  store i32 1, ptr %set_in_stone, align 8
  %22 = load ptr, ptr %vi.addr, align 8
  %23 = load ptr, ptr %hi, align 8
  %base_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %23, i32 0, i32 2
  %24 = load double, ptr %base_setting, align 8
  %25 = load ptr, ptr %setup, align 8
  %blocksize_short = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %blocksize_short, align 8
  %27 = load ptr, ptr %setup, align 8
  %blocksize_long = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %blocksize_long, align 8
  call void @vorbis_encode_blocksize_setup(ptr noundef %22, double noundef %24, ptr noundef %26, ptr noundef %28)
  %29 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %29, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %30 = load i64, ptr %arrayidx, align 8
  %31 = load ptr, ptr %ci, align 8
  %blocksizes26 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %31, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x i64], ptr %blocksizes26, i64 0, i64 1
  %32 = load i64, ptr %arrayidx27, align 8
  %cmp28 = icmp eq i64 %30, %32
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  store i32 1, ptr %singleblock, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25
  %33 = load ptr, ptr %vi.addr, align 8
  %34 = load ptr, ptr %hi, align 8
  %short_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %34, i32 0, i32 4
  %35 = load double, ptr %short_setting, align 8
  %36 = load ptr, ptr %setup, align 8
  %floor_books = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %36, i32 0, i32 32
  %37 = load ptr, ptr %floor_books, align 8
  %38 = load ptr, ptr %setup, align 8
  %floor_params = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %38, i32 0, i32 33
  %39 = load ptr, ptr %floor_params, align 8
  %40 = load ptr, ptr %setup, align 8
  %floor_short_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %40, i32 0, i32 34
  %41 = load ptr, ptr %floor_short_mapping, align 8
  call void @vorbis_encode_floor_setup(ptr noundef %33, double noundef %35, i32 noundef 0, ptr noundef %37, ptr noundef %39, ptr noundef %41)
  %42 = load i32, ptr %singleblock, align 4
  %tobool31 = icmp ne i32 %42, 0
  br i1 %tobool31, label %if.end35, label %if.then32

if.then32:                                        ; preds = %if.end30
  %43 = load ptr, ptr %vi.addr, align 8
  %44 = load ptr, ptr %hi, align 8
  %long_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %44, i32 0, i32 3
  %45 = load double, ptr %long_setting, align 8
  %46 = load ptr, ptr %setup, align 8
  %floor_books33 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %46, i32 0, i32 32
  %47 = load ptr, ptr %floor_books33, align 8
  %48 = load ptr, ptr %setup, align 8
  %floor_params34 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %48, i32 0, i32 33
  %49 = load ptr, ptr %floor_params34, align 8
  %50 = load ptr, ptr %setup, align 8
  %floor_long_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %50, i32 0, i32 35
  %51 = load ptr, ptr %floor_long_mapping, align 8
  call void @vorbis_encode_floor_setup(ptr noundef %43, double noundef %45, i32 noundef 1, ptr noundef %47, ptr noundef %49, ptr noundef %51)
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end30
  %52 = load ptr, ptr %vi.addr, align 8
  %53 = load ptr, ptr %hi, align 8
  %trigger_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %53, i32 0, i32 21
  %54 = load double, ptr %trigger_setting, align 8
  %55 = load ptr, ptr %setup, align 8
  %global_params = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %55, i32 0, i32 29
  %56 = load ptr, ptr %global_params, align 8
  %57 = load ptr, ptr %setup, align 8
  %global_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %57, i32 0, i32 30
  %58 = load ptr, ptr %global_mapping, align 8
  call void @vorbis_encode_global_psych_setup(ptr noundef %52, double noundef %54, ptr noundef %56, ptr noundef %58)
  %59 = load ptr, ptr %vi.addr, align 8
  %60 = load ptr, ptr %hi, align 8
  %61 = load ptr, ptr %setup, align 8
  %stereo_modes = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %61, i32 0, i32 31
  %62 = load ptr, ptr %stereo_modes, align 8
  call void @vorbis_encode_global_stereo(ptr noundef %59, ptr noundef %60, ptr noundef %62)
  %63 = load ptr, ptr %vi.addr, align 8
  %64 = load ptr, ptr %hi, align 8
  %short_setting36 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %64, i32 0, i32 4
  %65 = load double, ptr %short_setting36, align 8
  %66 = load ptr, ptr %setup, align 8
  %psy_noise_normal_start = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %66, i32 0, i32 23
  %arrayidx37 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_start, i64 0, i64 0
  %67 = load ptr, ptr %arrayidx37, align 8
  %68 = load ptr, ptr %setup, align 8
  %psy_noise_normal_partition = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %68, i32 0, i32 24
  %arrayidx38 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_partition, i64 0, i64 0
  %69 = load ptr, ptr %arrayidx38, align 8
  %70 = load ptr, ptr %setup, align 8
  %psy_noise_normal_thresh = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %70, i32 0, i32 25
  %71 = load ptr, ptr %psy_noise_normal_thresh, align 8
  call void @vorbis_encode_psyset_setup(ptr noundef %63, double noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71, i32 noundef 0)
  %72 = load ptr, ptr %vi.addr, align 8
  %73 = load ptr, ptr %hi, align 8
  %short_setting39 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %73, i32 0, i32 4
  %74 = load double, ptr %short_setting39, align 8
  %75 = load ptr, ptr %setup, align 8
  %psy_noise_normal_start40 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %75, i32 0, i32 23
  %arrayidx41 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_start40, i64 0, i64 0
  %76 = load ptr, ptr %arrayidx41, align 8
  %77 = load ptr, ptr %setup, align 8
  %psy_noise_normal_partition42 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %77, i32 0, i32 24
  %arrayidx43 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_partition42, i64 0, i64 0
  %78 = load ptr, ptr %arrayidx43, align 8
  %79 = load ptr, ptr %setup, align 8
  %psy_noise_normal_thresh44 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %79, i32 0, i32 25
  %80 = load ptr, ptr %psy_noise_normal_thresh44, align 8
  call void @vorbis_encode_psyset_setup(ptr noundef %72, double noundef %74, ptr noundef %76, ptr noundef %78, ptr noundef %80, i32 noundef 1)
  %81 = load i32, ptr %singleblock, align 4
  %tobool45 = icmp ne i32 %81, 0
  br i1 %tobool45, label %if.end59, label %if.then46

if.then46:                                        ; preds = %if.end35
  %82 = load ptr, ptr %vi.addr, align 8
  %83 = load ptr, ptr %hi, align 8
  %long_setting47 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %83, i32 0, i32 3
  %84 = load double, ptr %long_setting47, align 8
  %85 = load ptr, ptr %setup, align 8
  %psy_noise_normal_start48 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %85, i32 0, i32 23
  %arrayidx49 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_start48, i64 0, i64 1
  %86 = load ptr, ptr %arrayidx49, align 8
  %87 = load ptr, ptr %setup, align 8
  %psy_noise_normal_partition50 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %87, i32 0, i32 24
  %arrayidx51 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_partition50, i64 0, i64 1
  %88 = load ptr, ptr %arrayidx51, align 8
  %89 = load ptr, ptr %setup, align 8
  %psy_noise_normal_thresh52 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %89, i32 0, i32 25
  %90 = load ptr, ptr %psy_noise_normal_thresh52, align 8
  call void @vorbis_encode_psyset_setup(ptr noundef %82, double noundef %84, ptr noundef %86, ptr noundef %88, ptr noundef %90, i32 noundef 2)
  %91 = load ptr, ptr %vi.addr, align 8
  %92 = load ptr, ptr %hi, align 8
  %long_setting53 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %92, i32 0, i32 3
  %93 = load double, ptr %long_setting53, align 8
  %94 = load ptr, ptr %setup, align 8
  %psy_noise_normal_start54 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %94, i32 0, i32 23
  %arrayidx55 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_start54, i64 0, i64 1
  %95 = load ptr, ptr %arrayidx55, align 8
  %96 = load ptr, ptr %setup, align 8
  %psy_noise_normal_partition56 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %96, i32 0, i32 24
  %arrayidx57 = getelementptr inbounds [2 x ptr], ptr %psy_noise_normal_partition56, i64 0, i64 1
  %97 = load ptr, ptr %arrayidx57, align 8
  %98 = load ptr, ptr %setup, align 8
  %psy_noise_normal_thresh58 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %98, i32 0, i32 25
  %99 = load ptr, ptr %psy_noise_normal_thresh58, align 8
  call void @vorbis_encode_psyset_setup(ptr noundef %91, double noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, i32 noundef 3)
  br label %if.end59

if.end59:                                         ; preds = %if.then46, %if.end35
  %100 = load ptr, ptr %vi.addr, align 8
  %101 = load ptr, ptr %hi, align 8
  %block = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %101, i32 0, i32 22
  %102 = load i32, ptr %i0, align 4
  %idxprom = sext i32 %102 to i64
  %arrayidx60 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block, i64 0, i64 %idxprom
  %tone_mask_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx60, i32 0, i32 0
  %103 = load double, ptr %tone_mask_setting, align 8
  %104 = load ptr, ptr %setup, align 8
  %psy_tone_masteratt = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %104, i32 0, i32 8
  %105 = load ptr, ptr %psy_tone_masteratt, align 8
  %106 = load ptr, ptr %setup, align 8
  %psy_tone_0dB = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %106, i32 0, i32 9
  %107 = load ptr, ptr %psy_tone_0dB, align 8
  %108 = load ptr, ptr %setup, align 8
  %psy_tone_adj_impulse = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %108, i32 0, i32 11
  %109 = load ptr, ptr %psy_tone_adj_impulse, align 8
  call void @vorbis_encode_tonemask_setup(ptr noundef %100, double noundef %103, i32 noundef 0, ptr noundef %105, ptr noundef %107, ptr noundef %109)
  %110 = load ptr, ptr %vi.addr, align 8
  %111 = load ptr, ptr %hi, align 8
  %block61 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %111, i32 0, i32 22
  %arrayidx62 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block61, i64 0, i64 1
  %tone_mask_setting63 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx62, i32 0, i32 0
  %112 = load double, ptr %tone_mask_setting63, align 8
  %113 = load ptr, ptr %setup, align 8
  %psy_tone_masteratt64 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %113, i32 0, i32 8
  %114 = load ptr, ptr %psy_tone_masteratt64, align 8
  %115 = load ptr, ptr %setup, align 8
  %psy_tone_0dB65 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %115, i32 0, i32 9
  %116 = load ptr, ptr %psy_tone_0dB65, align 8
  %117 = load ptr, ptr %setup, align 8
  %psy_tone_adj_other = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %117, i32 0, i32 13
  %118 = load ptr, ptr %psy_tone_adj_other, align 8
  call void @vorbis_encode_tonemask_setup(ptr noundef %110, double noundef %112, i32 noundef 1, ptr noundef %114, ptr noundef %116, ptr noundef %118)
  %119 = load i32, ptr %singleblock, align 4
  %tobool66 = icmp ne i32 %119, 0
  br i1 %tobool66, label %if.end79, label %if.then67

if.then67:                                        ; preds = %if.end59
  %120 = load ptr, ptr %vi.addr, align 8
  %121 = load ptr, ptr %hi, align 8
  %block68 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %121, i32 0, i32 22
  %arrayidx69 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block68, i64 0, i64 2
  %tone_mask_setting70 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx69, i32 0, i32 0
  %122 = load double, ptr %tone_mask_setting70, align 8
  %123 = load ptr, ptr %setup, align 8
  %psy_tone_masteratt71 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %123, i32 0, i32 8
  %124 = load ptr, ptr %psy_tone_masteratt71, align 8
  %125 = load ptr, ptr %setup, align 8
  %psy_tone_0dB72 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %125, i32 0, i32 9
  %126 = load ptr, ptr %psy_tone_0dB72, align 8
  %127 = load ptr, ptr %setup, align 8
  %psy_tone_adj_other73 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %127, i32 0, i32 13
  %128 = load ptr, ptr %psy_tone_adj_other73, align 8
  call void @vorbis_encode_tonemask_setup(ptr noundef %120, double noundef %122, i32 noundef 2, ptr noundef %124, ptr noundef %126, ptr noundef %128)
  %129 = load ptr, ptr %vi.addr, align 8
  %130 = load ptr, ptr %hi, align 8
  %block74 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %130, i32 0, i32 22
  %arrayidx75 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block74, i64 0, i64 3
  %tone_mask_setting76 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx75, i32 0, i32 0
  %131 = load double, ptr %tone_mask_setting76, align 8
  %132 = load ptr, ptr %setup, align 8
  %psy_tone_masteratt77 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %132, i32 0, i32 8
  %133 = load ptr, ptr %psy_tone_masteratt77, align 8
  %134 = load ptr, ptr %setup, align 8
  %psy_tone_0dB78 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %134, i32 0, i32 9
  %135 = load ptr, ptr %psy_tone_0dB78, align 8
  %136 = load ptr, ptr %setup, align 8
  %psy_tone_adj_long = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %136, i32 0, i32 12
  %137 = load ptr, ptr %psy_tone_adj_long, align 8
  call void @vorbis_encode_tonemask_setup(ptr noundef %129, double noundef %131, i32 noundef 3, ptr noundef %133, ptr noundef %135, ptr noundef %137)
  br label %if.end79

if.end79:                                         ; preds = %if.then67, %if.end59
  %138 = load ptr, ptr %vi.addr, align 8
  %139 = load ptr, ptr %hi, align 8
  %block80 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %139, i32 0, i32 22
  %140 = load i32, ptr %i0, align 4
  %idxprom81 = sext i32 %140 to i64
  %arrayidx82 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block80, i64 0, i64 %idxprom81
  %noise_compand_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx82, i32 0, i32 3
  %141 = load double, ptr %noise_compand_setting, align 8
  %142 = load ptr, ptr %setup, align 8
  %psy_noise_compand = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %142, i32 0, i32 20
  %143 = load ptr, ptr %psy_noise_compand, align 8
  %144 = load ptr, ptr %setup, align 8
  %psy_noise_compand_short_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %144, i32 0, i32 21
  %145 = load ptr, ptr %psy_noise_compand_short_mapping, align 8
  call void @vorbis_encode_compand_setup(ptr noundef %138, double noundef %141, i32 noundef 0, ptr noundef %143, ptr noundef %145)
  %146 = load ptr, ptr %vi.addr, align 8
  %147 = load ptr, ptr %hi, align 8
  %block83 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %147, i32 0, i32 22
  %arrayidx84 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block83, i64 0, i64 1
  %noise_compand_setting85 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx84, i32 0, i32 3
  %148 = load double, ptr %noise_compand_setting85, align 8
  %149 = load ptr, ptr %setup, align 8
  %psy_noise_compand86 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %149, i32 0, i32 20
  %150 = load ptr, ptr %psy_noise_compand86, align 8
  %151 = load ptr, ptr %setup, align 8
  %psy_noise_compand_short_mapping87 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %151, i32 0, i32 21
  %152 = load ptr, ptr %psy_noise_compand_short_mapping87, align 8
  call void @vorbis_encode_compand_setup(ptr noundef %146, double noundef %148, i32 noundef 1, ptr noundef %150, ptr noundef %152)
  %153 = load i32, ptr %singleblock, align 4
  %tobool88 = icmp ne i32 %153, 0
  br i1 %tobool88, label %if.end99, label %if.then89

if.then89:                                        ; preds = %if.end79
  %154 = load ptr, ptr %vi.addr, align 8
  %155 = load ptr, ptr %hi, align 8
  %block90 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %155, i32 0, i32 22
  %arrayidx91 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block90, i64 0, i64 2
  %noise_compand_setting92 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx91, i32 0, i32 3
  %156 = load double, ptr %noise_compand_setting92, align 8
  %157 = load ptr, ptr %setup, align 8
  %psy_noise_compand93 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %157, i32 0, i32 20
  %158 = load ptr, ptr %psy_noise_compand93, align 8
  %159 = load ptr, ptr %setup, align 8
  %psy_noise_compand_long_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %159, i32 0, i32 22
  %160 = load ptr, ptr %psy_noise_compand_long_mapping, align 8
  call void @vorbis_encode_compand_setup(ptr noundef %154, double noundef %156, i32 noundef 2, ptr noundef %158, ptr noundef %160)
  %161 = load ptr, ptr %vi.addr, align 8
  %162 = load ptr, ptr %hi, align 8
  %block94 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %162, i32 0, i32 22
  %arrayidx95 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block94, i64 0, i64 3
  %noise_compand_setting96 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx95, i32 0, i32 3
  %163 = load double, ptr %noise_compand_setting96, align 8
  %164 = load ptr, ptr %setup, align 8
  %psy_noise_compand97 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %164, i32 0, i32 20
  %165 = load ptr, ptr %psy_noise_compand97, align 8
  %166 = load ptr, ptr %setup, align 8
  %psy_noise_compand_long_mapping98 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %166, i32 0, i32 22
  %167 = load ptr, ptr %psy_noise_compand_long_mapping98, align 8
  call void @vorbis_encode_compand_setup(ptr noundef %161, double noundef %163, i32 noundef 3, ptr noundef %165, ptr noundef %167)
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %if.end79
  %168 = load ptr, ptr %vi.addr, align 8
  %169 = load ptr, ptr %hi, align 8
  %block100 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %169, i32 0, i32 22
  %170 = load i32, ptr %i0, align 4
  %idxprom101 = sext i32 %170 to i64
  %arrayidx102 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block100, i64 0, i64 %idxprom101
  %tone_peaklimit_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx102, i32 0, i32 1
  %171 = load double, ptr %tone_peaklimit_setting, align 8
  %172 = load ptr, ptr %setup, align 8
  %psy_tone_dBsuppress = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %172, i32 0, i32 10
  %173 = load ptr, ptr %psy_tone_dBsuppress, align 8
  call void @vorbis_encode_peak_setup(ptr noundef %168, double noundef %171, i32 noundef 0, ptr noundef %173)
  %174 = load ptr, ptr %vi.addr, align 8
  %175 = load ptr, ptr %hi, align 8
  %block103 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %175, i32 0, i32 22
  %arrayidx104 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block103, i64 0, i64 1
  %tone_peaklimit_setting105 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx104, i32 0, i32 1
  %176 = load double, ptr %tone_peaklimit_setting105, align 8
  %177 = load ptr, ptr %setup, align 8
  %psy_tone_dBsuppress106 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %177, i32 0, i32 10
  %178 = load ptr, ptr %psy_tone_dBsuppress106, align 8
  call void @vorbis_encode_peak_setup(ptr noundef %174, double noundef %176, i32 noundef 1, ptr noundef %178)
  %179 = load i32, ptr %singleblock, align 4
  %tobool107 = icmp ne i32 %179, 0
  br i1 %tobool107, label %if.end117, label %if.then108

if.then108:                                       ; preds = %if.end99
  %180 = load ptr, ptr %vi.addr, align 8
  %181 = load ptr, ptr %hi, align 8
  %block109 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %181, i32 0, i32 22
  %arrayidx110 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block109, i64 0, i64 2
  %tone_peaklimit_setting111 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx110, i32 0, i32 1
  %182 = load double, ptr %tone_peaklimit_setting111, align 8
  %183 = load ptr, ptr %setup, align 8
  %psy_tone_dBsuppress112 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %183, i32 0, i32 10
  %184 = load ptr, ptr %psy_tone_dBsuppress112, align 8
  call void @vorbis_encode_peak_setup(ptr noundef %180, double noundef %182, i32 noundef 2, ptr noundef %184)
  %185 = load ptr, ptr %vi.addr, align 8
  %186 = load ptr, ptr %hi, align 8
  %block113 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %186, i32 0, i32 22
  %arrayidx114 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block113, i64 0, i64 3
  %tone_peaklimit_setting115 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx114, i32 0, i32 1
  %187 = load double, ptr %tone_peaklimit_setting115, align 8
  %188 = load ptr, ptr %setup, align 8
  %psy_tone_dBsuppress116 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %188, i32 0, i32 10
  %189 = load ptr, ptr %psy_tone_dBsuppress116, align 8
  call void @vorbis_encode_peak_setup(ptr noundef %185, double noundef %187, i32 noundef 3, ptr noundef %189)
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.end99
  %190 = load ptr, ptr %vi.addr, align 8
  %191 = load ptr, ptr %hi, align 8
  %block118 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %191, i32 0, i32 22
  %192 = load i32, ptr %i0, align 4
  %idxprom119 = sext i32 %192 to i64
  %arrayidx120 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block118, i64 0, i64 %idxprom119
  %noise_bias_setting = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx120, i32 0, i32 2
  %193 = load double, ptr %noise_bias_setting, align 8
  %194 = load ptr, ptr %setup, align 8
  %psy_noise_dBsuppress = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %194, i32 0, i32 19
  %195 = load ptr, ptr %psy_noise_dBsuppress, align 8
  %196 = load ptr, ptr %setup, align 8
  %psy_noise_bias_impulse = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %196, i32 0, i32 15
  %197 = load ptr, ptr %psy_noise_bias_impulse, align 8
  %198 = load ptr, ptr %setup, align 8
  %psy_noiseguards = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %198, i32 0, i32 14
  %199 = load ptr, ptr %psy_noiseguards, align 8
  %200 = load i32, ptr %i0, align 4
  %cmp121 = icmp eq i32 %200, 0
  br i1 %cmp121, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end117
  %201 = load ptr, ptr %hi, align 8
  %impulse_noisetune = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %201, i32 0, i32 5
  %202 = load double, ptr %impulse_noisetune, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end117
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %202, %cond.true ], [ 0.000000e+00, %cond.false ]
  call void @vorbis_encode_noisebias_setup(ptr noundef %190, double noundef %193, i32 noundef 0, ptr noundef %195, ptr noundef %197, ptr noundef %199, double noundef %cond)
  %203 = load ptr, ptr %vi.addr, align 8
  %204 = load ptr, ptr %hi, align 8
  %block122 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %204, i32 0, i32 22
  %arrayidx123 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block122, i64 0, i64 1
  %noise_bias_setting124 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx123, i32 0, i32 2
  %205 = load double, ptr %noise_bias_setting124, align 8
  %206 = load ptr, ptr %setup, align 8
  %psy_noise_dBsuppress125 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %206, i32 0, i32 19
  %207 = load ptr, ptr %psy_noise_dBsuppress125, align 8
  %208 = load ptr, ptr %setup, align 8
  %psy_noise_bias_padding = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %208, i32 0, i32 16
  %209 = load ptr, ptr %psy_noise_bias_padding, align 8
  %210 = load ptr, ptr %setup, align 8
  %psy_noiseguards126 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %210, i32 0, i32 14
  %211 = load ptr, ptr %psy_noiseguards126, align 8
  call void @vorbis_encode_noisebias_setup(ptr noundef %203, double noundef %205, i32 noundef 1, ptr noundef %207, ptr noundef %209, ptr noundef %211, double noundef 0.000000e+00)
  %212 = load i32, ptr %singleblock, align 4
  %tobool127 = icmp ne i32 %212, 0
  br i1 %tobool127, label %if.end139, label %if.then128

if.then128:                                       ; preds = %cond.end
  %213 = load ptr, ptr %vi.addr, align 8
  %214 = load ptr, ptr %hi, align 8
  %block129 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %214, i32 0, i32 22
  %arrayidx130 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block129, i64 0, i64 2
  %noise_bias_setting131 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx130, i32 0, i32 2
  %215 = load double, ptr %noise_bias_setting131, align 8
  %216 = load ptr, ptr %setup, align 8
  %psy_noise_dBsuppress132 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %216, i32 0, i32 19
  %217 = load ptr, ptr %psy_noise_dBsuppress132, align 8
  %218 = load ptr, ptr %setup, align 8
  %psy_noise_bias_trans = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %218, i32 0, i32 17
  %219 = load ptr, ptr %psy_noise_bias_trans, align 8
  %220 = load ptr, ptr %setup, align 8
  %psy_noiseguards133 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %220, i32 0, i32 14
  %221 = load ptr, ptr %psy_noiseguards133, align 8
  call void @vorbis_encode_noisebias_setup(ptr noundef %213, double noundef %215, i32 noundef 2, ptr noundef %217, ptr noundef %219, ptr noundef %221, double noundef 0.000000e+00)
  %222 = load ptr, ptr %vi.addr, align 8
  %223 = load ptr, ptr %hi, align 8
  %block134 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %223, i32 0, i32 22
  %arrayidx135 = getelementptr inbounds [4 x %struct.highlevel_byblocktype], ptr %block134, i64 0, i64 3
  %noise_bias_setting136 = getelementptr inbounds nuw %struct.highlevel_byblocktype, ptr %arrayidx135, i32 0, i32 2
  %224 = load double, ptr %noise_bias_setting136, align 8
  %225 = load ptr, ptr %setup, align 8
  %psy_noise_dBsuppress137 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %225, i32 0, i32 19
  %226 = load ptr, ptr %psy_noise_dBsuppress137, align 8
  %227 = load ptr, ptr %setup, align 8
  %psy_noise_bias_long = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %227, i32 0, i32 18
  %228 = load ptr, ptr %psy_noise_bias_long, align 8
  %229 = load ptr, ptr %setup, align 8
  %psy_noiseguards138 = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %229, i32 0, i32 14
  %230 = load ptr, ptr %psy_noiseguards138, align 8
  call void @vorbis_encode_noisebias_setup(ptr noundef %222, double noundef %224, i32 noundef 3, ptr noundef %226, ptr noundef %228, ptr noundef %230, double noundef 0.000000e+00)
  br label %if.end139

if.end139:                                        ; preds = %if.then128, %cond.end
  %231 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_encode_ath_setup(ptr noundef %231, i32 noundef 0)
  %232 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_encode_ath_setup(ptr noundef %232, i32 noundef 1)
  %233 = load i32, ptr %singleblock, align 4
  %tobool140 = icmp ne i32 %233, 0
  br i1 %tobool140, label %if.end142, label %if.then141

if.then141:                                       ; preds = %if.end139
  %234 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_encode_ath_setup(ptr noundef %234, i32 noundef 2)
  %235 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_encode_ath_setup(ptr noundef %235, i32 noundef 3)
  br label %if.end142

if.end142:                                        ; preds = %if.then141, %if.end139
  %236 = load ptr, ptr %vi.addr, align 8
  %237 = load ptr, ptr %hi, align 8
  %base_setting143 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %237, i32 0, i32 2
  %238 = load double, ptr %base_setting143, align 8
  %239 = load ptr, ptr %setup, align 8
  %maps = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %239, i32 0, i32 36
  %240 = load ptr, ptr %maps, align 8
  call void @vorbis_encode_map_n_res_setup(ptr noundef %236, double noundef %238, ptr noundef %240)
  %241 = load ptr, ptr %vi.addr, align 8
  %call = call double @setting_to_approx_bitrate(ptr noundef %241)
  %conv = fptosi double %call to i64
  %242 = load ptr, ptr %vi.addr, align 8
  %bitrate_nominal = getelementptr inbounds nuw %struct.vorbis_info, ptr %242, i32 0, i32 4
  store i64 %conv, ptr %bitrate_nominal, align 8
  %243 = load ptr, ptr %hi, align 8
  %bitrate_min = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %243, i32 0, i32 7
  %244 = load i64, ptr %bitrate_min, align 8
  %245 = load ptr, ptr %vi.addr, align 8
  %bitrate_lower = getelementptr inbounds nuw %struct.vorbis_info, ptr %245, i32 0, i32 5
  store i64 %244, ptr %bitrate_lower, align 8
  %246 = load ptr, ptr %hi, align 8
  %bitrate_max = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %246, i32 0, i32 10
  %247 = load i64, ptr %bitrate_max, align 8
  %248 = load ptr, ptr %vi.addr, align 8
  %bitrate_upper = getelementptr inbounds nuw %struct.vorbis_info, ptr %248, i32 0, i32 3
  store i64 %247, ptr %bitrate_upper, align 8
  %249 = load ptr, ptr %hi, align 8
  %bitrate_limit_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %249, i32 0, i32 11
  %250 = load double, ptr %bitrate_limit_window, align 8
  %conv144 = fptosi double %250 to i64
  %251 = load ptr, ptr %vi.addr, align 8
  %bitrate_window = getelementptr inbounds nuw %struct.vorbis_info, ptr %251, i32 0, i32 6
  store i64 %conv144, ptr %bitrate_window, align 8
  %252 = load ptr, ptr %hi, align 8
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %252, i32 0, i32 6
  %253 = load i32, ptr %managed, align 8
  %tobool145 = icmp ne i32 %253, 0
  br i1 %tobool145, label %if.then146, label %if.end162

if.then146:                                       ; preds = %if.end142
  %254 = load ptr, ptr %hi, align 8
  %bitrate_av_window = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %254, i32 0, i32 12
  %255 = load double, ptr %bitrate_av_window, align 8
  %256 = load ptr, ptr %ci, align 8
  %bi = getelementptr inbounds nuw %struct.codec_setup_info, ptr %256, i32 0, i32 18
  %queue_avg_time = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi, i32 0, i32 0
  store double %255, ptr %queue_avg_time, align 8
  %257 = load ptr, ptr %hi, align 8
  %bitrate_av_window_center = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %257, i32 0, i32 13
  %258 = load double, ptr %bitrate_av_window_center, align 8
  %259 = load ptr, ptr %ci, align 8
  %bi147 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %259, i32 0, i32 18
  %queue_avg_center = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi147, i32 0, i32 1
  store double %258, ptr %queue_avg_center, align 8
  %260 = load ptr, ptr %hi, align 8
  %bitrate_limit_window148 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %260, i32 0, i32 11
  %261 = load double, ptr %bitrate_limit_window148, align 8
  %262 = load ptr, ptr %ci, align 8
  %bi149 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %262, i32 0, i32 18
  %queue_minmax_time = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi149, i32 0, i32 2
  store double %261, ptr %queue_minmax_time, align 8
  %263 = load ptr, ptr %hi, align 8
  %bitrate_min150 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %263, i32 0, i32 7
  %264 = load i64, ptr %bitrate_min150, align 8
  %conv151 = sitofp i64 %264 to double
  %265 = load ptr, ptr %ci, align 8
  %bi152 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %265, i32 0, i32 18
  %queue_hardmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi152, i32 0, i32 3
  store double %conv151, ptr %queue_hardmin, align 8
  %266 = load ptr, ptr %hi, align 8
  %bitrate_max153 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %266, i32 0, i32 10
  %267 = load i64, ptr %bitrate_max153, align 8
  %conv154 = sitofp i64 %267 to double
  %268 = load ptr, ptr %ci, align 8
  %bi155 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %268, i32 0, i32 18
  %queue_hardmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi155, i32 0, i32 4
  store double %conv154, ptr %queue_hardmax, align 8
  %269 = load ptr, ptr %hi, align 8
  %bitrate_av_lo = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %269, i32 0, i32 8
  %270 = load i64, ptr %bitrate_av_lo, align 8
  %conv156 = sitofp i64 %270 to double
  %271 = load ptr, ptr %ci, align 8
  %bi157 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %271, i32 0, i32 18
  %queue_avgmin = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi157, i32 0, i32 5
  store double %conv156, ptr %queue_avgmin, align 8
  %272 = load ptr, ptr %hi, align 8
  %bitrate_av_hi = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %272, i32 0, i32 9
  %273 = load i64, ptr %bitrate_av_hi, align 8
  %conv158 = sitofp i64 %273 to double
  %274 = load ptr, ptr %ci, align 8
  %bi159 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %274, i32 0, i32 18
  %queue_avgmax = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi159, i32 0, i32 6
  store double %conv158, ptr %queue_avgmax, align 8
  %275 = load ptr, ptr %ci, align 8
  %bi160 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %275, i32 0, i32 18
  %avgfloat_downslew_max = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi160, i32 0, i32 7
  store double -9.999990e+05, ptr %avgfloat_downslew_max, align 8
  %276 = load ptr, ptr %ci, align 8
  %bi161 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %276, i32 0, i32 18
  %avgfloat_upslew_max = getelementptr inbounds nuw %struct.bitrate_manager_info, ptr %bi161, i32 0, i32 8
  store double 9.999990e+05, ptr %avgfloat_upslew_max, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then146, %if.end142
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end162, %if.then24, %if.then
  %277 = load i32, ptr %retval, align 4
  ret i32 %277
}

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_blocksize_setup(ptr noundef, double noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_floor_setup(ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_global_psych_setup(ptr noundef, double noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_global_stereo(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_psyset_setup(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_tonemask_setup(ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_compand_setup(ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_peak_setup(ptr noundef, double noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_noisebias_setup(ptr noundef, double noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_ath_setup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vorbis_encode_map_n_res_setup(ptr noundef, double noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden double @setting_to_approx_bitrate(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
