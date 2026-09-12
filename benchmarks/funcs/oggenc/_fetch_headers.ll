; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_init(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pagein(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_init(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_headerin(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_fetch_headers(ptr noundef %vf, ptr noundef %vi, ptr noundef %vc, ptr noundef %serialno, ptr noundef %og_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %serialno.addr = alloca ptr, align 8
  %og_ptr.addr = alloca ptr, align 8
  %og = alloca %struct.ogg_page, align 8
  %op = alloca %struct.ogg_packet, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %llret = alloca i64, align 8
  %result = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %serialno, ptr %serialno.addr, align 8
  store ptr %og_ptr, ptr %og_ptr.addr, align 8
  %0 = load ptr, ptr %og_ptr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @_get_next_page(ptr noundef %1, ptr noundef %og, i64 noundef 8500)
  store i64 %call, ptr %llret, align 8
  %2 = load i64, ptr %llret, align 8
  %cmp = icmp eq i64 %2, -128
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 -128, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load i64, ptr %llret, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -132, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store ptr %og, ptr %og_ptr.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %entry
  %4 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %og_ptr.addr, align 8
  %call6 = call i32 @ogg_page_serialno(ptr noundef %5)
  %call7 = call i32 @ogg_stream_reset_serialno(ptr noundef %os, i32 noundef %call6)
  %6 = load ptr, ptr %serialno.addr, align 8
  %tobool8 = icmp ne ptr %6, null
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  %7 = load ptr, ptr %vf.addr, align 8
  %os10 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %7, i32 0, i32 18
  %serialno11 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %os10, i32 0, i32 14
  %8 = load i64, ptr %serialno11, align 8
  %9 = load ptr, ptr %serialno.addr, align 8
  store i64 %8, ptr %9, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end5
  %10 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 13
  store i32 3, ptr %ready_state, align 8
  %11 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_init(ptr noundef %11)
  %12 = load ptr, ptr %vc.addr, align 8
  call void @vorbis_comment_init(ptr noundef %12)
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end12
  %13 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %13, 3
  br i1 %cmp13, label %while.body, label %while.end38

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %vf.addr, align 8
  %os14 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %og_ptr.addr, align 8
  %call15 = call i32 @ogg_stream_pagein(ptr noundef %os14, ptr noundef %15)
  br label %while.cond16

while.cond16:                                     ; preds = %if.end30, %while.body
  %16 = load i32, ptr %i, align 4
  %cmp17 = icmp slt i32 %16, 3
  br i1 %cmp17, label %while.body18, label %while.end

while.body18:                                     ; preds = %while.cond16
  %17 = load ptr, ptr %vf.addr, align 8
  %os19 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 18
  %call20 = call i32 @ogg_stream_packetout(ptr noundef %os19, ptr noundef %op)
  store i32 %call20, ptr %result, align 4
  %18 = load i32, ptr %result, align 4
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %while.body18
  br label %while.end

if.end23:                                         ; preds = %while.body18
  %19 = load i32, ptr %result, align 4
  %cmp24 = icmp eq i32 %19, -1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 -133, ptr %ret, align 4
  br label %bail_header

if.end26:                                         ; preds = %if.end23
  %20 = load ptr, ptr %vi.addr, align 8
  %21 = load ptr, ptr %vc.addr, align 8
  %call27 = call i32 @vorbis_synthesis_headerin(ptr noundef %20, ptr noundef %21, ptr noundef %op)
  store i32 %call27, ptr %ret, align 4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  br label %bail_header

if.end30:                                         ; preds = %if.end26
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond16, !llvm.loop !6

while.end:                                        ; preds = %if.then22, %while.cond16
  %23 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %23, 3
  br i1 %cmp31, label %if.then32, label %if.end37

if.then32:                                        ; preds = %while.end
  %24 = load ptr, ptr %vf.addr, align 8
  %25 = load ptr, ptr %og_ptr.addr, align 8
  %call33 = call i64 @_get_next_page(ptr noundef %24, ptr noundef %25, i64 noundef 8500)
  %cmp34 = icmp slt i64 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  store i32 -133, ptr %ret, align 4
  br label %bail_header

if.end36:                                         ; preds = %if.then32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %while.end
  br label %while.cond, !llvm.loop !8

while.end38:                                      ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

bail_header:                                      ; preds = %if.then35, %if.then29, %if.then25
  %26 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %26)
  %27 = load ptr, ptr %vc.addr, align 8
  call void @vorbis_comment_clear(ptr noundef %27)
  %28 = load ptr, ptr %vf.addr, align 8
  %ready_state39 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %28, i32 0, i32 13
  store i32 2, ptr %ready_state39, align 8
  %29 = load i32, ptr %ret, align 4
  store i32 %29, ptr %retval, align 4
  br label %return

return:                                           ; preds = %bail_header, %while.end38, %if.then3, %if.then1
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
!8 = distinct !{!8, !7}
