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
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }
%struct.vorbis_func_floor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_staticbook_destroy(ptr noundef) #3

; Function Attrs: nounwind uwtable
define hidden i32 @_vds_shared_init(ptr noundef %v, ptr noundef %vi, i32 noundef %encp) #3 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %encp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %hs = alloca i32, align 4
  %i122 = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 %encp, ptr %encp.addr, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  store ptr null, ptr %b, align 8
  %2 = load ptr, ptr %ci, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ci, align 8
  %halfrate_flag = getelementptr inbounds nuw %struct.codec_setup_info, ptr %3, i32 0, i32 20
  %4 = load i32, ptr %halfrate_flag, align 8
  store i32 %4, ptr %hs, align 4
  %5 = load ptr, ptr %v.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 144, i1 false)
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 304) #4
  %6 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 19
  store ptr %call, ptr %backend_state, align 8
  store ptr %call, ptr %b, align 8
  %7 = load ptr, ptr %vi.addr, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %8, i32 0, i32 1
  store ptr %7, ptr %vi1, align 8
  %9 = load ptr, ptr %ci, align 8
  %modes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %modes, align 8
  %call2 = call i32 @ilog2(i32 noundef %10)
  %11 = load ptr, ptr %b, align 8
  %modebits = getelementptr inbounds nuw %struct.private_state, ptr %11, i32 0, i32 4
  store i32 %call2, ptr %modebits, align 8
  %call3 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 8) #4
  %12 = load ptr, ptr %b, align 8
  %transform = getelementptr inbounds nuw %struct.private_state, ptr %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %transform, i64 0, i64 0
  store ptr %call3, ptr %arrayidx, align 8
  %call4 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 8) #4
  %13 = load ptr, ptr %b, align 8
  %transform5 = getelementptr inbounds nuw %struct.private_state, ptr %13, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [2 x ptr], ptr %transform5, i64 0, i64 1
  store ptr %call4, ptr %arrayidx6, align 8
  %call7 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #4
  %14 = load ptr, ptr %b, align 8
  %transform8 = getelementptr inbounds nuw %struct.private_state, ptr %14, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [2 x ptr], ptr %transform8, i64 0, i64 0
  %15 = load ptr, ptr %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 0
  store ptr %call7, ptr %arrayidx10, align 8
  %call11 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #4
  %16 = load ptr, ptr %b, align 8
  %transform12 = getelementptr inbounds nuw %struct.private_state, ptr %16, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [2 x ptr], ptr %transform12, i64 0, i64 1
  %17 = load ptr, ptr %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %17, i64 0
  store ptr %call11, ptr %arrayidx14, align 8
  %18 = load ptr, ptr %b, align 8
  %transform15 = getelementptr inbounds nuw %struct.private_state, ptr %18, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [2 x ptr], ptr %transform15, i64 0, i64 0
  %19 = load ptr, ptr %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx17, align 8
  %21 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %21, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %22 = load i64, ptr %arrayidx18, align 8
  %23 = load i32, ptr %hs, align 4
  %sh_prom = zext i32 %23 to i64
  %shr = ashr i64 %22, %sh_prom
  %conv = trunc i64 %shr to i32
  call void @mdct_init(ptr noundef %20, i32 noundef %conv)
  %24 = load ptr, ptr %b, align 8
  %transform19 = getelementptr inbounds nuw %struct.private_state, ptr %24, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %transform19, i64 0, i64 1
  %25 = load ptr, ptr %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx21, align 8
  %27 = load ptr, ptr %ci, align 8
  %blocksizes22 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %27, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [2 x i64], ptr %blocksizes22, i64 0, i64 1
  %28 = load i64, ptr %arrayidx23, align 8
  %29 = load i32, ptr %hs, align 4
  %sh_prom24 = zext i32 %29 to i64
  %shr25 = ashr i64 %28, %sh_prom24
  %conv26 = trunc i64 %shr25 to i32
  call void @mdct_init(ptr noundef %26, i32 noundef %conv26)
  %30 = load ptr, ptr %ci, align 8
  %blocksizes27 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %30, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x i64], ptr %blocksizes27, i64 0, i64 0
  %31 = load i64, ptr %arrayidx28, align 8
  %conv29 = trunc i64 %31 to i32
  %call30 = call i32 @ilog2(i32 noundef %conv29)
  %sub = sub nsw i32 %call30, 6
  %32 = load ptr, ptr %b, align 8
  %window = getelementptr inbounds nuw %struct.private_state, ptr %32, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [2 x i32], ptr %window, i64 0, i64 0
  store i32 %sub, ptr %arrayidx31, align 8
  %33 = load ptr, ptr %ci, align 8
  %blocksizes32 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x i64], ptr %blocksizes32, i64 0, i64 1
  %34 = load i64, ptr %arrayidx33, align 8
  %conv34 = trunc i64 %34 to i32
  %call35 = call i32 @ilog2(i32 noundef %conv34)
  %sub36 = sub nsw i32 %call35, 6
  %35 = load ptr, ptr %b, align 8
  %window37 = getelementptr inbounds nuw %struct.private_state, ptr %35, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [2 x i32], ptr %window37, i64 0, i64 1
  store i32 %sub36, ptr %arrayidx38, align 4
  %36 = load i32, ptr %encp.addr, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end
  %37 = load ptr, ptr %b, align 8
  %fft_look = getelementptr inbounds nuw %struct.private_state, ptr %37, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [2 x %struct.drft_lookup], ptr %fft_look, i64 0, i64 0
  %38 = load ptr, ptr %ci, align 8
  %blocksizes41 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %38, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %blocksizes41, i64 0, i64 0
  %39 = load i64, ptr %arrayidx42, align 8
  %conv43 = trunc i64 %39 to i32
  call void @drft_init(ptr noundef %arrayidx40, i32 noundef %conv43)
  %40 = load ptr, ptr %b, align 8
  %fft_look44 = getelementptr inbounds nuw %struct.private_state, ptr %40, i32 0, i32 3
  %arrayidx45 = getelementptr inbounds [2 x %struct.drft_lookup], ptr %fft_look44, i64 0, i64 1
  %41 = load ptr, ptr %ci, align 8
  %blocksizes46 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %41, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [2 x i64], ptr %blocksizes46, i64 0, i64 1
  %42 = load i64, ptr %arrayidx47, align 8
  %conv48 = trunc i64 %42 to i32
  call void @drft_init(ptr noundef %arrayidx45, i32 noundef %conv48)
  %43 = load ptr, ptr %ci, align 8
  %fullbooks = getelementptr inbounds nuw %struct.codec_setup_info, ptr %43, i32 0, i32 15
  %44 = load ptr, ptr %fullbooks, align 8
  %tobool49 = icmp ne ptr %44, null
  br i1 %tobool49, label %if.end60, label %if.then50

if.then50:                                        ; preds = %if.then39
  %45 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %books, align 8
  %conv51 = sext i32 %46 to i64
  %call52 = call noalias ptr @calloc(i64 noundef %conv51, i64 noundef 80) #4
  %47 = load ptr, ptr %ci, align 8
  %fullbooks53 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %47, i32 0, i32 15
  store ptr %call52, ptr %fullbooks53, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then50
  %48 = load i32, ptr %i, align 4
  %49 = load ptr, ptr %ci, align 8
  %books54 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %books54, align 8
  %cmp55 = icmp slt i32 %48, %50
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %ci, align 8
  %fullbooks57 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %51, i32 0, i32 15
  %52 = load ptr, ptr %fullbooks57, align 8
  %53 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %53 to i64
  %add.ptr = getelementptr inbounds %struct.codebook, ptr %52, i64 %idx.ext
  %54 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %54, i32 0, i32 14
  %55 = load i32, ptr %i, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx58 = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom
  %56 = load ptr, ptr %arrayidx58, align 8
  %call59 = call i32 @vorbis_book_init_encode(ptr noundef %add.ptr, ptr noundef %56)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end60

if.end60:                                         ; preds = %for.end, %if.then39
  %58 = load ptr, ptr %ci, align 8
  %psys = getelementptr inbounds nuw %struct.codec_setup_info, ptr %58, i32 0, i32 6
  %59 = load i32, ptr %psys, align 4
  %conv61 = sext i32 %59 to i64
  %call62 = call noalias ptr @calloc(i64 noundef %conv61, i64 noundef 88) #4
  %60 = load ptr, ptr %b, align 8
  %psy = getelementptr inbounds nuw %struct.private_state, ptr %60, i32 0, i32 7
  store ptr %call62, ptr %psy, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc80, %if.end60
  %61 = load i32, ptr %i, align 4
  %62 = load ptr, ptr %ci, align 8
  %psys64 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %62, i32 0, i32 6
  %63 = load i32, ptr %psys64, align 4
  %cmp65 = icmp slt i32 %61, %63
  br i1 %cmp65, label %for.body67, label %for.end82

for.body67:                                       ; preds = %for.cond63
  %64 = load ptr, ptr %b, align 8
  %psy68 = getelementptr inbounds nuw %struct.private_state, ptr %64, i32 0, i32 7
  %65 = load ptr, ptr %psy68, align 8
  %66 = load i32, ptr %i, align 4
  %idx.ext69 = sext i32 %66 to i64
  %add.ptr70 = getelementptr inbounds %struct.vorbis_look_psy, ptr %65, i64 %idx.ext69
  %67 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %67, i32 0, i32 16
  %68 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom71
  %69 = load ptr, ptr %arrayidx72, align 8
  %70 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %70, i32 0, i32 17
  %71 = load ptr, ptr %ci, align 8
  %blocksizes73 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %ci, align 8
  %psy_param74 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %72, i32 0, i32 16
  %73 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %73 to i64
  %arrayidx76 = getelementptr inbounds [4 x ptr], ptr %psy_param74, i64 0, i64 %idxprom75
  %74 = load ptr, ptr %arrayidx76, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %74, i32 0, i32 0
  %75 = load i32, ptr %blockflag, align 8
  %idxprom77 = sext i32 %75 to i64
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %blocksizes73, i64 0, i64 %idxprom77
  %76 = load i64, ptr %arrayidx78, align 8
  %div = sdiv i64 %76, 2
  %conv79 = trunc i64 %div to i32
  %77 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %77, i32 0, i32 2
  %78 = load i64, ptr %rate, align 8
  call void @_vp_psy_init(ptr noundef %add.ptr70, ptr noundef %69, ptr noundef %psy_g_param, i32 noundef %conv79, i64 noundef %78)
  br label %for.inc80

for.inc80:                                        ; preds = %for.body67
  %79 = load i32, ptr %i, align 4
  %inc81 = add nsw i32 %79, 1
  store i32 %inc81, ptr %i, align 4
  br label %for.cond63, !llvm.loop !8

for.end82:                                        ; preds = %for.cond63
  %80 = load ptr, ptr %v.addr, align 8
  %analysisp = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %80, i32 0, i32 0
  store i32 1, ptr %analysisp, align 8
  br label %if.end112

if.else:                                          ; preds = %if.end
  %81 = load ptr, ptr %ci, align 8
  %fullbooks83 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %81, i32 0, i32 15
  %82 = load ptr, ptr %fullbooks83, align 8
  %tobool84 = icmp ne ptr %82, null
  br i1 %tobool84, label %if.end111, label %if.then85

if.then85:                                        ; preds = %if.else
  %83 = load ptr, ptr %ci, align 8
  %books86 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %books86, align 8
  %conv87 = sext i32 %84 to i64
  %call88 = call noalias ptr @calloc(i64 noundef %conv87, i64 noundef 80) #4
  %85 = load ptr, ptr %ci, align 8
  %fullbooks89 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %85, i32 0, i32 15
  store ptr %call88, ptr %fullbooks89, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc108, %if.then85
  %86 = load i32, ptr %i, align 4
  %87 = load ptr, ptr %ci, align 8
  %books91 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %87, i32 0, i32 5
  %88 = load i32, ptr %books91, align 8
  %cmp92 = icmp slt i32 %86, %88
  br i1 %cmp92, label %for.body94, label %for.end110

for.body94:                                       ; preds = %for.cond90
  %89 = load ptr, ptr %ci, align 8
  %fullbooks95 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %89, i32 0, i32 15
  %90 = load ptr, ptr %fullbooks95, align 8
  %91 = load i32, ptr %i, align 4
  %idx.ext96 = sext i32 %91 to i64
  %add.ptr97 = getelementptr inbounds %struct.codebook, ptr %90, i64 %idx.ext96
  %92 = load ptr, ptr %ci, align 8
  %book_param98 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %92, i32 0, i32 14
  %93 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %93 to i64
  %arrayidx100 = getelementptr inbounds [256 x ptr], ptr %book_param98, i64 0, i64 %idxprom99
  %94 = load ptr, ptr %arrayidx100, align 8
  %call101 = call i32 @vorbis_book_init_decode(ptr noundef %add.ptr97, ptr noundef %94)
  %95 = load ptr, ptr %ci, align 8
  %book_param102 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %95, i32 0, i32 14
  %96 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %96 to i64
  %arrayidx104 = getelementptr inbounds [256 x ptr], ptr %book_param102, i64 0, i64 %idxprom103
  %97 = load ptr, ptr %arrayidx104, align 8
  call void @vorbis_staticbook_destroy(ptr noundef %97)
  %98 = load ptr, ptr %ci, align 8
  %book_param105 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %98, i32 0, i32 14
  %99 = load i32, ptr %i, align 4
  %idxprom106 = sext i32 %99 to i64
  %arrayidx107 = getelementptr inbounds [256 x ptr], ptr %book_param105, i64 0, i64 %idxprom106
  store ptr null, ptr %arrayidx107, align 8
  br label %for.inc108

for.inc108:                                       ; preds = %for.body94
  %100 = load i32, ptr %i, align 4
  %inc109 = add nsw i32 %100, 1
  store i32 %inc109, ptr %i, align 4
  br label %for.cond90, !llvm.loop !9

for.end110:                                       ; preds = %for.cond90
  br label %if.end111

if.end111:                                        ; preds = %for.end110, %if.else
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %for.end82
  %101 = load ptr, ptr %ci, align 8
  %blocksizes113 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %101, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [2 x i64], ptr %blocksizes113, i64 0, i64 1
  %102 = load i64, ptr %arrayidx114, align 8
  %conv115 = trunc i64 %102 to i32
  %103 = load ptr, ptr %v.addr, align 8
  %pcm_storage = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %103, i32 0, i32 4
  store i32 %conv115, ptr %pcm_storage, align 8
  %104 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %channels, align 4
  %conv116 = sext i32 %105 to i64
  %mul = mul i64 %conv116, 8
  %call117 = call noalias ptr @malloc(i64 noundef %mul) #5
  %106 = load ptr, ptr %v.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %106, i32 0, i32 2
  store ptr %call117, ptr %pcm, align 8
  %107 = load ptr, ptr %vi.addr, align 8
  %channels118 = getelementptr inbounds nuw %struct.vorbis_info, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %channels118, align 4
  %conv119 = sext i32 %108 to i64
  %mul120 = mul i64 %conv119, 8
  %call121 = call noalias ptr @malloc(i64 noundef %mul120) #5
  %109 = load ptr, ptr %v.addr, align 8
  %pcmret = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %109, i32 0, i32 3
  store ptr %call121, ptr %pcmret, align 8
  store i32 0, ptr %i122, align 4
  br label %for.cond123

for.cond123:                                      ; preds = %for.inc134, %if.end112
  %110 = load i32, ptr %i122, align 4
  %111 = load ptr, ptr %vi.addr, align 8
  %channels124 = getelementptr inbounds nuw %struct.vorbis_info, ptr %111, i32 0, i32 1
  %112 = load i32, ptr %channels124, align 4
  %cmp125 = icmp slt i32 %110, %112
  br i1 %cmp125, label %for.body127, label %for.end136

for.body127:                                      ; preds = %for.cond123
  %113 = load ptr, ptr %v.addr, align 8
  %pcm_storage128 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %113, i32 0, i32 4
  %114 = load i32, ptr %pcm_storage128, align 8
  %conv129 = sext i32 %114 to i64
  %call130 = call noalias ptr @calloc(i64 noundef %conv129, i64 noundef 4) #4
  %115 = load ptr, ptr %v.addr, align 8
  %pcm131 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %115, i32 0, i32 2
  %116 = load ptr, ptr %pcm131, align 8
  %117 = load i32, ptr %i122, align 4
  %idxprom132 = sext i32 %117 to i64
  %arrayidx133 = getelementptr inbounds ptr, ptr %116, i64 %idxprom132
  store ptr %call130, ptr %arrayidx133, align 8
  br label %for.inc134

for.inc134:                                       ; preds = %for.body127
  %118 = load i32, ptr %i122, align 4
  %inc135 = add nsw i32 %118, 1
  store i32 %inc135, ptr %i122, align 4
  br label %for.cond123, !llvm.loop !10

for.end136:                                       ; preds = %for.cond123
  %119 = load ptr, ptr %v.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %119, i32 0, i32 9
  store i64 0, ptr %lW, align 8
  %120 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %120, i32 0, i32 10
  store i64 0, ptr %W, align 8
  %121 = load ptr, ptr %ci, align 8
  %blocksizes137 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %121, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [2 x i64], ptr %blocksizes137, i64 0, i64 1
  %122 = load i64, ptr %arrayidx138, align 8
  %div139 = sdiv i64 %122, 2
  %123 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %123, i32 0, i32 12
  store i64 %div139, ptr %centerW, align 8
  %124 = load ptr, ptr %v.addr, align 8
  %centerW140 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %124, i32 0, i32 12
  %125 = load i64, ptr %centerW140, align 8
  %conv141 = trunc i64 %125 to i32
  %126 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %126, i32 0, i32 5
  store i32 %conv141, ptr %pcm_current, align 4
  %127 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %127, i32 0, i32 3
  %128 = load i32, ptr %floors, align 8
  %conv142 = sext i32 %128 to i64
  %call143 = call noalias ptr @calloc(i64 noundef %conv142, i64 noundef 8) #4
  %129 = load ptr, ptr %b, align 8
  %flr = getelementptr inbounds nuw %struct.private_state, ptr %129, i32 0, i32 5
  store ptr %call143, ptr %flr, align 8
  %130 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %130, i32 0, i32 4
  %131 = load i32, ptr %residues, align 4
  %conv144 = sext i32 %131 to i64
  %call145 = call noalias ptr @calloc(i64 noundef %conv144, i64 noundef 8) #4
  %132 = load ptr, ptr %b, align 8
  %residue = getelementptr inbounds nuw %struct.private_state, ptr %132, i32 0, i32 6
  store ptr %call145, ptr %residue, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond146

for.cond146:                                      ; preds = %for.inc161, %for.end136
  %133 = load i32, ptr %i, align 4
  %134 = load ptr, ptr %ci, align 8
  %floors147 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %134, i32 0, i32 3
  %135 = load i32, ptr %floors147, align 8
  %cmp148 = icmp slt i32 %133, %135
  br i1 %cmp148, label %for.body150, label %for.end163

for.body150:                                      ; preds = %for.cond146
  %136 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %136, i32 0, i32 10
  %137 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %137 to i64
  %arrayidx152 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom151
  %138 = load i32, ptr %arrayidx152, align 4
  %idxprom153 = sext i32 %138 to i64
  %arrayidx154 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom153
  %139 = load ptr, ptr %arrayidx154, align 8
  %look = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %139, i32 0, i32 2
  %140 = load ptr, ptr %look, align 8
  %141 = load ptr, ptr %v.addr, align 8
  %142 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %142, i32 0, i32 11
  %143 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %143 to i64
  %arrayidx156 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom155
  %144 = load ptr, ptr %arrayidx156, align 8
  %call157 = call ptr %140(ptr noundef %141, ptr noundef %144)
  %145 = load ptr, ptr %b, align 8
  %flr158 = getelementptr inbounds nuw %struct.private_state, ptr %145, i32 0, i32 5
  %146 = load ptr, ptr %flr158, align 8
  %147 = load i32, ptr %i, align 4
  %idxprom159 = sext i32 %147 to i64
  %arrayidx160 = getelementptr inbounds ptr, ptr %146, i64 %idxprom159
  store ptr %call157, ptr %arrayidx160, align 8
  br label %for.inc161

for.inc161:                                       ; preds = %for.body150
  %148 = load i32, ptr %i, align 4
  %inc162 = add nsw i32 %148, 1
  store i32 %inc162, ptr %i, align 4
  br label %for.cond146, !llvm.loop !11

for.end163:                                       ; preds = %for.cond146
  store i32 0, ptr %i, align 4
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc180, %for.end163
  %149 = load i32, ptr %i, align 4
  %150 = load ptr, ptr %ci, align 8
  %residues165 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %150, i32 0, i32 4
  %151 = load i32, ptr %residues165, align 4
  %cmp166 = icmp slt i32 %149, %151
  br i1 %cmp166, label %for.body168, label %for.end182

for.body168:                                      ; preds = %for.cond164
  %152 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %152, i32 0, i32 12
  %153 = load i32, ptr %i, align 4
  %idxprom169 = sext i32 %153 to i64
  %arrayidx170 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom169
  %154 = load i32, ptr %arrayidx170, align 4
  %idxprom171 = sext i32 %154 to i64
  %arrayidx172 = getelementptr inbounds [0 x ptr], ptr @_residue_P, i64 0, i64 %idxprom171
  %155 = load ptr, ptr %arrayidx172, align 8
  %look173 = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %155, i32 0, i32 2
  %156 = load ptr, ptr %look173, align 8
  %157 = load ptr, ptr %v.addr, align 8
  %158 = load ptr, ptr %ci, align 8
  %residue_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %158, i32 0, i32 13
  %159 = load i32, ptr %i, align 4
  %idxprom174 = sext i32 %159 to i64
  %arrayidx175 = getelementptr inbounds [64 x ptr], ptr %residue_param, i64 0, i64 %idxprom174
  %160 = load ptr, ptr %arrayidx175, align 8
  %call176 = call ptr %156(ptr noundef %157, ptr noundef %160)
  %161 = load ptr, ptr %b, align 8
  %residue177 = getelementptr inbounds nuw %struct.private_state, ptr %161, i32 0, i32 6
  %162 = load ptr, ptr %residue177, align 8
  %163 = load i32, ptr %i, align 4
  %idxprom178 = sext i32 %163 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %162, i64 %idxprom178
  store ptr %call176, ptr %arrayidx179, align 8
  br label %for.inc180

for.inc180:                                       ; preds = %for.body168
  %164 = load i32, ptr %i, align 4
  %inc181 = add nsw i32 %164, 1
  store i32 %inc181, ptr %i, align 4
  br label %for.cond164, !llvm.loop !12

for.end182:                                       ; preds = %for.cond164
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end182, %if.then
  %165 = load i32, ptr %retval, align 4
  ret i32 %165
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_init_encode(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_book_init_decode(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_init(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_psy_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @drft_init(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog2(i32 noundef) #3

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind allocsize(0) }

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
