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
declare hidden void @_seek_helper(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @_get_prev_page(ptr noundef %vf, ptr noundef %og) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %ret = alloca i64, align 8
  %offset1 = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %offset, align 8
  store i64 %1, ptr %begin, align 8
  %2 = load i64, ptr %begin, align 8
  store i64 %2, ptr %end, align 8
  store i64 -1, ptr %offset1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %3 = load i64, ptr %offset1, align 8
  %cmp = icmp eq i64 %3, -1
  br i1 %cmp, label %while.body, label %while.end15

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %begin, align 8
  %sub = sub nsw i64 %4, 8500
  store i64 %sub, ptr %begin, align 8
  %5 = load i64, ptr %begin, align 8
  %cmp2 = icmp slt i64 %5, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i64 0, ptr %begin, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load ptr, ptr %vf.addr, align 8
  %7 = load i64, ptr %begin, align 8
  call void @_seek_helper(ptr noundef %6, i64 noundef %7)
  br label %while.cond3

while.cond3:                                      ; preds = %if.end14, %if.end
  %8 = load ptr, ptr %vf.addr, align 8
  %offset4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %offset4, align 8
  %10 = load i64, ptr %end, align 8
  %cmp5 = icmp slt i64 %9, %10
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond3
  %11 = load ptr, ptr %vf.addr, align 8
  %12 = load ptr, ptr %og.addr, align 8
  %13 = load i64, ptr %end, align 8
  %14 = load ptr, ptr %vf.addr, align 8
  %offset7 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %offset7, align 8
  %sub8 = sub nsw i64 %13, %15
  %call = call i64 @_get_next_page(ptr noundef %11, ptr noundef %12, i64 noundef %sub8)
  store i64 %call, ptr %ret, align 8
  %16 = load i64, ptr %ret, align 8
  %cmp9 = icmp eq i64 %16, -128
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body6
  store i64 -128, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %while.body6
  %17 = load i64, ptr %ret, align 8
  %cmp12 = icmp slt i64 %17, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  br label %while.end

if.else:                                          ; preds = %if.end11
  %18 = load i64, ptr %ret, align 8
  store i64 %18, ptr %offset1, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else
  br label %while.cond3, !llvm.loop !6

while.end:                                        ; preds = %if.then13, %while.cond3
  br label %while.cond, !llvm.loop !8

while.end15:                                      ; preds = %while.cond
  %19 = load ptr, ptr %vf.addr, align 8
  %20 = load i64, ptr %offset1, align 8
  call void @_seek_helper(ptr noundef %19, i64 noundef %20)
  %21 = load ptr, ptr %vf.addr, align 8
  %22 = load ptr, ptr %og.addr, align 8
  %call16 = call i64 @_get_next_page(ptr noundef %21, ptr noundef %22, i64 noundef 8500)
  store i64 %call16, ptr %ret, align 8
  %23 = load i64, ptr %ret, align 8
  %cmp17 = icmp slt i64 %23, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %while.end15
  store i64 -129, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %while.end15
  %24 = load i64, ptr %offset1, align 8
  store i64 %24, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then10
  %25 = load i64, ptr %retval, align 8
  ret i64 %25
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
