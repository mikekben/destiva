; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }
%struct.envelope_lookup = type { i32, i32, i32, float, %struct.mdct_lookup, ptr, [7 x %struct.envelope_band], ptr, i32, ptr, i64, i64, i64, i64 }
%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }
%struct.envelope_band = type { i32, i32, ptr, float }

; Function Attrs: nounwind uwtable
define dso_local i32 @_ve_envelope_mark(ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %ve = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %centerW = alloca i64, align 8
  %beginW = alloca i64, align 8
  %endW = alloca i64, align 8
  %first = alloca i64, align 8
  %last = alloca i64, align 8
  %i = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %backend_state, align 8
  %ve1 = getelementptr inbounds nuw %struct.private_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %ve1, align 8
  store ptr %2, ptr %ve, align 8
  %3 = load ptr, ptr %v.addr, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %vi2, align 8
  store ptr %4, ptr %vi, align 8
  %5 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %codec_setup, align 8
  store ptr %6, ptr %ci, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %centerW3 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 12
  %8 = load i64, ptr %centerW3, align 8
  store i64 %8, ptr %centerW, align 8
  %9 = load i64, ptr %centerW, align 8
  %10 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %v.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %11, i32 0, i32 10
  %12 = load i64, ptr %W, align 8
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %12
  %13 = load i64, ptr %arrayidx, align 8
  %div = sdiv i64 %13, 4
  %sub = sub nsw i64 %9, %div
  store i64 %sub, ptr %beginW, align 8
  %14 = load i64, ptr %centerW, align 8
  %15 = load ptr, ptr %ci, align 8
  %blocksizes4 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %v.addr, align 8
  %W5 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %16, i32 0, i32 10
  %17 = load i64, ptr %W5, align 8
  %arrayidx6 = getelementptr inbounds [2 x i64], ptr %blocksizes4, i64 0, i64 %17
  %18 = load i64, ptr %arrayidx6, align 8
  %div7 = sdiv i64 %18, 4
  %add = add nsw i64 %14, %div7
  store i64 %add, ptr %endW, align 8
  %19 = load ptr, ptr %v.addr, align 8
  %W8 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %19, i32 0, i32 10
  %20 = load i64, ptr %W8, align 8
  %tobool = icmp ne i64 %20, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr %ci, align 8
  %blocksizes9 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %v.addr, align 8
  %lW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 9
  %23 = load i64, ptr %lW, align 8
  %arrayidx10 = getelementptr inbounds [2 x i64], ptr %blocksizes9, i64 0, i64 %23
  %24 = load i64, ptr %arrayidx10, align 8
  %div11 = sdiv i64 %24, 4
  %25 = load i64, ptr %beginW, align 8
  %sub12 = sub nsw i64 %25, %div11
  store i64 %sub12, ptr %beginW, align 8
  %26 = load ptr, ptr %ci, align 8
  %blocksizes13 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %v.addr, align 8
  %nW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %27, i32 0, i32 11
  %28 = load i64, ptr %nW, align 8
  %arrayidx14 = getelementptr inbounds [2 x i64], ptr %blocksizes13, i64 0, i64 %28
  %29 = load i64, ptr %arrayidx14, align 8
  %div15 = sdiv i64 %29, 4
  %30 = load i64, ptr %endW, align 8
  %add16 = add nsw i64 %30, %div15
  store i64 %add16, ptr %endW, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %31 = load ptr, ptr %ci, align 8
  %blocksizes17 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %31, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [2 x i64], ptr %blocksizes17, i64 0, i64 0
  %32 = load i64, ptr %arrayidx18, align 8
  %div19 = sdiv i64 %32, 4
  %33 = load i64, ptr %beginW, align 8
  %sub20 = sub nsw i64 %33, %div19
  store i64 %sub20, ptr %beginW, align 8
  %34 = load ptr, ptr %ci, align 8
  %blocksizes21 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %34, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [2 x i64], ptr %blocksizes21, i64 0, i64 0
  %35 = load i64, ptr %arrayidx22, align 8
  %div23 = sdiv i64 %35, 4
  %36 = load i64, ptr %endW, align 8
  %add24 = add nsw i64 %36, %div23
  store i64 %add24, ptr %endW, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %37 = load ptr, ptr %ve, align 8
  %curmark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %37, i32 0, i32 12
  %38 = load i64, ptr %curmark, align 8
  %39 = load i64, ptr %beginW, align 8
  %cmp = icmp sge i64 %38, %39
  br i1 %cmp, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %40 = load ptr, ptr %ve, align 8
  %curmark25 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %40, i32 0, i32 12
  %41 = load i64, ptr %curmark25, align 8
  %42 = load i64, ptr %endW, align 8
  %cmp26 = icmp slt i64 %41, %42
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true, %if.end
  %43 = load i64, ptr %beginW, align 8
  %44 = load ptr, ptr %ve, align 8
  %searchstep = getelementptr inbounds nuw %struct.envelope_lookup, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %searchstep, align 8
  %conv = sext i32 %45 to i64
  %div29 = sdiv i64 %43, %conv
  store i64 %div29, ptr %first, align 8
  %46 = load i64, ptr %endW, align 8
  %47 = load ptr, ptr %ve, align 8
  %searchstep30 = getelementptr inbounds nuw %struct.envelope_lookup, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %searchstep30, align 8
  %conv31 = sext i32 %48 to i64
  %div32 = sdiv i64 %46, %conv31
  store i64 %div32, ptr %last, align 8
  %49 = load i64, ptr %first, align 8
  store i64 %49, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %50 = load i64, ptr %i, align 8
  %51 = load i64, ptr %last, align 8
  %cmp33 = icmp slt i64 %50, %51
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load ptr, ptr %ve, align 8
  %mark = getelementptr inbounds nuw %struct.envelope_lookup, ptr %52, i32 0, i32 9
  %53 = load ptr, ptr %mark, align 8
  %54 = load i64, ptr %i, align 8
  %arrayidx35 = getelementptr inbounds i32, ptr %53, i64 %54
  %55 = load i32, ptr %arrayidx35, align 4
  %tobool36 = icmp ne i32 %55, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %56 = load i64, ptr %i, align 8
  %inc = add nsw i64 %56, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then37, %if.then27
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
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
