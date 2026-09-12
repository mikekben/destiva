; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_init(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_clear(ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @_ov_open1(ptr noundef %f, ptr noundef %vf, ptr noundef %initial, i64 noundef %ibytes, ptr noundef byval(%struct.ov_callbacks) align 8 %callbacks) #2 {
entry:
  %f.addr = alloca ptr, align 8
  %vf.addr = alloca ptr, align 8
  %initial.addr = alloca ptr, align 8
  %ibytes.addr = alloca i64, align 8
  %offsettest = alloca i32, align 4
  %ret = alloca i32, align 4
  %buffer = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %initial, ptr %initial.addr, align 8
  store i64 %ibytes, ptr %ibytes.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %seek_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks, i32 0, i32 1
  %1 = load ptr, ptr %seek_func, align 8
  %2 = load ptr, ptr %f.addr, align 8
  %call = call i32 %1(ptr noundef %2, i64 noundef 0, i32 noundef 1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ]
  store i32 %cond, ptr %offsettest, align 4
  %3 = load ptr, ptr %vf.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 944, i1 false)
  %4 = load ptr, ptr %f.addr, align 8
  %5 = load ptr, ptr %vf.addr, align 8
  %datasource = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 0
  store ptr %4, ptr %datasource, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %callbacks1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %callbacks1, ptr align 8 %callbacks, i64 32, i1 false)
  %7 = load ptr, ptr %vf.addr, align 8
  %oy = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %7, i32 0, i32 4
  %call2 = call i32 @ogg_sync_init(ptr noundef %oy)
  %8 = load ptr, ptr %initial.addr, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load ptr, ptr %vf.addr, align 8
  %oy4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %ibytes.addr, align 8
  %call5 = call ptr @ogg_sync_buffer(ptr noundef %oy4, i64 noundef %10)
  store ptr %call5, ptr %buffer, align 8
  %11 = load ptr, ptr %buffer, align 8
  %12 = load ptr, ptr %initial.addr, align 8
  %13 = load i64, ptr %ibytes.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %12, i64 %13, i1 false)
  %14 = load ptr, ptr %vf.addr, align 8
  %oy6 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 4
  %15 = load i64, ptr %ibytes.addr, align 8
  %call7 = call i32 @ogg_sync_wrote(ptr noundef %oy6, i64 noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load i32, ptr %offsettest, align 4
  %cmp = icmp ne i32 %16, -1
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %17 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 1
  store i32 1, ptr %seekable, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %18 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 5
  store i32 1, ptr %links, align 8
  %19 = load ptr, ptr %vf.addr, align 8
  %links10 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %links10, align 8
  %conv = sext i32 %20 to i64
  %call11 = call noalias ptr @calloc(i64 noundef %conv, i64 noundef 56) #4
  %21 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %21, i32 0, i32 10
  store ptr %call11, ptr %vi, align 8
  %22 = load ptr, ptr %vf.addr, align 8
  %links12 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %links12, align 8
  %conv13 = sext i32 %23 to i64
  %call14 = call noalias ptr @calloc(i64 noundef %conv13, i64 noundef 32) #4
  %24 = load ptr, ptr %vf.addr, align 8
  %vc = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %24, i32 0, i32 11
  store ptr %call14, ptr %vc, align 8
  %25 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %25, i32 0, i32 18
  %call15 = call i32 @ogg_stream_init(ptr noundef %os, i32 noundef -1)
  %26 = load ptr, ptr %vf.addr, align 8
  %27 = load ptr, ptr %vf.addr, align 8
  %vi16 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %vi16, align 8
  %29 = load ptr, ptr %vf.addr, align 8
  %vc17 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %29, i32 0, i32 11
  %30 = load ptr, ptr %vc17, align 8
  %31 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %31, i32 0, i32 14
  %call18 = call i32 @_fetch_headers(ptr noundef %26, ptr noundef %28, ptr noundef %30, ptr noundef %current_serialno, ptr noundef null)
  store i32 %call18, ptr %ret, align 4
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end9
  %32 = load ptr, ptr %vf.addr, align 8
  %datasource22 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %32, i32 0, i32 0
  store ptr null, ptr %datasource22, align 8
  %33 = load ptr, ptr %vf.addr, align 8
  %call23 = call i32 @ov_clear(ptr noundef %33)
  br label %if.end24

if.else:                                          ; preds = %if.end9
  %34 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %34, i32 0, i32 13
  store i32 1, ptr %ready_state, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %35 = load i32, ptr %ret, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_init(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local ptr @ogg_sync_buffer(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_wrote(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_headers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
