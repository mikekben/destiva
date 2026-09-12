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
%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_block_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_dsp_clear(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_clear(ptr noundef %vf) #1 {
entry:
  %vf.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vf.addr, align 8
  %vb = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %1, i32 0, i32 20
  %call = call i32 @vorbis_block_clear(ptr noundef %vb)
  %2 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 19
  call void @vorbis_dsp_clear(ptr noundef %vd)
  %3 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %3, i32 0, i32 18
  %call1 = call i32 @ogg_stream_clear(ptr noundef %os)
  %4 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 10
  %5 = load ptr, ptr %vi, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %links, align 8
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %vf.addr, align 8
  %links5 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %links5, align 8
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vf.addr, align 8
  %vi6 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %vi6, align 8
  %13 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info, ptr %12, i64 %idx.ext
  call void @vorbis_info_clear(ptr noundef %add.ptr)
  %14 = load ptr, ptr %vf.addr, align 8
  %vc = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %vc, align 8
  %16 = load i32, ptr %i, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds %struct.vorbis_comment, ptr %15, i64 %idx.ext7
  call void @vorbis_comment_clear(ptr noundef %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %vf.addr, align 8
  %vi9 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %vi9, align 8
  call void @free(ptr noundef %19) #3
  %20 = load ptr, ptr %vf.addr, align 8
  %vc10 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %vc10, align 8
  call void @free(ptr noundef %21) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %if.then
  %22 = load ptr, ptr %vf.addr, align 8
  %dataoffsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 7
  %23 = load ptr, ptr %dataoffsets, align 8
  %tobool11 = icmp ne ptr %23, null
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %24 = load ptr, ptr %vf.addr, align 8
  %dataoffsets13 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %dataoffsets13, align 8
  call void @free(ptr noundef %25) #3
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  %26 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %pcmlengths, align 8
  %tobool15 = icmp ne ptr %27, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %28 = load ptr, ptr %vf.addr, align 8
  %pcmlengths17 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %28, i32 0, i32 9
  %29 = load ptr, ptr %pcmlengths17, align 8
  call void @free(ptr noundef %29) #3
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %30 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %30, i32 0, i32 8
  %31 = load ptr, ptr %serialnos, align 8
  %tobool19 = icmp ne ptr %31, null
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end18
  %32 = load ptr, ptr %vf.addr, align 8
  %serialnos21 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %32, i32 0, i32 8
  %33 = load ptr, ptr %serialnos21, align 8
  call void @free(ptr noundef %33) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18
  %34 = load ptr, ptr %vf.addr, align 8
  %offsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %34, i32 0, i32 6
  %35 = load ptr, ptr %offsets, align 8
  %tobool23 = icmp ne ptr %35, null
  br i1 %tobool23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %36 = load ptr, ptr %vf.addr, align 8
  %offsets25 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %offsets25, align 8
  call void @free(ptr noundef %37) #3
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  %38 = load ptr, ptr %vf.addr, align 8
  %oy = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %38, i32 0, i32 4
  %call27 = call i32 @ogg_sync_clear(ptr noundef %oy)
  %39 = load ptr, ptr %vf.addr, align 8
  %datasource = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %datasource, align 8
  %tobool28 = icmp ne ptr %40, null
  br i1 %tobool28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  %41 = load ptr, ptr %vf.addr, align 8
  %callbacks = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %41, i32 0, i32 21
  %close_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks, i32 0, i32 2
  %42 = load ptr, ptr %close_func, align 8
  %43 = load ptr, ptr %vf.addr, align 8
  %datasource30 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %datasource30, align 8
  %call31 = call i32 %42(ptr noundef %44)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26
  %45 = load ptr, ptr %vf.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 944, i1 false)
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_clear(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

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
