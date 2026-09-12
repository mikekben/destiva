; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block_internal = type { ptr, float, i32, [15 x i32] }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_residue_P = external dso_local global [3 x ptr], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_bytes(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_bitrate_managed(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden float @todB(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_forward(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_remove_floor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_noisemask(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_tonemask(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_offset_and_mix(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vp_quantize_couple_memo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vp_quantize_couple_sort(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_noise_normalize_sort(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_noise_normalize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_couple(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @drft_forward(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vorbis_apply_window(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @floor1_fit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @floor1_interpolate_fit(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @floor1_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @mapping0_forward(ptr noundef %vb) #1 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %vbi = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nonzero = alloca ptr, align 8
  %gmdct = alloca ptr, align 8
  %ilogmaskch = alloca ptr, align 8
  %floor_posts = alloca ptr, align 8
  %global_ampmax = alloca float, align 4
  %local_ampmax = alloca ptr, align 8
  %blocktype = alloca i32, align 4
  %modenumber = alloca i32, align 4
  %info = alloca ptr, align 8
  %psy_look = alloca ptr, align 8
  %scale = alloca float, align 4
  %scale_dB = alloca float, align 4
  %pcm = alloca ptr, align 8
  %logfft = alloca ptr, align 8
  %temp = alloca float, align 4
  %noise = alloca ptr, align 8
  %tone = alloca ptr, align 8
  %submap = alloca i32, align 4
  %mdct = alloca ptr, align 8
  %logfft116 = alloca ptr, align 8
  %logmdct = alloca ptr, align 8
  %logmask = alloca ptr, align 8
  %res_bundle = alloca ptr, align 8
  %couple_bundle = alloca ptr, align 8
  %zerobundle = alloca ptr, align 8
  %sortindex = alloca ptr, align 8
  %mag_memo = alloca ptr, align 8
  %mag_sort = alloca ptr, align 8
  %mdct274 = alloca ptr, align 8
  %submap313 = alloca i32, align 4
  %mdct317 = alloca ptr, align 8
  %res = alloca ptr, align 8
  %ilogmask = alloca ptr, align 8
  %ch_in_bundle = alloca i32, align 4
  %classifications = alloca ptr, align 8
  %resnum = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %vd1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %vd1, align 8
  store ptr %1, ptr %vd, align 8
  %2 = load ptr, ptr %vd, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %vi2, align 8
  store ptr %3, ptr %vi, align 8
  %4 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %codec_setup, align 8
  store ptr %5, ptr %ci, align 8
  %6 = load ptr, ptr %vb.addr, align 8
  %vd3 = getelementptr inbounds nuw %struct.vorbis_block, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %vd3, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %backend_state, align 8
  store ptr %8, ptr %b, align 8
  %9 = load ptr, ptr %vb.addr, align 8
  %internal = getelementptr inbounds nuw %struct.vorbis_block, ptr %9, i32 0, i32 20
  %10 = load ptr, ptr %internal, align 8
  store ptr %10, ptr %vbi, align 8
  %11 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %pcmend, align 8
  store i32 %12, ptr %n, align 4
  %13 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %channels, align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 4, %conv
  %15 = alloca i8, i64 %mul, align 16
  store ptr %15, ptr %nonzero, align 8
  %16 = load ptr, ptr %vb.addr, align 8
  %17 = load ptr, ptr %vi, align 8
  %channels4 = getelementptr inbounds nuw %struct.vorbis_info, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %channels4, align 4
  %conv5 = sext i32 %18 to i64
  %mul6 = mul i64 %conv5, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %16, i64 noundef %mul6)
  store ptr %call, ptr %gmdct, align 8
  %19 = load ptr, ptr %vb.addr, align 8
  %20 = load ptr, ptr %vi, align 8
  %channels7 = getelementptr inbounds nuw %struct.vorbis_info, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %channels7, align 4
  %conv8 = sext i32 %21 to i64
  %mul9 = mul i64 %conv8, 8
  %call10 = call ptr @_vorbis_block_alloc(ptr noundef %19, i64 noundef %mul9)
  store ptr %call10, ptr %ilogmaskch, align 8
  %22 = load ptr, ptr %vb.addr, align 8
  %23 = load ptr, ptr %vi, align 8
  %channels11 = getelementptr inbounds nuw %struct.vorbis_info, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %channels11, align 4
  %conv12 = sext i32 %24 to i64
  %mul13 = mul i64 %conv12, 8
  %call14 = call ptr @_vorbis_block_alloc(ptr noundef %22, i64 noundef %mul13)
  store ptr %call14, ptr %floor_posts, align 8
  %25 = load ptr, ptr %vbi, align 8
  %ampmax = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %25, i32 0, i32 1
  %26 = load float, ptr %ampmax, align 8
  store float %26, ptr %global_ampmax, align 4
  %27 = load ptr, ptr %vi, align 8
  %channels15 = getelementptr inbounds nuw %struct.vorbis_info, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %channels15, align 4
  %conv16 = sext i32 %28 to i64
  %mul17 = mul i64 4, %conv16
  %29 = alloca i8, i64 %mul17, align 16
  store ptr %29, ptr %local_ampmax, align 8
  %30 = load ptr, ptr %vbi, align 8
  %blocktype18 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %blocktype18, align 4
  store i32 %31, ptr %blocktype, align 4
  %32 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %32, i32 0, i32 3
  %33 = load i64, ptr %W, align 8
  %conv19 = trunc i64 %33 to i32
  store i32 %conv19, ptr %modenumber, align 4
  %34 = load ptr, ptr %ci, align 8
  %map_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %34, i32 0, i32 9
  %35 = load i32, ptr %modenumber, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds [64 x ptr], ptr %map_param, i64 0, i64 %idxprom
  %36 = load ptr, ptr %arrayidx, align 8
  store ptr %36, ptr %info, align 8
  %37 = load ptr, ptr %b, align 8
  %psy = getelementptr inbounds nuw %struct.private_state, ptr %37, i32 0, i32 7
  %38 = load ptr, ptr %psy, align 8
  %39 = load i32, ptr %blocktype, align 4
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_look_psy, ptr %38, i64 %idx.ext
  %40 = load ptr, ptr %vb.addr, align 8
  %W20 = getelementptr inbounds nuw %struct.vorbis_block, ptr %40, i32 0, i32 3
  %41 = load i64, ptr %W20, align 8
  %tobool = icmp ne i64 %41, 0
  %42 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 2, i32 0
  %idx.ext21 = sext i32 %cond to i64
  %add.ptr22 = getelementptr inbounds %struct.vorbis_look_psy, ptr %add.ptr, i64 %idx.ext21
  store ptr %add.ptr22, ptr %psy_look, align 8
  %43 = load i32, ptr %modenumber, align 4
  %44 = load ptr, ptr %vb.addr, align 8
  %mode = getelementptr inbounds nuw %struct.vorbis_block, ptr %44, i32 0, i32 6
  store i32 %43, ptr %mode, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc97, %entry
  %45 = load i32, ptr %i, align 4
  %46 = load ptr, ptr %vi, align 8
  %channels23 = getelementptr inbounds nuw %struct.vorbis_info, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %channels23, align 4
  %cmp = icmp slt i32 %45, %47
  br i1 %cmp, label %for.body, label %for.end98

for.body:                                         ; preds = %for.cond
  %48 = load i32, ptr %n, align 4
  %conv25 = sitofp i32 %48 to float
  %div = fdiv float 4.000000e+00, %conv25
  store float %div, ptr %scale, align 4
  %49 = load ptr, ptr %vb.addr, align 8
  %pcm26 = getelementptr inbounds nuw %struct.vorbis_block, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pcm26, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %51 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %50, i64 %idxprom27
  %52 = load ptr, ptr %arrayidx28, align 8
  store ptr %52, ptr %pcm, align 8
  %53 = load ptr, ptr %pcm, align 8
  store ptr %53, ptr %logfft, align 8
  %54 = load ptr, ptr %vb.addr, align 8
  %55 = load i32, ptr %n, align 4
  %div29 = sdiv i32 %55, 2
  %conv30 = sext i32 %div29 to i64
  %mul31 = mul i64 %conv30, 4
  %call32 = call ptr @_vorbis_block_alloc(ptr noundef %54, i64 noundef %mul31)
  %56 = load ptr, ptr %gmdct, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %57 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %56, i64 %idxprom33
  store ptr %call32, ptr %arrayidx34, align 8
  %call35 = call float @todB(ptr noundef %scale)
  store float %call35, ptr %scale_dB, align 4
  %58 = load ptr, ptr %pcm, align 8
  %59 = load ptr, ptr %b, align 8
  %window = getelementptr inbounds nuw %struct.private_state, ptr %59, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i32], ptr %window, i64 0, i64 0
  %60 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %60, i32 0, i32 0
  %arraydecay36 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %61 = load ptr, ptr %vb.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_block, ptr %61, i32 0, i32 2
  %62 = load i64, ptr %lW, align 8
  %conv37 = trunc i64 %62 to i32
  %63 = load ptr, ptr %vb.addr, align 8
  %W38 = getelementptr inbounds nuw %struct.vorbis_block, ptr %63, i32 0, i32 3
  %64 = load i64, ptr %W38, align 8
  %conv39 = trunc i64 %64 to i32
  %65 = load ptr, ptr %vb.addr, align 8
  %nW = getelementptr inbounds nuw %struct.vorbis_block, ptr %65, i32 0, i32 4
  %66 = load i64, ptr %nW, align 8
  %conv40 = trunc i64 %66 to i32
  call void @_vorbis_apply_window(ptr noundef %58, ptr noundef %arraydecay, ptr noundef %arraydecay36, i32 noundef %conv37, i32 noundef %conv39, i32 noundef %conv40)
  %67 = load ptr, ptr %b, align 8
  %transform = getelementptr inbounds nuw %struct.private_state, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %vb.addr, align 8
  %W41 = getelementptr inbounds nuw %struct.vorbis_block, ptr %68, i32 0, i32 3
  %69 = load i64, ptr %W41, align 8
  %arrayidx42 = getelementptr inbounds [2 x ptr], ptr %transform, i64 0, i64 %69
  %70 = load ptr, ptr %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds ptr, ptr %70, i64 0
  %71 = load ptr, ptr %arrayidx43, align 8
  %72 = load ptr, ptr %pcm, align 8
  %73 = load ptr, ptr %gmdct, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %74 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %73, i64 %idxprom44
  %75 = load ptr, ptr %arrayidx45, align 8
  call void @mdct_forward(ptr noundef %71, ptr noundef %72, ptr noundef %75)
  %76 = load ptr, ptr %b, align 8
  %fft_look = getelementptr inbounds nuw %struct.private_state, ptr %76, i32 0, i32 3
  %77 = load ptr, ptr %vb.addr, align 8
  %W46 = getelementptr inbounds nuw %struct.vorbis_block, ptr %77, i32 0, i32 3
  %78 = load i64, ptr %W46, align 8
  %arrayidx47 = getelementptr inbounds [2 x %struct.drft_lookup], ptr %fft_look, i64 0, i64 %78
  %79 = load ptr, ptr %pcm, align 8
  call void @drft_forward(ptr noundef %arrayidx47, ptr noundef %79)
  %80 = load float, ptr %scale_dB, align 4
  %81 = load ptr, ptr %pcm, align 8
  %call48 = call float @todB(ptr noundef %81)
  %add = fadd float %80, %call48
  %82 = load ptr, ptr %logfft, align 8
  %arrayidx49 = getelementptr inbounds float, ptr %82, i64 0
  store float %add, ptr %arrayidx49, align 4
  %83 = load ptr, ptr %logfft, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %83, i64 0
  %84 = load float, ptr %arrayidx50, align 4
  %85 = load ptr, ptr %local_ampmax, align 8
  %86 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %86 to i64
  %arrayidx52 = getelementptr inbounds float, ptr %85, i64 %idxprom51
  store float %84, ptr %arrayidx52, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc, %for.body
  %87 = load i32, ptr %j, align 4
  %88 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %88, 1
  %cmp54 = icmp slt i32 %87, %sub
  br i1 %cmp54, label %for.body56, label %for.end

for.body56:                                       ; preds = %for.cond53
  %89 = load ptr, ptr %pcm, align 8
  %90 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %90 to i64
  %arrayidx58 = getelementptr inbounds float, ptr %89, i64 %idxprom57
  %91 = load float, ptr %arrayidx58, align 4
  %92 = load ptr, ptr %pcm, align 8
  %93 = load i32, ptr %j, align 4
  %idxprom59 = sext i32 %93 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %92, i64 %idxprom59
  %94 = load float, ptr %arrayidx60, align 4
  %95 = load ptr, ptr %pcm, align 8
  %96 = load i32, ptr %j, align 4
  %add62 = add nsw i32 %96, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %95, i64 %idxprom63
  %97 = load float, ptr %arrayidx64, align 4
  %98 = load ptr, ptr %pcm, align 8
  %99 = load i32, ptr %j, align 4
  %add65 = add nsw i32 %99, 1
  %idxprom66 = sext i32 %add65 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %98, i64 %idxprom66
  %100 = load float, ptr %arrayidx67, align 4
  %mul68 = fmul float %97, %100
  %101 = call float @llvm.fmuladd.f32(float %91, float %94, float %mul68)
  store float %101, ptr %temp, align 4
  %102 = load float, ptr %scale_dB, align 4
  %call69 = call float @todB(ptr noundef %temp)
  %103 = call float @llvm.fmuladd.f32(float 5.000000e-01, float %call69, float %102)
  %104 = load ptr, ptr %logfft, align 8
  %105 = load i32, ptr %j, align 4
  %add71 = add nsw i32 %105, 1
  %shr = ashr i32 %add71, 1
  %idxprom72 = sext i32 %shr to i64
  %arrayidx73 = getelementptr inbounds float, ptr %104, i64 %idxprom72
  store float %103, ptr %arrayidx73, align 4
  store float %103, ptr %temp, align 4
  %106 = load float, ptr %temp, align 4
  %107 = load ptr, ptr %local_ampmax, align 8
  %108 = load i32, ptr %i, align 4
  %idxprom74 = sext i32 %108 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %107, i64 %idxprom74
  %109 = load float, ptr %arrayidx75, align 4
  %cmp76 = fcmp ogt float %106, %109
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.body56
  %110 = load float, ptr %temp, align 4
  %111 = load ptr, ptr %local_ampmax, align 8
  %112 = load i32, ptr %i, align 4
  %idxprom78 = sext i32 %112 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %111, i64 %idxprom78
  store float %110, ptr %arrayidx79, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body56
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %113 = load i32, ptr %j, align 4
  %add80 = add nsw i32 %113, 2
  store i32 %add80, ptr %j, align 4
  br label %for.cond53, !llvm.loop !6

for.end:                                          ; preds = %for.cond53
  %114 = load ptr, ptr %local_ampmax, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom81 = sext i32 %115 to i64
  %arrayidx82 = getelementptr inbounds float, ptr %114, i64 %idxprom81
  %116 = load float, ptr %arrayidx82, align 4
  %cmp83 = fcmp ogt float %116, 0.000000e+00
  br i1 %cmp83, label %if.then85, label %if.end88

if.then85:                                        ; preds = %for.end
  %117 = load ptr, ptr %local_ampmax, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %118 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %117, i64 %idxprom86
  store float 0.000000e+00, ptr %arrayidx87, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %for.end
  %119 = load ptr, ptr %local_ampmax, align 8
  %120 = load i32, ptr %i, align 4
  %idxprom89 = sext i32 %120 to i64
  %arrayidx90 = getelementptr inbounds float, ptr %119, i64 %idxprom89
  %121 = load float, ptr %arrayidx90, align 4
  %122 = load float, ptr %global_ampmax, align 4
  %cmp91 = fcmp ogt float %121, %122
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.end88
  %123 = load ptr, ptr %local_ampmax, align 8
  %124 = load i32, ptr %i, align 4
  %idxprom94 = sext i32 %124 to i64
  %arrayidx95 = getelementptr inbounds float, ptr %123, i64 %idxprom94
  %125 = load float, ptr %arrayidx95, align 4
  store float %125, ptr %global_ampmax, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end88
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %126 = load i32, ptr %i, align 4
  %inc = add nsw i32 %126, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end98:                                        ; preds = %for.cond
  %127 = load ptr, ptr %vb.addr, align 8
  %128 = load i32, ptr %n, align 4
  %div99 = sdiv i32 %128, 2
  %conv100 = sext i32 %div99 to i64
  %mul101 = mul i64 %conv100, 4
  %call102 = call ptr @_vorbis_block_alloc(ptr noundef %127, i64 noundef %mul101)
  store ptr %call102, ptr %noise, align 8
  %129 = load ptr, ptr %vb.addr, align 8
  %130 = load i32, ptr %n, align 4
  %div103 = sdiv i32 %130, 2
  %conv104 = sext i32 %div103 to i64
  %mul105 = mul i64 %conv104, 4
  %call106 = call ptr @_vorbis_block_alloc(ptr noundef %129, i64 noundef %mul105)
  store ptr %call106, ptr %tone, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc242, %for.end98
  %131 = load i32, ptr %i, align 4
  %132 = load ptr, ptr %vi, align 8
  %channels108 = getelementptr inbounds nuw %struct.vorbis_info, ptr %132, i32 0, i32 1
  %133 = load i32, ptr %channels108, align 4
  %cmp109 = icmp slt i32 %131, %133
  br i1 %cmp109, label %for.body111, label %for.end244

for.body111:                                      ; preds = %for.cond107
  %134 = load ptr, ptr %info, align 8
  %chmuxlist = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %134, i32 0, i32 1
  %135 = load i32, ptr %i, align 4
  %idxprom112 = sext i32 %135 to i64
  %arrayidx113 = getelementptr inbounds [256 x i32], ptr %chmuxlist, i64 0, i64 %idxprom112
  %136 = load i32, ptr %arrayidx113, align 4
  store i32 %136, ptr %submap, align 4
  %137 = load ptr, ptr %gmdct, align 8
  %138 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %138 to i64
  %arrayidx115 = getelementptr inbounds ptr, ptr %137, i64 %idxprom114
  %139 = load ptr, ptr %arrayidx115, align 8
  store ptr %139, ptr %mdct, align 8
  %140 = load ptr, ptr %vb.addr, align 8
  %pcm117 = getelementptr inbounds nuw %struct.vorbis_block, ptr %140, i32 0, i32 0
  %141 = load ptr, ptr %pcm117, align 8
  %142 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %142 to i64
  %arrayidx119 = getelementptr inbounds ptr, ptr %141, i64 %idxprom118
  %143 = load ptr, ptr %arrayidx119, align 8
  store ptr %143, ptr %logfft116, align 8
  %144 = load ptr, ptr %logfft116, align 8
  %145 = load i32, ptr %n, align 4
  %div120 = sdiv i32 %145, 2
  %idx.ext121 = sext i32 %div120 to i64
  %add.ptr122 = getelementptr inbounds float, ptr %144, i64 %idx.ext121
  store ptr %add.ptr122, ptr %logmdct, align 8
  %146 = load ptr, ptr %logfft116, align 8
  store ptr %146, ptr %logmask, align 8
  %147 = load i32, ptr %modenumber, align 4
  %148 = load ptr, ptr %vb.addr, align 8
  %mode123 = getelementptr inbounds nuw %struct.vorbis_block, ptr %148, i32 0, i32 6
  store i32 %147, ptr %mode123, align 4
  %149 = load ptr, ptr %vb.addr, align 8
  %call124 = call ptr @_vorbis_block_alloc(ptr noundef %149, i64 noundef 120)
  %150 = load ptr, ptr %floor_posts, align 8
  %151 = load i32, ptr %i, align 4
  %idxprom125 = sext i32 %151 to i64
  %arrayidx126 = getelementptr inbounds ptr, ptr %150, i64 %idxprom125
  store ptr %call124, ptr %arrayidx126, align 8
  %152 = load ptr, ptr %floor_posts, align 8
  %153 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %153 to i64
  %arrayidx128 = getelementptr inbounds ptr, ptr %152, i64 %idxprom127
  %154 = load ptr, ptr %arrayidx128, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %154, i8 0, i64 120, i1 false)
  store i32 0, ptr %j, align 4
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc139, %for.body111
  %155 = load i32, ptr %j, align 4
  %156 = load i32, ptr %n, align 4
  %div130 = sdiv i32 %156, 2
  %cmp131 = icmp slt i32 %155, %div130
  br i1 %cmp131, label %for.body133, label %for.end141

for.body133:                                      ; preds = %for.cond129
  %157 = load ptr, ptr %mdct, align 8
  %158 = load i32, ptr %j, align 4
  %idx.ext134 = sext i32 %158 to i64
  %add.ptr135 = getelementptr inbounds float, ptr %157, i64 %idx.ext134
  %call136 = call float @todB(ptr noundef %add.ptr135)
  %159 = load ptr, ptr %logmdct, align 8
  %160 = load i32, ptr %j, align 4
  %idxprom137 = sext i32 %160 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %159, i64 %idxprom137
  store float %call136, ptr %arrayidx138, align 4
  br label %for.inc139

for.inc139:                                       ; preds = %for.body133
  %161 = load i32, ptr %j, align 4
  %inc140 = add nsw i32 %161, 1
  store i32 %inc140, ptr %j, align 4
  br label %for.cond129, !llvm.loop !9

for.end141:                                       ; preds = %for.cond129
  %162 = load ptr, ptr %psy_look, align 8
  %163 = load ptr, ptr %logmdct, align 8
  %164 = load ptr, ptr %noise, align 8
  call void @_vp_noisemask(ptr noundef %162, ptr noundef %163, ptr noundef %164)
  %165 = load ptr, ptr %psy_look, align 8
  %166 = load ptr, ptr %logfft116, align 8
  %167 = load ptr, ptr %tone, align 8
  %168 = load float, ptr %global_ampmax, align 4
  %169 = load ptr, ptr %local_ampmax, align 8
  %170 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %170 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %169, i64 %idxprom142
  %171 = load float, ptr %arrayidx143, align 4
  call void @_vp_tonemask(ptr noundef %165, ptr noundef %166, ptr noundef %167, float noundef %168, float noundef %171)
  %172 = load ptr, ptr %psy_look, align 8
  %173 = load ptr, ptr %noise, align 8
  %174 = load ptr, ptr %tone, align 8
  %175 = load ptr, ptr %logmask, align 8
  call void @_vp_offset_and_mix(ptr noundef %172, ptr noundef %173, ptr noundef %174, i32 noundef 1, ptr noundef %175)
  %176 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %176, i32 0, i32 10
  %177 = load ptr, ptr %info, align 8
  %floorsubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %177, i32 0, i32 2
  %178 = load i32, ptr %submap, align 4
  %idxprom144 = sext i32 %178 to i64
  %arrayidx145 = getelementptr inbounds [16 x i32], ptr %floorsubmap, i64 0, i64 %idxprom144
  %179 = load i32, ptr %arrayidx145, align 4
  %idxprom146 = sext i32 %179 to i64
  %arrayidx147 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom146
  %180 = load i32, ptr %arrayidx147, align 4
  %cmp148 = icmp ne i32 %180, 1
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %for.end141
  store i32 -1, ptr %retval, align 4
  br label %return

if.end151:                                        ; preds = %for.end141
  %181 = load ptr, ptr %vb.addr, align 8
  %182 = load ptr, ptr %b, align 8
  %flr = getelementptr inbounds nuw %struct.private_state, ptr %182, i32 0, i32 5
  %183 = load ptr, ptr %flr, align 8
  %184 = load ptr, ptr %info, align 8
  %floorsubmap152 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %184, i32 0, i32 2
  %185 = load i32, ptr %submap, align 4
  %idxprom153 = sext i32 %185 to i64
  %arrayidx154 = getelementptr inbounds [16 x i32], ptr %floorsubmap152, i64 0, i64 %idxprom153
  %186 = load i32, ptr %arrayidx154, align 4
  %idxprom155 = sext i32 %186 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %183, i64 %idxprom155
  %187 = load ptr, ptr %arrayidx156, align 8
  %188 = load ptr, ptr %logmdct, align 8
  %189 = load ptr, ptr %logmask, align 8
  %call157 = call ptr @floor1_fit(ptr noundef %181, ptr noundef %187, ptr noundef %188, ptr noundef %189)
  %190 = load ptr, ptr %floor_posts, align 8
  %191 = load i32, ptr %i, align 4
  %idxprom158 = sext i32 %191 to i64
  %arrayidx159 = getelementptr inbounds ptr, ptr %190, i64 %idxprom158
  %192 = load ptr, ptr %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds ptr, ptr %192, i64 7
  store ptr %call157, ptr %arrayidx160, align 8
  %193 = load ptr, ptr %vb.addr, align 8
  %call161 = call i32 @vorbis_bitrate_managed(ptr noundef %193)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %land.lhs.true, label %if.end241

land.lhs.true:                                    ; preds = %if.end151
  %194 = load ptr, ptr %floor_posts, align 8
  %195 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %195 to i64
  %arrayidx164 = getelementptr inbounds ptr, ptr %194, i64 %idxprom163
  %196 = load ptr, ptr %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds ptr, ptr %196, i64 7
  %197 = load ptr, ptr %arrayidx165, align 8
  %tobool166 = icmp ne ptr %197, null
  br i1 %tobool166, label %if.then167, label %if.end241

if.then167:                                       ; preds = %land.lhs.true
  %198 = load ptr, ptr %psy_look, align 8
  %199 = load ptr, ptr %noise, align 8
  %200 = load ptr, ptr %tone, align 8
  %201 = load ptr, ptr %logmask, align 8
  call void @_vp_offset_and_mix(ptr noundef %198, ptr noundef %199, ptr noundef %200, i32 noundef 2, ptr noundef %201)
  %202 = load ptr, ptr %vb.addr, align 8
  %203 = load ptr, ptr %b, align 8
  %flr168 = getelementptr inbounds nuw %struct.private_state, ptr %203, i32 0, i32 5
  %204 = load ptr, ptr %flr168, align 8
  %205 = load ptr, ptr %info, align 8
  %floorsubmap169 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %205, i32 0, i32 2
  %206 = load i32, ptr %submap, align 4
  %idxprom170 = sext i32 %206 to i64
  %arrayidx171 = getelementptr inbounds [16 x i32], ptr %floorsubmap169, i64 0, i64 %idxprom170
  %207 = load i32, ptr %arrayidx171, align 4
  %idxprom172 = sext i32 %207 to i64
  %arrayidx173 = getelementptr inbounds ptr, ptr %204, i64 %idxprom172
  %208 = load ptr, ptr %arrayidx173, align 8
  %209 = load ptr, ptr %logmdct, align 8
  %210 = load ptr, ptr %logmask, align 8
  %call174 = call ptr @floor1_fit(ptr noundef %202, ptr noundef %208, ptr noundef %209, ptr noundef %210)
  %211 = load ptr, ptr %floor_posts, align 8
  %212 = load i32, ptr %i, align 4
  %idxprom175 = sext i32 %212 to i64
  %arrayidx176 = getelementptr inbounds ptr, ptr %211, i64 %idxprom175
  %213 = load ptr, ptr %arrayidx176, align 8
  %arrayidx177 = getelementptr inbounds ptr, ptr %213, i64 14
  store ptr %call174, ptr %arrayidx177, align 8
  %214 = load ptr, ptr %psy_look, align 8
  %215 = load ptr, ptr %noise, align 8
  %216 = load ptr, ptr %tone, align 8
  %217 = load ptr, ptr %logmask, align 8
  call void @_vp_offset_and_mix(ptr noundef %214, ptr noundef %215, ptr noundef %216, i32 noundef 0, ptr noundef %217)
  %218 = load ptr, ptr %vb.addr, align 8
  %219 = load ptr, ptr %b, align 8
  %flr178 = getelementptr inbounds nuw %struct.private_state, ptr %219, i32 0, i32 5
  %220 = load ptr, ptr %flr178, align 8
  %221 = load ptr, ptr %info, align 8
  %floorsubmap179 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %221, i32 0, i32 2
  %222 = load i32, ptr %submap, align 4
  %idxprom180 = sext i32 %222 to i64
  %arrayidx181 = getelementptr inbounds [16 x i32], ptr %floorsubmap179, i64 0, i64 %idxprom180
  %223 = load i32, ptr %arrayidx181, align 4
  %idxprom182 = sext i32 %223 to i64
  %arrayidx183 = getelementptr inbounds ptr, ptr %220, i64 %idxprom182
  %224 = load ptr, ptr %arrayidx183, align 8
  %225 = load ptr, ptr %logmdct, align 8
  %226 = load ptr, ptr %logmask, align 8
  %call184 = call ptr @floor1_fit(ptr noundef %218, ptr noundef %224, ptr noundef %225, ptr noundef %226)
  %227 = load ptr, ptr %floor_posts, align 8
  %228 = load i32, ptr %i, align 4
  %idxprom185 = sext i32 %228 to i64
  %arrayidx186 = getelementptr inbounds ptr, ptr %227, i64 %idxprom185
  %229 = load ptr, ptr %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds ptr, ptr %229, i64 0
  store ptr %call184, ptr %arrayidx187, align 8
  store i32 1, ptr %k, align 4
  br label %for.cond188

for.cond188:                                      ; preds = %for.inc211, %if.then167
  %230 = load i32, ptr %k, align 4
  %cmp189 = icmp slt i32 %230, 7
  br i1 %cmp189, label %for.body191, label %for.end213

for.body191:                                      ; preds = %for.cond188
  %231 = load ptr, ptr %vb.addr, align 8
  %232 = load ptr, ptr %b, align 8
  %flr192 = getelementptr inbounds nuw %struct.private_state, ptr %232, i32 0, i32 5
  %233 = load ptr, ptr %flr192, align 8
  %234 = load ptr, ptr %info, align 8
  %floorsubmap193 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %234, i32 0, i32 2
  %235 = load i32, ptr %submap, align 4
  %idxprom194 = sext i32 %235 to i64
  %arrayidx195 = getelementptr inbounds [16 x i32], ptr %floorsubmap193, i64 0, i64 %idxprom194
  %236 = load i32, ptr %arrayidx195, align 4
  %idxprom196 = sext i32 %236 to i64
  %arrayidx197 = getelementptr inbounds ptr, ptr %233, i64 %idxprom196
  %237 = load ptr, ptr %arrayidx197, align 8
  %238 = load ptr, ptr %floor_posts, align 8
  %239 = load i32, ptr %i, align 4
  %idxprom198 = sext i32 %239 to i64
  %arrayidx199 = getelementptr inbounds ptr, ptr %238, i64 %idxprom198
  %240 = load ptr, ptr %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds ptr, ptr %240, i64 0
  %241 = load ptr, ptr %arrayidx200, align 8
  %242 = load ptr, ptr %floor_posts, align 8
  %243 = load i32, ptr %i, align 4
  %idxprom201 = sext i32 %243 to i64
  %arrayidx202 = getelementptr inbounds ptr, ptr %242, i64 %idxprom201
  %244 = load ptr, ptr %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds ptr, ptr %244, i64 7
  %245 = load ptr, ptr %arrayidx203, align 8
  %246 = load i32, ptr %k, align 4
  %mul204 = mul nsw i32 %246, 65536
  %div205 = sdiv i32 %mul204, 7
  %call206 = call ptr @floor1_interpolate_fit(ptr noundef %231, ptr noundef %237, ptr noundef %241, ptr noundef %245, i32 noundef %div205)
  %247 = load ptr, ptr %floor_posts, align 8
  %248 = load i32, ptr %i, align 4
  %idxprom207 = sext i32 %248 to i64
  %arrayidx208 = getelementptr inbounds ptr, ptr %247, i64 %idxprom207
  %249 = load ptr, ptr %arrayidx208, align 8
  %250 = load i32, ptr %k, align 4
  %idxprom209 = sext i32 %250 to i64
  %arrayidx210 = getelementptr inbounds ptr, ptr %249, i64 %idxprom209
  store ptr %call206, ptr %arrayidx210, align 8
  br label %for.inc211

for.inc211:                                       ; preds = %for.body191
  %251 = load i32, ptr %k, align 4
  %inc212 = add nsw i32 %251, 1
  store i32 %inc212, ptr %k, align 4
  br label %for.cond188, !llvm.loop !10

for.end213:                                       ; preds = %for.cond188
  store i32 8, ptr %k, align 4
  br label %for.cond214

for.cond214:                                      ; preds = %for.inc238, %for.end213
  %252 = load i32, ptr %k, align 4
  %cmp215 = icmp slt i32 %252, 14
  br i1 %cmp215, label %for.body217, label %for.end240

for.body217:                                      ; preds = %for.cond214
  %253 = load ptr, ptr %vb.addr, align 8
  %254 = load ptr, ptr %b, align 8
  %flr218 = getelementptr inbounds nuw %struct.private_state, ptr %254, i32 0, i32 5
  %255 = load ptr, ptr %flr218, align 8
  %256 = load ptr, ptr %info, align 8
  %floorsubmap219 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %256, i32 0, i32 2
  %257 = load i32, ptr %submap, align 4
  %idxprom220 = sext i32 %257 to i64
  %arrayidx221 = getelementptr inbounds [16 x i32], ptr %floorsubmap219, i64 0, i64 %idxprom220
  %258 = load i32, ptr %arrayidx221, align 4
  %idxprom222 = sext i32 %258 to i64
  %arrayidx223 = getelementptr inbounds ptr, ptr %255, i64 %idxprom222
  %259 = load ptr, ptr %arrayidx223, align 8
  %260 = load ptr, ptr %floor_posts, align 8
  %261 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %261 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %260, i64 %idxprom224
  %262 = load ptr, ptr %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds ptr, ptr %262, i64 7
  %263 = load ptr, ptr %arrayidx226, align 8
  %264 = load ptr, ptr %floor_posts, align 8
  %265 = load i32, ptr %i, align 4
  %idxprom227 = sext i32 %265 to i64
  %arrayidx228 = getelementptr inbounds ptr, ptr %264, i64 %idxprom227
  %266 = load ptr, ptr %arrayidx228, align 8
  %arrayidx229 = getelementptr inbounds ptr, ptr %266, i64 14
  %267 = load ptr, ptr %arrayidx229, align 8
  %268 = load i32, ptr %k, align 4
  %sub230 = sub nsw i32 %268, 7
  %mul231 = mul nsw i32 %sub230, 65536
  %div232 = sdiv i32 %mul231, 7
  %call233 = call ptr @floor1_interpolate_fit(ptr noundef %253, ptr noundef %259, ptr noundef %263, ptr noundef %267, i32 noundef %div232)
  %269 = load ptr, ptr %floor_posts, align 8
  %270 = load i32, ptr %i, align 4
  %idxprom234 = sext i32 %270 to i64
  %arrayidx235 = getelementptr inbounds ptr, ptr %269, i64 %idxprom234
  %271 = load ptr, ptr %arrayidx235, align 8
  %272 = load i32, ptr %k, align 4
  %idxprom236 = sext i32 %272 to i64
  %arrayidx237 = getelementptr inbounds ptr, ptr %271, i64 %idxprom236
  store ptr %call233, ptr %arrayidx237, align 8
  br label %for.inc238

for.inc238:                                       ; preds = %for.body217
  %273 = load i32, ptr %k, align 4
  %inc239 = add nsw i32 %273, 1
  store i32 %inc239, ptr %k, align 4
  br label %for.cond214, !llvm.loop !11

for.end240:                                       ; preds = %for.cond214
  br label %if.end241

if.end241:                                        ; preds = %for.end240, %land.lhs.true, %if.end151
  br label %for.inc242

for.inc242:                                       ; preds = %if.end241
  %274 = load i32, ptr %i, align 4
  %inc243 = add nsw i32 %274, 1
  store i32 %inc243, ptr %i, align 4
  br label %for.cond107, !llvm.loop !12

for.end244:                                       ; preds = %for.cond107
  %275 = load float, ptr %global_ampmax, align 4
  %276 = load ptr, ptr %vbi, align 8
  %ampmax245 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %276, i32 0, i32 1
  store float %275, ptr %ampmax245, align 8
  %277 = load ptr, ptr %vi, align 8
  %channels246 = getelementptr inbounds nuw %struct.vorbis_info, ptr %277, i32 0, i32 1
  %278 = load i32, ptr %channels246, align 4
  %conv247 = sext i32 %278 to i64
  %mul248 = mul i64 8, %conv247
  %279 = alloca i8, i64 %mul248, align 16
  store ptr %279, ptr %res_bundle, align 8
  %280 = load ptr, ptr %vi, align 8
  %channels249 = getelementptr inbounds nuw %struct.vorbis_info, ptr %280, i32 0, i32 1
  %281 = load i32, ptr %channels249, align 4
  %conv250 = sext i32 %281 to i64
  %mul251 = mul i64 8, %conv250
  %282 = alloca i8, i64 %mul251, align 16
  store ptr %282, ptr %couple_bundle, align 8
  %283 = load ptr, ptr %vi, align 8
  %channels252 = getelementptr inbounds nuw %struct.vorbis_info, ptr %283, i32 0, i32 1
  %284 = load i32, ptr %channels252, align 4
  %conv253 = sext i32 %284 to i64
  %mul254 = mul i64 4, %conv253
  %285 = alloca i8, i64 %mul254, align 16
  store ptr %285, ptr %zerobundle, align 8
  %286 = load ptr, ptr %vi, align 8
  %channels255 = getelementptr inbounds nuw %struct.vorbis_info, ptr %286, i32 0, i32 1
  %287 = load i32, ptr %channels255, align 4
  %conv256 = sext i32 %287 to i64
  %mul257 = mul i64 8, %conv256
  %288 = alloca i8, i64 %mul257, align 16
  store ptr %288, ptr %sortindex, align 8
  %289 = load ptr, ptr %info, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %289, i32 0, i32 4
  %290 = load i32, ptr %coupling_steps, align 4
  %tobool258 = icmp ne i32 %290, 0
  br i1 %tobool258, label %if.then259, label %if.end262

if.then259:                                       ; preds = %for.end244
  %291 = load ptr, ptr %vb.addr, align 8
  %292 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %292, i32 0, i32 17
  %293 = load ptr, ptr %psy_look, align 8
  %294 = load ptr, ptr %info, align 8
  %295 = load ptr, ptr %gmdct, align 8
  %call260 = call ptr @_vp_quantize_couple_memo(ptr noundef %291, ptr noundef %psy_g_param, ptr noundef %293, ptr noundef %294, ptr noundef %295)
  store ptr %call260, ptr %mag_memo, align 8
  %296 = load ptr, ptr %vb.addr, align 8
  %297 = load ptr, ptr %psy_look, align 8
  %298 = load ptr, ptr %info, align 8
  %299 = load ptr, ptr %mag_memo, align 8
  %call261 = call ptr @_vp_quantize_couple_sort(ptr noundef %296, ptr noundef %297, ptr noundef %298, ptr noundef %299)
  store ptr %call261, ptr %mag_sort, align 8
  br label %if.end262

if.end262:                                        ; preds = %if.then259, %for.end244
  %300 = load ptr, ptr %sortindex, align 8
  %301 = load ptr, ptr %vi, align 8
  %channels263 = getelementptr inbounds nuw %struct.vorbis_info, ptr %301, i32 0, i32 1
  %302 = load i32, ptr %channels263, align 4
  %conv264 = sext i32 %302 to i64
  %mul265 = mul i64 8, %conv264
  call void @llvm.memset.p0.i64(ptr align 8 %300, i8 0, i64 %mul265, i1 false)
  %303 = load ptr, ptr %psy_look, align 8
  %vi266 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %303, i32 0, i32 1
  %304 = load ptr, ptr %vi266, align 8
  %normal_channel_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %304, i32 0, i32 18
  %305 = load i32, ptr %normal_channel_p, align 4
  %tobool267 = icmp ne i32 %305, 0
  br i1 %tobool267, label %if.then268, label %if.end287

if.then268:                                       ; preds = %if.end262
  store i32 0, ptr %i, align 4
  br label %for.cond269

for.cond269:                                      ; preds = %for.inc284, %if.then268
  %306 = load i32, ptr %i, align 4
  %307 = load ptr, ptr %vi, align 8
  %channels270 = getelementptr inbounds nuw %struct.vorbis_info, ptr %307, i32 0, i32 1
  %308 = load i32, ptr %channels270, align 4
  %cmp271 = icmp slt i32 %306, %308
  br i1 %cmp271, label %for.body273, label %for.end286

for.body273:                                      ; preds = %for.cond269
  %309 = load ptr, ptr %gmdct, align 8
  %310 = load i32, ptr %i, align 4
  %idxprom275 = sext i32 %310 to i64
  %arrayidx276 = getelementptr inbounds ptr, ptr %309, i64 %idxprom275
  %311 = load ptr, ptr %arrayidx276, align 8
  store ptr %311, ptr %mdct274, align 8
  %312 = load i32, ptr %n, align 4
  %conv277 = sext i32 %312 to i64
  %mul278 = mul i64 4, %conv277
  %div279 = udiv i64 %mul278, 2
  %313 = alloca i8, i64 %div279, align 16
  %314 = load ptr, ptr %sortindex, align 8
  %315 = load i32, ptr %i, align 4
  %idxprom280 = sext i32 %315 to i64
  %arrayidx281 = getelementptr inbounds ptr, ptr %314, i64 %idxprom280
  store ptr %313, ptr %arrayidx281, align 8
  %316 = load ptr, ptr %psy_look, align 8
  %317 = load ptr, ptr %mdct274, align 8
  %318 = load ptr, ptr %sortindex, align 8
  %319 = load i32, ptr %i, align 4
  %idxprom282 = sext i32 %319 to i64
  %arrayidx283 = getelementptr inbounds ptr, ptr %318, i64 %idxprom282
  %320 = load ptr, ptr %arrayidx283, align 8
  call void @_vp_noise_normalize_sort(ptr noundef %316, ptr noundef %317, ptr noundef %320)
  br label %for.inc284

for.inc284:                                       ; preds = %for.body273
  %321 = load i32, ptr %i, align 4
  %inc285 = add nsw i32 %321, 1
  store i32 %inc285, ptr %i, align 4
  br label %for.cond269, !llvm.loop !13

for.end286:                                       ; preds = %for.cond269
  br label %if.end287

if.end287:                                        ; preds = %for.end286, %if.end262
  %322 = load ptr, ptr %vb.addr, align 8
  %call288 = call i32 @vorbis_bitrate_managed(ptr noundef %322)
  %tobool289 = icmp ne i32 %call288, 0
  %323 = zext i1 %tobool289 to i64
  %cond290 = select i1 %tobool289, i32 0, i32 7
  store i32 %cond290, ptr %k, align 4
  br label %for.cond291

for.cond291:                                      ; preds = %for.inc436, %if.end287
  %324 = load i32, ptr %k, align 4
  %325 = load ptr, ptr %vb.addr, align 8
  %call292 = call i32 @vorbis_bitrate_managed(ptr noundef %325)
  %tobool293 = icmp ne i32 %call292, 0
  %326 = zext i1 %tobool293 to i64
  %cond294 = select i1 %tobool293, i32 14, i32 7
  %cmp295 = icmp sle i32 %324, %cond294
  br i1 %cmp295, label %for.body297, label %for.end438

for.body297:                                      ; preds = %for.cond291
  %327 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %327, i32 0, i32 1
  call void @oggpack_write(ptr noundef %opb, i64 noundef 0, i32 noundef 1)
  %328 = load ptr, ptr %vb.addr, align 8
  %opb298 = getelementptr inbounds nuw %struct.vorbis_block, ptr %328, i32 0, i32 1
  %329 = load i32, ptr %modenumber, align 4
  %conv299 = sext i32 %329 to i64
  %330 = load ptr, ptr %b, align 8
  %modebits = getelementptr inbounds nuw %struct.private_state, ptr %330, i32 0, i32 4
  %331 = load i32, ptr %modebits, align 8
  call void @oggpack_write(ptr noundef %opb298, i64 noundef %conv299, i32 noundef %331)
  %332 = load ptr, ptr %vb.addr, align 8
  %W300 = getelementptr inbounds nuw %struct.vorbis_block, ptr %332, i32 0, i32 3
  %333 = load i64, ptr %W300, align 8
  %tobool301 = icmp ne i64 %333, 0
  br i1 %tobool301, label %if.then302, label %if.end307

if.then302:                                       ; preds = %for.body297
  %334 = load ptr, ptr %vb.addr, align 8
  %opb303 = getelementptr inbounds nuw %struct.vorbis_block, ptr %334, i32 0, i32 1
  %335 = load ptr, ptr %vb.addr, align 8
  %lW304 = getelementptr inbounds nuw %struct.vorbis_block, ptr %335, i32 0, i32 2
  %336 = load i64, ptr %lW304, align 8
  call void @oggpack_write(ptr noundef %opb303, i64 noundef %336, i32 noundef 1)
  %337 = load ptr, ptr %vb.addr, align 8
  %opb305 = getelementptr inbounds nuw %struct.vorbis_block, ptr %337, i32 0, i32 1
  %338 = load ptr, ptr %vb.addr, align 8
  %nW306 = getelementptr inbounds nuw %struct.vorbis_block, ptr %338, i32 0, i32 4
  %339 = load i64, ptr %nW306, align 8
  call void @oggpack_write(ptr noundef %opb305, i64 noundef %339, i32 noundef 1)
  br label %if.end307

if.end307:                                        ; preds = %if.then302, %for.body297
  store i32 0, ptr %i, align 4
  br label %for.cond308

for.cond308:                                      ; preds = %for.inc352, %if.end307
  %340 = load i32, ptr %i, align 4
  %341 = load ptr, ptr %vi, align 8
  %channels309 = getelementptr inbounds nuw %struct.vorbis_info, ptr %341, i32 0, i32 1
  %342 = load i32, ptr %channels309, align 4
  %cmp310 = icmp slt i32 %340, %342
  br i1 %cmp310, label %for.body312, label %for.end354

for.body312:                                      ; preds = %for.cond308
  %343 = load ptr, ptr %info, align 8
  %chmuxlist314 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %343, i32 0, i32 1
  %344 = load i32, ptr %i, align 4
  %idxprom315 = sext i32 %344 to i64
  %arrayidx316 = getelementptr inbounds [256 x i32], ptr %chmuxlist314, i64 0, i64 %idxprom315
  %345 = load i32, ptr %arrayidx316, align 4
  store i32 %345, ptr %submap313, align 4
  %346 = load ptr, ptr %gmdct, align 8
  %347 = load i32, ptr %i, align 4
  %idxprom318 = sext i32 %347 to i64
  %arrayidx319 = getelementptr inbounds ptr, ptr %346, i64 %idxprom318
  %348 = load ptr, ptr %arrayidx319, align 8
  store ptr %348, ptr %mdct317, align 8
  %349 = load ptr, ptr %vb.addr, align 8
  %pcm320 = getelementptr inbounds nuw %struct.vorbis_block, ptr %349, i32 0, i32 0
  %350 = load ptr, ptr %pcm320, align 8
  %351 = load i32, ptr %i, align 4
  %idxprom321 = sext i32 %351 to i64
  %arrayidx322 = getelementptr inbounds ptr, ptr %350, i64 %idxprom321
  %352 = load ptr, ptr %arrayidx322, align 8
  store ptr %352, ptr %res, align 8
  %353 = load ptr, ptr %vb.addr, align 8
  %354 = load i32, ptr %n, align 4
  %div323 = sdiv i32 %354, 2
  %conv324 = sext i32 %div323 to i64
  %mul325 = mul i64 %conv324, 4
  %call326 = call ptr @_vorbis_block_alloc(ptr noundef %353, i64 noundef %mul325)
  %355 = load ptr, ptr %ilogmaskch, align 8
  %356 = load i32, ptr %i, align 4
  %idxprom327 = sext i32 %356 to i64
  %arrayidx328 = getelementptr inbounds ptr, ptr %355, i64 %idxprom327
  store ptr %call326, ptr %arrayidx328, align 8
  store ptr %call326, ptr %ilogmask, align 8
  %357 = load ptr, ptr %vb.addr, align 8
  %358 = load ptr, ptr %b, align 8
  %flr329 = getelementptr inbounds nuw %struct.private_state, ptr %358, i32 0, i32 5
  %359 = load ptr, ptr %flr329, align 8
  %360 = load ptr, ptr %info, align 8
  %floorsubmap330 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %360, i32 0, i32 2
  %361 = load i32, ptr %submap313, align 4
  %idxprom331 = sext i32 %361 to i64
  %arrayidx332 = getelementptr inbounds [16 x i32], ptr %floorsubmap330, i64 0, i64 %idxprom331
  %362 = load i32, ptr %arrayidx332, align 4
  %idxprom333 = sext i32 %362 to i64
  %arrayidx334 = getelementptr inbounds ptr, ptr %359, i64 %idxprom333
  %363 = load ptr, ptr %arrayidx334, align 8
  %364 = load ptr, ptr %floor_posts, align 8
  %365 = load i32, ptr %i, align 4
  %idxprom335 = sext i32 %365 to i64
  %arrayidx336 = getelementptr inbounds ptr, ptr %364, i64 %idxprom335
  %366 = load ptr, ptr %arrayidx336, align 8
  %367 = load i32, ptr %k, align 4
  %idxprom337 = sext i32 %367 to i64
  %arrayidx338 = getelementptr inbounds ptr, ptr %366, i64 %idxprom337
  %368 = load ptr, ptr %arrayidx338, align 8
  %369 = load ptr, ptr %ilogmask, align 8
  %call339 = call i32 @floor1_encode(ptr noundef %357, ptr noundef %363, ptr noundef %368, ptr noundef %369)
  %370 = load ptr, ptr %nonzero, align 8
  %371 = load i32, ptr %i, align 4
  %idxprom340 = sext i32 %371 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %370, i64 %idxprom340
  store i32 %call339, ptr %arrayidx341, align 4
  %372 = load ptr, ptr %psy_look, align 8
  %373 = load ptr, ptr %mdct317, align 8
  %374 = load ptr, ptr %ilogmask, align 8
  %375 = load ptr, ptr %res, align 8
  %376 = load ptr, ptr %ci, align 8
  %psy_g_param342 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %376, i32 0, i32 17
  %sliding_lowpass = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %psy_g_param342, i32 0, i32 10
  %377 = load ptr, ptr %vb.addr, align 8
  %W343 = getelementptr inbounds nuw %struct.vorbis_block, ptr %377, i32 0, i32 3
  %378 = load i64, ptr %W343, align 8
  %arrayidx344 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass, i64 0, i64 %378
  %379 = load i32, ptr %k, align 4
  %idxprom345 = sext i32 %379 to i64
  %arrayidx346 = getelementptr inbounds [15 x i32], ptr %arrayidx344, i64 0, i64 %idxprom345
  %380 = load i32, ptr %arrayidx346, align 4
  call void @_vp_remove_floor(ptr noundef %372, ptr noundef %373, ptr noundef %374, ptr noundef %375, i32 noundef %380)
  %381 = load ptr, ptr %psy_look, align 8
  %382 = load ptr, ptr %res, align 8
  %383 = load ptr, ptr %res, align 8
  %384 = load i32, ptr %n, align 4
  %div347 = sdiv i32 %384, 2
  %idx.ext348 = sext i32 %div347 to i64
  %add.ptr349 = getelementptr inbounds float, ptr %383, i64 %idx.ext348
  %385 = load ptr, ptr %sortindex, align 8
  %386 = load i32, ptr %i, align 4
  %idxprom350 = sext i32 %386 to i64
  %arrayidx351 = getelementptr inbounds ptr, ptr %385, i64 %idxprom350
  %387 = load ptr, ptr %arrayidx351, align 8
  call void @_vp_noise_normalize(ptr noundef %381, ptr noundef %382, ptr noundef %add.ptr349, ptr noundef %387)
  br label %for.inc352

for.inc352:                                       ; preds = %for.body312
  %388 = load i32, ptr %i, align 4
  %inc353 = add nsw i32 %388, 1
  store i32 %inc353, ptr %i, align 4
  br label %for.cond308, !llvm.loop !14

for.end354:                                       ; preds = %for.cond308
  %389 = load ptr, ptr %info, align 8
  %coupling_steps355 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %389, i32 0, i32 4
  %390 = load i32, ptr %coupling_steps355, align 4
  %tobool356 = icmp ne i32 %390, 0
  br i1 %tobool356, label %if.then357, label %if.end366

if.then357:                                       ; preds = %for.end354
  %391 = load i32, ptr %k, align 4
  %392 = load ptr, ptr %ci, align 8
  %psy_g_param358 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %392, i32 0, i32 17
  %393 = load ptr, ptr %psy_look, align 8
  %394 = load ptr, ptr %info, align 8
  %395 = load ptr, ptr %vb.addr, align 8
  %pcm359 = getelementptr inbounds nuw %struct.vorbis_block, ptr %395, i32 0, i32 0
  %396 = load ptr, ptr %pcm359, align 8
  %397 = load ptr, ptr %mag_memo, align 8
  %398 = load ptr, ptr %mag_sort, align 8
  %399 = load ptr, ptr %ilogmaskch, align 8
  %400 = load ptr, ptr %nonzero, align 8
  %401 = load ptr, ptr %ci, align 8
  %psy_g_param360 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %401, i32 0, i32 17
  %sliding_lowpass361 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %psy_g_param360, i32 0, i32 10
  %402 = load ptr, ptr %vb.addr, align 8
  %W362 = getelementptr inbounds nuw %struct.vorbis_block, ptr %402, i32 0, i32 3
  %403 = load i64, ptr %W362, align 8
  %arrayidx363 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass361, i64 0, i64 %403
  %404 = load i32, ptr %k, align 4
  %idxprom364 = sext i32 %404 to i64
  %arrayidx365 = getelementptr inbounds [15 x i32], ptr %arrayidx363, i64 0, i64 %idxprom364
  %405 = load i32, ptr %arrayidx365, align 4
  call void @_vp_couple(i32 noundef %391, ptr noundef %psy_g_param358, ptr noundef %393, ptr noundef %394, ptr noundef %396, ptr noundef %397, ptr noundef %398, ptr noundef %399, ptr noundef %400, i32 noundef %405)
  br label %if.end366

if.end366:                                        ; preds = %if.then357, %for.end354
  store i32 0, ptr %i, align 4
  br label %for.cond367

for.cond367:                                      ; preds = %for.inc427, %if.end366
  %406 = load i32, ptr %i, align 4
  %407 = load ptr, ptr %info, align 8
  %submaps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %407, i32 0, i32 0
  %408 = load i32, ptr %submaps, align 4
  %cmp368 = icmp slt i32 %406, %408
  br i1 %cmp368, label %for.body370, label %for.end429

for.body370:                                      ; preds = %for.cond367
  store i32 0, ptr %ch_in_bundle, align 4
  %409 = load ptr, ptr %info, align 8
  %residuesubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %409, i32 0, i32 3
  %410 = load i32, ptr %i, align 4
  %idxprom371 = sext i32 %410 to i64
  %arrayidx372 = getelementptr inbounds [16 x i32], ptr %residuesubmap, i64 0, i64 %idxprom371
  %411 = load i32, ptr %arrayidx372, align 4
  store i32 %411, ptr %resnum, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond373

for.cond373:                                      ; preds = %for.inc408, %for.body370
  %412 = load i32, ptr %j, align 4
  %413 = load ptr, ptr %vi, align 8
  %channels374 = getelementptr inbounds nuw %struct.vorbis_info, ptr %413, i32 0, i32 1
  %414 = load i32, ptr %channels374, align 4
  %cmp375 = icmp slt i32 %412, %414
  br i1 %cmp375, label %for.body377, label %for.end410

for.body377:                                      ; preds = %for.cond373
  %415 = load ptr, ptr %info, align 8
  %chmuxlist378 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %415, i32 0, i32 1
  %416 = load i32, ptr %j, align 4
  %idxprom379 = sext i32 %416 to i64
  %arrayidx380 = getelementptr inbounds [256 x i32], ptr %chmuxlist378, i64 0, i64 %idxprom379
  %417 = load i32, ptr %arrayidx380, align 4
  %418 = load i32, ptr %i, align 4
  %cmp381 = icmp eq i32 %417, %418
  br i1 %cmp381, label %if.then383, label %if.end407

if.then383:                                       ; preds = %for.body377
  %419 = load ptr, ptr %zerobundle, align 8
  %420 = load i32, ptr %ch_in_bundle, align 4
  %idxprom384 = sext i32 %420 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %419, i64 %idxprom384
  store i32 0, ptr %arrayidx385, align 4
  %421 = load ptr, ptr %nonzero, align 8
  %422 = load i32, ptr %j, align 4
  %idxprom386 = sext i32 %422 to i64
  %arrayidx387 = getelementptr inbounds i32, ptr %421, i64 %idxprom386
  %423 = load i32, ptr %arrayidx387, align 4
  %tobool388 = icmp ne i32 %423, 0
  br i1 %tobool388, label %if.then389, label %if.end392

if.then389:                                       ; preds = %if.then383
  %424 = load ptr, ptr %zerobundle, align 8
  %425 = load i32, ptr %ch_in_bundle, align 4
  %idxprom390 = sext i32 %425 to i64
  %arrayidx391 = getelementptr inbounds i32, ptr %424, i64 %idxprom390
  store i32 1, ptr %arrayidx391, align 4
  br label %if.end392

if.end392:                                        ; preds = %if.then389, %if.then383
  %426 = load ptr, ptr %vb.addr, align 8
  %pcm393 = getelementptr inbounds nuw %struct.vorbis_block, ptr %426, i32 0, i32 0
  %427 = load ptr, ptr %pcm393, align 8
  %428 = load i32, ptr %j, align 4
  %idxprom394 = sext i32 %428 to i64
  %arrayidx395 = getelementptr inbounds ptr, ptr %427, i64 %idxprom394
  %429 = load ptr, ptr %arrayidx395, align 8
  %430 = load ptr, ptr %res_bundle, align 8
  %431 = load i32, ptr %ch_in_bundle, align 4
  %idxprom396 = sext i32 %431 to i64
  %arrayidx397 = getelementptr inbounds ptr, ptr %430, i64 %idxprom396
  store ptr %429, ptr %arrayidx397, align 8
  %432 = load ptr, ptr %vb.addr, align 8
  %pcm398 = getelementptr inbounds nuw %struct.vorbis_block, ptr %432, i32 0, i32 0
  %433 = load ptr, ptr %pcm398, align 8
  %434 = load i32, ptr %j, align 4
  %idxprom399 = sext i32 %434 to i64
  %arrayidx400 = getelementptr inbounds ptr, ptr %433, i64 %idxprom399
  %435 = load ptr, ptr %arrayidx400, align 8
  %436 = load i32, ptr %n, align 4
  %div401 = sdiv i32 %436, 2
  %idx.ext402 = sext i32 %div401 to i64
  %add.ptr403 = getelementptr inbounds float, ptr %435, i64 %idx.ext402
  %437 = load ptr, ptr %couple_bundle, align 8
  %438 = load i32, ptr %ch_in_bundle, align 4
  %inc404 = add nsw i32 %438, 1
  store i32 %inc404, ptr %ch_in_bundle, align 4
  %idxprom405 = sext i32 %438 to i64
  %arrayidx406 = getelementptr inbounds ptr, ptr %437, i64 %idxprom405
  store ptr %add.ptr403, ptr %arrayidx406, align 8
  br label %if.end407

if.end407:                                        ; preds = %if.end392, %for.body377
  br label %for.inc408

for.inc408:                                       ; preds = %if.end407
  %439 = load i32, ptr %j, align 4
  %inc409 = add nsw i32 %439, 1
  store i32 %inc409, ptr %j, align 4
  br label %for.cond373, !llvm.loop !15

for.end410:                                       ; preds = %for.cond373
  %440 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %440, i32 0, i32 12
  %441 = load i32, ptr %resnum, align 4
  %idxprom411 = sext i32 %441 to i64
  %arrayidx412 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom411
  %442 = load i32, ptr %arrayidx412, align 4
  %idxprom413 = sext i32 %442 to i64
  %arrayidx414 = getelementptr inbounds [3 x ptr], ptr @_residue_P, i64 0, i64 %idxprom413
  %443 = load ptr, ptr %arrayidx414, align 8
  %class = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %443, i32 0, i32 5
  %444 = load ptr, ptr %class, align 8
  %445 = load ptr, ptr %vb.addr, align 8
  %446 = load ptr, ptr %b, align 8
  %residue = getelementptr inbounds nuw %struct.private_state, ptr %446, i32 0, i32 6
  %447 = load ptr, ptr %residue, align 8
  %448 = load i32, ptr %resnum, align 4
  %idxprom415 = sext i32 %448 to i64
  %arrayidx416 = getelementptr inbounds ptr, ptr %447, i64 %idxprom415
  %449 = load ptr, ptr %arrayidx416, align 8
  %450 = load ptr, ptr %couple_bundle, align 8
  %451 = load ptr, ptr %zerobundle, align 8
  %452 = load i32, ptr %ch_in_bundle, align 4
  %call417 = call ptr %444(ptr noundef %445, ptr noundef %449, ptr noundef %450, ptr noundef %451, i32 noundef %452)
  store ptr %call417, ptr %classifications, align 8
  %453 = load ptr, ptr %ci, align 8
  %residue_type418 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %453, i32 0, i32 12
  %454 = load i32, ptr %resnum, align 4
  %idxprom419 = sext i32 %454 to i64
  %arrayidx420 = getelementptr inbounds [64 x i32], ptr %residue_type418, i64 0, i64 %idxprom419
  %455 = load i32, ptr %arrayidx420, align 4
  %idxprom421 = sext i32 %455 to i64
  %arrayidx422 = getelementptr inbounds [3 x ptr], ptr @_residue_P, i64 0, i64 %idxprom421
  %456 = load ptr, ptr %arrayidx422, align 8
  %forward = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %456, i32 0, i32 6
  %457 = load ptr, ptr %forward, align 8
  %458 = load ptr, ptr %vb.addr, align 8
  %459 = load ptr, ptr %b, align 8
  %residue423 = getelementptr inbounds nuw %struct.private_state, ptr %459, i32 0, i32 6
  %460 = load ptr, ptr %residue423, align 8
  %461 = load i32, ptr %resnum, align 4
  %idxprom424 = sext i32 %461 to i64
  %arrayidx425 = getelementptr inbounds ptr, ptr %460, i64 %idxprom424
  %462 = load ptr, ptr %arrayidx425, align 8
  %463 = load ptr, ptr %couple_bundle, align 8
  %464 = load ptr, ptr %zerobundle, align 8
  %465 = load i32, ptr %ch_in_bundle, align 4
  %466 = load ptr, ptr %classifications, align 8
  %call426 = call i32 %457(ptr noundef %458, ptr noundef %462, ptr noundef %463, ptr noundef null, ptr noundef %464, i32 noundef %465, ptr noundef %466)
  br label %for.inc427

for.inc427:                                       ; preds = %for.end410
  %467 = load i32, ptr %i, align 4
  %inc428 = add nsw i32 %467, 1
  store i32 %inc428, ptr %i, align 4
  br label %for.cond367, !llvm.loop !16

for.end429:                                       ; preds = %for.cond367
  %468 = load ptr, ptr %vb.addr, align 8
  %opb430 = getelementptr inbounds nuw %struct.vorbis_block, ptr %468, i32 0, i32 1
  call void @oggpack_writealign(ptr noundef %opb430)
  %469 = load ptr, ptr %vb.addr, align 8
  %opb431 = getelementptr inbounds nuw %struct.vorbis_block, ptr %469, i32 0, i32 1
  %call432 = call i64 @oggpack_bytes(ptr noundef %opb431)
  %conv433 = trunc i64 %call432 to i32
  %470 = load ptr, ptr %vbi, align 8
  %packetblob_markers = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %470, i32 0, i32 3
  %471 = load i32, ptr %k, align 4
  %idxprom434 = sext i32 %471 to i64
  %arrayidx435 = getelementptr inbounds [15 x i32], ptr %packetblob_markers, i64 0, i64 %idxprom434
  store i32 %conv433, ptr %arrayidx435, align 4
  br label %for.inc436

for.inc436:                                       ; preds = %for.end429
  %472 = load i32, ptr %k, align 4
  %inc437 = add nsw i32 %472, 1
  store i32 %inc437, ptr %k, align 4
  br label %for.cond291, !llvm.loop !17

for.end438:                                       ; preds = %for.cond291
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end438, %if.then150
  %473 = load i32, ptr %retval, align 4
  ret i32 %473
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writealign(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
