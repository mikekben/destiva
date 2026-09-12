; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_block_internal = type { ptr, float, i32, [15 x i32] }
%struct.vorbis_look_psy_global = type { float, i32, ptr, [2 x [3 x i32]] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_analysis_blockout(ptr noundef %v, ptr noundef %vb) #1 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %g = alloca ptr, align 8
  %beginW = alloca i64, align 8
  %centerNext = alloca i64, align 8
  %vbi = alloca ptr, align 8
  %bp = alloca i64, align 8
  %blockbound = alloca i64, align 8
  %new_centerNext = alloca i32, align 4
  %movementW = alloca i32, align 4
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
  %6 = load ptr, ptr %b, align 8
  %psy_g_look = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 8
  %7 = load ptr, ptr %psy_g_look, align 8
  store ptr %7, ptr %g, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %8, i32 0, i32 12
  %9 = load i64, ptr %centerW, align 8
  %10 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %11, i32 0, i32 10
  %12 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %12
  %13 = load i64, ptr %arrayidx, align 8
  %div = sdiv i64 %13, 2
  %sub = sub nsw i64 %9, %div
  store i64 %sub, ptr %beginW, align 8
  %14 = load ptr, ptr %vb.addr, align 8
  %internal = getelementptr inbounds nuw %struct.vorbis_block, ptr %14, i32 0, i32 20
  %15 = load ptr, ptr %internal, align 8
  store ptr %15, ptr %vbi, align 8
  %16 = load ptr, ptr %v.addr, align 8
  %preextrapolate = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %preextrapolate, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %v.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %18, i32 0, i32 8
  %19 = load i32, ptr %eofflag, align 8
  %cmp = icmp eq i32 %19, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %20 = load ptr, ptr %v.addr, align 8
  %call = call i64 @_ve_envelope_search(ptr noundef %20)
  store i64 %call, ptr %bp, align 8
  %21 = load i64, ptr %bp, align 8
  %cmp4 = icmp eq i64 %21, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %22 = load ptr, ptr %v.addr, align 8
  %eofflag6 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 8
  %23 = load i32, ptr %eofflag6, align 8
  %cmp7 = icmp eq i32 %23, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then5
  %24 = load ptr, ptr %v.addr, align 8
  %nW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %24, i32 0, i32 11
  store i64 0, ptr %nW, align 8
  br label %if.end20

if.else:                                          ; preds = %if.end3
  %25 = load ptr, ptr %ci, align 8
  %blocksizes10 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [2 x i64], ptr %blocksizes10, i64 0, i64 0
  %26 = load i64, ptr %arrayidx11, align 8
  %27 = load ptr, ptr %ci, align 8
  %blocksizes12 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %27, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [2 x i64], ptr %blocksizes12, i64 0, i64 1
  %28 = load i64, ptr %arrayidx13, align 8
  %cmp14 = icmp eq i64 %26, %28
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %29 = load ptr, ptr %v.addr, align 8
  %nW16 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %29, i32 0, i32 11
  store i64 0, ptr %nW16, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.else
  %30 = load i64, ptr %bp, align 8
  %31 = load ptr, ptr %v.addr, align 8
  %nW18 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %31, i32 0, i32 11
  store i64 %30, ptr %nW18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end9
  %32 = load ptr, ptr %v.addr, align 8
  %centerW21 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %32, i32 0, i32 12
  %33 = load i64, ptr %centerW21, align 8
  %34 = load ptr, ptr %ci, align 8
  %blocksizes22 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %v.addr, align 8
  %W23 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %35, i32 0, i32 10
  %36 = load i64, ptr %W23, align 8
  %arrayidx24 = getelementptr inbounds [2 x i64], ptr %blocksizes22, i64 0, i64 %36
  %37 = load i64, ptr %arrayidx24, align 8
  %div25 = sdiv i64 %37, 4
  %add = add nsw i64 %33, %div25
  %38 = load ptr, ptr %ci, align 8
  %blocksizes26 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %v.addr, align 8
  %nW27 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %39, i32 0, i32 11
  %40 = load i64, ptr %nW27, align 8
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %blocksizes26, i64 0, i64 %40
  %41 = load i64, ptr %arrayidx28, align 8
  %div29 = sdiv i64 %41, 4
  %add30 = add nsw i64 %add, %div29
  store i64 %add30, ptr %centerNext, align 8
  %42 = load i64, ptr %centerNext, align 8
  %43 = load ptr, ptr %ci, align 8
  %blocksizes31 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %v.addr, align 8
  %nW32 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %44, i32 0, i32 11
  %45 = load i64, ptr %nW32, align 8
  %arrayidx33 = getelementptr inbounds [2 x i64], ptr %blocksizes31, i64 0, i64 %45
  %46 = load i64, ptr %arrayidx33, align 8
  %div34 = sdiv i64 %46, 2
  %add35 = add nsw i64 %42, %div34
  store i64 %add35, ptr %blockbound, align 8
  %47 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %pcm_current, align 4
  %conv = sext i32 %48 to i64
  %49 = load i64, ptr %blockbound, align 8
  %cmp36 = icmp slt i64 %conv, %49
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end20
  %50 = load ptr, ptr %vb.addr, align 8
  call void @_vorbis_block_ripcord(ptr noundef %50)
  %51 = load ptr, ptr %v.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %51, i32 0, i32 9
  %52 = load i64, ptr %lW, align 8
  %53 = load ptr, ptr %vb.addr, align 8
  %lW40 = getelementptr inbounds nuw %struct.vorbis_block, ptr %53, i32 0, i32 2
  store i64 %52, ptr %lW40, align 8
  %54 = load ptr, ptr %v.addr, align 8
  %W41 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %54, i32 0, i32 10
  %55 = load i64, ptr %W41, align 8
  %56 = load ptr, ptr %vb.addr, align 8
  %W42 = getelementptr inbounds nuw %struct.vorbis_block, ptr %56, i32 0, i32 3
  store i64 %55, ptr %W42, align 8
  %57 = load ptr, ptr %v.addr, align 8
  %nW43 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %57, i32 0, i32 11
  %58 = load i64, ptr %nW43, align 8
  %59 = load ptr, ptr %vb.addr, align 8
  %nW44 = getelementptr inbounds nuw %struct.vorbis_block, ptr %59, i32 0, i32 4
  store i64 %58, ptr %nW44, align 8
  %60 = load ptr, ptr %v.addr, align 8
  %W45 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %60, i32 0, i32 10
  %61 = load i64, ptr %W45, align 8
  %tobool46 = icmp ne i64 %61, 0
  br i1 %tobool46, label %if.then47, label %if.else56

if.then47:                                        ; preds = %if.end39
  %62 = load ptr, ptr %v.addr, align 8
  %lW48 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %62, i32 0, i32 9
  %63 = load i64, ptr %lW48, align 8
  %tobool49 = icmp ne i64 %63, 0
  br i1 %tobool49, label %lor.lhs.false, label %if.then52

lor.lhs.false:                                    ; preds = %if.then47
  %64 = load ptr, ptr %v.addr, align 8
  %nW50 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %64, i32 0, i32 11
  %65 = load i64, ptr %nW50, align 8
  %tobool51 = icmp ne i64 %65, 0
  br i1 %tobool51, label %if.else53, label %if.then52

if.then52:                                        ; preds = %lor.lhs.false, %if.then47
  %66 = load ptr, ptr %vbi, align 8
  %blocktype = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %66, i32 0, i32 2
  store i32 0, ptr %blocktype, align 4
  br label %if.end55

if.else53:                                        ; preds = %lor.lhs.false
  %67 = load ptr, ptr %vbi, align 8
  %blocktype54 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %67, i32 0, i32 2
  store i32 1, ptr %blocktype54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then52
  br label %if.end64

if.else56:                                        ; preds = %if.end39
  %68 = load ptr, ptr %v.addr, align 8
  %call57 = call i32 @_ve_envelope_mark(ptr noundef %68)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then59, label %if.else61

if.then59:                                        ; preds = %if.else56
  %69 = load ptr, ptr %vbi, align 8
  %blocktype60 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %69, i32 0, i32 2
  store i32 0, ptr %blocktype60, align 4
  br label %if.end63

if.else61:                                        ; preds = %if.else56
  %70 = load ptr, ptr %vbi, align 8
  %blocktype62 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %70, i32 0, i32 2
  store i32 1, ptr %blocktype62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else61, %if.then59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end55
  %71 = load ptr, ptr %v.addr, align 8
  %72 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %72, i32 0, i32 10
  store ptr %71, ptr %vd, align 8
  %73 = load ptr, ptr %v.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %73, i32 0, i32 14
  %74 = load i64, ptr %sequence, align 8
  %inc = add nsw i64 %74, 1
  store i64 %inc, ptr %sequence, align 8
  %75 = load ptr, ptr %vb.addr, align 8
  %sequence65 = getelementptr inbounds nuw %struct.vorbis_block, ptr %75, i32 0, i32 9
  store i64 %74, ptr %sequence65, align 8
  %76 = load ptr, ptr %v.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %76, i32 0, i32 13
  %77 = load i64, ptr %granulepos, align 8
  %78 = load ptr, ptr %vb.addr, align 8
  %granulepos66 = getelementptr inbounds nuw %struct.vorbis_block, ptr %78, i32 0, i32 8
  store i64 %77, ptr %granulepos66, align 8
  %79 = load ptr, ptr %ci, align 8
  %blocksizes67 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %v.addr, align 8
  %W68 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %80, i32 0, i32 10
  %81 = load i64, ptr %W68, align 8
  %arrayidx69 = getelementptr inbounds [2 x i64], ptr %blocksizes67, i64 0, i64 %81
  %82 = load i64, ptr %arrayidx69, align 8
  %conv70 = trunc i64 %82 to i32
  %83 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %83, i32 0, i32 5
  store i32 %conv70, ptr %pcmend, align 8
  %84 = load ptr, ptr %vbi, align 8
  %ampmax = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %84, i32 0, i32 1
  %85 = load float, ptr %ampmax, align 8
  %86 = load ptr, ptr %g, align 8
  %ampmax71 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %86, i32 0, i32 0
  %87 = load float, ptr %ampmax71, align 8
  %cmp72 = fcmp ogt float %85, %87
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %if.end64
  %88 = load ptr, ptr %vbi, align 8
  %ampmax75 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %88, i32 0, i32 1
  %89 = load float, ptr %ampmax75, align 8
  %90 = load ptr, ptr %g, align 8
  %ampmax76 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %90, i32 0, i32 0
  store float %89, ptr %ampmax76, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end64
  %91 = load ptr, ptr %g, align 8
  %ampmax78 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %91, i32 0, i32 0
  %92 = load float, ptr %ampmax78, align 8
  %93 = load ptr, ptr %v.addr, align 8
  %call79 = call float @_vp_ampmax_decay(float noundef %92, ptr noundef %93)
  %94 = load ptr, ptr %g, align 8
  %ampmax80 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %94, i32 0, i32 0
  store float %call79, ptr %ampmax80, align 8
  %95 = load ptr, ptr %g, align 8
  %ampmax81 = getelementptr inbounds nuw %struct.vorbis_look_psy_global, ptr %95, i32 0, i32 0
  %96 = load float, ptr %ampmax81, align 8
  %97 = load ptr, ptr %vbi, align 8
  %ampmax82 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %97, i32 0, i32 1
  store float %96, ptr %ampmax82, align 8
  %98 = load ptr, ptr %vb.addr, align 8
  %99 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %99, i32 0, i32 1
  %100 = load i32, ptr %channels, align 4
  %conv83 = sext i32 %100 to i64
  %mul = mul i64 8, %conv83
  %call84 = call ptr @_vorbis_block_alloc(ptr noundef %98, i64 noundef %mul)
  %101 = load ptr, ptr %vb.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_block, ptr %101, i32 0, i32 0
  store ptr %call84, ptr %pcm, align 8
  %102 = load ptr, ptr %vb.addr, align 8
  %103 = load ptr, ptr %vi, align 8
  %channels85 = getelementptr inbounds nuw %struct.vorbis_info, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %channels85, align 4
  %conv86 = sext i32 %104 to i64
  %mul87 = mul i64 8, %conv86
  %call88 = call ptr @_vorbis_block_alloc(ptr noundef %102, i64 noundef %mul87)
  %105 = load ptr, ptr %vbi, align 8
  %pcmdelay = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %105, i32 0, i32 0
  store ptr %call88, ptr %pcmdelay, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end77
  %106 = load i32, ptr %i, align 4
  %107 = load ptr, ptr %vi, align 8
  %channels89 = getelementptr inbounds nuw %struct.vorbis_info, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %channels89, align 4
  %cmp90 = icmp slt i32 %106, %108
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load ptr, ptr %vb.addr, align 8
  %110 = load ptr, ptr %vb.addr, align 8
  %pcmend92 = getelementptr inbounds nuw %struct.vorbis_block, ptr %110, i32 0, i32 5
  %111 = load i32, ptr %pcmend92, align 8
  %conv93 = sext i32 %111 to i64
  %112 = load i64, ptr %beginW, align 8
  %add94 = add nsw i64 %conv93, %112
  %mul95 = mul i64 %add94, 4
  %call96 = call ptr @_vorbis_block_alloc(ptr noundef %109, i64 noundef %mul95)
  %113 = load ptr, ptr %vbi, align 8
  %pcmdelay97 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %pcmdelay97, align 8
  %115 = load i32, ptr %i, align 4
  %idxprom = sext i32 %115 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %114, i64 %idxprom
  store ptr %call96, ptr %arrayidx98, align 8
  %116 = load ptr, ptr %vbi, align 8
  %pcmdelay99 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %pcmdelay99, align 8
  %118 = load i32, ptr %i, align 4
  %idxprom100 = sext i32 %118 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %117, i64 %idxprom100
  %119 = load ptr, ptr %arrayidx101, align 8
  %120 = load ptr, ptr %v.addr, align 8
  %pcm102 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %120, i32 0, i32 2
  %121 = load ptr, ptr %pcm102, align 8
  %122 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %122 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %121, i64 %idxprom103
  %123 = load ptr, ptr %arrayidx104, align 8
  %124 = load ptr, ptr %vb.addr, align 8
  %pcmend105 = getelementptr inbounds nuw %struct.vorbis_block, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %pcmend105, align 8
  %conv106 = sext i32 %125 to i64
  %126 = load i64, ptr %beginW, align 8
  %add107 = add nsw i64 %conv106, %126
  %mul108 = mul i64 %add107, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %119, ptr align 4 %123, i64 %mul108, i1 false)
  %127 = load ptr, ptr %vbi, align 8
  %pcmdelay109 = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %pcmdelay109, align 8
  %129 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %129 to i64
  %arrayidx111 = getelementptr inbounds ptr, ptr %128, i64 %idxprom110
  %130 = load ptr, ptr %arrayidx111, align 8
  %131 = load i64, ptr %beginW, align 8
  %add.ptr = getelementptr inbounds float, ptr %130, i64 %131
  %132 = load ptr, ptr %vb.addr, align 8
  %pcm112 = getelementptr inbounds nuw %struct.vorbis_block, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %pcm112, align 8
  %134 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %134 to i64
  %arrayidx114 = getelementptr inbounds ptr, ptr %133, i64 %idxprom113
  store ptr %add.ptr, ptr %arrayidx114, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %135 = load i32, ptr %i, align 4
  %inc115 = add nsw i32 %135, 1
  store i32 %inc115, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %136 = load ptr, ptr %v.addr, align 8
  %eofflag116 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %136, i32 0, i32 8
  %137 = load i32, ptr %eofflag116, align 8
  %tobool117 = icmp ne i32 %137, 0
  br i1 %tobool117, label %if.then118, label %if.end128

if.then118:                                       ; preds = %for.end
  %138 = load ptr, ptr %v.addr, align 8
  %centerW119 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %138, i32 0, i32 12
  %139 = load i64, ptr %centerW119, align 8
  %140 = load ptr, ptr %v.addr, align 8
  %eofflag120 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %140, i32 0, i32 8
  %141 = load i32, ptr %eofflag120, align 8
  %conv121 = sext i32 %141 to i64
  %cmp122 = icmp sge i64 %139, %conv121
  br i1 %cmp122, label %if.then124, label %if.end127

if.then124:                                       ; preds = %if.then118
  %142 = load ptr, ptr %v.addr, align 8
  %eofflag125 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %142, i32 0, i32 8
  store i32 -1, ptr %eofflag125, align 8
  %143 = load ptr, ptr %vb.addr, align 8
  %eofflag126 = getelementptr inbounds nuw %struct.vorbis_block, ptr %143, i32 0, i32 7
  store i32 1, ptr %eofflag126, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.then118
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %for.end
  %144 = load ptr, ptr %ci, align 8
  %blocksizes129 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %144, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [2 x i64], ptr %blocksizes129, i64 0, i64 1
  %145 = load i64, ptr %arrayidx130, align 8
  %div131 = sdiv i64 %145, 2
  %conv132 = trunc i64 %div131 to i32
  store i32 %conv132, ptr %new_centerNext, align 4
  %146 = load i64, ptr %centerNext, align 8
  %147 = load i32, ptr %new_centerNext, align 4
  %conv133 = sext i32 %147 to i64
  %sub134 = sub nsw i64 %146, %conv133
  %conv135 = trunc i64 %sub134 to i32
  store i32 %conv135, ptr %movementW, align 4
  %148 = load i32, ptr %movementW, align 4
  %cmp136 = icmp sgt i32 %148, 0
  br i1 %cmp136, label %if.then138, label %if.end201

if.then138:                                       ; preds = %if.end128
  %149 = load ptr, ptr %b, align 8
  %ve = getelementptr inbounds nuw %struct.private_state, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %ve, align 8
  %151 = load i32, ptr %movementW, align 4
  %conv139 = sext i32 %151 to i64
  call void @_ve_envelope_shift(ptr noundef %150, i64 noundef %conv139)
  %152 = load i32, ptr %movementW, align 4
  %153 = load ptr, ptr %v.addr, align 8
  %pcm_current140 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %153, i32 0, i32 5
  %154 = load i32, ptr %pcm_current140, align 4
  %sub141 = sub nsw i32 %154, %152
  store i32 %sub141, ptr %pcm_current140, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc157, %if.then138
  %155 = load i32, ptr %i, align 4
  %156 = load ptr, ptr %vi, align 8
  %channels143 = getelementptr inbounds nuw %struct.vorbis_info, ptr %156, i32 0, i32 1
  %157 = load i32, ptr %channels143, align 4
  %cmp144 = icmp slt i32 %155, %157
  br i1 %cmp144, label %for.body146, label %for.end159

for.body146:                                      ; preds = %for.cond142
  %158 = load ptr, ptr %v.addr, align 8
  %pcm147 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %158, i32 0, i32 2
  %159 = load ptr, ptr %pcm147, align 8
  %160 = load i32, ptr %i, align 4
  %idxprom148 = sext i32 %160 to i64
  %arrayidx149 = getelementptr inbounds ptr, ptr %159, i64 %idxprom148
  %161 = load ptr, ptr %arrayidx149, align 8
  %162 = load ptr, ptr %v.addr, align 8
  %pcm150 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %162, i32 0, i32 2
  %163 = load ptr, ptr %pcm150, align 8
  %164 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %164 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %163, i64 %idxprom151
  %165 = load ptr, ptr %arrayidx152, align 8
  %166 = load i32, ptr %movementW, align 4
  %idx.ext = sext i32 %166 to i64
  %add.ptr153 = getelementptr inbounds float, ptr %165, i64 %idx.ext
  %167 = load ptr, ptr %v.addr, align 8
  %pcm_current154 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %167, i32 0, i32 5
  %168 = load i32, ptr %pcm_current154, align 4
  %conv155 = sext i32 %168 to i64
  %mul156 = mul i64 %conv155, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %161, ptr align 4 %add.ptr153, i64 %mul156, i1 false)
  br label %for.inc157

for.inc157:                                       ; preds = %for.body146
  %169 = load i32, ptr %i, align 4
  %inc158 = add nsw i32 %169, 1
  store i32 %inc158, ptr %i, align 4
  br label %for.cond142, !llvm.loop !8

for.end159:                                       ; preds = %for.cond142
  %170 = load ptr, ptr %v.addr, align 8
  %W160 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %170, i32 0, i32 10
  %171 = load i64, ptr %W160, align 8
  %172 = load ptr, ptr %v.addr, align 8
  %lW161 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %172, i32 0, i32 9
  store i64 %171, ptr %lW161, align 8
  %173 = load ptr, ptr %v.addr, align 8
  %nW162 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %173, i32 0, i32 11
  %174 = load i64, ptr %nW162, align 8
  %175 = load ptr, ptr %v.addr, align 8
  %W163 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %175, i32 0, i32 10
  store i64 %174, ptr %W163, align 8
  %176 = load i32, ptr %new_centerNext, align 4
  %conv164 = sext i32 %176 to i64
  %177 = load ptr, ptr %v.addr, align 8
  %centerW165 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %177, i32 0, i32 12
  store i64 %conv164, ptr %centerW165, align 8
  %178 = load ptr, ptr %v.addr, align 8
  %eofflag166 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %178, i32 0, i32 8
  %179 = load i32, ptr %eofflag166, align 8
  %tobool167 = icmp ne i32 %179, 0
  br i1 %tobool167, label %if.then168, label %if.else196

if.then168:                                       ; preds = %for.end159
  %180 = load i32, ptr %movementW, align 4
  %181 = load ptr, ptr %v.addr, align 8
  %eofflag169 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %181, i32 0, i32 8
  %182 = load i32, ptr %eofflag169, align 8
  %sub170 = sub nsw i32 %182, %180
  store i32 %sub170, ptr %eofflag169, align 8
  %183 = load ptr, ptr %v.addr, align 8
  %eofflag171 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %183, i32 0, i32 8
  %184 = load i32, ptr %eofflag171, align 8
  %cmp172 = icmp sle i32 %184, 0
  br i1 %cmp172, label %if.then174, label %if.end176

if.then174:                                       ; preds = %if.then168
  %185 = load ptr, ptr %v.addr, align 8
  %eofflag175 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %185, i32 0, i32 8
  store i32 -1, ptr %eofflag175, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.then168
  %186 = load ptr, ptr %v.addr, align 8
  %centerW177 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %186, i32 0, i32 12
  %187 = load i64, ptr %centerW177, align 8
  %188 = load ptr, ptr %v.addr, align 8
  %eofflag178 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %188, i32 0, i32 8
  %189 = load i32, ptr %eofflag178, align 8
  %conv179 = sext i32 %189 to i64
  %cmp180 = icmp sge i64 %187, %conv179
  br i1 %cmp180, label %if.then182, label %if.else191

if.then182:                                       ; preds = %if.end176
  %190 = load i32, ptr %movementW, align 4
  %conv183 = sext i32 %190 to i64
  %191 = load ptr, ptr %v.addr, align 8
  %centerW184 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %191, i32 0, i32 12
  %192 = load i64, ptr %centerW184, align 8
  %193 = load ptr, ptr %v.addr, align 8
  %eofflag185 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %193, i32 0, i32 8
  %194 = load i32, ptr %eofflag185, align 8
  %conv186 = sext i32 %194 to i64
  %sub187 = sub nsw i64 %192, %conv186
  %sub188 = sub nsw i64 %conv183, %sub187
  %195 = load ptr, ptr %v.addr, align 8
  %granulepos189 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %195, i32 0, i32 13
  %196 = load i64, ptr %granulepos189, align 8
  %add190 = add nsw i64 %196, %sub188
  store i64 %add190, ptr %granulepos189, align 8
  br label %if.end195

if.else191:                                       ; preds = %if.end176
  %197 = load i32, ptr %movementW, align 4
  %conv192 = sext i32 %197 to i64
  %198 = load ptr, ptr %v.addr, align 8
  %granulepos193 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %198, i32 0, i32 13
  %199 = load i64, ptr %granulepos193, align 8
  %add194 = add nsw i64 %199, %conv192
  store i64 %add194, ptr %granulepos193, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.else191, %if.then182
  br label %if.end200

if.else196:                                       ; preds = %for.end159
  %200 = load i32, ptr %movementW, align 4
  %conv197 = sext i32 %200 to i64
  %201 = load ptr, ptr %v.addr, align 8
  %granulepos198 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %201, i32 0, i32 13
  %202 = load i64, ptr %granulepos198, align 8
  %add199 = add nsw i64 %202, %conv197
  store i64 %add199, ptr %granulepos198, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.else196, %if.end195
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end128
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end201, %if.then124, %if.then38, %if.then8, %if.then2, %if.then
  %203 = load i32, ptr %retval, align 4
  ret i32 %203
}

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vorbis_block_ripcord(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @_ve_envelope_search(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @_ve_envelope_mark(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local float @_vp_ampmax_decay(float noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_ve_envelope_shift(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!8 = distinct !{!8, !7}
