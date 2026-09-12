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

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_pcmout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_and_process_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @ov_read_float(ptr noundef %vf, ptr noundef %pcm_channels, i32 noundef %length, ptr noundef %bitstream) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %pcm_channels.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %bitstream.addr = alloca ptr, align 8
  %pcm = alloca ptr, align 8
  %samples = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %pcm_channels, ptr %pcm_channels.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store ptr %bitstream, ptr %bitstream.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -131, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end31, %if.end
  %2 = load ptr, ptr %vf.addr, align 8
  %ready_state1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ready_state1, align 8
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.end21

if.then3:                                         ; preds = %while.body
  %4 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 19
  %call = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd, ptr noundef %pcm)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %samples, align 8
  %5 = load i64, ptr %samples, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then4, label %if.end20

if.then4:                                         ; preds = %if.then3
  %6 = load ptr, ptr %pcm_channels.addr, align 8
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %7 = load ptr, ptr %pcm, align 8
  %8 = load ptr, ptr %pcm_channels.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %9 = load i64, ptr %samples, align 8
  %10 = load i32, ptr %length.addr, align 4
  %conv8 = sext i32 %10 to i64
  %cmp9 = icmp sgt i64 %9, %conv8
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %11 = load i32, ptr %length.addr, align 4
  %conv12 = sext i32 %11 to i64
  store i64 %conv12, ptr %samples, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %12 = load ptr, ptr %vf.addr, align 8
  %vd14 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 19
  %13 = load i64, ptr %samples, align 8
  %conv15 = trunc i64 %13 to i32
  %call16 = call i32 @vorbis_synthesis_read(ptr noundef %vd14, i32 noundef %conv15)
  %14 = load i64, ptr %samples, align 8
  %15 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %15, i32 0, i32 12
  %16 = load i64, ptr %pcm_offset, align 8
  %add = add nsw i64 %16, %14
  store i64 %add, ptr %pcm_offset, align 8
  %17 = load ptr, ptr %bitstream.addr, align 8
  %tobool17 = icmp ne ptr %17, null
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  %18 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 15
  %19 = load i32, ptr %current_link, align 8
  %20 = load ptr, ptr %bitstream.addr, align 8
  store i32 %19, ptr %20, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end13
  %21 = load i64, ptr %samples, align 8
  store i64 %21, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.then3
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %while.body
  %22 = load ptr, ptr %vf.addr, align 8
  %call22 = call i32 @_fetch_and_process_packet(ptr noundef %22, ptr noundef null, i32 noundef 1, i32 noundef 1)
  store i32 %call22, ptr %ret, align 4
  %23 = load i32, ptr %ret, align 4
  %cmp23 = icmp eq i32 %23, -2
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  store i64 0, ptr %retval, align 8
  br label %return

if.end26:                                         ; preds = %if.end21
  %24 = load i32, ptr %ret, align 4
  %cmp27 = icmp sle i32 %24, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %25 = load i32, ptr %ret, align 4
  %conv30 = sext i32 %25 to i64
  store i64 %conv30, ptr %retval, align 8
  br label %return

if.end31:                                         ; preds = %if.end26
  br label %while.body

return:                                           ; preds = %if.then29, %if.then25, %if.end19, %if.then
  %26 = load i64, ptr %retval, align 8
  ret i64 %26
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
