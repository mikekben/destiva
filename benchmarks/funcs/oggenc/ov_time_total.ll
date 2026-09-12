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
define dso_local double @ov_time_total(ptr noundef %vf, i32 noundef %i) #0 {
entry:
  %retval = alloca double, align 8
  %vf.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %acc = alloca double, align 8
  %i6 = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double -1.310000e+02, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %i.addr, align 4
  %5 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %links, align 8
  %cmp1 = icmp sge i32 %4, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store double -1.310000e+02, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  %7 = load i32, ptr %i.addr, align 4
  %cmp4 = icmp slt i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store double 0.000000e+00, ptr %acc, align 8
  store i32 0, ptr %i6, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %8 = load i32, ptr %i6, align 4
  %9 = load ptr, ptr %vf.addr, align 8
  %links7 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %links7, align 8
  %cmp8 = icmp slt i32 %8, %10
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vf.addr, align 8
  %12 = load i32, ptr %i6, align 4
  %call = call double @ov_time_total(ptr noundef %11, i32 noundef %12)
  %13 = load double, ptr %acc, align 8
  %add = fadd double %13, %call
  store double %add, ptr %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i6, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i6, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load double, ptr %acc, align 8
  store double %15, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end3
  %16 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %pcmlengths, align 8
  %18 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 %18, 2
  %add9 = add nsw i32 %mul, 1
  %idxprom = sext i32 %add9 to i64
  %arrayidx = getelementptr inbounds i64, ptr %17, i64 %idxprom
  %19 = load i64, ptr %arrayidx, align 8
  %conv = sitofp i64 %19 to double
  %20 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %vi, align 8
  %22 = load i32, ptr %i.addr, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds %struct.vorbis_info, ptr %21, i64 %idxprom10
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx11, i32 0, i32 2
  %23 = load i64, ptr %rate, align 8
  %conv12 = sitofp i64 %23 to double
  %div = fdiv double %conv, %conv12
  store double %div, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %for.end, %if.then2, %if.then
  %24 = load double, ptr %retval, align 8
  ret double %24
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
