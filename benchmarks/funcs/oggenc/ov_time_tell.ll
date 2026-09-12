; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local double @ov_time_total(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ov_pcm_total(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local double @ov_time_tell(ptr noundef %vf) #0 {
entry:
  %retval = alloca double, align 8
  %vf.addr = alloca ptr, align 8
  %link = alloca i32, align 4
  %pcm_total = alloca i64, align 8
  %time_total = alloca double, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i32 0, ptr %link, align 4
  store i64 0, ptr %pcm_total, align 8
  store double 0.000000e+00, ptr %time_total, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double -1.310000e+02, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end10

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @ov_pcm_total(ptr noundef %4, i32 noundef -1)
  store i64 %call, ptr %pcm_total, align 8
  %5 = load ptr, ptr %vf.addr, align 8
  %call2 = call double @ov_time_total(ptr noundef %5, i32 noundef -1)
  store double %call2, ptr %time_total, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %links, align 8
  %sub = sub nsw i32 %7, 1
  store i32 %sub, ptr %link, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then1
  %8 = load i32, ptr %link, align 4
  %cmp3 = icmp sge i32 %8, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %pcmlengths, align 8
  %11 = load i32, ptr %link, align 4
  %mul = mul nsw i32 %11, 2
  %add = add nsw i32 %mul, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i64, ptr %10, i64 %idxprom
  %12 = load i64, ptr %arrayidx, align 8
  %13 = load i64, ptr %pcm_total, align 8
  %sub4 = sub nsw i64 %13, %12
  store i64 %sub4, ptr %pcm_total, align 8
  %14 = load ptr, ptr %vf.addr, align 8
  %15 = load i32, ptr %link, align 4
  %call5 = call double @ov_time_total(ptr noundef %14, i32 noundef %15)
  %16 = load double, ptr %time_total, align 8
  %sub6 = fsub double %16, %call5
  store double %sub6, ptr %time_total, align 8
  %17 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 12
  %18 = load i64, ptr %pcm_offset, align 8
  %19 = load i64, ptr %pcm_total, align 8
  %cmp7 = icmp sge i64 %18, %19
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  br label %for.end

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %20 = load i32, ptr %link, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %link, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then8, %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end
  %21 = load double, ptr %time_total, align 8
  %22 = load ptr, ptr %vf.addr, align 8
  %pcm_offset11 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 12
  %23 = load i64, ptr %pcm_offset11, align 8
  %24 = load i64, ptr %pcm_total, align 8
  %sub12 = sub nsw i64 %23, %24
  %conv = sitofp i64 %sub12 to double
  %25 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %vi, align 8
  %27 = load i32, ptr %link, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds %struct.vorbis_info, ptr %26, i64 %idxprom13
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx14, i32 0, i32 2
  %28 = load i64, ptr %rate, align 8
  %conv15 = sitofp i64 %28 to double
  %div = fdiv double %conv, %conv15
  %add16 = fadd double %21, %div
  store double %add16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %29 = load double, ptr %retval, align 8
  ret double %29
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
