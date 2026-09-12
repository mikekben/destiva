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
declare dso_local ptr @vorbis_analysis_buffer(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_analysis_wrote(ptr noundef %v, i32 noundef %vals) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vals.addr = alloca i32, align 4
  %vi = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %order = alloca i32, align 4
  %i = alloca i32, align 4
  %lpc = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %vals, ptr %vals.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %vi, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %codec_setup, align 8
  store ptr %3, ptr %ci, align 8
  %4 = load i32, ptr %vals.addr, align 4
  %cmp = icmp sle i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else63

if.then:                                          ; preds = %entry
  store i32 32, ptr %order, align 4
  %5 = load i32, ptr %order, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %6 = alloca i8, i64 %mul, align 16
  store ptr %6, ptr %lpc, align 8
  %7 = load ptr, ptr %v.addr, align 8
  %preextrapolate = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %preextrapolate, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %v.addr, align 8
  call void @_preextrapolate_helper(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %10 = load ptr, ptr %v.addr, align 8
  %11 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %11, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 1
  %12 = load i64, ptr %arrayidx, align 8
  %mul3 = mul nsw i64 %12, 3
  %conv4 = trunc i64 %mul3 to i32
  %call = call ptr @vorbis_analysis_buffer(ptr noundef %10, i32 noundef %conv4)
  %13 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %pcm_current, align 4
  %15 = load ptr, ptr %v.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %15, i32 0, i32 8
  store i32 %14, ptr %eofflag, align 8
  %16 = load ptr, ptr %ci, align 8
  %blocksizes5 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %16, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [2 x i64], ptr %blocksizes5, i64 0, i64 1
  %17 = load i64, ptr %arrayidx6, align 8
  %mul7 = mul nsw i64 %17, 3
  %18 = load ptr, ptr %v.addr, align 8
  %pcm_current8 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %pcm_current8, align 4
  %conv9 = sext i32 %19 to i64
  %add = add nsw i64 %conv9, %mul7
  %conv10 = trunc i64 %add to i32
  store i32 %conv10, ptr %pcm_current8, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %channels, align 4
  %cmp11 = icmp slt i32 %20, %22
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %v.addr, align 8
  %eofflag13 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %eofflag13, align 8
  %25 = load i32, ptr %order, align 4
  %mul14 = mul nsw i32 %25, 2
  %cmp15 = icmp sgt i32 %24, %mul14
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.body
  %26 = load ptr, ptr %v.addr, align 8
  %eofflag18 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %eofflag18, align 8
  %conv19 = sext i32 %27 to i64
  store i64 %conv19, ptr %n, align 8
  %28 = load i64, ptr %n, align 8
  %29 = load ptr, ptr %ci, align 8
  %blocksizes20 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %29, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [2 x i64], ptr %blocksizes20, i64 0, i64 1
  %30 = load i64, ptr %arrayidx21, align 8
  %cmp22 = icmp sgt i64 %28, %30
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.then17
  %31 = load ptr, ptr %ci, align 8
  %blocksizes25 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %31, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x i64], ptr %blocksizes25, i64 0, i64 1
  %32 = load i64, ptr %arrayidx26, align 8
  store i64 %32, ptr %n, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.then17
  %33 = load ptr, ptr %v.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %pcm, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %34, i64 %idxprom
  %36 = load ptr, ptr %arrayidx28, align 8
  %37 = load ptr, ptr %v.addr, align 8
  %eofflag29 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %37, i32 0, i32 8
  %38 = load i32, ptr %eofflag29, align 8
  %idx.ext = sext i32 %38 to i64
  %add.ptr = getelementptr inbounds float, ptr %36, i64 %idx.ext
  %39 = load i64, ptr %n, align 8
  %idx.neg = sub i64 0, %39
  %add.ptr30 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.neg
  %40 = load ptr, ptr %lpc, align 8
  %41 = load i64, ptr %n, align 8
  %conv31 = trunc i64 %41 to i32
  %42 = load i32, ptr %order, align 4
  %call32 = call float @vorbis_lpc_from_data(ptr noundef %add.ptr30, ptr noundef %40, i32 noundef %conv31, i32 noundef %42)
  %43 = load ptr, ptr %lpc, align 8
  %44 = load ptr, ptr %v.addr, align 8
  %pcm33 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pcm33, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %46 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %45, i64 %idxprom34
  %47 = load ptr, ptr %arrayidx35, align 8
  %48 = load ptr, ptr %v.addr, align 8
  %eofflag36 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %48, i32 0, i32 8
  %49 = load i32, ptr %eofflag36, align 8
  %idx.ext37 = sext i32 %49 to i64
  %add.ptr38 = getelementptr inbounds float, ptr %47, i64 %idx.ext37
  %50 = load i32, ptr %order, align 4
  %idx.ext39 = sext i32 %50 to i64
  %idx.neg40 = sub i64 0, %idx.ext39
  %add.ptr41 = getelementptr inbounds float, ptr %add.ptr38, i64 %idx.neg40
  %51 = load i32, ptr %order, align 4
  %52 = load ptr, ptr %v.addr, align 8
  %pcm42 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %52, i32 0, i32 2
  %53 = load ptr, ptr %pcm42, align 8
  %54 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %54 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %53, i64 %idxprom43
  %55 = load ptr, ptr %arrayidx44, align 8
  %56 = load ptr, ptr %v.addr, align 8
  %eofflag45 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %56, i32 0, i32 8
  %57 = load i32, ptr %eofflag45, align 8
  %idx.ext46 = sext i32 %57 to i64
  %add.ptr47 = getelementptr inbounds float, ptr %55, i64 %idx.ext46
  %58 = load ptr, ptr %v.addr, align 8
  %pcm_current48 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %pcm_current48, align 4
  %60 = load ptr, ptr %v.addr, align 8
  %eofflag49 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %60, i32 0, i32 8
  %61 = load i32, ptr %eofflag49, align 8
  %sub = sub nsw i32 %59, %61
  %conv50 = sext i32 %sub to i64
  call void @vorbis_lpc_predict(ptr noundef %43, ptr noundef %add.ptr41, i32 noundef %51, ptr noundef %add.ptr47, i64 noundef %conv50)
  br label %if.end62

if.else:                                          ; preds = %for.body
  %62 = load ptr, ptr %v.addr, align 8
  %pcm51 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %pcm51, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %64 to i64
  %arrayidx53 = getelementptr inbounds ptr, ptr %63, i64 %idxprom52
  %65 = load ptr, ptr %arrayidx53, align 8
  %66 = load ptr, ptr %v.addr, align 8
  %eofflag54 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %66, i32 0, i32 8
  %67 = load i32, ptr %eofflag54, align 8
  %idx.ext55 = sext i32 %67 to i64
  %add.ptr56 = getelementptr inbounds float, ptr %65, i64 %idx.ext55
  %68 = load ptr, ptr %v.addr, align 8
  %pcm_current57 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %68, i32 0, i32 5
  %69 = load i32, ptr %pcm_current57, align 4
  %70 = load ptr, ptr %v.addr, align 8
  %eofflag58 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %70, i32 0, i32 8
  %71 = load i32, ptr %eofflag58, align 8
  %sub59 = sub nsw i32 %69, %71
  %conv60 = sext i32 %sub59 to i64
  %mul61 = mul i64 %conv60, 4
  call void @llvm.memset.p0.i64(ptr align 4 %add.ptr56, i8 0, i64 %mul61, i1 false)
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %72 = load i32, ptr %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end83

if.else63:                                        ; preds = %entry
  %73 = load ptr, ptr %v.addr, align 8
  %pcm_current64 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %pcm_current64, align 4
  %75 = load i32, ptr %vals.addr, align 4
  %add65 = add nsw i32 %74, %75
  %76 = load ptr, ptr %v.addr, align 8
  %pcm_storage = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %76, i32 0, i32 4
  %77 = load i32, ptr %pcm_storage, align 8
  %cmp66 = icmp sgt i32 %add65, %77
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.else63
  store i32 -131, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.else63
  %78 = load i32, ptr %vals.addr, align 4
  %79 = load ptr, ptr %v.addr, align 8
  %pcm_current70 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %79, i32 0, i32 5
  %80 = load i32, ptr %pcm_current70, align 4
  %add71 = add nsw i32 %80, %78
  store i32 %add71, ptr %pcm_current70, align 4
  %81 = load ptr, ptr %v.addr, align 8
  %preextrapolate72 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %81, i32 0, i32 7
  %82 = load i32, ptr %preextrapolate72, align 4
  %tobool73 = icmp ne i32 %82, 0
  br i1 %tobool73, label %if.end82, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end69
  %83 = load ptr, ptr %v.addr, align 8
  %pcm_current74 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %pcm_current74, align 4
  %conv75 = sext i32 %84 to i64
  %85 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %85, i32 0, i32 12
  %86 = load i64, ptr %centerW, align 8
  %sub76 = sub nsw i64 %conv75, %86
  %87 = load ptr, ptr %ci, align 8
  %blocksizes77 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %87, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x i64], ptr %blocksizes77, i64 0, i64 1
  %88 = load i64, ptr %arrayidx78, align 8
  %cmp79 = icmp sgt i64 %sub76, %88
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %land.lhs.true
  %89 = load ptr, ptr %v.addr, align 8
  call void @_preextrapolate_helper(ptr noundef %89)
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %land.lhs.true, %if.end69
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then68
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @_preextrapolate_helper(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_lpc_from_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_lpc_predict(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
