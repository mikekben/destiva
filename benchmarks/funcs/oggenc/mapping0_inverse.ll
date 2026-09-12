; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_func_floor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_func_residue = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@_floor_P = external dso_local global [2 x ptr], align 16
@_residue_P = external dso_local global [3 x ptr], align 16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local void @mdct_backward(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @mapping0_inverse(ptr noundef %vb, ptr noundef %l) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %vd = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %b = alloca ptr, align 8
  %info = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i64, align 8
  %pcmbundle = alloca ptr, align 8
  %zerobundle = alloca ptr, align 8
  %nonzero = alloca ptr, align 8
  %floormemo = alloca ptr, align 8
  %submap = alloca i32, align 4
  %ch_in_bundle = alloca i32, align 4
  %pcmM = alloca ptr, align 8
  %pcmA = alloca ptr, align 8
  %mag = alloca float, align 4
  %ang = alloca float, align 4
  %pcm189 = alloca ptr, align 8
  %submap193 = alloca i32, align 4
  %pcm222 = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %l, ptr %l.addr, align 8
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
  %6 = load ptr, ptr %vd, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %backend_state, align 8
  store ptr %7, ptr %b, align 8
  %8 = load ptr, ptr %l.addr, align 8
  store ptr %8, ptr %info, align 8
  %9 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %10, i32 0, i32 3
  %11 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %11
  %12 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %12 to i32
  %13 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %13, i32 0, i32 5
  store i32 %conv, ptr %pcmend, align 8
  %conv3 = sext i32 %conv to i64
  store i64 %conv3, ptr %n, align 8
  %14 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %channels, align 4
  %conv4 = sext i32 %15 to i64
  %mul = mul i64 8, %conv4
  %16 = alloca i8, i64 %mul, align 16
  store ptr %16, ptr %pcmbundle, align 8
  %17 = load ptr, ptr %vi, align 8
  %channels5 = getelementptr inbounds nuw %struct.vorbis_info, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %channels5, align 4
  %conv6 = sext i32 %18 to i64
  %mul7 = mul i64 4, %conv6
  %19 = alloca i8, i64 %mul7, align 16
  store ptr %19, ptr %zerobundle, align 8
  %20 = load ptr, ptr %vi, align 8
  %channels8 = getelementptr inbounds nuw %struct.vorbis_info, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %channels8, align 4
  %conv9 = sext i32 %21 to i64
  %mul10 = mul i64 4, %conv9
  %22 = alloca i8, i64 %mul10, align 16
  store ptr %22, ptr %nonzero, align 8
  %23 = load ptr, ptr %vi, align 8
  %channels11 = getelementptr inbounds nuw %struct.vorbis_info, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %channels11, align 4
  %conv12 = sext i32 %24 to i64
  %mul13 = mul i64 8, %conv12
  %25 = alloca i8, i64 %mul13, align 16
  store ptr %25, ptr %floormemo, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %26 = load i32, ptr %i, align 4
  %27 = load ptr, ptr %vi, align 8
  %channels14 = getelementptr inbounds nuw %struct.vorbis_info, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %channels14, align 4
  %cmp = icmp slt i32 %26, %28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %info, align 8
  %chmuxlist = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx16 = getelementptr inbounds [256 x i32], ptr %chmuxlist, i64 0, i64 %idxprom
  %31 = load i32, ptr %arrayidx16, align 4
  store i32 %31, ptr %submap, align 4
  %32 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %32, i32 0, i32 10
  %33 = load ptr, ptr %info, align 8
  %floorsubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %submap, align 4
  %idxprom17 = sext i32 %34 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %floorsubmap, i64 0, i64 %idxprom17
  %35 = load i32, ptr %arrayidx18, align 4
  %idxprom19 = sext i32 %35 to i64
  %arrayidx20 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom19
  %36 = load i32, ptr %arrayidx20, align 4
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds [2 x ptr], ptr @_floor_P, i64 0, i64 %idxprom21
  %37 = load ptr, ptr %arrayidx22, align 8
  %inverse1 = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %37, i32 0, i32 5
  %38 = load ptr, ptr %inverse1, align 8
  %39 = load ptr, ptr %vb.addr, align 8
  %40 = load ptr, ptr %b, align 8
  %flr = getelementptr inbounds nuw %struct.private_state, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %flr, align 8
  %42 = load ptr, ptr %info, align 8
  %floorsubmap23 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %submap, align 4
  %idxprom24 = sext i32 %43 to i64
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %floorsubmap23, i64 0, i64 %idxprom24
  %44 = load i32, ptr %arrayidx25, align 4
  %idxprom26 = sext i32 %44 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %41, i64 %idxprom26
  %45 = load ptr, ptr %arrayidx27, align 8
  %call = call ptr %38(ptr noundef %39, ptr noundef %45)
  %46 = load ptr, ptr %floormemo, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %47 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %46, i64 %idxprom28
  store ptr %call, ptr %arrayidx29, align 8
  %48 = load ptr, ptr %floormemo, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %49 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %48, i64 %idxprom30
  %50 = load ptr, ptr %arrayidx31, align 8
  %tobool = icmp ne ptr %50, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %51 = load ptr, ptr %nonzero, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %52 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %51, i64 %idxprom32
  store i32 1, ptr %arrayidx33, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %53 = load ptr, ptr %nonzero, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %54 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %53, i64 %idxprom34
  store i32 0, ptr %arrayidx35, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %55 = load ptr, ptr %vb.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_block, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pcm, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %57 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %56, i64 %idxprom36
  %58 = load ptr, ptr %arrayidx37, align 8
  %59 = load i64, ptr %n, align 8
  %mul38 = mul i64 4, %59
  %div = udiv i64 %mul38, 2
  call void @llvm.memset.p0.i64(ptr align 4 %58, i8 0, i64 %div, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %60 = load i32, ptr %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc65, %for.end
  %61 = load i32, ptr %i, align 4
  %62 = load ptr, ptr %info, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %62, i32 0, i32 4
  %63 = load i32, ptr %coupling_steps, align 4
  %cmp40 = icmp slt i32 %61, %63
  br i1 %cmp40, label %for.body42, label %for.end67

for.body42:                                       ; preds = %for.cond39
  %64 = load ptr, ptr %nonzero, align 8
  %65 = load ptr, ptr %info, align 8
  %coupling_mag = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %65, i32 0, i32 5
  %66 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %66 to i64
  %arrayidx44 = getelementptr inbounds [256 x i32], ptr %coupling_mag, i64 0, i64 %idxprom43
  %67 = load i32, ptr %arrayidx44, align 4
  %idxprom45 = sext i32 %67 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %64, i64 %idxprom45
  %68 = load i32, ptr %arrayidx46, align 4
  %tobool47 = icmp ne i32 %68, 0
  br i1 %tobool47, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body42
  %69 = load ptr, ptr %nonzero, align 8
  %70 = load ptr, ptr %info, align 8
  %coupling_ang = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %70, i32 0, i32 6
  %71 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %71 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], ptr %coupling_ang, i64 0, i64 %idxprom48
  %72 = load i32, ptr %arrayidx49, align 4
  %idxprom50 = sext i32 %72 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %69, i64 %idxprom50
  %73 = load i32, ptr %arrayidx51, align 4
  %tobool52 = icmp ne i32 %73, 0
  br i1 %tobool52, label %if.then53, label %if.end64

if.then53:                                        ; preds = %lor.lhs.false, %for.body42
  %74 = load ptr, ptr %nonzero, align 8
  %75 = load ptr, ptr %info, align 8
  %coupling_mag54 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %75, i32 0, i32 5
  %76 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %76 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], ptr %coupling_mag54, i64 0, i64 %idxprom55
  %77 = load i32, ptr %arrayidx56, align 4
  %idxprom57 = sext i32 %77 to i64
  %arrayidx58 = getelementptr inbounds i32, ptr %74, i64 %idxprom57
  store i32 1, ptr %arrayidx58, align 4
  %78 = load ptr, ptr %nonzero, align 8
  %79 = load ptr, ptr %info, align 8
  %coupling_ang59 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %79, i32 0, i32 6
  %80 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %80 to i64
  %arrayidx61 = getelementptr inbounds [256 x i32], ptr %coupling_ang59, i64 0, i64 %idxprom60
  %81 = load i32, ptr %arrayidx61, align 4
  %idxprom62 = sext i32 %81 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %78, i64 %idxprom62
  store i32 1, ptr %arrayidx63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then53, %lor.lhs.false
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %82 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %82, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond39, !llvm.loop !8

for.end67:                                        ; preds = %for.cond39
  store i32 0, ptr %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc115, %for.end67
  %83 = load i32, ptr %i, align 4
  %84 = load ptr, ptr %info, align 8
  %submaps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %84, i32 0, i32 0
  %85 = load i32, ptr %submaps, align 4
  %cmp69 = icmp slt i32 %83, %85
  br i1 %cmp69, label %for.body71, label %for.end117

for.body71:                                       ; preds = %for.cond68
  store i32 0, ptr %ch_in_bundle, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc100, %for.body71
  %86 = load i32, ptr %j, align 4
  %87 = load ptr, ptr %vi, align 8
  %channels73 = getelementptr inbounds nuw %struct.vorbis_info, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %channels73, align 4
  %cmp74 = icmp slt i32 %86, %88
  br i1 %cmp74, label %for.body76, label %for.end102

for.body76:                                       ; preds = %for.cond72
  %89 = load ptr, ptr %info, align 8
  %chmuxlist77 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %j, align 4
  %idxprom78 = sext i32 %90 to i64
  %arrayidx79 = getelementptr inbounds [256 x i32], ptr %chmuxlist77, i64 0, i64 %idxprom78
  %91 = load i32, ptr %arrayidx79, align 4
  %92 = load i32, ptr %i, align 4
  %cmp80 = icmp eq i32 %91, %92
  br i1 %cmp80, label %if.then82, label %if.end99

if.then82:                                        ; preds = %for.body76
  %93 = load ptr, ptr %nonzero, align 8
  %94 = load i32, ptr %j, align 4
  %idxprom83 = sext i32 %94 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %93, i64 %idxprom83
  %95 = load i32, ptr %arrayidx84, align 4
  %tobool85 = icmp ne i32 %95, 0
  br i1 %tobool85, label %if.then86, label %if.else89

if.then86:                                        ; preds = %if.then82
  %96 = load ptr, ptr %zerobundle, align 8
  %97 = load i32, ptr %ch_in_bundle, align 4
  %idxprom87 = sext i32 %97 to i64
  %arrayidx88 = getelementptr inbounds i32, ptr %96, i64 %idxprom87
  store i32 1, ptr %arrayidx88, align 4
  br label %if.end92

if.else89:                                        ; preds = %if.then82
  %98 = load ptr, ptr %zerobundle, align 8
  %99 = load i32, ptr %ch_in_bundle, align 4
  %idxprom90 = sext i32 %99 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %98, i64 %idxprom90
  store i32 0, ptr %arrayidx91, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.else89, %if.then86
  %100 = load ptr, ptr %vb.addr, align 8
  %pcm93 = getelementptr inbounds nuw %struct.vorbis_block, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %pcm93, align 8
  %102 = load i32, ptr %j, align 4
  %idxprom94 = sext i32 %102 to i64
  %arrayidx95 = getelementptr inbounds ptr, ptr %101, i64 %idxprom94
  %103 = load ptr, ptr %arrayidx95, align 8
  %104 = load ptr, ptr %pcmbundle, align 8
  %105 = load i32, ptr %ch_in_bundle, align 4
  %inc96 = add nsw i32 %105, 1
  store i32 %inc96, ptr %ch_in_bundle, align 4
  %idxprom97 = sext i32 %105 to i64
  %arrayidx98 = getelementptr inbounds ptr, ptr %104, i64 %idxprom97
  store ptr %103, ptr %arrayidx98, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.end92, %for.body76
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %106 = load i32, ptr %j, align 4
  %inc101 = add nsw i32 %106, 1
  store i32 %inc101, ptr %j, align 4
  br label %for.cond72, !llvm.loop !9

for.end102:                                       ; preds = %for.cond72
  %107 = load ptr, ptr %ci, align 8
  %residue_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %info, align 8
  %residuesubmap = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %108, i32 0, i32 3
  %109 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %109 to i64
  %arrayidx104 = getelementptr inbounds [16 x i32], ptr %residuesubmap, i64 0, i64 %idxprom103
  %110 = load i32, ptr %arrayidx104, align 4
  %idxprom105 = sext i32 %110 to i64
  %arrayidx106 = getelementptr inbounds [64 x i32], ptr %residue_type, i64 0, i64 %idxprom105
  %111 = load i32, ptr %arrayidx106, align 4
  %idxprom107 = sext i32 %111 to i64
  %arrayidx108 = getelementptr inbounds [3 x ptr], ptr @_residue_P, i64 0, i64 %idxprom107
  %112 = load ptr, ptr %arrayidx108, align 8
  %inverse = getelementptr inbounds nuw %struct.vorbis_func_residue, ptr %112, i32 0, i32 7
  %113 = load ptr, ptr %inverse, align 8
  %114 = load ptr, ptr %vb.addr, align 8
  %115 = load ptr, ptr %b, align 8
  %residue = getelementptr inbounds nuw %struct.private_state, ptr %115, i32 0, i32 6
  %116 = load ptr, ptr %residue, align 8
  %117 = load ptr, ptr %info, align 8
  %residuesubmap109 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %117, i32 0, i32 3
  %118 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %118 to i64
  %arrayidx111 = getelementptr inbounds [16 x i32], ptr %residuesubmap109, i64 0, i64 %idxprom110
  %119 = load i32, ptr %arrayidx111, align 4
  %idxprom112 = sext i32 %119 to i64
  %arrayidx113 = getelementptr inbounds ptr, ptr %116, i64 %idxprom112
  %120 = load ptr, ptr %arrayidx113, align 8
  %121 = load ptr, ptr %pcmbundle, align 8
  %122 = load ptr, ptr %zerobundle, align 8
  %123 = load i32, ptr %ch_in_bundle, align 4
  %call114 = call i32 %113(ptr noundef %114, ptr noundef %120, ptr noundef %121, ptr noundef %122, i32 noundef %123)
  br label %for.inc115

for.inc115:                                       ; preds = %for.end102
  %124 = load i32, ptr %i, align 4
  %inc116 = add nsw i32 %124, 1
  store i32 %inc116, ptr %i, align 4
  br label %for.cond68, !llvm.loop !10

for.end117:                                       ; preds = %for.cond68
  %125 = load ptr, ptr %info, align 8
  %coupling_steps118 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %125, i32 0, i32 4
  %126 = load i32, ptr %coupling_steps118, align 4
  %sub = sub nsw i32 %126, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond119

for.cond119:                                      ; preds = %for.inc182, %for.end117
  %127 = load i32, ptr %i, align 4
  %cmp120 = icmp sge i32 %127, 0
  br i1 %cmp120, label %for.body122, label %for.end183

for.body122:                                      ; preds = %for.cond119
  %128 = load ptr, ptr %vb.addr, align 8
  %pcm123 = getelementptr inbounds nuw %struct.vorbis_block, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %pcm123, align 8
  %130 = load ptr, ptr %info, align 8
  %coupling_mag124 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %130, i32 0, i32 5
  %131 = load i32, ptr %i, align 4
  %idxprom125 = sext i32 %131 to i64
  %arrayidx126 = getelementptr inbounds [256 x i32], ptr %coupling_mag124, i64 0, i64 %idxprom125
  %132 = load i32, ptr %arrayidx126, align 4
  %idxprom127 = sext i32 %132 to i64
  %arrayidx128 = getelementptr inbounds ptr, ptr %129, i64 %idxprom127
  %133 = load ptr, ptr %arrayidx128, align 8
  store ptr %133, ptr %pcmM, align 8
  %134 = load ptr, ptr %vb.addr, align 8
  %pcm129 = getelementptr inbounds nuw %struct.vorbis_block, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %pcm129, align 8
  %136 = load ptr, ptr %info, align 8
  %coupling_ang130 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %136, i32 0, i32 6
  %137 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %137 to i64
  %arrayidx132 = getelementptr inbounds [256 x i32], ptr %coupling_ang130, i64 0, i64 %idxprom131
  %138 = load i32, ptr %arrayidx132, align 4
  %idxprom133 = sext i32 %138 to i64
  %arrayidx134 = getelementptr inbounds ptr, ptr %135, i64 %idxprom133
  %139 = load ptr, ptr %arrayidx134, align 8
  store ptr %139, ptr %pcmA, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc179, %for.body122
  %140 = load i32, ptr %j, align 4
  %conv136 = sext i32 %140 to i64
  %141 = load i64, ptr %n, align 8
  %div137 = sdiv i64 %141, 2
  %cmp138 = icmp slt i64 %conv136, %div137
  br i1 %cmp138, label %for.body140, label %for.end181

for.body140:                                      ; preds = %for.cond135
  %142 = load ptr, ptr %pcmM, align 8
  %143 = load i32, ptr %j, align 4
  %idxprom141 = sext i32 %143 to i64
  %arrayidx142 = getelementptr inbounds float, ptr %142, i64 %idxprom141
  %144 = load float, ptr %arrayidx142, align 4
  store float %144, ptr %mag, align 4
  %145 = load ptr, ptr %pcmA, align 8
  %146 = load i32, ptr %j, align 4
  %idxprom143 = sext i32 %146 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %145, i64 %idxprom143
  %147 = load float, ptr %arrayidx144, align 4
  store float %147, ptr %ang, align 4
  %148 = load float, ptr %mag, align 4
  %cmp145 = fcmp ogt float %148, 0.000000e+00
  br i1 %cmp145, label %if.then147, label %if.else162

if.then147:                                       ; preds = %for.body140
  %149 = load float, ptr %ang, align 4
  %cmp148 = fcmp ogt float %149, 0.000000e+00
  br i1 %cmp148, label %if.then150, label %if.else156

if.then150:                                       ; preds = %if.then147
  %150 = load float, ptr %mag, align 4
  %151 = load ptr, ptr %pcmM, align 8
  %152 = load i32, ptr %j, align 4
  %idxprom151 = sext i32 %152 to i64
  %arrayidx152 = getelementptr inbounds float, ptr %151, i64 %idxprom151
  store float %150, ptr %arrayidx152, align 4
  %153 = load float, ptr %mag, align 4
  %154 = load float, ptr %ang, align 4
  %sub153 = fsub float %153, %154
  %155 = load ptr, ptr %pcmA, align 8
  %156 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %156 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %155, i64 %idxprom154
  store float %sub153, ptr %arrayidx155, align 4
  br label %if.end161

if.else156:                                       ; preds = %if.then147
  %157 = load float, ptr %mag, align 4
  %158 = load ptr, ptr %pcmA, align 8
  %159 = load i32, ptr %j, align 4
  %idxprom157 = sext i32 %159 to i64
  %arrayidx158 = getelementptr inbounds float, ptr %158, i64 %idxprom157
  store float %157, ptr %arrayidx158, align 4
  %160 = load float, ptr %mag, align 4
  %161 = load float, ptr %ang, align 4
  %add = fadd float %160, %161
  %162 = load ptr, ptr %pcmM, align 8
  %163 = load i32, ptr %j, align 4
  %idxprom159 = sext i32 %163 to i64
  %arrayidx160 = getelementptr inbounds float, ptr %162, i64 %idxprom159
  store float %add, ptr %arrayidx160, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.else156, %if.then150
  br label %if.end178

if.else162:                                       ; preds = %for.body140
  %164 = load float, ptr %ang, align 4
  %cmp163 = fcmp ogt float %164, 0.000000e+00
  br i1 %cmp163, label %if.then165, label %if.else171

if.then165:                                       ; preds = %if.else162
  %165 = load float, ptr %mag, align 4
  %166 = load ptr, ptr %pcmM, align 8
  %167 = load i32, ptr %j, align 4
  %idxprom166 = sext i32 %167 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %166, i64 %idxprom166
  store float %165, ptr %arrayidx167, align 4
  %168 = load float, ptr %mag, align 4
  %169 = load float, ptr %ang, align 4
  %add168 = fadd float %168, %169
  %170 = load ptr, ptr %pcmA, align 8
  %171 = load i32, ptr %j, align 4
  %idxprom169 = sext i32 %171 to i64
  %arrayidx170 = getelementptr inbounds float, ptr %170, i64 %idxprom169
  store float %add168, ptr %arrayidx170, align 4
  br label %if.end177

if.else171:                                       ; preds = %if.else162
  %172 = load float, ptr %mag, align 4
  %173 = load ptr, ptr %pcmA, align 8
  %174 = load i32, ptr %j, align 4
  %idxprom172 = sext i32 %174 to i64
  %arrayidx173 = getelementptr inbounds float, ptr %173, i64 %idxprom172
  store float %172, ptr %arrayidx173, align 4
  %175 = load float, ptr %mag, align 4
  %176 = load float, ptr %ang, align 4
  %sub174 = fsub float %175, %176
  %177 = load ptr, ptr %pcmM, align 8
  %178 = load i32, ptr %j, align 4
  %idxprom175 = sext i32 %178 to i64
  %arrayidx176 = getelementptr inbounds float, ptr %177, i64 %idxprom175
  store float %sub174, ptr %arrayidx176, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.else171, %if.then165
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end161
  br label %for.inc179

for.inc179:                                       ; preds = %if.end178
  %179 = load i32, ptr %j, align 4
  %inc180 = add nsw i32 %179, 1
  store i32 %inc180, ptr %j, align 4
  br label %for.cond135, !llvm.loop !11

for.end181:                                       ; preds = %for.cond135
  br label %for.inc182

for.inc182:                                       ; preds = %for.end181
  %180 = load i32, ptr %i, align 4
  %dec = add nsw i32 %180, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond119, !llvm.loop !12

for.end183:                                       ; preds = %for.cond119
  store i32 0, ptr %i, align 4
  br label %for.cond184

for.cond184:                                      ; preds = %for.inc214, %for.end183
  %181 = load i32, ptr %i, align 4
  %182 = load ptr, ptr %vi, align 8
  %channels185 = getelementptr inbounds nuw %struct.vorbis_info, ptr %182, i32 0, i32 1
  %183 = load i32, ptr %channels185, align 4
  %cmp186 = icmp slt i32 %181, %183
  br i1 %cmp186, label %for.body188, label %for.end216

for.body188:                                      ; preds = %for.cond184
  %184 = load ptr, ptr %vb.addr, align 8
  %pcm190 = getelementptr inbounds nuw %struct.vorbis_block, ptr %184, i32 0, i32 0
  %185 = load ptr, ptr %pcm190, align 8
  %186 = load i32, ptr %i, align 4
  %idxprom191 = sext i32 %186 to i64
  %arrayidx192 = getelementptr inbounds ptr, ptr %185, i64 %idxprom191
  %187 = load ptr, ptr %arrayidx192, align 8
  store ptr %187, ptr %pcm189, align 8
  %188 = load ptr, ptr %info, align 8
  %chmuxlist194 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %188, i32 0, i32 1
  %189 = load i32, ptr %i, align 4
  %idxprom195 = sext i32 %189 to i64
  %arrayidx196 = getelementptr inbounds [256 x i32], ptr %chmuxlist194, i64 0, i64 %idxprom195
  %190 = load i32, ptr %arrayidx196, align 4
  store i32 %190, ptr %submap193, align 4
  %191 = load ptr, ptr %ci, align 8
  %floor_type197 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %191, i32 0, i32 10
  %192 = load ptr, ptr %info, align 8
  %floorsubmap198 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %192, i32 0, i32 2
  %193 = load i32, ptr %submap193, align 4
  %idxprom199 = sext i32 %193 to i64
  %arrayidx200 = getelementptr inbounds [16 x i32], ptr %floorsubmap198, i64 0, i64 %idxprom199
  %194 = load i32, ptr %arrayidx200, align 4
  %idxprom201 = sext i32 %194 to i64
  %arrayidx202 = getelementptr inbounds [64 x i32], ptr %floor_type197, i64 0, i64 %idxprom201
  %195 = load i32, ptr %arrayidx202, align 4
  %idxprom203 = sext i32 %195 to i64
  %arrayidx204 = getelementptr inbounds [2 x ptr], ptr @_floor_P, i64 0, i64 %idxprom203
  %196 = load ptr, ptr %arrayidx204, align 8
  %inverse2 = getelementptr inbounds nuw %struct.vorbis_func_floor, ptr %196, i32 0, i32 6
  %197 = load ptr, ptr %inverse2, align 8
  %198 = load ptr, ptr %vb.addr, align 8
  %199 = load ptr, ptr %b, align 8
  %flr205 = getelementptr inbounds nuw %struct.private_state, ptr %199, i32 0, i32 5
  %200 = load ptr, ptr %flr205, align 8
  %201 = load ptr, ptr %info, align 8
  %floorsubmap206 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %201, i32 0, i32 2
  %202 = load i32, ptr %submap193, align 4
  %idxprom207 = sext i32 %202 to i64
  %arrayidx208 = getelementptr inbounds [16 x i32], ptr %floorsubmap206, i64 0, i64 %idxprom207
  %203 = load i32, ptr %arrayidx208, align 4
  %idxprom209 = sext i32 %203 to i64
  %arrayidx210 = getelementptr inbounds ptr, ptr %200, i64 %idxprom209
  %204 = load ptr, ptr %arrayidx210, align 8
  %205 = load ptr, ptr %floormemo, align 8
  %206 = load i32, ptr %i, align 4
  %idxprom211 = sext i32 %206 to i64
  %arrayidx212 = getelementptr inbounds ptr, ptr %205, i64 %idxprom211
  %207 = load ptr, ptr %arrayidx212, align 8
  %208 = load ptr, ptr %pcm189, align 8
  %call213 = call i32 %197(ptr noundef %198, ptr noundef %204, ptr noundef %207, ptr noundef %208)
  br label %for.inc214

for.inc214:                                       ; preds = %for.body188
  %209 = load i32, ptr %i, align 4
  %inc215 = add nsw i32 %209, 1
  store i32 %inc215, ptr %i, align 4
  br label %for.cond184, !llvm.loop !13

for.end216:                                       ; preds = %for.cond184
  store i32 0, ptr %i, align 4
  br label %for.cond217

for.cond217:                                      ; preds = %for.inc229, %for.end216
  %210 = load i32, ptr %i, align 4
  %211 = load ptr, ptr %vi, align 8
  %channels218 = getelementptr inbounds nuw %struct.vorbis_info, ptr %211, i32 0, i32 1
  %212 = load i32, ptr %channels218, align 4
  %cmp219 = icmp slt i32 %210, %212
  br i1 %cmp219, label %for.body221, label %for.end231

for.body221:                                      ; preds = %for.cond217
  %213 = load ptr, ptr %vb.addr, align 8
  %pcm223 = getelementptr inbounds nuw %struct.vorbis_block, ptr %213, i32 0, i32 0
  %214 = load ptr, ptr %pcm223, align 8
  %215 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %215 to i64
  %arrayidx225 = getelementptr inbounds ptr, ptr %214, i64 %idxprom224
  %216 = load ptr, ptr %arrayidx225, align 8
  store ptr %216, ptr %pcm222, align 8
  %217 = load ptr, ptr %b, align 8
  %transform = getelementptr inbounds nuw %struct.private_state, ptr %217, i32 0, i32 2
  %218 = load ptr, ptr %vb.addr, align 8
  %W226 = getelementptr inbounds nuw %struct.vorbis_block, ptr %218, i32 0, i32 3
  %219 = load i64, ptr %W226, align 8
  %arrayidx227 = getelementptr inbounds [2 x ptr], ptr %transform, i64 0, i64 %219
  %220 = load ptr, ptr %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds ptr, ptr %220, i64 0
  %221 = load ptr, ptr %arrayidx228, align 8
  %222 = load ptr, ptr %pcm222, align 8
  %223 = load ptr, ptr %pcm222, align 8
  call void @mdct_backward(ptr noundef %221, ptr noundef %222, ptr noundef %223)
  br label %for.inc229

for.inc229:                                       ; preds = %for.body221
  %224 = load i32, ptr %i, align 4
  %inc230 = add nsw i32 %224, 1
  store i32 %inc230, ptr %i, align 4
  br label %for.cond217, !llvm.loop !14

for.end231:                                       ; preds = %for.cond217
  ret i32 0
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
