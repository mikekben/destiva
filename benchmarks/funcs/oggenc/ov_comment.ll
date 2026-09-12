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
%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @ov_comment(ptr noundef %vf, i32 noundef %link) #0 {
entry:
  %retval = alloca ptr, align 8
  %vf.addr = alloca ptr, align 8
  %link.addr = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store i32 %link, ptr %link.addr, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %link.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.else5

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %ready_state, align 8
  %cmp2 = icmp sge i32 %4, 3
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %vf.addr, align 8
  %vc = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %vc, align 8
  %7 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %7, i32 0, i32 15
  %8 = load i32, ptr %current_link, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_comment, ptr %6, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then1
  %9 = load ptr, ptr %vf.addr, align 8
  %vc4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 11
  %10 = load ptr, ptr %vc4, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

if.else5:                                         ; preds = %if.then
  %11 = load i32, ptr %link.addr, align 4
  %12 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %links, align 8
  %cmp6 = icmp sge i32 %11, %13
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else5
  store ptr null, ptr %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else5
  %14 = load ptr, ptr %vf.addr, align 8
  %vc9 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %vc9, align 8
  %16 = load i32, ptr %link.addr, align 4
  %idx.ext10 = sext i32 %16 to i64
  %add.ptr11 = getelementptr inbounds %struct.vorbis_comment, ptr %15, i64 %idx.ext10
  store ptr %add.ptr11, ptr %retval, align 8
  br label %return

if.else12:                                        ; preds = %entry
  %17 = load ptr, ptr %vf.addr, align 8
  %vc13 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %vc13, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else12, %if.else8, %if.then7, %if.else, %if.then3
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
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
