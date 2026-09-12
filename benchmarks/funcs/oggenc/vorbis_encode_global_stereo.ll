; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.adj_stereo = type { [15 x i32], [15 x i32], [15 x float], [15 x float] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_global_stereo(ptr noundef %vi, ptr noundef %hi, ptr noundef %p) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %hi.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %s = alloca float, align 4
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %ds = alloca double, align 8
  %ci = alloca ptr, align 8
  %g = alloca ptr, align 8
  %kHz = alloca float, align 4
  %kHz96 = alloca float, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %hi, ptr %hi.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %hi.addr, align 8
  %stereo_point_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %0, i32 0, i32 16
  %1 = load double, ptr %stereo_point_setting, align 8
  %conv = fptrunc double %1 to float
  store float %conv, ptr %s, align 4
  %2 = load float, ptr %s, align 4
  %conv1 = fptosi float %2 to i32
  store i32 %conv1, ptr %is, align 4
  %3 = load float, ptr %s, align 4
  %4 = load i32, ptr %is, align 4
  %conv2 = sitofp i32 %4 to float
  %sub = fsub float %3, %conv2
  %conv3 = fpext float %sub to double
  store double %conv3, ptr %ds, align 8
  %5 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %codec_setup, align 8
  store ptr %6, ptr %ci, align 8
  %7 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %7, i32 0, i32 17
  store ptr %psy_g_param, ptr %g, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.else201

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %g, align 8
  %coupling_prepointamp = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %9, i32 0, i32 8
  %arraydecay = getelementptr inbounds [15 x i32], ptr %coupling_prepointamp, i64 0, i64 0
  %10 = load ptr, ptr %p.addr, align 8
  %11 = load i32, ptr %is, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.adj_stereo, ptr %10, i64 %idxprom
  %pre = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [15 x i32], ptr %pre, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 %arraydecay4, i64 60, i1 false)
  %12 = load ptr, ptr %g, align 8
  %coupling_postpointamp = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %12, i32 0, i32 9
  %arraydecay5 = getelementptr inbounds [15 x i32], ptr %coupling_postpointamp, i64 0, i64 0
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i32, ptr %is, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds %struct.adj_stereo, ptr %13, i64 %idxprom6
  %post = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx7, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [15 x i32], ptr %post, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay5, ptr align 4 %arraydecay8, i64 60, i1 false)
  %15 = load ptr, ptr %hi.addr, align 8
  %managed = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %managed, align 8
  %tobool9 = icmp ne i32 %16, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %17 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %17, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %p.addr, align 8
  %19 = load i32, ptr %is, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds %struct.adj_stereo, ptr %18, i64 %idxprom12
  %kHz14 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx13, i32 0, i32 2
  %20 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [15 x float], ptr %kHz14, i64 0, i64 %idxprom15
  %21 = load float, ptr %arrayidx16, align 4
  %conv17 = fpext float %21 to double
  %22 = load double, ptr %ds, align 8
  %sub18 = fsub double 1.000000e+00, %22
  %23 = load ptr, ptr %p.addr, align 8
  %24 = load i32, ptr %is, align 4
  %add = add nsw i32 %24, 1
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds %struct.adj_stereo, ptr %23, i64 %idxprom19
  %kHz21 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx20, i32 0, i32 2
  %25 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [15 x float], ptr %kHz21, i64 0, i64 %idxprom22
  %26 = load float, ptr %arrayidx23, align 4
  %conv24 = fpext float %26 to double
  %27 = load double, ptr %ds, align 8
  %mul25 = fmul double %conv24, %27
  %28 = call double @llvm.fmuladd.f64(double %conv17, double %sub18, double %mul25)
  %conv26 = fptrunc double %28 to float
  store float %conv26, ptr %kHz, align 4
  %29 = load float, ptr %kHz, align 4
  %conv27 = fpext float %29 to double
  %mul = fmul double %conv27, 1.000000e+03
  %30 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %rate, align 8
  %conv28 = sitofp i64 %31 to double
  %div = fdiv double %mul, %conv28
  %32 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %32, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %33 = load i64, ptr %arrayidx29, align 8
  %conv30 = sitofp i64 %33 to double
  %mul31 = fmul double %div, %conv30
  %conv32 = fptosi double %mul31 to i32
  %34 = load ptr, ptr %g, align 8
  %coupling_pointlimit = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %34, i32 0, i32 7
  %arrayidx33 = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit, i64 0, i64 0
  %35 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [15 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  store i32 %conv32, ptr %arrayidx35, align 4
  %36 = load float, ptr %kHz, align 4
  %conv36 = fpext float %36 to double
  %mul37 = fmul double %conv36, 1.000000e+03
  %37 = load ptr, ptr %vi.addr, align 8
  %rate38 = getelementptr inbounds nuw %struct.vorbis_info, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %rate38, align 8
  %conv39 = sitofp i64 %38 to double
  %div40 = fdiv double %mul37, %conv39
  %39 = load ptr, ptr %ci, align 8
  %blocksizes41 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %39, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [2 x i64], ptr %blocksizes41, i64 0, i64 1
  %40 = load i64, ptr %arrayidx42, align 8
  %conv43 = sitofp i64 %40 to double
  %mul44 = fmul double %div40, %conv43
  %conv45 = fptosi double %mul44 to i32
  %41 = load ptr, ptr %g, align 8
  %coupling_pointlimit46 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %41, i32 0, i32 7
  %arrayidx47 = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit46, i64 0, i64 1
  %42 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %42 to i64
  %arrayidx49 = getelementptr inbounds [15 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  store i32 %conv45, ptr %arrayidx49, align 4
  %43 = load float, ptr %kHz, align 4
  %conv50 = fptosi float %43 to i32
  %44 = load ptr, ptr %g, align 8
  %coupling_pkHz = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %arrayidx52 = getelementptr inbounds [15 x i32], ptr %coupling_pkHz, i64 0, i64 %idxprom51
  store i32 %conv50, ptr %arrayidx52, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %47 = load i32, ptr %is, align 4
  %idxprom53 = sext i32 %47 to i64
  %arrayidx54 = getelementptr inbounds %struct.adj_stereo, ptr %46, i64 %idxprom53
  %lowpasskHz = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx54, i32 0, i32 3
  %48 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %48 to i64
  %arrayidx56 = getelementptr inbounds [15 x float], ptr %lowpasskHz, i64 0, i64 %idxprom55
  %49 = load float, ptr %arrayidx56, align 4
  %conv57 = fpext float %49 to double
  %50 = load double, ptr %ds, align 8
  %sub58 = fsub double 1.000000e+00, %50
  %51 = load ptr, ptr %p.addr, align 8
  %52 = load i32, ptr %is, align 4
  %add60 = add nsw i32 %52, 1
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds %struct.adj_stereo, ptr %51, i64 %idxprom61
  %lowpasskHz63 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx62, i32 0, i32 3
  %53 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %53 to i64
  %arrayidx65 = getelementptr inbounds [15 x float], ptr %lowpasskHz63, i64 0, i64 %idxprom64
  %54 = load float, ptr %arrayidx65, align 4
  %conv66 = fpext float %54 to double
  %55 = load double, ptr %ds, align 8
  %mul67 = fmul double %conv66, %55
  %56 = call double @llvm.fmuladd.f64(double %conv57, double %sub58, double %mul67)
  %conv68 = fptrunc double %56 to float
  store float %conv68, ptr %kHz, align 4
  %57 = load float, ptr %kHz, align 4
  %conv69 = fpext float %57 to double
  %mul70 = fmul double %conv69, 1.000000e+03
  %58 = load ptr, ptr %vi.addr, align 8
  %rate71 = getelementptr inbounds nuw %struct.vorbis_info, ptr %58, i32 0, i32 2
  %59 = load i64, ptr %rate71, align 8
  %conv72 = sitofp i64 %59 to double
  %div73 = fdiv double %mul70, %conv72
  %60 = load ptr, ptr %ci, align 8
  %blocksizes74 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %60, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [2 x i64], ptr %blocksizes74, i64 0, i64 0
  %61 = load i64, ptr %arrayidx75, align 8
  %conv76 = sitofp i64 %61 to double
  %mul77 = fmul double %div73, %conv76
  %conv78 = fptosi double %mul77 to i32
  %62 = load ptr, ptr %g, align 8
  %sliding_lowpass = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %62, i32 0, i32 10
  %arrayidx79 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass, i64 0, i64 0
  %63 = load i32, ptr %i, align 4
  %idxprom80 = sext i32 %63 to i64
  %arrayidx81 = getelementptr inbounds [15 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  store i32 %conv78, ptr %arrayidx81, align 4
  %64 = load float, ptr %kHz, align 4
  %conv82 = fpext float %64 to double
  %mul83 = fmul double %conv82, 1.000000e+03
  %65 = load ptr, ptr %vi.addr, align 8
  %rate84 = getelementptr inbounds nuw %struct.vorbis_info, ptr %65, i32 0, i32 2
  %66 = load i64, ptr %rate84, align 8
  %conv85 = sitofp i64 %66 to double
  %div86 = fdiv double %mul83, %conv85
  %67 = load ptr, ptr %ci, align 8
  %blocksizes87 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %67, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [2 x i64], ptr %blocksizes87, i64 0, i64 1
  %68 = load i64, ptr %arrayidx88, align 8
  %conv89 = sitofp i64 %68 to double
  %mul90 = fmul double %div86, %conv89
  %conv91 = fptosi double %mul90 to i32
  %69 = load ptr, ptr %g, align 8
  %sliding_lowpass92 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %69, i32 0, i32 10
  %arrayidx93 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass92, i64 0, i64 1
  %70 = load i32, ptr %i, align 4
  %idxprom94 = sext i32 %70 to i64
  %arrayidx95 = getelementptr inbounds [15 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  store i32 %conv91, ptr %arrayidx95, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %71 = load i32, ptr %i, align 4
  %inc = add nsw i32 %71, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %if.then
  %72 = load ptr, ptr %p.addr, align 8
  %73 = load i32, ptr %is, align 4
  %idxprom97 = sext i32 %73 to i64
  %arrayidx98 = getelementptr inbounds %struct.adj_stereo, ptr %72, i64 %idxprom97
  %kHz99 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx98, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [15 x float], ptr %kHz99, i64 0, i64 7
  %74 = load float, ptr %arrayidx100, align 4
  %conv101 = fpext float %74 to double
  %75 = load double, ptr %ds, align 8
  %sub102 = fsub double 1.000000e+00, %75
  %76 = load ptr, ptr %p.addr, align 8
  %77 = load i32, ptr %is, align 4
  %add104 = add nsw i32 %77, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds %struct.adj_stereo, ptr %76, i64 %idxprom105
  %kHz107 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx106, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [15 x float], ptr %kHz107, i64 0, i64 7
  %78 = load float, ptr %arrayidx108, align 4
  %conv109 = fpext float %78 to double
  %79 = load double, ptr %ds, align 8
  %mul110 = fmul double %conv109, %79
  %80 = call double @llvm.fmuladd.f64(double %conv101, double %sub102, double %mul110)
  %conv111 = fptrunc double %80 to float
  store float %conv111, ptr %kHz96, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc148, %if.else
  %81 = load i32, ptr %i, align 4
  %cmp113 = icmp slt i32 %81, 15
  br i1 %cmp113, label %for.body115, label %for.end150

for.body115:                                      ; preds = %for.cond112
  %82 = load float, ptr %kHz96, align 4
  %conv116 = fpext float %82 to double
  %mul117 = fmul double %conv116, 1.000000e+03
  %83 = load ptr, ptr %vi.addr, align 8
  %rate118 = getelementptr inbounds nuw %struct.vorbis_info, ptr %83, i32 0, i32 2
  %84 = load i64, ptr %rate118, align 8
  %conv119 = sitofp i64 %84 to double
  %div120 = fdiv double %mul117, %conv119
  %85 = load ptr, ptr %ci, align 8
  %blocksizes121 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %85, i32 0, i32 0
  %arrayidx122 = getelementptr inbounds [2 x i64], ptr %blocksizes121, i64 0, i64 0
  %86 = load i64, ptr %arrayidx122, align 8
  %conv123 = sitofp i64 %86 to double
  %mul124 = fmul double %div120, %conv123
  %conv125 = fptosi double %mul124 to i32
  %87 = load ptr, ptr %g, align 8
  %coupling_pointlimit126 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %87, i32 0, i32 7
  %arrayidx127 = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit126, i64 0, i64 0
  %88 = load i32, ptr %i, align 4
  %idxprom128 = sext i32 %88 to i64
  %arrayidx129 = getelementptr inbounds [15 x i32], ptr %arrayidx127, i64 0, i64 %idxprom128
  store i32 %conv125, ptr %arrayidx129, align 4
  %89 = load float, ptr %kHz96, align 4
  %conv130 = fpext float %89 to double
  %mul131 = fmul double %conv130, 1.000000e+03
  %90 = load ptr, ptr %vi.addr, align 8
  %rate132 = getelementptr inbounds nuw %struct.vorbis_info, ptr %90, i32 0, i32 2
  %91 = load i64, ptr %rate132, align 8
  %conv133 = sitofp i64 %91 to double
  %div134 = fdiv double %mul131, %conv133
  %92 = load ptr, ptr %ci, align 8
  %blocksizes135 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %92, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x i64], ptr %blocksizes135, i64 0, i64 1
  %93 = load i64, ptr %arrayidx136, align 8
  %conv137 = sitofp i64 %93 to double
  %mul138 = fmul double %div134, %conv137
  %conv139 = fptosi double %mul138 to i32
  %94 = load ptr, ptr %g, align 8
  %coupling_pointlimit140 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %94, i32 0, i32 7
  %arrayidx141 = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit140, i64 0, i64 1
  %95 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %95 to i64
  %arrayidx143 = getelementptr inbounds [15 x i32], ptr %arrayidx141, i64 0, i64 %idxprom142
  store i32 %conv139, ptr %arrayidx143, align 4
  %96 = load float, ptr %kHz96, align 4
  %conv144 = fptosi float %96 to i32
  %97 = load ptr, ptr %g, align 8
  %coupling_pkHz145 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %97, i32 0, i32 6
  %98 = load i32, ptr %i, align 4
  %idxprom146 = sext i32 %98 to i64
  %arrayidx147 = getelementptr inbounds [15 x i32], ptr %coupling_pkHz145, i64 0, i64 %idxprom146
  store i32 %conv144, ptr %arrayidx147, align 4
  br label %for.inc148

for.inc148:                                       ; preds = %for.body115
  %99 = load i32, ptr %i, align 4
  %inc149 = add nsw i32 %99, 1
  store i32 %inc149, ptr %i, align 4
  br label %for.cond112, !llvm.loop !8

for.end150:                                       ; preds = %for.cond112
  %100 = load ptr, ptr %p.addr, align 8
  %101 = load i32, ptr %is, align 4
  %idxprom151 = sext i32 %101 to i64
  %arrayidx152 = getelementptr inbounds %struct.adj_stereo, ptr %100, i64 %idxprom151
  %lowpasskHz153 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx152, i32 0, i32 3
  %arrayidx154 = getelementptr inbounds [15 x float], ptr %lowpasskHz153, i64 0, i64 7
  %102 = load float, ptr %arrayidx154, align 4
  %conv155 = fpext float %102 to double
  %103 = load double, ptr %ds, align 8
  %sub156 = fsub double 1.000000e+00, %103
  %104 = load ptr, ptr %p.addr, align 8
  %105 = load i32, ptr %is, align 4
  %add158 = add nsw i32 %105, 1
  %idxprom159 = sext i32 %add158 to i64
  %arrayidx160 = getelementptr inbounds %struct.adj_stereo, ptr %104, i64 %idxprom159
  %lowpasskHz161 = getelementptr inbounds nuw %struct.adj_stereo, ptr %arrayidx160, i32 0, i32 3
  %arrayidx162 = getelementptr inbounds [15 x float], ptr %lowpasskHz161, i64 0, i64 7
  %106 = load float, ptr %arrayidx162, align 4
  %conv163 = fpext float %106 to double
  %107 = load double, ptr %ds, align 8
  %mul164 = fmul double %conv163, %107
  %108 = call double @llvm.fmuladd.f64(double %conv155, double %sub156, double %mul164)
  %conv165 = fptrunc double %108 to float
  store float %conv165, ptr %kHz96, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc198, %for.end150
  %109 = load i32, ptr %i, align 4
  %cmp167 = icmp slt i32 %109, 15
  br i1 %cmp167, label %for.body169, label %for.end200

for.body169:                                      ; preds = %for.cond166
  %110 = load float, ptr %kHz96, align 4
  %conv170 = fpext float %110 to double
  %mul171 = fmul double %conv170, 1.000000e+03
  %111 = load ptr, ptr %vi.addr, align 8
  %rate172 = getelementptr inbounds nuw %struct.vorbis_info, ptr %111, i32 0, i32 2
  %112 = load i64, ptr %rate172, align 8
  %conv173 = sitofp i64 %112 to double
  %div174 = fdiv double %mul171, %conv173
  %113 = load ptr, ptr %ci, align 8
  %blocksizes175 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %113, i32 0, i32 0
  %arrayidx176 = getelementptr inbounds [2 x i64], ptr %blocksizes175, i64 0, i64 0
  %114 = load i64, ptr %arrayidx176, align 8
  %conv177 = sitofp i64 %114 to double
  %mul178 = fmul double %div174, %conv177
  %conv179 = fptosi double %mul178 to i32
  %115 = load ptr, ptr %g, align 8
  %sliding_lowpass180 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %115, i32 0, i32 10
  %arrayidx181 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass180, i64 0, i64 0
  %116 = load i32, ptr %i, align 4
  %idxprom182 = sext i32 %116 to i64
  %arrayidx183 = getelementptr inbounds [15 x i32], ptr %arrayidx181, i64 0, i64 %idxprom182
  store i32 %conv179, ptr %arrayidx183, align 4
  %117 = load float, ptr %kHz96, align 4
  %conv184 = fpext float %117 to double
  %mul185 = fmul double %conv184, 1.000000e+03
  %118 = load ptr, ptr %vi.addr, align 8
  %rate186 = getelementptr inbounds nuw %struct.vorbis_info, ptr %118, i32 0, i32 2
  %119 = load i64, ptr %rate186, align 8
  %conv187 = sitofp i64 %119 to double
  %div188 = fdiv double %mul185, %conv187
  %120 = load ptr, ptr %ci, align 8
  %blocksizes189 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %120, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [2 x i64], ptr %blocksizes189, i64 0, i64 1
  %121 = load i64, ptr %arrayidx190, align 8
  %conv191 = sitofp i64 %121 to double
  %mul192 = fmul double %div188, %conv191
  %conv193 = fptosi double %mul192 to i32
  %122 = load ptr, ptr %g, align 8
  %sliding_lowpass194 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %122, i32 0, i32 10
  %arrayidx195 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass194, i64 0, i64 1
  %123 = load i32, ptr %i, align 4
  %idxprom196 = sext i32 %123 to i64
  %arrayidx197 = getelementptr inbounds [15 x i32], ptr %arrayidx195, i64 0, i64 %idxprom196
  store i32 %conv193, ptr %arrayidx197, align 4
  br label %for.inc198

for.inc198:                                       ; preds = %for.body169
  %124 = load i32, ptr %i, align 4
  %inc199 = add nsw i32 %124, 1
  store i32 %inc199, ptr %i, align 4
  br label %for.cond166, !llvm.loop !9

for.end200:                                       ; preds = %for.cond166
  br label %if.end

if.end:                                           ; preds = %for.end200, %for.end
  br label %if.end223

if.else201:                                       ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc220, %if.else201
  %125 = load i32, ptr %i, align 4
  %cmp203 = icmp slt i32 %125, 15
  br i1 %cmp203, label %for.body205, label %for.end222

for.body205:                                      ; preds = %for.cond202
  %126 = load ptr, ptr %ci, align 8
  %blocksizes206 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %126, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [2 x i64], ptr %blocksizes206, i64 0, i64 0
  %127 = load i64, ptr %arrayidx207, align 8
  %conv208 = trunc i64 %127 to i32
  %128 = load ptr, ptr %g, align 8
  %sliding_lowpass209 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %128, i32 0, i32 10
  %arrayidx210 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass209, i64 0, i64 0
  %129 = load i32, ptr %i, align 4
  %idxprom211 = sext i32 %129 to i64
  %arrayidx212 = getelementptr inbounds [15 x i32], ptr %arrayidx210, i64 0, i64 %idxprom211
  store i32 %conv208, ptr %arrayidx212, align 4
  %130 = load ptr, ptr %ci, align 8
  %blocksizes213 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %130, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [2 x i64], ptr %blocksizes213, i64 0, i64 1
  %131 = load i64, ptr %arrayidx214, align 8
  %conv215 = trunc i64 %131 to i32
  %132 = load ptr, ptr %g, align 8
  %sliding_lowpass216 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %132, i32 0, i32 10
  %arrayidx217 = getelementptr inbounds [2 x [15 x i32]], ptr %sliding_lowpass216, i64 0, i64 1
  %133 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %133 to i64
  %arrayidx219 = getelementptr inbounds [15 x i32], ptr %arrayidx217, i64 0, i64 %idxprom218
  store i32 %conv215, ptr %arrayidx219, align 4
  br label %for.inc220

for.inc220:                                       ; preds = %for.body205
  %134 = load i32, ptr %i, align 4
  %inc221 = add nsw i32 %134, 1
  store i32 %inc221, ptr %i, align 4
  br label %for.cond202, !llvm.loop !10

for.end222:                                       ; preds = %for.cond202
  br label %if.end223

if.end223:                                        ; preds = %for.end222, %if.end
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
