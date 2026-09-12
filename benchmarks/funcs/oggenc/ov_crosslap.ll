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

@.str.145 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.146 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_halfrate_p(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_info_blocksize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ov_info(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_crosslap(ptr noundef %vf1, ptr noundef %vf2) #0 {
entry:
  %retval = alloca i32, align 4
  %vf1.addr = alloca ptr, align 8
  %vf2.addr = alloca ptr, align 8
  %vi1 = alloca ptr, align 8
  %vi2 = alloca ptr, align 8
  %lappcm = alloca ptr, align 8
  %pcm = alloca ptr, align 8
  %w1 = alloca ptr, align 8
  %w2 = alloca ptr, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %hs1 = alloca i32, align 4
  %hs2 = alloca i32, align 4
  store ptr %vf1, ptr %vf1.addr, align 8
  store ptr %vf2, ptr %vf2.addr, align 8
  %0 = load ptr, ptr %vf1.addr, align 8
  %1 = load ptr, ptr %vf2.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf1.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ready_state, align 8
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -131, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %vf2.addr, align 8
  %ready_state4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 13
  %5 = load i32, ptr %ready_state4, align 8
  %cmp5 = icmp slt i32 %5, 2
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -131, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %vf1.addr, align 8
  %call = call i32 @_ov_initset(ptr noundef %6)
  store i32 %call, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end7
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end7
  %9 = load ptr, ptr %vf2.addr, align 8
  %call10 = call i32 @_ov_initprime(ptr noundef %9)
  store i32 %call10, ptr %ret, align 4
  %10 = load i32, ptr %ret, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %11 = load i32, ptr %ret, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %12 = load ptr, ptr %vf1.addr, align 8
  %call14 = call ptr @ov_info(ptr noundef %12, i32 noundef -1)
  store ptr %call14, ptr %vi1, align 8
  %13 = load ptr, ptr %vf2.addr, align 8
  %call15 = call ptr @ov_info(ptr noundef %13, i32 noundef -1)
  store ptr %call15, ptr %vi2, align 8
  %14 = load ptr, ptr %vf1.addr, align 8
  %call16 = call i32 @ov_halfrate_p(ptr noundef %14)
  store i32 %call16, ptr %hs1, align 4
  %15 = load ptr, ptr %vf2.addr, align 8
  %call17 = call i32 @ov_halfrate_p(ptr noundef %15)
  store i32 %call17, ptr %hs2, align 4
  %16 = load ptr, ptr %vi1, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %channels, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 8, %conv
  %18 = alloca i8, i64 %mul, align 16
  store ptr %18, ptr %lappcm, align 8
  %19 = load ptr, ptr %vi1, align 8
  %call18 = call i32 @vorbis_info_blocksize(ptr noundef %19, i32 noundef 0)
  %20 = load i32, ptr %hs1, align 4
  %add = add nsw i32 1, %20
  %shr = ashr i32 %call18, %add
  store i32 %shr, ptr %n1, align 4
  %21 = load ptr, ptr %vi2, align 8
  %call19 = call i32 @vorbis_info_blocksize(ptr noundef %21, i32 noundef 0)
  %22 = load i32, ptr %hs2, align 4
  %add20 = add nsw i32 1, %22
  %shr21 = ashr i32 %call19, %add20
  store i32 %shr21, ptr %n2, align 4
  %23 = load ptr, ptr %vf1.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %23, i32 0, i32 19
  %call22 = call ptr @vorbis_window(ptr noundef %vd, i32 noundef 0)
  store ptr %call22, ptr %w1, align 8
  %24 = load ptr, ptr %vf2.addr, align 8
  %vd23 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %24, i32 0, i32 19
  %call24 = call ptr @vorbis_window(ptr noundef %vd23, i32 noundef 0)
  store ptr %call24, ptr %w2, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %vi1, align 8
  %channels25 = getelementptr inbounds nuw %struct.vorbis_info, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %channels25, align 4
  %cmp26 = icmp slt i32 %25, %27
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, ptr %n1, align 4
  %conv28 = sext i32 %28 to i64
  %mul29 = mul i64 4, %conv28
  %29 = alloca i8, i64 %mul29, align 16
  %30 = load ptr, ptr %lappcm, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %30, i64 %idxprom
  store ptr %29, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %vf1.addr, align 8
  %34 = load ptr, ptr %vi1, align 8
  %35 = load ptr, ptr %vf1.addr, align 8
  %vd30 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %35, i32 0, i32 19
  %36 = load ptr, ptr %lappcm, align 8
  %37 = load i32, ptr %n1, align 4
  call void @_ov_getlap(ptr noundef %33, ptr noundef %34, ptr noundef %vd30, ptr noundef %36, i32 noundef %37)
  %38 = load ptr, ptr %vf2.addr, align 8
  %vd31 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %38, i32 0, i32 19
  %call32 = call i32 @vorbis_synthesis_lapout(ptr noundef %vd31, ptr noundef %pcm)
  %39 = load ptr, ptr %pcm, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %39, i64 0
  %40 = load ptr, ptr %arrayidx33, align 8
  %41 = load i32, ptr %n1, align 4
  %mul34 = mul nsw i32 %41, 2
  call void @_analysis_output_always(ptr noundef @.str.145, i32 noundef 0, ptr noundef %40, i32 noundef %mul34, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  %42 = load ptr, ptr %pcm, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %42, i64 1
  %43 = load ptr, ptr %arrayidx35, align 8
  %44 = load i32, ptr %n1, align 4
  %mul36 = mul nsw i32 %44, 2
  call void @_analysis_output_always(ptr noundef @.str.146, i32 noundef 0, ptr noundef %43, i32 noundef %mul36, i32 noundef 0, i32 noundef 0, i64 noundef 0)
  %45 = load ptr, ptr %pcm, align 8
  %46 = load ptr, ptr %lappcm, align 8
  %47 = load i32, ptr %n1, align 4
  %48 = load i32, ptr %n2, align 4
  %49 = load ptr, ptr %vi1, align 8
  %channels37 = getelementptr inbounds nuw %struct.vorbis_info, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %channels37, align 4
  %51 = load ptr, ptr %vi2, align 8
  %channels38 = getelementptr inbounds nuw %struct.vorbis_info, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %channels38, align 4
  %53 = load ptr, ptr %w1, align 8
  %54 = load ptr, ptr %w2, align 8
  call void @_ov_splice(ptr noundef %45, ptr noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %50, i32 noundef %52, ptr noundef %53, ptr noundef %54)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then8, %if.then6, %if.then2, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_ov_initset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_ov_initprime(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @vorbis_window(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_ov_getlap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_lapout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @_analysis_output_always(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_ov_splice(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
