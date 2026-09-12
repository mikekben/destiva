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
define hidden i64 @_get_next_page(ptr noundef %vf, ptr noundef %og, i64 noundef %boundary) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %boundary.addr = alloca i64, align 8
  %more = alloca i64, align 8
  %ret = alloca i64, align 8
  %ret21 = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  store i64 %boundary, ptr %boundary.addr, align 8
  %0 = load i64, ptr %boundary.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %1, i32 0, i32 2
  %2 = load i64, ptr %offset, align 8
  %3 = load i64, ptr %boundary.addr, align 8
  %add = add nsw i64 %3, %2
  store i64 %add, ptr %boundary.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.body

while.body:                                       ; preds = %if.end26, %if.end
  %4 = load i64, ptr %boundary.addr, align 8
  %cmp1 = icmp sgt i64 %4, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %vf.addr, align 8
  %offset2 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %offset2, align 8
  %7 = load i64, ptr %boundary.addr, align 8
  %cmp3 = icmp sge i64 %6, %7
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i64 -1, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %while.body
  %8 = load ptr, ptr %vf.addr, align 8
  %oy = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %og.addr, align 8
  %call = call i64 @ogg_sync_pageseek(ptr noundef %oy, ptr noundef %9)
  store i64 %call, ptr %more, align 8
  %10 = load i64, ptr %more, align 8
  %cmp6 = icmp slt i64 %10, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %11 = load i64, ptr %more, align 8
  %12 = load ptr, ptr %vf.addr, align 8
  %offset8 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 2
  %13 = load i64, ptr %offset8, align 8
  %sub = sub nsw i64 %13, %11
  store i64 %sub, ptr %offset8, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end5
  %14 = load i64, ptr %more, align 8
  %cmp9 = icmp eq i64 %14, 0
  br i1 %cmp9, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.else
  %15 = load i64, ptr %boundary.addr, align 8
  %tobool = icmp ne i64 %15, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.then10
  store i64 -1, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.then10
  %16 = load ptr, ptr %vf.addr, align 8
  %call13 = call i64 @_get_data(ptr noundef %16)
  store i64 %call13, ptr %ret, align 8
  %17 = load i64, ptr %ret, align 8
  %cmp14 = icmp eq i64 %17, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  store i64 -2, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end12
  %18 = load i64, ptr %ret, align 8
  %cmp17 = icmp slt i64 %18, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i64 -128, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end16
  br label %if.end25

if.else20:                                        ; preds = %if.else
  %19 = load ptr, ptr %vf.addr, align 8
  %offset22 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %offset22, align 8
  store i64 %20, ptr %ret21, align 8
  %21 = load i64, ptr %more, align 8
  %22 = load ptr, ptr %vf.addr, align 8
  %offset23 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %offset23, align 8
  %add24 = add nsw i64 %23, %21
  store i64 %add24, ptr %offset23, align 8
  %24 = load i64, ptr %ret21, align 8
  store i64 %24, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then7
  br label %while.body

return:                                           ; preds = %if.else20, %if.then18, %if.then15, %if.then11, %if.then4
  %25 = load i64, ptr %retval, align 8
  ret i64 %25
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_sync_pageseek(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_data(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
