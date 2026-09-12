; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_pcmout(ptr noundef %v, ptr noundef %pcm) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %pcm.addr = alloca ptr, align 8
  %vi = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store ptr %pcm, ptr %pcm.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %pcm_returned = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %pcm_returned, align 8
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %v.addr, align 8
  %pcm_returned2 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %pcm_returned2, align 8
  %6 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %pcm_current, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %pcm.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %channels, align 4
  %cmp5 = icmp slt i32 %9, %11
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %v.addr, align 8
  %pcm6 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pcm6, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  %16 = load ptr, ptr %v.addr, align 8
  %pcm_returned7 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %pcm_returned7, align 8
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds float, ptr %15, i64 %idx.ext
  %18 = load ptr, ptr %v.addr, align 8
  %pcmret = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pcmret, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %19, i64 %idxprom8
  store ptr %add.ptr, ptr %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %v.addr, align 8
  %pcmret10 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pcmret10, align 8
  %24 = load ptr, ptr %pcm.addr, align 8
  store ptr %23, ptr %24, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %25 = load ptr, ptr %v.addr, align 8
  %pcm_current11 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %pcm_current11, align 4
  %27 = load ptr, ptr %v.addr, align 8
  %pcm_returned12 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %pcm_returned12, align 8
  %sub = sub nsw i32 %26, %28
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.end
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
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
