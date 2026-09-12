; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_raw_seek(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_prev_page(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_open_seekable2(ptr noundef %vf) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %serialno = alloca i64, align 8
  %dataoffset = alloca i64, align 8
  %end = alloca i64, align 8
  %og = alloca %struct.ogg_page, align 8
  store ptr %vf, ptr %vf.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 14
  %1 = load i64, ptr %current_serialno, align 8
  store i64 %1, ptr %serialno, align 8
  %2 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 2
  %3 = load i64, ptr %offset, align 8
  store i64 %3, ptr %dataoffset, align 8
  %4 = load ptr, ptr %vf.addr, align 8
  %callbacks = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 21
  %seek_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks, i32 0, i32 1
  %5 = load ptr, ptr %seek_func, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %datasource = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datasource, align 8
  %call = call i32 %5(ptr noundef %7, i64 noundef 0, i32 noundef 2)
  %8 = load ptr, ptr %vf.addr, align 8
  %callbacks1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 21
  %tell_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks1, i32 0, i32 3
  %9 = load ptr, ptr %tell_func, align 8
  %10 = load ptr, ptr %vf.addr, align 8
  %datasource2 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %datasource2, align 8
  %call3 = call i64 %9(ptr noundef %11)
  %12 = load ptr, ptr %vf.addr, align 8
  %end4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 3
  store i64 %call3, ptr %end4, align 8
  %13 = load ptr, ptr %vf.addr, align 8
  %offset5 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %13, i32 0, i32 2
  store i64 %call3, ptr %offset5, align 8
  %14 = load ptr, ptr %vf.addr, align 8
  %call6 = call i64 @_get_prev_page(ptr noundef %14, ptr noundef %og)
  store i64 %call6, ptr %end, align 8
  %15 = load i64, ptr %end, align 8
  %cmp = icmp slt i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i64, ptr %end, align 8
  %conv = trunc i64 %16 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call7 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv8 = sext i32 %call7 to i64
  %17 = load i64, ptr %serialno, align 8
  %cmp9 = icmp ne i64 %conv8, %17
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %18 = load ptr, ptr %vf.addr, align 8
  %19 = load i64, ptr %end, align 8
  %add = add nsw i64 %19, 1
  %20 = load i64, ptr %serialno, align 8
  %call12 = call i32 @_bisect_forward_serialno(ptr noundef %18, i64 noundef 0, i64 noundef 0, i64 noundef %add, i64 noundef %20, i64 noundef 0)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  store i32 -128, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then11
  br label %if.end21

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %vf.addr, align 8
  %22 = load i64, ptr %end, align 8
  %23 = load i64, ptr %end, align 8
  %add17 = add nsw i64 %23, 1
  %24 = load i64, ptr %serialno, align 8
  %call18 = call i32 @_bisect_forward_serialno(ptr noundef %21, i64 noundef 0, i64 noundef %22, i64 noundef %add17, i64 noundef %24, i64 noundef 0)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else
  store i32 -128, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end16
  %25 = load ptr, ptr %vf.addr, align 8
  %26 = load i64, ptr %dataoffset, align 8
  call void @_prefetch_all_headers(ptr noundef %25, i64 noundef %26)
  %27 = load ptr, ptr %vf.addr, align 8
  %call22 = call i32 @ov_raw_seek(ptr noundef %27, i64 noundef 0)
  store i32 %call22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then15, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_bisect_forward_serialno(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_prefetch_all_headers(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
