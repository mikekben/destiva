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
define hidden void @_seek_helper(ptr noundef %vf, i64 noundef %offset) #0 {
entry:
  %vf.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %datasource = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datasource, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %callbacks = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 21
  %seek_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks, i32 0, i32 1
  %3 = load ptr, ptr %seek_func, align 8
  %4 = load ptr, ptr %vf.addr, align 8
  %datasource1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %datasource1, align 8
  %6 = load i64, ptr %offset.addr, align 8
  %call = call i32 %3(ptr noundef %5, i64 noundef %6, i32 noundef 0)
  %7 = load i64, ptr %offset.addr, align 8
  %8 = load ptr, ptr %vf.addr, align 8
  %offset2 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 2
  store i64 %7, ptr %offset2, align 8
  %9 = load ptr, ptr %vf.addr, align 8
  %oy = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 4
  %call3 = call i32 @ogg_sync_reset(ptr noundef %oy)
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_reset(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
