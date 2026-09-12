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
%struct.vorbis_func_floor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }

@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_dsp_clear(ptr noundef %v) #1 {
entry:
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end118

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %vi1, align 8
  store ptr %2, ptr %vi, align 8
  %3 = load ptr, ptr %vi, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %codec_setup, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %ci, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %backend_state, align 8
  store ptr %7, ptr %b, align 8
  %8 = load ptr, ptr %b, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then4, label %if.end79

if.then4:                                         ; preds = %cond.end
  %9 = load ptr, ptr %b, align 8
  %ve = getelementptr inbounds nuw %struct.private_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %ve, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then4
  %11 = load ptr, ptr %b, align 8
  %ve7 = getelementptr inbounds nuw %struct.private_state, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %ve7, align 8
  call void @_ve_envelope_clear(ptr noundef %12)
  %13 = load ptr, ptr %b, align 8
  %ve8 = getelementptr inbounds nuw %struct.private_state, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %ve8, align 8
  call void @free(ptr noundef %14) #3
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then4
  %15 = load ptr, ptr %b, align 8
  %transform = getelementptr inbounds nuw %struct.private_state, ptr %15, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %transform, i64 0, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %tobool9 = icmp ne ptr %16, null
  br i1 %tobool9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %b, align 8
  %transform11 = getelementptr inbounds nuw %struct.private_state, ptr %17, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [2 x ptr], ptr %transform11, i64 0, i64 0
  %18 = load ptr, ptr %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx13, align 8
  call void @mdct_clear(ptr noundef %19)
  %20 = load ptr, ptr %b, align 8
  %transform14 = getelementptr inbounds nuw %struct.private_state, ptr %20, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [2 x ptr], ptr %transform14, i64 0, i64 0
  %21 = load ptr, ptr %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx16, align 8
  call void @free(ptr noundef %22) #3
  %23 = load ptr, ptr %b, align 8
  %transform17 = getelementptr inbounds nuw %struct.private_state, ptr %23, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [2 x ptr], ptr %transform17, i64 0, i64 0
  %24 = load ptr, ptr %arrayidx18, align 8
  call void @free(ptr noundef %24) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.end
  %25 = load ptr, ptr %b, align 8
  %transform20 = getelementptr inbounds nuw %struct.private_state, ptr %25, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %transform20, i64 0, i64 1
  %26 = load ptr, ptr %arrayidx21, align 8
  %tobool22 = icmp ne ptr %26, null
  br i1 %tobool22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.end19
  %27 = load ptr, ptr %b, align 8
  %transform24 = getelementptr inbounds nuw %struct.private_state, ptr %27, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [2 x ptr], ptr %transform24, i64 0, i64 1
  %28 = load ptr, ptr %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %28, i64 0
  %29 = load ptr, ptr %arrayidx26, align 8
  call void @mdct_clear(ptr noundef %29)
  %30 = load ptr, ptr %b, align 8
  %transform27 = getelementptr inbounds nuw %struct.private_state, ptr %30, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [2 x ptr], ptr %transform27, i64 0, i64 1
  %31 = load ptr, ptr %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %31, i64 0
  %32 = load ptr, ptr %arrayidx29, align 8
  call void @free(ptr noundef %32) #3
  %33 = load ptr, ptr %b, align 8
  %transform30 = getelementptr inbounds nuw %struct.private_state, ptr %33, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [2 x ptr], ptr %transform30, i64 0, i64 1
  %34 = load ptr, ptr %arrayidx31, align 8
  call void @free(ptr noundef %34) #3
  br label %if.end32

if.end32:                                         ; preds = %if.then23, %if.end19
  %35 = load ptr, ptr %b, align 8
  %flr = getelementptr inbounds nuw %struct.private_state, ptr %35, i32 0, i32 5
  %36 = load ptr, ptr %flr, align 8
  %tobool33 = icmp ne ptr %36, null
  br i1 %tobool33, label %if.then34, label %if.end42

if.then34:                                        ; preds = %if.end32
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then34
  %37 = load i32, ptr %i, align 4
  %38 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %floors, align 8
  %cmp = icmp slt i32 %37, %39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %40, i32 0, i32 10
  %41 = load i32, ptr %i, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx35 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom
  %42 = load i32, ptr %arrayidx35, align 4
  %idxprom36 = sext i32 %42 to i64
  %arrayidx37 = getelementptr inbounds [0 x ptr], ptr @_floor_P, i64 0, i64 %idxprom36
  %43 = load ptr, ptr %arrayidx37, align 8
  %free_look = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %free_look, align 8
  %45 = load ptr, ptr %b, align 8
  %flr38 = getelementptr inbounds nuw %struct.private_state, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %flr38, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %47 to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %46, i64 %idxprom39
  %48 = load ptr, ptr %arrayidx40, align 8
  call void %44(ptr noundef %48)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %50 = load ptr, ptr %b, align 8
  %flr41 = getelementptr inbounds nuw %struct.private_state, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %flr41, align 8
  call void @free(ptr noundef %51) #3
  br label %if.end42

if.end42:                                         ; preds = %for.end, %if.end32
  %52 = load ptr, ptr %b, align 8
  %residue = getelementptr inbounds nuw %struct.private_state, ptr %52, i32 0, i32 6
  %53 = load ptr, ptr %residue, align 8
  %tobool43 = icmp ne ptr %53, null
  br i1 %tobool43, label %if.then44, label %if.end60

if.then44:                                        ; preds = %if.end42
  store i32 0, ptr %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc56, %if.then44
  %54 = load i32, ptr %i, align 4
  %55 = load ptr, ptr %ci, align 8
  %residues = getelementptr inbounds nuw %struct.codec_setup_info, ptr %55, i32 0, i32 4
  %56 = load i32, ptr %residues, align 4
  %cmp46 = icmp slt i32 %54, %56
  br i1 %cmp46, label %for.body47, label %for.end58

for.body47:                                       ; preds = %for.cond45
  %57 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %57, i32 0, i32 12
  %58 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %58 to i64
  %arrayidx49 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom48
  %59 = load i32, ptr %arrayidx49, align 4
  %idxprom50 = sext i32 %59 to i64
  %arrayidx51 = getelementptr inbounds [0 x ptr], ptr @_residue_P, i64 0, i64 %idxprom50
  %60 = load ptr, ptr %arrayidx51, align 8
  %free_look52 = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %free_look52, align 8
  %62 = load ptr, ptr %b, align 8
  %residue53 = getelementptr inbounds nuw %struct.private_state, ptr %62, i32 0, i32 6
  %63 = load ptr, ptr %residue53, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %64 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %63, i64 %idxprom54
  %65 = load ptr, ptr %arrayidx55, align 8
  call void %61(ptr noundef %65)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body47
  %66 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %66, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond45, !llvm.loop !8

for.end58:                                        ; preds = %for.cond45
  %67 = load ptr, ptr %b, align 8
  %residue59 = getelementptr inbounds nuw %struct.private_state, ptr %67, i32 0, i32 6
  %68 = load ptr, ptr %residue59, align 8
  call void @free(ptr noundef %68) #3
  br label %if.end60

if.end60:                                         ; preds = %for.end58, %if.end42
  %69 = load ptr, ptr %b, align 8
  %psy = getelementptr inbounds nuw %struct.private_state, ptr %69, i32 0, i32 7
  %70 = load ptr, ptr %psy, align 8
  %tobool61 = icmp ne ptr %70, null
  br i1 %tobool61, label %if.then62, label %if.end71

if.then62:                                        ; preds = %if.end60
  store i32 0, ptr %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc67, %if.then62
  %71 = load i32, ptr %i, align 4
  %72 = load ptr, ptr %ci, align 8
  %psys = getelementptr inbounds nuw %struct.codec_setup_info, ptr %72, i32 0, i32 6
  %73 = load i32, ptr %psys, align 4
  %cmp64 = icmp slt i32 %71, %73
  br i1 %cmp64, label %for.body65, label %for.end69

for.body65:                                       ; preds = %for.cond63
  %74 = load ptr, ptr %b, align 8
  %psy66 = getelementptr inbounds nuw %struct.private_state, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %psy66, align 8
  %76 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %76 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_look_psy, ptr %75, i64 %idx.ext
  call void @_vp_psy_clear(ptr noundef %add.ptr)
  br label %for.inc67

for.inc67:                                        ; preds = %for.body65
  %77 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %77, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond63, !llvm.loop !9

for.end69:                                        ; preds = %for.cond63
  %78 = load ptr, ptr %b, align 8
  %psy70 = getelementptr inbounds nuw %struct.private_state, ptr %78, i32 0, i32 7
  %79 = load ptr, ptr %psy70, align 8
  call void @free(ptr noundef %79) #3
  br label %if.end71

if.end71:                                         ; preds = %for.end69, %if.end60
  %80 = load ptr, ptr %b, align 8
  %psy_g_look = getelementptr inbounds nuw %struct.private_state, ptr %80, i32 0, i32 8
  %81 = load ptr, ptr %psy_g_look, align 8
  %tobool72 = icmp ne ptr %81, null
  br i1 %tobool72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end71
  %82 = load ptr, ptr %b, align 8
  %psy_g_look74 = getelementptr inbounds nuw %struct.private_state, ptr %82, i32 0, i32 8
  %83 = load ptr, ptr %psy_g_look74, align 8
  call void @_vp_global_free(ptr noundef %83)
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71
  %84 = load ptr, ptr %b, align 8
  %bms = getelementptr inbounds nuw %struct.private_state, ptr %84, i32 0, i32 12
  call void @vorbis_bitrate_clear(ptr noundef %bms)
  %85 = load ptr, ptr %b, align 8
  %fft_look = getelementptr inbounds nuw %struct.private_state, ptr %85, i32 0, i32 3
  %arrayidx76 = getelementptr inbounds [2 x %struct.drft_lookup], ptr %fft_look, i64 0, i64 0
  call void @drft_clear(ptr noundef %arrayidx76)
  %86 = load ptr, ptr %b, align 8
  %fft_look77 = getelementptr inbounds nuw %struct.private_state, ptr %86, i32 0, i32 3
  %arrayidx78 = getelementptr inbounds [2 x %struct.drft_lookup], ptr %fft_look77, i64 0, i64 1
  call void @drft_clear(ptr noundef %arrayidx78)
  br label %if.end79

if.end79:                                         ; preds = %if.end75, %cond.end
  %87 = load ptr, ptr %v.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %87, i32 0, i32 2
  %88 = load ptr, ptr %pcm, align 8
  %tobool80 = icmp ne ptr %88, null
  br i1 %tobool80, label %if.then81, label %if.end102

if.then81:                                        ; preds = %if.end79
  store i32 0, ptr %i, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc94, %if.then81
  %89 = load i32, ptr %i, align 4
  %90 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %channels, align 4
  %cmp83 = icmp slt i32 %89, %91
  br i1 %cmp83, label %for.body84, label %for.end96

for.body84:                                       ; preds = %for.cond82
  %92 = load ptr, ptr %v.addr, align 8
  %pcm85 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %pcm85, align 8
  %94 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %94 to i64
  %arrayidx87 = getelementptr inbounds ptr, ptr %93, i64 %idxprom86
  %95 = load ptr, ptr %arrayidx87, align 8
  %tobool88 = icmp ne ptr %95, null
  br i1 %tobool88, label %if.then89, label %if.end93

if.then89:                                        ; preds = %for.body84
  %96 = load ptr, ptr %v.addr, align 8
  %pcm90 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %pcm90, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %98 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %97, i64 %idxprom91
  %99 = load ptr, ptr %arrayidx92, align 8
  call void @free(ptr noundef %99) #3
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %for.body84
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %100 = load i32, ptr %i, align 4
  %inc95 = add nsw i32 %100, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond82, !llvm.loop !10

for.end96:                                        ; preds = %for.cond82
  %101 = load ptr, ptr %v.addr, align 8
  %pcm97 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %101, i32 0, i32 2
  %102 = load ptr, ptr %pcm97, align 8
  call void @free(ptr noundef %102) #3
  %103 = load ptr, ptr %v.addr, align 8
  %pcmret = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %103, i32 0, i32 3
  %104 = load ptr, ptr %pcmret, align 8
  %tobool98 = icmp ne ptr %104, null
  br i1 %tobool98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %for.end96
  %105 = load ptr, ptr %v.addr, align 8
  %pcmret100 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %105, i32 0, i32 3
  %106 = load ptr, ptr %pcmret100, align 8
  call void @free(ptr noundef %106) #3
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %for.end96
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end79
  %107 = load ptr, ptr %b, align 8
  %tobool103 = icmp ne ptr %107, null
  br i1 %tobool103, label %if.then104, label %if.end117

if.then104:                                       ; preds = %if.end102
  %108 = load ptr, ptr %b, align 8
  %header = getelementptr inbounds nuw %struct.private_state, ptr %108, i32 0, i32 9
  %109 = load ptr, ptr %header, align 8
  %tobool105 = icmp ne ptr %109, null
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then104
  %110 = load ptr, ptr %b, align 8
  %header107 = getelementptr inbounds nuw %struct.private_state, ptr %110, i32 0, i32 9
  %111 = load ptr, ptr %header107, align 8
  call void @free(ptr noundef %111) #3
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then104
  %112 = load ptr, ptr %b, align 8
  %header1 = getelementptr inbounds nuw %struct.private_state, ptr %112, i32 0, i32 10
  %113 = load ptr, ptr %header1, align 8
  %tobool109 = icmp ne ptr %113, null
  br i1 %tobool109, label %if.then110, label %if.end112

if.then110:                                       ; preds = %if.end108
  %114 = load ptr, ptr %b, align 8
  %header1111 = getelementptr inbounds nuw %struct.private_state, ptr %114, i32 0, i32 10
  %115 = load ptr, ptr %header1111, align 8
  call void @free(ptr noundef %115) #3
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %if.end108
  %116 = load ptr, ptr %b, align 8
  %header2 = getelementptr inbounds nuw %struct.private_state, ptr %116, i32 0, i32 11
  %117 = load ptr, ptr %header2, align 8
  %tobool113 = icmp ne ptr %117, null
  br i1 %tobool113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end112
  %118 = load ptr, ptr %b, align 8
  %header2115 = getelementptr inbounds nuw %struct.private_state, ptr %118, i32 0, i32 11
  %119 = load ptr, ptr %header2115, align 8
  call void @free(ptr noundef %119) #3
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end112
  %120 = load ptr, ptr %b, align 8
  call void @free(ptr noundef %120) #3
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end102
  %121 = load ptr, ptr %v.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %121, i8 0, i64 144, i1 false)
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %entry
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @_ve_envelope_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_psy_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vp_global_free(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_bitrate_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @drft_clear(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
