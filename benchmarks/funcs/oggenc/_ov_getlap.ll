; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_pcmout(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_read(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_and_process_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @_ov_getlap(ptr noundef %vf, ptr noundef %vi, ptr noundef %vd, ptr noundef %lappcm, i32 noundef %lapsize) #2 {
entry:
  %vf.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %vd.addr = alloca ptr, align 8
  %lappcm.addr = alloca ptr, align 8
  %lapsize.addr = alloca i32, align 4
  %lapcount = alloca i32, align 4
  %i = alloca i32, align 4
  %pcm = alloca ptr, align 8
  %samples = alloca i32, align 4
  %ret = alloca i32, align 4
  %samples17 = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  store ptr %lappcm, ptr %lappcm.addr, align 8
  store i32 %lapsize, ptr %lapsize.addr, align 4
  store i32 0, ptr %lapcount, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load i32, ptr %lapcount, align 4
  %1 = load i32, ptr %lapsize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %vd.addr, align 8
  %call = call i32 @vorbis_synthesis_pcmout(ptr noundef %2, ptr noundef %pcm)
  store i32 %call, ptr %samples, align 4
  %3 = load i32, ptr %samples, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %samples, align 4
  %5 = load i32, ptr %lapsize.addr, align 4
  %6 = load i32, ptr %lapcount, align 4
  %sub = sub nsw i32 %5, %6
  %cmp1 = icmp sgt i32 %4, %sub
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr %lapsize.addr, align 4
  %8 = load i32, ptr %lapcount, align 4
  %sub3 = sub nsw i32 %7, %8
  store i32 %sub3, ptr %samples, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %channels, align 4
  %cmp4 = icmp slt i32 %9, %11
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %lappcm.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  %15 = load i32, ptr %lapcount, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds float, ptr %14, i64 %idx.ext
  %16 = load ptr, ptr %pcm, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %16, i64 %idxprom5
  %18 = load ptr, ptr %arrayidx6, align 8
  %19 = load i32, ptr %samples, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 4, %conv
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %add.ptr, ptr align 4 %18, i64 %mul, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %samples, align 4
  %22 = load i32, ptr %lapcount, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, ptr %lapcount, align 4
  %23 = load ptr, ptr %vd.addr, align 8
  %24 = load i32, ptr %samples, align 4
  %call7 = call i32 @vorbis_synthesis_read(ptr noundef %23, i32 noundef %24)
  br label %if.end13

if.else:                                          ; preds = %while.body
  %25 = load ptr, ptr %vf.addr, align 8
  %call8 = call i32 @_fetch_and_process_packet(ptr noundef %25, ptr noundef null, i32 noundef 1, i32 noundef 0)
  store i32 %call8, ptr %ret, align 4
  %26 = load i32, ptr %ret, align 4
  %cmp9 = icmp eq i32 %26, -2
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  br label %while.end

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %for.end
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then11, %while.cond
  %27 = load i32, ptr %lapcount, align 4
  %28 = load i32, ptr %lapsize.addr, align 4
  %cmp14 = icmp slt i32 %27, %28
  br i1 %cmp14, label %if.then16, label %if.end64

if.then16:                                        ; preds = %while.end
  %29 = load ptr, ptr %vf.addr, align 8
  %vd18 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %29, i32 0, i32 19
  %call19 = call i32 @vorbis_synthesis_lapout(ptr noundef %vd18, ptr noundef %pcm)
  store i32 %call19, ptr %samples17, align 4
  %30 = load i32, ptr %samples17, align 4
  %cmp20 = icmp eq i32 %30, 0
  br i1 %cmp20, label %if.then22, label %if.else39

if.then22:                                        ; preds = %if.then16
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %if.then22
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %vi.addr, align 8
  %channels24 = getelementptr inbounds nuw %struct.vorbis_info, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %channels24, align 4
  %cmp25 = icmp slt i32 %31, %33
  br i1 %cmp25, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond23
  %34 = load ptr, ptr %lappcm.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %34, i64 %idxprom28
  %36 = load ptr, ptr %arrayidx29, align 8
  %37 = load i32, ptr %lapcount, align 4
  %idx.ext30 = sext i32 %37 to i64
  %add.ptr31 = getelementptr inbounds float, ptr %36, i64 %idx.ext30
  %38 = load i32, ptr %lapsize.addr, align 4
  %conv32 = sext i32 %38 to i64
  %mul33 = mul i64 4, %conv32
  %39 = load i32, ptr %lapcount, align 4
  %conv34 = sext i32 %39 to i64
  %sub35 = sub i64 %mul33, %conv34
  call void @llvm.memset.p0.i64(ptr align 4 %add.ptr31, i8 0, i64 %sub35, i1 false)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body27
  %40 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond23, !llvm.loop !9

for.end38:                                        ; preds = %for.cond23
  %41 = load i32, ptr %lapsize.addr, align 4
  store i32 %41, ptr %lapcount, align 4
  br label %if.end63

if.else39:                                        ; preds = %if.then16
  %42 = load i32, ptr %samples17, align 4
  %43 = load i32, ptr %lapsize.addr, align 4
  %44 = load i32, ptr %lapcount, align 4
  %sub40 = sub nsw i32 %43, %44
  %cmp41 = icmp sgt i32 %42, %sub40
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.else39
  %45 = load i32, ptr %lapsize.addr, align 4
  %46 = load i32, ptr %lapcount, align 4
  %sub44 = sub nsw i32 %45, %46
  store i32 %sub44, ptr %samples17, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.else39
  store i32 0, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc59, %if.end45
  %47 = load i32, ptr %i, align 4
  %48 = load ptr, ptr %vi.addr, align 8
  %channels47 = getelementptr inbounds nuw %struct.vorbis_info, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %channels47, align 4
  %cmp48 = icmp slt i32 %47, %49
  br i1 %cmp48, label %for.body50, label %for.end61

for.body50:                                       ; preds = %for.cond46
  %50 = load ptr, ptr %lappcm.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %50, i64 %idxprom51
  %52 = load ptr, ptr %arrayidx52, align 8
  %53 = load i32, ptr %lapcount, align 4
  %idx.ext53 = sext i32 %53 to i64
  %add.ptr54 = getelementptr inbounds float, ptr %52, i64 %idx.ext53
  %54 = load ptr, ptr %pcm, align 8
  %55 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %55 to i64
  %arrayidx56 = getelementptr inbounds ptr, ptr %54, i64 %idxprom55
  %56 = load ptr, ptr %arrayidx56, align 8
  %57 = load i32, ptr %samples17, align 4
  %conv57 = sext i32 %57 to i64
  %mul58 = mul i64 4, %conv57
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %add.ptr54, ptr align 4 %56, i64 %mul58, i1 false)
  br label %for.inc59

for.inc59:                                        ; preds = %for.body50
  %58 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %58, 1
  store i32 %inc60, ptr %i, align 4
  br label %for.cond46, !llvm.loop !10

for.end61:                                        ; preds = %for.cond46
  %59 = load i32, ptr %samples17, align 4
  %60 = load i32, ptr %lapcount, align 4
  %add62 = add nsw i32 %60, %59
  store i32 %add62, ptr %lapcount, align 4
  br label %if.end63

if.end63:                                         ; preds = %for.end61, %for.end38
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_lapout(ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
