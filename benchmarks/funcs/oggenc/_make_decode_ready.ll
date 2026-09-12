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
declare dso_local i32 @vorbis_block_init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_make_decode_ready(ptr noundef %vf) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  store ptr %vf, ptr %vf.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %ready_state1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ready_state1, align 8
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -129, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  %6 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 19
  %7 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %vi, align 8
  %9 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 15
  %10 = load i32, ptr %current_link, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info, ptr %8, i64 %idx.ext
  %call = call i32 @vorbis_synthesis_init(ptr noundef %vd, ptr noundef %add.ptr)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  store i32 -137, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then5
  br label %if.end15

if.else:                                          ; preds = %if.end4
  %11 = load ptr, ptr %vf.addr, align 8
  %vd9 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 19
  %12 = load ptr, ptr %vf.addr, align 8
  %vi10 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %vi10, align 8
  %call11 = call i32 @vorbis_synthesis_init(ptr noundef %vd9, ptr noundef %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.else
  store i32 -137, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end8
  %14 = load ptr, ptr %vf.addr, align 8
  %vd16 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %vf.addr, align 8
  %vb = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %15, i32 0, i32 20
  %call17 = call i32 @vorbis_block_init(ptr noundef %vd16, ptr noundef %vb)
  %16 = load ptr, ptr %vf.addr, align 8
  %ready_state18 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %16, i32 0, i32 13
  store i32 4, ptr %ready_state18, align 8
  %17 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 16
  store double 0.000000e+00, ptr %bittrack, align 8
  %18 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 17
  store double 0.000000e+00, ptr %samptrack, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then7, %if.then3, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_init(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
