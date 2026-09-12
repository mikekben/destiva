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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
declare dso_local double @ov_time_total(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ov_pcm_total(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_pcm_seek_page(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_time_seek_page(ptr noundef %vf, double noundef %seconds) #1 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %seconds.addr = alloca double, align 8
  %link = alloca i32, align 4
  %pcm_total = alloca i64, align 8
  %time_total = alloca double, align 8
  %target = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store double %seconds, ptr %seconds.addr, align 8
  store i32 -1, ptr %link, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1)
  store i64 %call, ptr %pcm_total, align 8
  %1 = load ptr, ptr %vf.addr, align 8
  %call1 = call double @ov_time_total(ptr noundef %1, i32 noundef -1)
  store double %call1, ptr %time_total, align 8
  %2 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 -138, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %6 = load double, ptr %seconds.addr, align 8
  %cmp4 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %7 = load double, ptr %seconds.addr, align 8
  %8 = load double, ptr %time_total, align 8
  %cmp5 = fcmp ogt double %7, %8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 -131, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %links, align 8
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %link, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i32, ptr %link, align 4
  %cmp8 = icmp sge i32 %11, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %pcmlengths, align 8
  %14 = load i32, ptr %link, align 4
  %mul = mul nsw i32 %14, 2
  %add = add nsw i32 %mul, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i64, ptr %13, i64 %idxprom
  %15 = load i64, ptr %arrayidx, align 8
  %16 = load i64, ptr %pcm_total, align 8
  %sub9 = sub nsw i64 %16, %15
  store i64 %sub9, ptr %pcm_total, align 8
  %17 = load ptr, ptr %vf.addr, align 8
  %18 = load i32, ptr %link, align 4
  %call10 = call double @ov_time_total(ptr noundef %17, i32 noundef %18)
  %19 = load double, ptr %time_total, align 8
  %sub11 = fsub double %19, %call10
  store double %sub11, ptr %time_total, align 8
  %20 = load double, ptr %seconds.addr, align 8
  %21 = load double, ptr %time_total, align 8
  %cmp12 = fcmp oge double %20, %21
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  br label %for.end

if.end14:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %22 = load i32, ptr %link, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %link, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then13, %for.cond
  %23 = load i64, ptr %pcm_total, align 8
  %conv = sitofp i64 %23 to double
  %24 = load double, ptr %seconds.addr, align 8
  %25 = load double, ptr %time_total, align 8
  %sub15 = fsub double %24, %25
  %26 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %vi, align 8
  %28 = load i32, ptr %link, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds %struct.vorbis_info, ptr %27, i64 %idxprom16
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx17, i32 0, i32 2
  %29 = load i64, ptr %rate, align 8
  %conv18 = sitofp i64 %29 to double
  %30 = call double @llvm.fmuladd.f64(double %sub15, double %conv18, double %conv)
  %conv20 = fptosi double %30 to i64
  store i64 %conv20, ptr %target, align 8
  %31 = load ptr, ptr %vf.addr, align 8
  %32 = load i64, ptr %target, align 8
  %call21 = call i32 @ov_pcm_seek_page(ptr noundef %31, i64 noundef %32)
  store i32 %call21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then2, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
