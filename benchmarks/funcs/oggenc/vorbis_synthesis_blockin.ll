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
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_blockin(ptr noundef %v, ptr noundef %vb) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %hs = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %thisCenter = alloca i32, align 4
  %prevCenter = alloca i32, align 4
  %w = alloca ptr, align 8
  %pcm52 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %w76 = alloca ptr, align 8
  %pcm81 = alloca ptr, align 8
  %p92 = alloca ptr, align 8
  %w121 = alloca ptr, align 8
  %pcm126 = alloca ptr, align 8
  %p132 = alloca ptr, align 8
  %w178 = alloca ptr, align 8
  %pcm183 = alloca ptr, align 8
  %p189 = alloca ptr, align 8
  %pcm215 = alloca ptr, align 8
  %p221 = alloca ptr, align 8
  %extra = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  %4 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %backend_state, align 8
  store ptr %5, ptr %b, align 8
  %6 = load ptr, ptr %ci, align 8
  %halfrate_flag = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 20
  %7 = load i32, ptr %halfrate_flag, align 8
  store i32 %7, ptr %hs, align 4
  %8 = load ptr, ptr %vb.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %pcm_current, align 4
  %11 = load ptr, ptr %v.addr, align 8
  %pcm_returned = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %pcm_returned, align 8
  %cmp = icmp sgt i32 %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %v.addr, align 8
  %pcm_returned2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %pcm_returned2, align 8
  %cmp3 = icmp ne i32 %14, -1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 -131, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %15 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %15, i32 0, i32 10
  %16 = load i64, ptr %W, align 8
  %17 = load ptr, ptr %v.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %17, i32 0, i32 9
  store i64 %16, ptr %lW, align 8
  %18 = load ptr, ptr %vb.addr, align 8
  %W6 = getelementptr inbounds nuw %struct.vorbis_block, ptr %18, i32 0, i32 3
  %19 = load i64, ptr %W6, align 8
  %20 = load ptr, ptr %v.addr, align 8
  %W7 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %20, i32 0, i32 10
  store i64 %19, ptr %W7, align 8
  %21 = load ptr, ptr %v.addr, align 8
  %nW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %21, i32 0, i32 11
  store i64 -1, ptr %nW, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 14
  %23 = load i64, ptr %sequence, align 8
  %cmp8 = icmp eq i64 %23, -1
  br i1 %cmp8, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %24 = load ptr, ptr %v.addr, align 8
  %sequence9 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %24, i32 0, i32 14
  %25 = load i64, ptr %sequence9, align 8
  %add = add nsw i64 %25, 1
  %26 = load ptr, ptr %vb.addr, align 8
  %sequence10 = getelementptr inbounds nuw %struct.vorbis_block, ptr %26, i32 0, i32 9
  %27 = load i64, ptr %sequence10, align 8
  %cmp11 = icmp ne i64 %add, %27
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.lhs.false, %if.end5
  %28 = load ptr, ptr %v.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %28, i32 0, i32 13
  store i64 -1, ptr %granulepos, align 8
  %29 = load ptr, ptr %b, align 8
  %sample_count = getelementptr inbounds nuw %struct.private_state, ptr %29, i32 0, i32 13
  store i64 -1, ptr %sample_count, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %30 = load ptr, ptr %vb.addr, align 8
  %sequence14 = getelementptr inbounds nuw %struct.vorbis_block, ptr %30, i32 0, i32 9
  %31 = load i64, ptr %sequence14, align 8
  %32 = load ptr, ptr %v.addr, align 8
  %sequence15 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %32, i32 0, i32 14
  store i64 %31, ptr %sequence15, align 8
  %33 = load ptr, ptr %vb.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_block, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pcm, align 8
  %tobool16 = icmp ne ptr %34, null
  br i1 %tobool16, label %if.then17, label %if.end273

if.then17:                                        ; preds = %if.end13
  %35 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %v.addr, align 8
  %W18 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %36, i32 0, i32 10
  %37 = load i64, ptr %W18, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %37
  %38 = load i64, ptr %arrayidx, align 8
  %39 = load i32, ptr %hs, align 4
  %add19 = add nsw i32 %39, 1
  %sh_prom = zext i32 %add19 to i64
  %shr = ashr i64 %38, %sh_prom
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %n, align 4
  %40 = load ptr, ptr %ci, align 8
  %blocksizes20 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %40, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %blocksizes20, i64 0, i64 0
  %41 = load i64, ptr %arrayidx21, align 8
  %42 = load i32, ptr %hs, align 4
  %add22 = add nsw i32 %42, 1
  %sh_prom23 = zext i32 %add22 to i64
  %shr24 = ashr i64 %41, %sh_prom23
  %conv25 = trunc i64 %shr24 to i32
  store i32 %conv25, ptr %n0, align 4
  %43 = load ptr, ptr %ci, align 8
  %blocksizes26 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %43, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [2 x i64], ptr %blocksizes26, i64 0, i64 1
  %44 = load i64, ptr %arrayidx27, align 8
  %45 = load i32, ptr %hs, align 4
  %add28 = add nsw i32 %45, 1
  %sh_prom29 = zext i32 %add28 to i64
  %shr30 = ashr i64 %44, %sh_prom29
  %conv31 = trunc i64 %shr30 to i32
  store i32 %conv31, ptr %n1, align 4
  %46 = load ptr, ptr %vb.addr, align 8
  %glue_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %46, i32 0, i32 16
  %47 = load i64, ptr %glue_bits, align 8
  %48 = load ptr, ptr %v.addr, align 8
  %glue_bits32 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %48, i32 0, i32 15
  %49 = load i64, ptr %glue_bits32, align 8
  %add33 = add nsw i64 %49, %47
  store i64 %add33, ptr %glue_bits32, align 8
  %50 = load ptr, ptr %vb.addr, align 8
  %time_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %50, i32 0, i32 17
  %51 = load i64, ptr %time_bits, align 8
  %52 = load ptr, ptr %v.addr, align 8
  %time_bits34 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %52, i32 0, i32 16
  %53 = load i64, ptr %time_bits34, align 8
  %add35 = add nsw i64 %53, %51
  store i64 %add35, ptr %time_bits34, align 8
  %54 = load ptr, ptr %vb.addr, align 8
  %floor_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %54, i32 0, i32 18
  %55 = load i64, ptr %floor_bits, align 8
  %56 = load ptr, ptr %v.addr, align 8
  %floor_bits36 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %56, i32 0, i32 17
  %57 = load i64, ptr %floor_bits36, align 8
  %add37 = add nsw i64 %57, %55
  store i64 %add37, ptr %floor_bits36, align 8
  %58 = load ptr, ptr %vb.addr, align 8
  %res_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %58, i32 0, i32 19
  %59 = load i64, ptr %res_bits, align 8
  %60 = load ptr, ptr %v.addr, align 8
  %res_bits38 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %60, i32 0, i32 18
  %61 = load i64, ptr %res_bits38, align 8
  %add39 = add nsw i64 %61, %59
  store i64 %add39, ptr %res_bits38, align 8
  %62 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %62, i32 0, i32 12
  %63 = load i64, ptr %centerW, align 8
  %tobool40 = icmp ne i64 %63, 0
  br i1 %tobool40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then17
  %64 = load i32, ptr %n1, align 4
  store i32 %64, ptr %thisCenter, align 4
  store i32 0, ptr %prevCenter, align 4
  br label %if.end42

if.else:                                          ; preds = %if.then17
  store i32 0, ptr %thisCenter, align 4
  %65 = load i32, ptr %n1, align 4
  store i32 %65, ptr %prevCenter, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then41
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc238, %if.end42
  %66 = load i32, ptr %j, align 4
  %67 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %channels, align 4
  %cmp43 = icmp slt i32 %66, %68
  br i1 %cmp43, label %for.body, label %for.end240

for.body:                                         ; preds = %for.cond
  %69 = load ptr, ptr %v.addr, align 8
  %lW45 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %69, i32 0, i32 9
  %70 = load i64, ptr %lW45, align 8
  %tobool46 = icmp ne i64 %70, 0
  br i1 %tobool46, label %if.then47, label %if.else117

if.then47:                                        ; preds = %for.body
  %71 = load ptr, ptr %v.addr, align 8
  %W48 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %71, i32 0, i32 10
  %72 = load i64, ptr %W48, align 8
  %tobool49 = icmp ne i64 %72, 0
  br i1 %tobool49, label %if.then50, label %if.else75

if.then50:                                        ; preds = %if.then47
  %73 = load ptr, ptr %b, align 8
  %window = getelementptr inbounds nuw %struct.private_state, ptr %73, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [2 x i32], ptr %window, i64 0, i64 1
  %74 = load i32, ptr %arrayidx51, align 4
  %75 = load i32, ptr %hs, align 4
  %sub = sub nsw i32 %74, %75
  %call = call ptr @_vorbis_window_get(i32 noundef %sub)
  store ptr %call, ptr %w, align 8
  %76 = load ptr, ptr %v.addr, align 8
  %pcm53 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %pcm53, align 8
  %78 = load i32, ptr %j, align 4
  %idxprom = sext i32 %78 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %77, i64 %idxprom
  %79 = load ptr, ptr %arrayidx54, align 8
  %80 = load i32, ptr %prevCenter, align 4
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds float, ptr %79, i64 %idx.ext
  store ptr %add.ptr, ptr %pcm52, align 8
  %81 = load ptr, ptr %vb.addr, align 8
  %pcm55 = getelementptr inbounds nuw %struct.vorbis_block, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pcm55, align 8
  %83 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %83 to i64
  %arrayidx57 = getelementptr inbounds ptr, ptr %82, i64 %idxprom56
  %84 = load ptr, ptr %arrayidx57, align 8
  store ptr %84, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc, %if.then50
  %85 = load i32, ptr %i, align 4
  %86 = load i32, ptr %n1, align 4
  %cmp59 = icmp slt i32 %85, %86
  br i1 %cmp59, label %for.body61, label %for.end

for.body61:                                       ; preds = %for.cond58
  %87 = load ptr, ptr %pcm52, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %88 to i64
  %arrayidx63 = getelementptr inbounds float, ptr %87, i64 %idxprom62
  %89 = load float, ptr %arrayidx63, align 4
  %90 = load ptr, ptr %w, align 8
  %91 = load i32, ptr %n1, align 4
  %92 = load i32, ptr %i, align 4
  %sub64 = sub nsw i32 %91, %92
  %sub65 = sub nsw i32 %sub64, 1
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %90, i64 %idxprom66
  %93 = load float, ptr %arrayidx67, align 4
  %94 = load ptr, ptr %p, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %95 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %94, i64 %idxprom68
  %96 = load float, ptr %arrayidx69, align 4
  %97 = load ptr, ptr %w, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %98 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %97, i64 %idxprom70
  %99 = load float, ptr %arrayidx71, align 4
  %mul72 = fmul float %96, %99
  %100 = call float @llvm.fmuladd.f32(float %89, float %93, float %mul72)
  %101 = load ptr, ptr %pcm52, align 8
  %102 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %102 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %101, i64 %idxprom73
  store float %100, ptr %arrayidx74, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body61
  %103 = load i32, ptr %i, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond58, !llvm.loop !6

for.end:                                          ; preds = %for.cond58
  br label %if.end116

if.else75:                                        ; preds = %if.then47
  %104 = load ptr, ptr %b, align 8
  %window77 = getelementptr inbounds nuw %struct.private_state, ptr %104, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [2 x i32], ptr %window77, i64 0, i64 0
  %105 = load i32, ptr %arrayidx78, align 8
  %106 = load i32, ptr %hs, align 4
  %sub79 = sub nsw i32 %105, %106
  %call80 = call ptr @_vorbis_window_get(i32 noundef %sub79)
  store ptr %call80, ptr %w76, align 8
  %107 = load ptr, ptr %v.addr, align 8
  %pcm82 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %pcm82, align 8
  %109 = load i32, ptr %j, align 4
  %idxprom83 = sext i32 %109 to i64
  %arrayidx84 = getelementptr inbounds ptr, ptr %108, i64 %idxprom83
  %110 = load ptr, ptr %arrayidx84, align 8
  %111 = load i32, ptr %prevCenter, align 4
  %idx.ext85 = sext i32 %111 to i64
  %add.ptr86 = getelementptr inbounds float, ptr %110, i64 %idx.ext85
  %112 = load i32, ptr %n1, align 4
  %div = sdiv i32 %112, 2
  %idx.ext87 = sext i32 %div to i64
  %add.ptr88 = getelementptr inbounds float, ptr %add.ptr86, i64 %idx.ext87
  %113 = load i32, ptr %n0, align 4
  %div89 = sdiv i32 %113, 2
  %idx.ext90 = sext i32 %div89 to i64
  %idx.neg = sub i64 0, %idx.ext90
  %add.ptr91 = getelementptr inbounds float, ptr %add.ptr88, i64 %idx.neg
  store ptr %add.ptr91, ptr %pcm81, align 8
  %114 = load ptr, ptr %vb.addr, align 8
  %pcm93 = getelementptr inbounds nuw %struct.vorbis_block, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %pcm93, align 8
  %116 = load i32, ptr %j, align 4
  %idxprom94 = sext i32 %116 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %115, i64 %idxprom94
  %117 = load ptr, ptr %arrayidx95, align 8
  store ptr %117, ptr %p92, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc113, %if.else75
  %118 = load i32, ptr %i, align 4
  %119 = load i32, ptr %n0, align 4
  %cmp97 = icmp slt i32 %118, %119
  br i1 %cmp97, label %for.body99, label %for.end115

for.body99:                                       ; preds = %for.cond96
  %120 = load ptr, ptr %pcm81, align 8
  %121 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %121 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %120, i64 %idxprom100
  %122 = load float, ptr %arrayidx101, align 4
  %123 = load ptr, ptr %w76, align 8
  %124 = load i32, ptr %n0, align 4
  %125 = load i32, ptr %i, align 4
  %sub102 = sub nsw i32 %124, %125
  %sub103 = sub nsw i32 %sub102, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %123, i64 %idxprom104
  %126 = load float, ptr %arrayidx105, align 4
  %127 = load ptr, ptr %p92, align 8
  %128 = load i32, ptr %i, align 4
  %idxprom106 = sext i32 %128 to i64
  %arrayidx107 = getelementptr inbounds float, ptr %127, i64 %idxprom106
  %129 = load float, ptr %arrayidx107, align 4
  %130 = load ptr, ptr %w76, align 8
  %131 = load i32, ptr %i, align 4
  %idxprom108 = sext i32 %131 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %130, i64 %idxprom108
  %132 = load float, ptr %arrayidx109, align 4
  %mul110 = fmul float %129, %132
  %133 = call float @llvm.fmuladd.f32(float %122, float %126, float %mul110)
  %134 = load ptr, ptr %pcm81, align 8
  %135 = load i32, ptr %i, align 4
  %idxprom111 = sext i32 %135 to i64
  %arrayidx112 = getelementptr inbounds float, ptr %134, i64 %idxprom111
  store float %133, ptr %arrayidx112, align 4
  br label %for.inc113

for.inc113:                                       ; preds = %for.body99
  %136 = load i32, ptr %i, align 4
  %inc114 = add nsw i32 %136, 1
  store i32 %inc114, ptr %i, align 4
  br label %for.cond96, !llvm.loop !8

for.end115:                                       ; preds = %for.cond96
  br label %if.end116

if.end116:                                        ; preds = %for.end115, %for.end
  br label %if.end214

if.else117:                                       ; preds = %for.body
  %137 = load ptr, ptr %v.addr, align 8
  %W118 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %137, i32 0, i32 10
  %138 = load i64, ptr %W118, align 8
  %tobool119 = icmp ne i64 %138, 0
  br i1 %tobool119, label %if.then120, label %if.else177

if.then120:                                       ; preds = %if.else117
  %139 = load ptr, ptr %b, align 8
  %window122 = getelementptr inbounds nuw %struct.private_state, ptr %139, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [2 x i32], ptr %window122, i64 0, i64 0
  %140 = load i32, ptr %arrayidx123, align 8
  %141 = load i32, ptr %hs, align 4
  %sub124 = sub nsw i32 %140, %141
  %call125 = call ptr @_vorbis_window_get(i32 noundef %sub124)
  store ptr %call125, ptr %w121, align 8
  %142 = load ptr, ptr %v.addr, align 8
  %pcm127 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %142, i32 0, i32 2
  %143 = load ptr, ptr %pcm127, align 8
  %144 = load i32, ptr %j, align 4
  %idxprom128 = sext i32 %144 to i64
  %arrayidx129 = getelementptr inbounds ptr, ptr %143, i64 %idxprom128
  %145 = load ptr, ptr %arrayidx129, align 8
  %146 = load i32, ptr %prevCenter, align 4
  %idx.ext130 = sext i32 %146 to i64
  %add.ptr131 = getelementptr inbounds float, ptr %145, i64 %idx.ext130
  store ptr %add.ptr131, ptr %pcm126, align 8
  %147 = load ptr, ptr %vb.addr, align 8
  %pcm133 = getelementptr inbounds nuw %struct.vorbis_block, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %pcm133, align 8
  %149 = load i32, ptr %j, align 4
  %idxprom134 = sext i32 %149 to i64
  %arrayidx135 = getelementptr inbounds ptr, ptr %148, i64 %idxprom134
  %150 = load ptr, ptr %arrayidx135, align 8
  %151 = load i32, ptr %n1, align 4
  %div136 = sdiv i32 %151, 2
  %idx.ext137 = sext i32 %div136 to i64
  %add.ptr138 = getelementptr inbounds float, ptr %150, i64 %idx.ext137
  %152 = load i32, ptr %n0, align 4
  %div139 = sdiv i32 %152, 2
  %idx.ext140 = sext i32 %div139 to i64
  %idx.neg141 = sub i64 0, %idx.ext140
  %add.ptr142 = getelementptr inbounds float, ptr %add.ptr138, i64 %idx.neg141
  store ptr %add.ptr142, ptr %p132, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc160, %if.then120
  %153 = load i32, ptr %i, align 4
  %154 = load i32, ptr %n0, align 4
  %cmp144 = icmp slt i32 %153, %154
  br i1 %cmp144, label %for.body146, label %for.end162

for.body146:                                      ; preds = %for.cond143
  %155 = load ptr, ptr %pcm126, align 8
  %156 = load i32, ptr %i, align 4
  %idxprom147 = sext i32 %156 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %155, i64 %idxprom147
  %157 = load float, ptr %arrayidx148, align 4
  %158 = load ptr, ptr %w121, align 8
  %159 = load i32, ptr %n0, align 4
  %160 = load i32, ptr %i, align 4
  %sub149 = sub nsw i32 %159, %160
  %sub150 = sub nsw i32 %sub149, 1
  %idxprom151 = sext i32 %sub150 to i64
  %arrayidx152 = getelementptr inbounds float, ptr %158, i64 %idxprom151
  %161 = load float, ptr %arrayidx152, align 4
  %162 = load ptr, ptr %p132, align 8
  %163 = load i32, ptr %i, align 4
  %idxprom153 = sext i32 %163 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %162, i64 %idxprom153
  %164 = load float, ptr %arrayidx154, align 4
  %165 = load ptr, ptr %w121, align 8
  %166 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %166 to i64
  %arrayidx156 = getelementptr inbounds float, ptr %165, i64 %idxprom155
  %167 = load float, ptr %arrayidx156, align 4
  %mul157 = fmul float %164, %167
  %168 = call float @llvm.fmuladd.f32(float %157, float %161, float %mul157)
  %169 = load ptr, ptr %pcm126, align 8
  %170 = load i32, ptr %i, align 4
  %idxprom158 = sext i32 %170 to i64
  %arrayidx159 = getelementptr inbounds float, ptr %169, i64 %idxprom158
  store float %168, ptr %arrayidx159, align 4
  br label %for.inc160

for.inc160:                                       ; preds = %for.body146
  %171 = load i32, ptr %i, align 4
  %inc161 = add nsw i32 %171, 1
  store i32 %inc161, ptr %i, align 4
  br label %for.cond143, !llvm.loop !9

for.end162:                                       ; preds = %for.cond143
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc174, %for.end162
  %172 = load i32, ptr %i, align 4
  %173 = load i32, ptr %n1, align 4
  %div164 = sdiv i32 %173, 2
  %174 = load i32, ptr %n0, align 4
  %div165 = sdiv i32 %174, 2
  %add166 = add nsw i32 %div164, %div165
  %cmp167 = icmp slt i32 %172, %add166
  br i1 %cmp167, label %for.body169, label %for.end176

for.body169:                                      ; preds = %for.cond163
  %175 = load ptr, ptr %p132, align 8
  %176 = load i32, ptr %i, align 4
  %idxprom170 = sext i32 %176 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %175, i64 %idxprom170
  %177 = load float, ptr %arrayidx171, align 4
  %178 = load ptr, ptr %pcm126, align 8
  %179 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %179 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %178, i64 %idxprom172
  store float %177, ptr %arrayidx173, align 4
  br label %for.inc174

for.inc174:                                       ; preds = %for.body169
  %180 = load i32, ptr %i, align 4
  %inc175 = add nsw i32 %180, 1
  store i32 %inc175, ptr %i, align 4
  br label %for.cond163, !llvm.loop !10

for.end176:                                       ; preds = %for.cond163
  br label %if.end213

if.else177:                                       ; preds = %if.else117
  %181 = load ptr, ptr %b, align 8
  %window179 = getelementptr inbounds nuw %struct.private_state, ptr %181, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [2 x i32], ptr %window179, i64 0, i64 0
  %182 = load i32, ptr %arrayidx180, align 8
  %183 = load i32, ptr %hs, align 4
  %sub181 = sub nsw i32 %182, %183
  %call182 = call ptr @_vorbis_window_get(i32 noundef %sub181)
  store ptr %call182, ptr %w178, align 8
  %184 = load ptr, ptr %v.addr, align 8
  %pcm184 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %184, i32 0, i32 2
  %185 = load ptr, ptr %pcm184, align 8
  %186 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %186 to i64
  %arrayidx186 = getelementptr inbounds ptr, ptr %185, i64 %idxprom185
  %187 = load ptr, ptr %arrayidx186, align 8
  %188 = load i32, ptr %prevCenter, align 4
  %idx.ext187 = sext i32 %188 to i64
  %add.ptr188 = getelementptr inbounds float, ptr %187, i64 %idx.ext187
  store ptr %add.ptr188, ptr %pcm183, align 8
  %189 = load ptr, ptr %vb.addr, align 8
  %pcm190 = getelementptr inbounds nuw %struct.vorbis_block, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %pcm190, align 8
  %191 = load i32, ptr %j, align 4
  %idxprom191 = sext i32 %191 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %190, i64 %idxprom191
  %192 = load ptr, ptr %arrayidx192, align 8
  store ptr %192, ptr %p189, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc210, %if.else177
  %193 = load i32, ptr %i, align 4
  %194 = load i32, ptr %n0, align 4
  %cmp194 = icmp slt i32 %193, %194
  br i1 %cmp194, label %for.body196, label %for.end212

for.body196:                                      ; preds = %for.cond193
  %195 = load ptr, ptr %pcm183, align 8
  %196 = load i32, ptr %i, align 4
  %idxprom197 = sext i32 %196 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %195, i64 %idxprom197
  %197 = load float, ptr %arrayidx198, align 4
  %198 = load ptr, ptr %w178, align 8
  %199 = load i32, ptr %n0, align 4
  %200 = load i32, ptr %i, align 4
  %sub199 = sub nsw i32 %199, %200
  %sub200 = sub nsw i32 %sub199, 1
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds float, ptr %198, i64 %idxprom201
  %201 = load float, ptr %arrayidx202, align 4
  %202 = load ptr, ptr %p189, align 8
  %203 = load i32, ptr %i, align 4
  %idxprom203 = sext i32 %203 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %202, i64 %idxprom203
  %204 = load float, ptr %arrayidx204, align 4
  %205 = load ptr, ptr %w178, align 8
  %206 = load i32, ptr %i, align 4
  %idxprom205 = sext i32 %206 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %205, i64 %idxprom205
  %207 = load float, ptr %arrayidx206, align 4
  %mul207 = fmul float %204, %207
  %208 = call float @llvm.fmuladd.f32(float %197, float %201, float %mul207)
  %209 = load ptr, ptr %pcm183, align 8
  %210 = load i32, ptr %i, align 4
  %idxprom208 = sext i32 %210 to i64
  %arrayidx209 = getelementptr inbounds float, ptr %209, i64 %idxprom208
  store float %208, ptr %arrayidx209, align 4
  br label %for.inc210

for.inc210:                                       ; preds = %for.body196
  %211 = load i32, ptr %i, align 4
  %inc211 = add nsw i32 %211, 1
  store i32 %inc211, ptr %i, align 4
  br label %for.cond193, !llvm.loop !11

for.end212:                                       ; preds = %for.cond193
  br label %if.end213

if.end213:                                        ; preds = %for.end212, %for.end176
  br label %if.end214

if.end214:                                        ; preds = %if.end213, %if.end116
  %212 = load ptr, ptr %v.addr, align 8
  %pcm216 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %212, i32 0, i32 2
  %213 = load ptr, ptr %pcm216, align 8
  %214 = load i32, ptr %j, align 4
  %idxprom217 = sext i32 %214 to i64
  %arrayidx218 = getelementptr inbounds ptr, ptr %213, i64 %idxprom217
  %215 = load ptr, ptr %arrayidx218, align 8
  %216 = load i32, ptr %thisCenter, align 4
  %idx.ext219 = sext i32 %216 to i64
  %add.ptr220 = getelementptr inbounds float, ptr %215, i64 %idx.ext219
  store ptr %add.ptr220, ptr %pcm215, align 8
  %217 = load ptr, ptr %vb.addr, align 8
  %pcm222 = getelementptr inbounds nuw %struct.vorbis_block, ptr %217, i32 0, i32 0
  %218 = load ptr, ptr %pcm222, align 8
  %219 = load i32, ptr %j, align 4
  %idxprom223 = sext i32 %219 to i64
  %arrayidx224 = getelementptr inbounds ptr, ptr %218, i64 %idxprom223
  %220 = load ptr, ptr %arrayidx224, align 8
  %221 = load i32, ptr %n, align 4
  %idx.ext225 = sext i32 %221 to i64
  %add.ptr226 = getelementptr inbounds float, ptr %220, i64 %idx.ext225
  store ptr %add.ptr226, ptr %p221, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc235, %if.end214
  %222 = load i32, ptr %i, align 4
  %223 = load i32, ptr %n, align 4
  %cmp228 = icmp slt i32 %222, %223
  br i1 %cmp228, label %for.body230, label %for.end237

for.body230:                                      ; preds = %for.cond227
  %224 = load ptr, ptr %p221, align 8
  %225 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %225 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %224, i64 %idxprom231
  %226 = load float, ptr %arrayidx232, align 4
  %227 = load ptr, ptr %pcm215, align 8
  %228 = load i32, ptr %i, align 4
  %idxprom233 = sext i32 %228 to i64
  %arrayidx234 = getelementptr inbounds float, ptr %227, i64 %idxprom233
  store float %226, ptr %arrayidx234, align 4
  br label %for.inc235

for.inc235:                                       ; preds = %for.body230
  %229 = load i32, ptr %i, align 4
  %inc236 = add nsw i32 %229, 1
  store i32 %inc236, ptr %i, align 4
  br label %for.cond227, !llvm.loop !12

for.end237:                                       ; preds = %for.cond227
  br label %for.inc238

for.inc238:                                       ; preds = %for.end237
  %230 = load i32, ptr %j, align 4
  %inc239 = add nsw i32 %230, 1
  store i32 %inc239, ptr %j, align 4
  br label %for.cond, !llvm.loop !13

for.end240:                                       ; preds = %for.cond
  %231 = load ptr, ptr %v.addr, align 8
  %centerW241 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %231, i32 0, i32 12
  %232 = load i64, ptr %centerW241, align 8
  %tobool242 = icmp ne i64 %232, 0
  br i1 %tobool242, label %if.then243, label %if.else245

if.then243:                                       ; preds = %for.end240
  %233 = load ptr, ptr %v.addr, align 8
  %centerW244 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %233, i32 0, i32 12
  store i64 0, ptr %centerW244, align 8
  br label %if.end248

if.else245:                                       ; preds = %for.end240
  %234 = load i32, ptr %n1, align 4
  %conv246 = sext i32 %234 to i64
  %235 = load ptr, ptr %v.addr, align 8
  %centerW247 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %235, i32 0, i32 12
  store i64 %conv246, ptr %centerW247, align 8
  br label %if.end248

if.end248:                                        ; preds = %if.else245, %if.then243
  %236 = load ptr, ptr %v.addr, align 8
  %pcm_returned249 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %236, i32 0, i32 6
  %237 = load i32, ptr %pcm_returned249, align 8
  %cmp250 = icmp eq i32 %237, -1
  br i1 %cmp250, label %if.then252, label %if.else255

if.then252:                                       ; preds = %if.end248
  %238 = load i32, ptr %thisCenter, align 4
  %239 = load ptr, ptr %v.addr, align 8
  %pcm_returned253 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %239, i32 0, i32 6
  store i32 %238, ptr %pcm_returned253, align 8
  %240 = load i32, ptr %thisCenter, align 4
  %241 = load ptr, ptr %v.addr, align 8
  %pcm_current254 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %241, i32 0, i32 5
  store i32 %240, ptr %pcm_current254, align 4
  br label %if.end272

if.else255:                                       ; preds = %if.end248
  %242 = load i32, ptr %prevCenter, align 4
  %243 = load ptr, ptr %v.addr, align 8
  %pcm_returned256 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %243, i32 0, i32 6
  store i32 %242, ptr %pcm_returned256, align 8
  %244 = load i32, ptr %prevCenter, align 4
  %conv257 = sext i32 %244 to i64
  %245 = load ptr, ptr %ci, align 8
  %blocksizes258 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %245, i32 0, i32 0
  %246 = load ptr, ptr %v.addr, align 8
  %lW259 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %246, i32 0, i32 9
  %247 = load i64, ptr %lW259, align 8
  %arrayidx260 = getelementptr inbounds [2 x i64], ptr %blocksizes258, i64 0, i64 %247
  %248 = load i64, ptr %arrayidx260, align 8
  %div261 = sdiv i64 %248, 4
  %249 = load ptr, ptr %ci, align 8
  %blocksizes262 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %249, i32 0, i32 0
  %250 = load ptr, ptr %v.addr, align 8
  %W263 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %250, i32 0, i32 10
  %251 = load i64, ptr %W263, align 8
  %arrayidx264 = getelementptr inbounds [2 x i64], ptr %blocksizes262, i64 0, i64 %251
  %252 = load i64, ptr %arrayidx264, align 8
  %div265 = sdiv i64 %252, 4
  %add266 = add nsw i64 %div261, %div265
  %253 = load i32, ptr %hs, align 4
  %sh_prom267 = zext i32 %253 to i64
  %shr268 = ashr i64 %add266, %sh_prom267
  %add269 = add nsw i64 %conv257, %shr268
  %conv270 = trunc i64 %add269 to i32
  %254 = load ptr, ptr %v.addr, align 8
  %pcm_current271 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %254, i32 0, i32 5
  store i32 %conv270, ptr %pcm_current271, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.else255, %if.then252
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.end13
  %255 = load ptr, ptr %b, align 8
  %sample_count274 = getelementptr inbounds nuw %struct.private_state, ptr %255, i32 0, i32 13
  %256 = load i64, ptr %sample_count274, align 8
  %cmp275 = icmp eq i64 %256, -1
  br i1 %cmp275, label %if.then277, label %if.else279

if.then277:                                       ; preds = %if.end273
  %257 = load ptr, ptr %b, align 8
  %sample_count278 = getelementptr inbounds nuw %struct.private_state, ptr %257, i32 0, i32 13
  store i64 0, ptr %sample_count278, align 8
  br label %if.end291

if.else279:                                       ; preds = %if.end273
  %258 = load ptr, ptr %ci, align 8
  %blocksizes280 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %258, i32 0, i32 0
  %259 = load ptr, ptr %v.addr, align 8
  %lW281 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %259, i32 0, i32 9
  %260 = load i64, ptr %lW281, align 8
  %arrayidx282 = getelementptr inbounds [2 x i64], ptr %blocksizes280, i64 0, i64 %260
  %261 = load i64, ptr %arrayidx282, align 8
  %div283 = sdiv i64 %261, 4
  %262 = load ptr, ptr %ci, align 8
  %blocksizes284 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %262, i32 0, i32 0
  %263 = load ptr, ptr %v.addr, align 8
  %W285 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %263, i32 0, i32 10
  %264 = load i64, ptr %W285, align 8
  %arrayidx286 = getelementptr inbounds [2 x i64], ptr %blocksizes284, i64 0, i64 %264
  %265 = load i64, ptr %arrayidx286, align 8
  %div287 = sdiv i64 %265, 4
  %add288 = add nsw i64 %div283, %div287
  %266 = load ptr, ptr %b, align 8
  %sample_count289 = getelementptr inbounds nuw %struct.private_state, ptr %266, i32 0, i32 13
  %267 = load i64, ptr %sample_count289, align 8
  %add290 = add nsw i64 %267, %add288
  store i64 %add290, ptr %sample_count289, align 8
  br label %if.end291

if.end291:                                        ; preds = %if.else279, %if.then277
  %268 = load ptr, ptr %v.addr, align 8
  %granulepos292 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %268, i32 0, i32 13
  %269 = load i64, ptr %granulepos292, align 8
  %cmp293 = icmp eq i64 %269, -1
  br i1 %cmp293, label %if.then295, label %if.else339

if.then295:                                       ; preds = %if.end291
  %270 = load ptr, ptr %vb.addr, align 8
  %granulepos296 = getelementptr inbounds nuw %struct.vorbis_block, ptr %270, i32 0, i32 8
  %271 = load i64, ptr %granulepos296, align 8
  %cmp297 = icmp ne i64 %271, -1
  br i1 %cmp297, label %if.then299, label %if.end338

if.then299:                                       ; preds = %if.then295
  %272 = load ptr, ptr %vb.addr, align 8
  %granulepos300 = getelementptr inbounds nuw %struct.vorbis_block, ptr %272, i32 0, i32 8
  %273 = load i64, ptr %granulepos300, align 8
  %274 = load ptr, ptr %v.addr, align 8
  %granulepos301 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %274, i32 0, i32 13
  store i64 %273, ptr %granulepos301, align 8
  %275 = load ptr, ptr %b, align 8
  %sample_count302 = getelementptr inbounds nuw %struct.private_state, ptr %275, i32 0, i32 13
  %276 = load i64, ptr %sample_count302, align 8
  %277 = load ptr, ptr %v.addr, align 8
  %granulepos303 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %277, i32 0, i32 13
  %278 = load i64, ptr %granulepos303, align 8
  %cmp304 = icmp sgt i64 %276, %278
  br i1 %cmp304, label %if.then306, label %if.end337

if.then306:                                       ; preds = %if.then299
  %279 = load ptr, ptr %vb.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_block, ptr %279, i32 0, i32 7
  %280 = load i32, ptr %eofflag, align 8
  %tobool307 = icmp ne i32 %280, 0
  br i1 %tobool307, label %if.then308, label %if.else318

if.then308:                                       ; preds = %if.then306
  %281 = load ptr, ptr %b, align 8
  %sample_count309 = getelementptr inbounds nuw %struct.private_state, ptr %281, i32 0, i32 13
  %282 = load i64, ptr %sample_count309, align 8
  %283 = load ptr, ptr %v.addr, align 8
  %granulepos310 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %283, i32 0, i32 13
  %284 = load i64, ptr %granulepos310, align 8
  %sub311 = sub nsw i64 %282, %284
  %285 = load i32, ptr %hs, align 4
  %sh_prom312 = zext i32 %285 to i64
  %shr313 = ashr i64 %sub311, %sh_prom312
  %286 = load ptr, ptr %v.addr, align 8
  %pcm_current314 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %286, i32 0, i32 5
  %287 = load i32, ptr %pcm_current314, align 4
  %conv315 = sext i32 %287 to i64
  %sub316 = sub nsw i64 %conv315, %shr313
  %conv317 = trunc i64 %sub316 to i32
  store i32 %conv317, ptr %pcm_current314, align 4
  br label %if.end336

if.else318:                                       ; preds = %if.then306
  %288 = load ptr, ptr %b, align 8
  %sample_count319 = getelementptr inbounds nuw %struct.private_state, ptr %288, i32 0, i32 13
  %289 = load i64, ptr %sample_count319, align 8
  %290 = load ptr, ptr %v.addr, align 8
  %granulepos320 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %290, i32 0, i32 13
  %291 = load i64, ptr %granulepos320, align 8
  %sub321 = sub nsw i64 %289, %291
  %292 = load i32, ptr %hs, align 4
  %sh_prom322 = zext i32 %292 to i64
  %shr323 = ashr i64 %sub321, %sh_prom322
  %293 = load ptr, ptr %v.addr, align 8
  %pcm_returned324 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %293, i32 0, i32 6
  %294 = load i32, ptr %pcm_returned324, align 8
  %conv325 = sext i32 %294 to i64
  %add326 = add nsw i64 %conv325, %shr323
  %conv327 = trunc i64 %add326 to i32
  store i32 %conv327, ptr %pcm_returned324, align 8
  %295 = load ptr, ptr %v.addr, align 8
  %pcm_returned328 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %295, i32 0, i32 6
  %296 = load i32, ptr %pcm_returned328, align 8
  %297 = load ptr, ptr %v.addr, align 8
  %pcm_current329 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %297, i32 0, i32 5
  %298 = load i32, ptr %pcm_current329, align 4
  %cmp330 = icmp sgt i32 %296, %298
  br i1 %cmp330, label %if.then332, label %if.end335

if.then332:                                       ; preds = %if.else318
  %299 = load ptr, ptr %v.addr, align 8
  %pcm_current333 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %299, i32 0, i32 5
  %300 = load i32, ptr %pcm_current333, align 4
  %301 = load ptr, ptr %v.addr, align 8
  %pcm_returned334 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %301, i32 0, i32 6
  store i32 %300, ptr %pcm_returned334, align 8
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %if.else318
  br label %if.end336

if.end336:                                        ; preds = %if.end335, %if.then308
  br label %if.end337

if.end337:                                        ; preds = %if.end336, %if.then299
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.then295
  br label %if.end385

if.else339:                                       ; preds = %if.end291
  %302 = load ptr, ptr %ci, align 8
  %blocksizes340 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %302, i32 0, i32 0
  %303 = load ptr, ptr %v.addr, align 8
  %lW341 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %303, i32 0, i32 9
  %304 = load i64, ptr %lW341, align 8
  %arrayidx342 = getelementptr inbounds [2 x i64], ptr %blocksizes340, i64 0, i64 %304
  %305 = load i64, ptr %arrayidx342, align 8
  %div343 = sdiv i64 %305, 4
  %306 = load ptr, ptr %ci, align 8
  %blocksizes344 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %306, i32 0, i32 0
  %307 = load ptr, ptr %v.addr, align 8
  %W345 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %307, i32 0, i32 10
  %308 = load i64, ptr %W345, align 8
  %arrayidx346 = getelementptr inbounds [2 x i64], ptr %blocksizes344, i64 0, i64 %308
  %309 = load i64, ptr %arrayidx346, align 8
  %div347 = sdiv i64 %309, 4
  %add348 = add nsw i64 %div343, %div347
  %310 = load ptr, ptr %v.addr, align 8
  %granulepos349 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %310, i32 0, i32 13
  %311 = load i64, ptr %granulepos349, align 8
  %add350 = add nsw i64 %311, %add348
  store i64 %add350, ptr %granulepos349, align 8
  %312 = load ptr, ptr %vb.addr, align 8
  %granulepos351 = getelementptr inbounds nuw %struct.vorbis_block, ptr %312, i32 0, i32 8
  %313 = load i64, ptr %granulepos351, align 8
  %cmp352 = icmp ne i64 %313, -1
  br i1 %cmp352, label %land.lhs.true354, label %if.end384

land.lhs.true354:                                 ; preds = %if.else339
  %314 = load ptr, ptr %v.addr, align 8
  %granulepos355 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %314, i32 0, i32 13
  %315 = load i64, ptr %granulepos355, align 8
  %316 = load ptr, ptr %vb.addr, align 8
  %granulepos356 = getelementptr inbounds nuw %struct.vorbis_block, ptr %316, i32 0, i32 8
  %317 = load i64, ptr %granulepos356, align 8
  %cmp357 = icmp ne i64 %315, %317
  br i1 %cmp357, label %if.then359, label %if.end384

if.then359:                                       ; preds = %land.lhs.true354
  %318 = load ptr, ptr %v.addr, align 8
  %granulepos360 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %318, i32 0, i32 13
  %319 = load i64, ptr %granulepos360, align 8
  %320 = load ptr, ptr %vb.addr, align 8
  %granulepos361 = getelementptr inbounds nuw %struct.vorbis_block, ptr %320, i32 0, i32 8
  %321 = load i64, ptr %granulepos361, align 8
  %cmp362 = icmp sgt i64 %319, %321
  br i1 %cmp362, label %if.then364, label %if.end381

if.then364:                                       ; preds = %if.then359
  %322 = load ptr, ptr %v.addr, align 8
  %granulepos365 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %322, i32 0, i32 13
  %323 = load i64, ptr %granulepos365, align 8
  %324 = load ptr, ptr %vb.addr, align 8
  %granulepos366 = getelementptr inbounds nuw %struct.vorbis_block, ptr %324, i32 0, i32 8
  %325 = load i64, ptr %granulepos366, align 8
  %sub367 = sub nsw i64 %323, %325
  store i64 %sub367, ptr %extra, align 8
  %326 = load i64, ptr %extra, align 8
  %tobool368 = icmp ne i64 %326, 0
  br i1 %tobool368, label %if.then369, label %if.end380

if.then369:                                       ; preds = %if.then364
  %327 = load ptr, ptr %vb.addr, align 8
  %eofflag370 = getelementptr inbounds nuw %struct.vorbis_block, ptr %327, i32 0, i32 7
  %328 = load i32, ptr %eofflag370, align 8
  %tobool371 = icmp ne i32 %328, 0
  br i1 %tobool371, label %if.then372, label %if.end379

if.then372:                                       ; preds = %if.then369
  %329 = load i64, ptr %extra, align 8
  %330 = load i32, ptr %hs, align 4
  %sh_prom373 = zext i32 %330 to i64
  %shr374 = ashr i64 %329, %sh_prom373
  %331 = load ptr, ptr %v.addr, align 8
  %pcm_current375 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %331, i32 0, i32 5
  %332 = load i32, ptr %pcm_current375, align 4
  %conv376 = sext i32 %332 to i64
  %sub377 = sub nsw i64 %conv376, %shr374
  %conv378 = trunc i64 %sub377 to i32
  store i32 %conv378, ptr %pcm_current375, align 4
  br label %if.end379

if.end379:                                        ; preds = %if.then372, %if.then369
  br label %if.end380

if.end380:                                        ; preds = %if.end379, %if.then364
  br label %if.end381

if.end381:                                        ; preds = %if.end380, %if.then359
  %333 = load ptr, ptr %vb.addr, align 8
  %granulepos382 = getelementptr inbounds nuw %struct.vorbis_block, ptr %333, i32 0, i32 8
  %334 = load i64, ptr %granulepos382, align 8
  %335 = load ptr, ptr %v.addr, align 8
  %granulepos383 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %335, i32 0, i32 13
  store i64 %334, ptr %granulepos383, align 8
  br label %if.end384

if.end384:                                        ; preds = %if.end381, %land.lhs.true354, %if.else339
  br label %if.end385

if.end385:                                        ; preds = %if.end384, %if.end338
  %336 = load ptr, ptr %vb.addr, align 8
  %eofflag386 = getelementptr inbounds nuw %struct.vorbis_block, ptr %336, i32 0, i32 7
  %337 = load i32, ptr %eofflag386, align 8
  %tobool387 = icmp ne i32 %337, 0
  br i1 %tobool387, label %if.then388, label %if.end390

if.then388:                                       ; preds = %if.end385
  %338 = load ptr, ptr %v.addr, align 8
  %eofflag389 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %338, i32 0, i32 8
  store i32 1, ptr %eofflag389, align 8
  br label %if.end390

if.end390:                                        ; preds = %if.then388, %if.end385
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end390, %if.then4, %if.then
  %339 = load i32, ptr %retval, align 4
  ret i32 %339
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_window_get(i32 noundef) #0

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
