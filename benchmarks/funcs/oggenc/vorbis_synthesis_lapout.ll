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

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_lapout(ptr noundef %v, ptr noundef %pcm) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %pcm.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %hs = alloca i32, align 4
  %n = alloca i32, align 4
  %n0 = alloca i32, align 4
  %n1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca ptr, align 8
  %temp = alloca float, align 4
  %s = alloca ptr, align 8
  %d = alloca ptr, align 8
  %s93 = alloca ptr, align 8
  %d97 = alloca ptr, align 8
  %i129 = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store ptr %pcm, ptr %pcm.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  %4 = load ptr, ptr %ci, align 8
  %halfrate_flag = getelementptr inbounds nuw %struct.codec_setup_info, ptr %4, i32 0, i32 20
  %5 = load i32, ptr %halfrate_flag, align 8
  store i32 %5, ptr %hs, align 4
  %6 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 10
  %8 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %8
  %9 = load i64, ptr %arrayidx, align 8
  %10 = load i32, ptr %hs, align 4
  %add = add nsw i32 %10, 1
  %sh_prom = zext i32 %add to i64
  %shr = ashr i64 %9, %sh_prom
  %conv = trunc i64 %shr to i32
  store i32 %conv, ptr %n, align 4
  %11 = load ptr, ptr %ci, align 8
  %blocksizes2 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %blocksizes2, i64 0, i64 0
  %12 = load i64, ptr %arrayidx3, align 8
  %13 = load i32, ptr %hs, align 4
  %add4 = add nsw i32 %13, 1
  %sh_prom5 = zext i32 %add4 to i64
  %shr6 = ashr i64 %12, %sh_prom5
  %conv7 = trunc i64 %shr6 to i32
  store i32 %conv7, ptr %n0, align 4
  %14 = load ptr, ptr %ci, align 8
  %blocksizes8 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %14, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [2 x i64], ptr %blocksizes8, i64 0, i64 1
  %15 = load i64, ptr %arrayidx9, align 8
  %16 = load i32, ptr %hs, align 4
  %add10 = add nsw i32 %16, 1
  %sh_prom11 = zext i32 %add10 to i64
  %shr12 = ashr i64 %15, %sh_prom11
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, ptr %n1, align 4
  %17 = load ptr, ptr %v.addr, align 8
  %pcm_returned = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %pcm_returned, align 8
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %19 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %19, i32 0, i32 12
  %20 = load i64, ptr %centerW, align 8
  %21 = load i32, ptr %n1, align 4
  %conv15 = sext i32 %21 to i64
  %cmp16 = icmp eq i64 %20, %conv15
  br i1 %cmp16, label %if.then18, label %if.end43

if.then18:                                        ; preds = %if.end
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %if.then18
  %22 = load i32, ptr %j, align 4
  %23 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %channels, align 4
  %cmp19 = icmp slt i32 %22, %24
  br i1 %cmp19, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %v.addr, align 8
  %pcm21 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %pcm21, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx22, align 8
  store ptr %28, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %n1, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body26, label %for.end

for.body26:                                       ; preds = %for.cond23
  %31 = load ptr, ptr %p, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %31, i64 %idxprom27
  %33 = load float, ptr %arrayidx28, align 4
  store float %33, ptr %temp, align 4
  %34 = load ptr, ptr %p, align 8
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %n1, align 4
  %add29 = add nsw i32 %35, %36
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, ptr %34, i64 %idxprom30
  %37 = load float, ptr %arrayidx31, align 4
  %38 = load ptr, ptr %p, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds float, ptr %38, i64 %idxprom32
  store float %37, ptr %arrayidx33, align 4
  %40 = load float, ptr %temp, align 4
  %41 = load ptr, ptr %p, align 8
  %42 = load i32, ptr %i, align 4
  %43 = load i32, ptr %n1, align 4
  %add34 = add nsw i32 %42, %43
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %41, i64 %idxprom35
  store float %40, ptr %arrayidx36, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body26
  %44 = load i32, ptr %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond23, !llvm.loop !6

for.end:                                          ; preds = %for.cond23
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %45 = load i32, ptr %j, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end39:                                        ; preds = %for.cond
  %46 = load i32, ptr %n1, align 4
  %47 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %pcm_current, align 4
  %sub = sub nsw i32 %48, %46
  store i32 %sub, ptr %pcm_current, align 4
  %49 = load i32, ptr %n1, align 4
  %50 = load ptr, ptr %v.addr, align 8
  %pcm_returned40 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %50, i32 0, i32 6
  %51 = load i32, ptr %pcm_returned40, align 8
  %sub41 = sub nsw i32 %51, %49
  store i32 %sub41, ptr %pcm_returned40, align 8
  %52 = load ptr, ptr %v.addr, align 8
  %centerW42 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %52, i32 0, i32 12
  store i64 0, ptr %centerW42, align 8
  br label %if.end43

if.end43:                                         ; preds = %for.end39, %if.end
  %53 = load ptr, ptr %v.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %53, i32 0, i32 9
  %54 = load i64, ptr %lW, align 8
  %55 = load ptr, ptr %v.addr, align 8
  %W44 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %55, i32 0, i32 10
  %56 = load i64, ptr %W44, align 8
  %xor = xor i64 %54, %56
  %cmp45 = icmp eq i64 %xor, 1
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end43
  store i32 0, ptr %j, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc73, %if.then47
  %57 = load i32, ptr %j, align 4
  %58 = load ptr, ptr %vi, align 8
  %channels49 = getelementptr inbounds nuw %struct.vorbis_info, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %channels49, align 4
  %cmp50 = icmp slt i32 %57, %59
  br i1 %cmp50, label %for.body52, label %for.end75

for.body52:                                       ; preds = %for.cond48
  %60 = load ptr, ptr %v.addr, align 8
  %pcm53 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %pcm53, align 8
  %62 = load i32, ptr %j, align 4
  %idxprom54 = sext i32 %62 to i64
  %arrayidx55 = getelementptr inbounds ptr, ptr %61, i64 %idxprom54
  %63 = load ptr, ptr %arrayidx55, align 8
  store ptr %63, ptr %s, align 8
  %64 = load ptr, ptr %v.addr, align 8
  %pcm56 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %pcm56, align 8
  %66 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %66 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %65, i64 %idxprom57
  %67 = load ptr, ptr %arrayidx58, align 8
  %68 = load i32, ptr %n1, align 4
  %69 = load i32, ptr %n0, align 4
  %sub59 = sub nsw i32 %68, %69
  %div = sdiv i32 %sub59, 2
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds float, ptr %67, i64 %idx.ext
  store ptr %add.ptr, ptr %d, align 8
  %70 = load i32, ptr %n1, align 4
  %71 = load i32, ptr %n0, align 4
  %add60 = add nsw i32 %70, %71
  %div61 = sdiv i32 %add60, 2
  %sub62 = sub nsw i32 %div61, 1
  store i32 %sub62, ptr %i, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.body52
  %72 = load i32, ptr %i, align 4
  %cmp64 = icmp sge i32 %72, 0
  br i1 %cmp64, label %for.body66, label %for.end72

for.body66:                                       ; preds = %for.cond63
  %73 = load ptr, ptr %s, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %74 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %73, i64 %idxprom67
  %75 = load float, ptr %arrayidx68, align 4
  %76 = load ptr, ptr %d, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %77 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %76, i64 %idxprom69
  store float %75, ptr %arrayidx70, align 4
  br label %for.inc71

for.inc71:                                        ; preds = %for.body66
  %78 = load i32, ptr %i, align 4
  %dec = add nsw i32 %78, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond63, !llvm.loop !9

for.end72:                                        ; preds = %for.cond63
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %79 = load i32, ptr %j, align 4
  %inc74 = add nsw i32 %79, 1
  store i32 %inc74, ptr %j, align 4
  br label %for.cond48, !llvm.loop !10

for.end75:                                        ; preds = %for.cond48
  %80 = load i32, ptr %n1, align 4
  %81 = load i32, ptr %n0, align 4
  %sub76 = sub nsw i32 %80, %81
  %div77 = sdiv i32 %sub76, 2
  %82 = load ptr, ptr %v.addr, align 8
  %pcm_returned78 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %82, i32 0, i32 6
  %83 = load i32, ptr %pcm_returned78, align 8
  %add79 = add nsw i32 %83, %div77
  store i32 %add79, ptr %pcm_returned78, align 8
  %84 = load i32, ptr %n1, align 4
  %85 = load i32, ptr %n0, align 4
  %sub80 = sub nsw i32 %84, %85
  %div81 = sdiv i32 %sub80, 2
  %86 = load ptr, ptr %v.addr, align 8
  %pcm_current82 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %86, i32 0, i32 5
  %87 = load i32, ptr %pcm_current82, align 4
  %add83 = add nsw i32 %87, %div81
  store i32 %add83, ptr %pcm_current82, align 4
  br label %if.end127

if.else:                                          ; preds = %if.end43
  %88 = load ptr, ptr %v.addr, align 8
  %lW84 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %88, i32 0, i32 9
  %89 = load i64, ptr %lW84, align 8
  %cmp85 = icmp eq i64 %89, 0
  br i1 %cmp85, label %if.then87, label %if.end126

if.then87:                                        ; preds = %if.else
  store i32 0, ptr %j, align 4
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc117, %if.then87
  %90 = load i32, ptr %j, align 4
  %91 = load ptr, ptr %vi, align 8
  %channels89 = getelementptr inbounds nuw %struct.vorbis_info, ptr %91, i32 0, i32 1
  %92 = load i32, ptr %channels89, align 4
  %cmp90 = icmp slt i32 %90, %92
  br i1 %cmp90, label %for.body92, label %for.end119

for.body92:                                       ; preds = %for.cond88
  %93 = load ptr, ptr %v.addr, align 8
  %pcm94 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %93, i32 0, i32 2
  %94 = load ptr, ptr %pcm94, align 8
  %95 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %95 to i64
  %arrayidx96 = getelementptr inbounds ptr, ptr %94, i64 %idxprom95
  %96 = load ptr, ptr %arrayidx96, align 8
  store ptr %96, ptr %s93, align 8
  %97 = load ptr, ptr %v.addr, align 8
  %pcm98 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %pcm98, align 8
  %99 = load i32, ptr %j, align 4
  %idxprom99 = sext i32 %99 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %98, i64 %idxprom99
  %100 = load ptr, ptr %arrayidx100, align 8
  %101 = load i32, ptr %n1, align 4
  %idx.ext101 = sext i32 %101 to i64
  %add.ptr102 = getelementptr inbounds float, ptr %100, i64 %idx.ext101
  %102 = load i32, ptr %n0, align 4
  %idx.ext103 = sext i32 %102 to i64
  %idx.neg = sub i64 0, %idx.ext103
  %add.ptr104 = getelementptr inbounds float, ptr %add.ptr102, i64 %idx.neg
  store ptr %add.ptr104, ptr %d97, align 8
  %103 = load i32, ptr %n0, align 4
  %sub105 = sub nsw i32 %103, 1
  store i32 %sub105, ptr %i, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc114, %for.body92
  %104 = load i32, ptr %i, align 4
  %cmp107 = icmp sge i32 %104, 0
  br i1 %cmp107, label %for.body109, label %for.end116

for.body109:                                      ; preds = %for.cond106
  %105 = load ptr, ptr %s93, align 8
  %106 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %106 to i64
  %arrayidx111 = getelementptr inbounds float, ptr %105, i64 %idxprom110
  %107 = load float, ptr %arrayidx111, align 4
  %108 = load ptr, ptr %d97, align 8
  %109 = load i32, ptr %i, align 4
  %idxprom112 = sext i32 %109 to i64
  %arrayidx113 = getelementptr inbounds float, ptr %108, i64 %idxprom112
  store float %107, ptr %arrayidx113, align 4
  br label %for.inc114

for.inc114:                                       ; preds = %for.body109
  %110 = load i32, ptr %i, align 4
  %dec115 = add nsw i32 %110, -1
  store i32 %dec115, ptr %i, align 4
  br label %for.cond106, !llvm.loop !11

for.end116:                                       ; preds = %for.cond106
  br label %for.inc117

for.inc117:                                       ; preds = %for.end116
  %111 = load i32, ptr %j, align 4
  %inc118 = add nsw i32 %111, 1
  store i32 %inc118, ptr %j, align 4
  br label %for.cond88, !llvm.loop !12

for.end119:                                       ; preds = %for.cond88
  %112 = load i32, ptr %n1, align 4
  %113 = load i32, ptr %n0, align 4
  %sub120 = sub nsw i32 %112, %113
  %114 = load ptr, ptr %v.addr, align 8
  %pcm_returned121 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %114, i32 0, i32 6
  %115 = load i32, ptr %pcm_returned121, align 8
  %add122 = add nsw i32 %115, %sub120
  store i32 %add122, ptr %pcm_returned121, align 8
  %116 = load i32, ptr %n1, align 4
  %117 = load i32, ptr %n0, align 4
  %sub123 = sub nsw i32 %116, %117
  %118 = load ptr, ptr %v.addr, align 8
  %pcm_current124 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %118, i32 0, i32 5
  %119 = load i32, ptr %pcm_current124, align 4
  %add125 = add nsw i32 %119, %sub123
  store i32 %add125, ptr %pcm_current124, align 4
  br label %if.end126

if.end126:                                        ; preds = %for.end119, %if.else
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %for.end75
  %120 = load ptr, ptr %pcm.addr, align 8
  %tobool = icmp ne ptr %120, null
  br i1 %tobool, label %if.then128, label %if.end147

if.then128:                                       ; preds = %if.end127
  store i32 0, ptr %i129, align 4
  br label %for.cond130

for.cond130:                                      ; preds = %for.inc143, %if.then128
  %121 = load i32, ptr %i129, align 4
  %122 = load ptr, ptr %vi, align 8
  %channels131 = getelementptr inbounds nuw %struct.vorbis_info, ptr %122, i32 0, i32 1
  %123 = load i32, ptr %channels131, align 4
  %cmp132 = icmp slt i32 %121, %123
  br i1 %cmp132, label %for.body134, label %for.end145

for.body134:                                      ; preds = %for.cond130
  %124 = load ptr, ptr %v.addr, align 8
  %pcm135 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %124, i32 0, i32 2
  %125 = load ptr, ptr %pcm135, align 8
  %126 = load i32, ptr %i129, align 4
  %idxprom136 = sext i32 %126 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %125, i64 %idxprom136
  %127 = load ptr, ptr %arrayidx137, align 8
  %128 = load ptr, ptr %v.addr, align 8
  %pcm_returned138 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %128, i32 0, i32 6
  %129 = load i32, ptr %pcm_returned138, align 8
  %idx.ext139 = sext i32 %129 to i64
  %add.ptr140 = getelementptr inbounds float, ptr %127, i64 %idx.ext139
  %130 = load ptr, ptr %v.addr, align 8
  %pcmret = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %130, i32 0, i32 3
  %131 = load ptr, ptr %pcmret, align 8
  %132 = load i32, ptr %i129, align 4
  %idxprom141 = sext i32 %132 to i64
  %arrayidx142 = getelementptr inbounds ptr, ptr %131, i64 %idxprom141
  store ptr %add.ptr140, ptr %arrayidx142, align 8
  br label %for.inc143

for.inc143:                                       ; preds = %for.body134
  %133 = load i32, ptr %i129, align 4
  %inc144 = add nsw i32 %133, 1
  store i32 %inc144, ptr %i129, align 4
  br label %for.cond130, !llvm.loop !13

for.end145:                                       ; preds = %for.cond130
  %134 = load ptr, ptr %v.addr, align 8
  %pcmret146 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %134, i32 0, i32 3
  %135 = load ptr, ptr %pcmret146, align 8
  %136 = load ptr, ptr %pcm.addr, align 8
  store ptr %135, ptr %136, align 8
  br label %if.end147

if.end147:                                        ; preds = %for.end145, %if.end127
  %137 = load i32, ptr %n1, align 4
  %138 = load i32, ptr %n, align 4
  %add148 = add nsw i32 %137, %138
  %139 = load ptr, ptr %v.addr, align 8
  %pcm_returned149 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %139, i32 0, i32 6
  %140 = load i32, ptr %pcm_returned149, align 8
  %sub150 = sub nsw i32 %add148, %140
  store i32 %sub150, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end147, %if.then
  %141 = load i32, ptr %retval, align 4
  ret i32 %141
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
