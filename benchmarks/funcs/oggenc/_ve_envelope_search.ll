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
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }
%struct.envelope_filter_state = type { [17 x float], i32, [15 x float], float, float, i32 }

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @_ve_envelope_search(ptr noundef %v) #1 {
entry:
  %retval = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %gi = alloca ptr, align 8
  %ve = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %first = alloca i32, align 4
  %last = alloca i32, align 4
  %ret = alloca i32, align 4
  %pcm = alloca ptr, align 8
  %centerW = alloca i64, align 8
  %testW = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  %4 = load ptr, ptr %ci, align 8
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %4, i32 0, i32 17
  store ptr %psy_g_param, ptr %gi, align 8
  %5 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %backend_state, align 8
  %ve2 = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %ve2, align 8
  store ptr %7, ptr %ve, align 8
  %8 = load ptr, ptr %ve, align 8
  %current = getelementptr inbounds nuw %struct.envelope_lookup, ptr %8, i32 0, i32 11
  %9 = load i64, ptr %current, align 8
  %10 = load ptr, ptr %ve, align 8
  %searchstep = getelementptr inbounds nuw %struct.envelope_lookup, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %searchstep, align 8
  %conv = sext i32 %11 to i64
  %div = sdiv i64 %9, %conv
  %conv3 = trunc i64 %div to i32
  store i32 %conv3, ptr %first, align 4
  %12 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %pcm_current, align 4
  %14 = load ptr, ptr %ve, align 8
  %searchstep4 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %searchstep4, align 8
  %div5 = sdiv i32 %13, %15
  %sub = sub nsw i32 %div5, 4
  store i32 %sub, ptr %last, align 4
  %16 = load i32, ptr %first, align 4
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %first, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, ptr %last, align 4
  %add = add nsw i32 %17, 4
  %add7 = add nsw i32 %add, 2
  %conv8 = sext i32 %add7 to i64
  %18 = load ptr, ptr %ve, align 8
  %storage = getelementptr inbounds nuw %struct.envelope_lookup, ptr %18, i32 0, i32 10
  %19 = load i64, ptr %storage, align 8
  %cmp9 = icmp sgt i64 %conv8, %19
  br i1 %cmp9, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end
  %20 = load i32, ptr %last, align 4
  %add12 = add nsw i32 %20, 4
  %add13 = add nsw i32 %add12, 2
  %conv14 = sext i32 %add13 to i64
  %21 = load ptr, ptr %ve, align 8
  %storage15 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %21, i32 0, i32 10
  store i64 %conv14, ptr %storage15, align 8
  %22 = load ptr, ptr %ve, align 8
  %mark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %mark, align 8
  %24 = load ptr, ptr %ve, align 8
  %storage16 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %24, i32 0, i32 10
  %25 = load i64, ptr %storage16, align 8
  %mul = mul i64 %25, 4
  %call = call ptr @realloc(ptr noundef %23, i64 noundef %mul) #2
  %26 = load ptr, ptr %ve, align 8
  %mark17 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %26, i32 0, i32 9
  store ptr %call, ptr %mark17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end
  %27 = load i32, ptr %first, align 4
  %conv19 = sext i32 %27 to i64
  store i64 %conv19, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc70, %if.end18
  %28 = load i64, ptr %j, align 8
  %29 = load i32, ptr %last, align 4
  %conv20 = sext i32 %29 to i64
  %cmp21 = icmp slt i64 %28, %conv20
  br i1 %cmp21, label %for.body, label %for.end72

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %ret, align 4
  %30 = load ptr, ptr %ve, align 8
  %stretch = getelementptr inbounds nuw %struct.envelope_lookup, ptr %30, i32 0, i32 8
  %31 = load i32, ptr %stretch, align 8
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %stretch, align 8
  %32 = load ptr, ptr %ve, align 8
  %stretch23 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %32, i32 0, i32 8
  %33 = load i32, ptr %stretch23, align 8
  %cmp24 = icmp sgt i32 %33, 24
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body
  %34 = load ptr, ptr %ve, align 8
  %stretch27 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %34, i32 0, i32 8
  store i32 24, ptr %stretch27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body
  store i64 0, ptr %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc, %if.end28
  %35 = load i64, ptr %i, align 8
  %36 = load ptr, ptr %ve, align 8
  %ch = getelementptr inbounds nuw %struct.envelope_lookup, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %ch, align 8
  %conv30 = sext i32 %37 to i64
  %cmp31 = icmp slt i64 %35, %conv30
  br i1 %cmp31, label %for.body33, label %for.end

for.body33:                                       ; preds = %for.cond29
  %38 = load ptr, ptr %v.addr, align 8
  %pcm34 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pcm34, align 8
  %40 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %39, i64 %40
  %41 = load ptr, ptr %arrayidx, align 8
  %42 = load ptr, ptr %ve, align 8
  %searchstep35 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %searchstep35, align 8
  %conv36 = sext i32 %43 to i64
  %44 = load i64, ptr %j, align 8
  %mul37 = mul nsw i64 %conv36, %44
  %add.ptr = getelementptr inbounds float, ptr %41, i64 %mul37
  store ptr %add.ptr, ptr %pcm, align 8
  %45 = load ptr, ptr %ve, align 8
  %46 = load ptr, ptr %gi, align 8
  %47 = load ptr, ptr %pcm, align 8
  %48 = load ptr, ptr %ve, align 8
  %band = getelementptr inbounds nuw %struct.envelope_lookup, ptr %48, i32 0, i32 6
  %arraydecay = getelementptr inbounds [7 x %struct.envelope_band], ptr %band, i64 0, i64 0
  %49 = load ptr, ptr %ve, align 8
  %filter = getelementptr inbounds nuw %struct.envelope_lookup, ptr %49, i32 0, i32 7
  %50 = load ptr, ptr %filter, align 8
  %51 = load i64, ptr %i, align 8
  %mul38 = mul nsw i64 %51, 7
  %add.ptr39 = getelementptr inbounds %struct.envelope_filter_state, ptr %50, i64 %mul38
  %52 = load i64, ptr %j, align 8
  %call40 = call i32 @_ve_amp(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %arraydecay, ptr noundef %add.ptr39, i64 noundef %52)
  %53 = load i32, ptr %ret, align 4
  %or = or i32 %53, %call40
  store i32 %or, ptr %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body33
  %54 = load i64, ptr %i, align 8
  %inc41 = add nsw i64 %54, 1
  store i64 %inc41, ptr %i, align 8
  br label %for.cond29, !llvm.loop !6

for.end:                                          ; preds = %for.cond29
  %55 = load ptr, ptr %ve, align 8
  %mark42 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %55, i32 0, i32 9
  %56 = load ptr, ptr %mark42, align 8
  %57 = load i64, ptr %j, align 8
  %add43 = add nsw i64 %57, 2
  %arrayidx44 = getelementptr inbounds i32, ptr %56, i64 %add43
  store i32 0, ptr %arrayidx44, align 4
  %58 = load i32, ptr %ret, align 4
  %and = and i32 %58, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then45, label %if.end51

if.then45:                                        ; preds = %for.end
  %59 = load ptr, ptr %ve, align 8
  %mark46 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %59, i32 0, i32 9
  %60 = load ptr, ptr %mark46, align 8
  %61 = load i64, ptr %j, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %60, i64 %61
  store i32 1, ptr %arrayidx47, align 4
  %62 = load ptr, ptr %ve, align 8
  %mark48 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %62, i32 0, i32 9
  %63 = load ptr, ptr %mark48, align 8
  %64 = load i64, ptr %j, align 8
  %add49 = add nsw i64 %64, 1
  %arrayidx50 = getelementptr inbounds i32, ptr %63, i64 %add49
  store i32 1, ptr %arrayidx50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %for.end
  %65 = load i32, ptr %ret, align 4
  %and52 = and i32 %65, 2
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.end64

if.then54:                                        ; preds = %if.end51
  %66 = load ptr, ptr %ve, align 8
  %mark55 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %66, i32 0, i32 9
  %67 = load ptr, ptr %mark55, align 8
  %68 = load i64, ptr %j, align 8
  %arrayidx56 = getelementptr inbounds i32, ptr %67, i64 %68
  store i32 1, ptr %arrayidx56, align 4
  %69 = load i64, ptr %j, align 8
  %cmp57 = icmp sgt i64 %69, 0
  br i1 %cmp57, label %if.then59, label %if.end63

if.then59:                                        ; preds = %if.then54
  %70 = load ptr, ptr %ve, align 8
  %mark60 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %70, i32 0, i32 9
  %71 = load ptr, ptr %mark60, align 8
  %72 = load i64, ptr %j, align 8
  %sub61 = sub nsw i64 %72, 1
  %arrayidx62 = getelementptr inbounds i32, ptr %71, i64 %sub61
  store i32 1, ptr %arrayidx62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then54
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end51
  %73 = load i32, ptr %ret, align 4
  %and65 = and i32 %73, 4
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  %74 = load ptr, ptr %ve, align 8
  %stretch68 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %74, i32 0, i32 8
  store i32 -1, ptr %stretch68, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %75 = load i64, ptr %j, align 8
  %inc71 = add nsw i64 %75, 1
  store i64 %inc71, ptr %j, align 8
  br label %for.cond, !llvm.loop !8

for.end72:                                        ; preds = %for.cond
  %76 = load i32, ptr %last, align 4
  %77 = load ptr, ptr %ve, align 8
  %searchstep73 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %77, i32 0, i32 2
  %78 = load i32, ptr %searchstep73, align 8
  %mul74 = mul nsw i32 %76, %78
  %conv75 = sext i32 %mul74 to i64
  %79 = load ptr, ptr %ve, align 8
  %current76 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %79, i32 0, i32 11
  store i64 %conv75, ptr %current76, align 8
  %80 = load ptr, ptr %v.addr, align 8
  %centerW77 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %80, i32 0, i32 12
  %81 = load i64, ptr %centerW77, align 8
  store i64 %81, ptr %centerW, align 8
  %82 = load i64, ptr %centerW, align 8
  %83 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %84, i32 0, i32 10
  %85 = load i64, ptr %W, align 8
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %85
  %86 = load i64, ptr %arrayidx78, align 8
  %div79 = sdiv i64 %86, 4
  %add80 = add nsw i64 %82, %div79
  %87 = load ptr, ptr %ci, align 8
  %blocksizes81 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %87, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x i64], ptr %blocksizes81, i64 0, i64 1
  %88 = load i64, ptr %arrayidx82, align 8
  %div83 = sdiv i64 %88, 2
  %add84 = add nsw i64 %add80, %div83
  %89 = load ptr, ptr %ci, align 8
  %blocksizes85 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %89, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [2 x i64], ptr %blocksizes85, i64 0, i64 0
  %90 = load i64, ptr %arrayidx86, align 8
  %div87 = sdiv i64 %90, 4
  %add88 = add nsw i64 %add84, %div87
  store i64 %add88, ptr %testW, align 8
  %91 = load ptr, ptr %ve, align 8
  %cursor = getelementptr inbounds nuw %struct.envelope_lookup, ptr %91, i32 0, i32 13
  %92 = load i64, ptr %cursor, align 8
  store i64 %92, ptr %j, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end115, %for.end72
  %93 = load i64, ptr %j, align 8
  %94 = load ptr, ptr %ve, align 8
  %current89 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %94, i32 0, i32 11
  %95 = load i64, ptr %current89, align 8
  %96 = load ptr, ptr %ve, align 8
  %searchstep90 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %96, i32 0, i32 2
  %97 = load i32, ptr %searchstep90, align 8
  %conv91 = sext i32 %97 to i64
  %sub92 = sub nsw i64 %95, %conv91
  %cmp93 = icmp slt i64 %93, %sub92
  br i1 %cmp93, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %98 = load i64, ptr %j, align 8
  %99 = load i64, ptr %testW, align 8
  %cmp95 = icmp sge i64 %98, %99
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %while.body
  store i64 1, ptr %retval, align 8
  br label %return

if.end98:                                         ; preds = %while.body
  %100 = load i64, ptr %j, align 8
  %101 = load ptr, ptr %ve, align 8
  %cursor99 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %101, i32 0, i32 13
  store i64 %100, ptr %cursor99, align 8
  %102 = load ptr, ptr %ve, align 8
  %mark100 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %102, i32 0, i32 9
  %103 = load ptr, ptr %mark100, align 8
  %104 = load i64, ptr %j, align 8
  %105 = load ptr, ptr %ve, align 8
  %searchstep101 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %105, i32 0, i32 2
  %106 = load i32, ptr %searchstep101, align 8
  %conv102 = sext i32 %106 to i64
  %div103 = sdiv i64 %104, %conv102
  %arrayidx104 = getelementptr inbounds i32, ptr %103, i64 %div103
  %107 = load i32, ptr %arrayidx104, align 4
  %tobool105 = icmp ne i32 %107, 0
  br i1 %tobool105, label %if.then106, label %if.end115

if.then106:                                       ; preds = %if.end98
  %108 = load i64, ptr %j, align 8
  %109 = load i64, ptr %centerW, align 8
  %cmp107 = icmp sgt i64 %108, %109
  br i1 %cmp107, label %if.then109, label %if.end114

if.then109:                                       ; preds = %if.then106
  %110 = load i64, ptr %j, align 8
  %111 = load ptr, ptr %ve, align 8
  %curmark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %111, i32 0, i32 12
  store i64 %110, ptr %curmark, align 8
  %112 = load i64, ptr %j, align 8
  %113 = load i64, ptr %testW, align 8
  %cmp110 = icmp sge i64 %112, %113
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then109
  store i64 1, ptr %retval, align 8
  br label %return

if.end113:                                        ; preds = %if.then109
  store i64 0, ptr %retval, align 8
  br label %return

if.end114:                                        ; preds = %if.then106
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end98
  %114 = load ptr, ptr %ve, align 8
  %searchstep116 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %114, i32 0, i32 2
  %115 = load i32, ptr %searchstep116, align 8
  %conv117 = sext i32 %115 to i64
  %116 = load i64, ptr %j, align 8
  %add118 = add nsw i64 %116, %conv117
  store i64 %add118, ptr %j, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i64 -1, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.end113, %if.then112, %if.then97
  %117 = load i64, ptr %retval, align 8
  ret i64 %117
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_ve_amp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) }

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
