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
define dso_local i64 @ov_bitrate_instant(ptr noundef %vf) #1 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %link = alloca i32, align 4
  %ret = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 15
  %3 = load i32, ptr %current_link, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %link, align 4
  %4 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 13
  %5 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 -131, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 17
  %7 = load double, ptr %samptrack, align 8
  %cmp1 = fcmp oeq double %7, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 16
  %9 = load double, ptr %bittrack, align 8
  %10 = load ptr, ptr %vf.addr, align 8
  %samptrack4 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 17
  %11 = load double, ptr %samptrack4, align 8
  %div = fdiv double %9, %11
  %12 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %vi, align 8
  %14 = load i32, ptr %link, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.vorbis_info, ptr %13, i64 %idxprom
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx, i32 0, i32 2
  %15 = load i64, ptr %rate, align 8
  %conv = sitofp i64 %15 to double
  %16 = call double @llvm.fmuladd.f64(double %div, double %conv, double 5.000000e-01)
  %conv5 = fptosi double %16 to i64
  store i64 %conv5, ptr %ret, align 8
  %17 = load ptr, ptr %vf.addr, align 8
  %bittrack6 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 16
  store double 0.000000e+00, ptr %bittrack6, align 8
  %18 = load ptr, ptr %vf.addr, align 8
  %samptrack7 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 17
  store double 0.000000e+00, ptr %samptrack7, align 8
  %19 = load i64, ptr %ret, align 8
  store i64 %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %20 = load i64, ptr %retval, align 8
  ret i64 %20
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
