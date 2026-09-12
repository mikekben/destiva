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

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_halfrate_p(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_info_blocksize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ov_info(ptr noundef, i32 noundef) #0

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
declare hidden void @_ov_splice(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_ov_d_seek_lap(ptr noundef %vf, double noundef %pos, ptr noundef %localseek) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %pos.addr = alloca double, align 8
  %localseek.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %lappcm = alloca ptr, align 8
  %pcm = alloca ptr, align 8
  %w1 = alloca ptr, align 8
  %w2 = alloca ptr, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %ch1 = alloca i32, align 4
  %ch2 = alloca i32, align 4
  %hs = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store double %pos, ptr %pos.addr, align 8
  store ptr %localseek, ptr %localseek.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %call = call i32 @_ov_initset(ptr noundef %2)
  store i32 %call, ptr %ret, align 4
  %3 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %4 = load i32, ptr %ret, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %vf.addr, align 8
  %call3 = call ptr @ov_info(ptr noundef %5, i32 noundef -1)
  store ptr %call3, ptr %vi, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %call4 = call i32 @ov_halfrate_p(ptr noundef %6)
  store i32 %call4, ptr %hs, align 4
  %7 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %channels, align 4
  store i32 %8, ptr %ch1, align 4
  %9 = load ptr, ptr %vi, align 8
  %call5 = call i32 @vorbis_info_blocksize(ptr noundef %9, i32 noundef 0)
  %10 = load i32, ptr %hs, align 4
  %add = add nsw i32 1, %10
  %shr = ashr i32 %call5, %add
  store i32 %shr, ptr %n1, align 4
  %11 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 19
  %call6 = call ptr @vorbis_window(ptr noundef %vd, i32 noundef 0)
  store ptr %call6, ptr %w1, align 8
  %12 = load i32, ptr %ch1, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 8, %conv
  %13 = alloca i8, i64 %mul, align 16
  store ptr %13, ptr %lappcm, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end2
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %ch1, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, ptr %n1, align 4
  %conv9 = sext i32 %16 to i64
  %mul10 = mul i64 4, %conv9
  %17 = alloca i8, i64 %mul10, align 16
  %18 = load ptr, ptr %lappcm, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  store ptr %17, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %vf.addr, align 8
  %22 = load ptr, ptr %vi, align 8
  %23 = load ptr, ptr %vf.addr, align 8
  %vd11 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %23, i32 0, i32 19
  %24 = load ptr, ptr %lappcm, align 8
  %25 = load i32, ptr %n1, align 4
  call void @_ov_getlap(ptr noundef %21, ptr noundef %22, ptr noundef %vd11, ptr noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %localseek.addr, align 8
  %27 = load ptr, ptr %vf.addr, align 8
  %28 = load double, ptr %pos.addr, align 8
  %call12 = call i32 %26(ptr noundef %27, double noundef %28)
  store i32 %call12, ptr %ret, align 4
  %29 = load i32, ptr %ret, align 4
  %tobool13 = icmp ne i32 %29, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  %30 = load i32, ptr %ret, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %for.end
  %31 = load ptr, ptr %vf.addr, align 8
  %call16 = call i32 @_ov_initprime(ptr noundef %31)
  store i32 %call16, ptr %ret, align 4
  %32 = load i32, ptr %ret, align 4
  %tobool17 = icmp ne i32 %32, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %33 = load i32, ptr %ret, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end15
  %34 = load ptr, ptr %vf.addr, align 8
  %call20 = call ptr @ov_info(ptr noundef %34, i32 noundef -1)
  store ptr %call20, ptr %vi, align 8
  %35 = load ptr, ptr %vi, align 8
  %channels21 = getelementptr inbounds nuw %struct.vorbis_info, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %channels21, align 4
  store i32 %36, ptr %ch2, align 4
  %37 = load ptr, ptr %vi, align 8
  %call22 = call i32 @vorbis_info_blocksize(ptr noundef %37, i32 noundef 0)
  %38 = load i32, ptr %hs, align 4
  %add23 = add nsw i32 1, %38
  %shr24 = ashr i32 %call22, %add23
  store i32 %shr24, ptr %n2, align 4
  %39 = load ptr, ptr %vf.addr, align 8
  %vd25 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %39, i32 0, i32 19
  %call26 = call ptr @vorbis_window(ptr noundef %vd25, i32 noundef 0)
  store ptr %call26, ptr %w2, align 8
  %40 = load ptr, ptr %vf.addr, align 8
  %vd27 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %40, i32 0, i32 19
  %call28 = call i32 @vorbis_synthesis_lapout(ptr noundef %vd27, ptr noundef %pcm)
  %41 = load ptr, ptr %pcm, align 8
  %42 = load ptr, ptr %lappcm, align 8
  %43 = load i32, ptr %n1, align 4
  %44 = load i32, ptr %n2, align 4
  %45 = load i32, ptr %ch1, align 4
  %46 = load i32, ptr %ch2, align 4
  %47 = load ptr, ptr %w1, align 8
  %48 = load ptr, ptr %w2, align 8
  call void @_ov_splice(ptr noundef %41, ptr noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef %47, ptr noundef %48)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then18, %if.then14, %if.then1, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
