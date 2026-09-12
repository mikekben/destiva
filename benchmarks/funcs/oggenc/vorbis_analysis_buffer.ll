; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @vorbis_analysis_buffer(ptr noundef %v, i32 noundef %vals) #2 {
entry:
  %v.addr = alloca ptr, align 8
  %vals.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vi = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %vals, ptr %vals.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %backend_state, align 8
  store ptr %3, ptr %b, align 8
  %4 = load ptr, ptr %b, align 8
  %header = getelementptr inbounds nuw %struct.private_state, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %header, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %b, align 8
  %header2 = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %header2, align 8
  call void @free(ptr noundef %7) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %b, align 8
  %header3 = getelementptr inbounds nuw %struct.private_state, ptr %8, i32 0, i32 9
  store ptr null, ptr %header3, align 8
  %9 = load ptr, ptr %b, align 8
  %header1 = getelementptr inbounds nuw %struct.private_state, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %header1, align 8
  %tobool4 = icmp ne ptr %10, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %11 = load ptr, ptr %b, align 8
  %header16 = getelementptr inbounds nuw %struct.private_state, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %header16, align 8
  call void @free(ptr noundef %12) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %13 = load ptr, ptr %b, align 8
  %header18 = getelementptr inbounds nuw %struct.private_state, ptr %13, i32 0, i32 10
  store ptr null, ptr %header18, align 8
  %14 = load ptr, ptr %b, align 8
  %header29 = getelementptr inbounds nuw %struct.private_state, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %header29, align 8
  %tobool10 = icmp ne ptr %15, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %16 = load ptr, ptr %b, align 8
  %header212 = getelementptr inbounds nuw %struct.private_state, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %header212, align 8
  call void @free(ptr noundef %17) #3
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  %18 = load ptr, ptr %b, align 8
  %header214 = getelementptr inbounds nuw %struct.private_state, ptr %18, i32 0, i32 11
  store ptr null, ptr %header214, align 8
  %19 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %pcm_current, align 4
  %21 = load i32, ptr %vals.addr, align 4
  %add = add nsw i32 %20, %21
  %22 = load ptr, ptr %v.addr, align 8
  %pcm_storage = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 4
  %23 = load i32, ptr %pcm_storage, align 8
  %cmp = icmp sge i32 %add, %23
  br i1 %cmp, label %if.then15, label %if.end25

if.then15:                                        ; preds = %if.end13
  %24 = load ptr, ptr %v.addr, align 8
  %pcm_current16 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %pcm_current16, align 4
  %26 = load i32, ptr %vals.addr, align 4
  %mul = mul nsw i32 %26, 2
  %add17 = add nsw i32 %25, %mul
  %27 = load ptr, ptr %v.addr, align 8
  %pcm_storage18 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %27, i32 0, i32 4
  store i32 %add17, ptr %pcm_storage18, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %28 = load i32, ptr %i, align 4
  %29 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %channels, align 4
  %cmp19 = icmp slt i32 %28, %30
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load ptr, ptr %v.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pcm, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %32, i64 %idxprom
  %34 = load ptr, ptr %arrayidx, align 8
  %35 = load ptr, ptr %v.addr, align 8
  %pcm_storage20 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %pcm_storage20, align 8
  %conv = sext i32 %36 to i64
  %mul21 = mul i64 %conv, 4
  %call = call ptr @realloc(ptr noundef %34, i64 noundef %mul21) #4
  %37 = load ptr, ptr %v.addr, align 8
  %pcm22 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pcm22, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %38, i64 %idxprom23
  store ptr %call, ptr %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.end13
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc37, %if.end25
  %41 = load i32, ptr %i, align 4
  %42 = load ptr, ptr %vi, align 8
  %channels27 = getelementptr inbounds nuw %struct.vorbis_info, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %channels27, align 4
  %cmp28 = icmp slt i32 %41, %43
  br i1 %cmp28, label %for.body30, label %for.end39

for.body30:                                       ; preds = %for.cond26
  %44 = load ptr, ptr %v.addr, align 8
  %pcm31 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pcm31, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %46 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %45, i64 %idxprom32
  %47 = load ptr, ptr %arrayidx33, align 8
  %48 = load ptr, ptr %v.addr, align 8
  %pcm_current34 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %48, i32 0, i32 5
  %49 = load i32, ptr %pcm_current34, align 4
  %idx.ext = sext i32 %49 to i64
  %add.ptr = getelementptr inbounds float, ptr %47, i64 %idx.ext
  %50 = load ptr, ptr %v.addr, align 8
  %pcmret = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %50, i32 0, i32 3
  %51 = load ptr, ptr %pcmret, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %52 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %51, i64 %idxprom35
  store ptr %add.ptr, ptr %arrayidx36, align 8
  br label %for.inc37

for.inc37:                                        ; preds = %for.body30
  %53 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %53, 1
  store i32 %inc38, ptr %i, align 4
  br label %for.cond26, !llvm.loop !8

for.end39:                                        ; preds = %for.cond26
  %54 = load ptr, ptr %v.addr, align 8
  %pcmret40 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %pcmret40, align 8
  ret ptr %55
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(1) }

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
