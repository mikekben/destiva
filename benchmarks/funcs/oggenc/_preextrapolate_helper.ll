; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define hidden void @_preextrapolate_helper(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %order = alloca i32, align 4
  %lpc = alloca ptr, align 8
  %work = alloca ptr, align 8
  %j = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 32, ptr %order, align 4
  %0 = load i32, ptr %order, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %lpc, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %pcm_current = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %pcm_current, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %conv1, 4
  %4 = alloca i8, i64 %mul2, align 16
  store ptr %4, ptr %work, align 8
  %5 = load ptr, ptr %v.addr, align 8
  %preextrapolate = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %5, i32 0, i32 7
  store i32 1, ptr %preextrapolate, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %pcm_current3 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %pcm_current3, align 4
  %conv4 = sext i32 %7 to i64
  %8 = load ptr, ptr %v.addr, align 8
  %centerW = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %8, i32 0, i32 12
  %9 = load i64, ptr %centerW, align 8
  %sub = sub nsw i64 %conv4, %9
  %10 = load i32, ptr %order, align 4
  %mul5 = mul nsw i32 %10, 2
  %conv6 = sext i32 %mul5 to i64
  %cmp = icmp sgt i64 %sub, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %if.then
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr %v.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %vi, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %channels, align 4
  %cmp8 = icmp slt i32 %11, %14
  br i1 %cmp8, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %15 = load i64, ptr %j, align 8
  %16 = load ptr, ptr %v.addr, align 8
  %pcm_current11 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %pcm_current11, align 4
  %conv12 = sext i32 %17 to i64
  %cmp13 = icmp slt i64 %15, %conv12
  br i1 %cmp13, label %for.body15, label %for.end

for.body15:                                       ; preds = %for.cond10
  %18 = load ptr, ptr %v.addr, align 8
  %pcm = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pcm, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 %idxprom
  %21 = load ptr, ptr %arrayidx, align 8
  %22 = load ptr, ptr %v.addr, align 8
  %pcm_current16 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %22, i32 0, i32 5
  %23 = load i32, ptr %pcm_current16, align 4
  %conv17 = sext i32 %23 to i64
  %24 = load i64, ptr %j, align 8
  %sub18 = sub nsw i64 %conv17, %24
  %sub19 = sub nsw i64 %sub18, 1
  %arrayidx20 = getelementptr inbounds float, ptr %21, i64 %sub19
  %25 = load float, ptr %arrayidx20, align 4
  %26 = load ptr, ptr %work, align 8
  %27 = load i64, ptr %j, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %26, i64 %27
  store float %25, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body15
  %28 = load i64, ptr %j, align 8
  %inc = add nsw i64 %28, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond10, !llvm.loop !6

for.end:                                          ; preds = %for.cond10
  %29 = load ptr, ptr %work, align 8
  %30 = load ptr, ptr %lpc, align 8
  %31 = load ptr, ptr %v.addr, align 8
  %pcm_current22 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %pcm_current22, align 4
  %conv23 = sext i32 %32 to i64
  %33 = load ptr, ptr %v.addr, align 8
  %centerW24 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %33, i32 0, i32 12
  %34 = load i64, ptr %centerW24, align 8
  %sub25 = sub nsw i64 %conv23, %34
  %conv26 = trunc i64 %sub25 to i32
  %35 = load i32, ptr %order, align 4
  %call = call float @vorbis_lpc_from_data(ptr noundef %29, ptr noundef %30, i32 noundef %conv26, i32 noundef %35)
  %36 = load ptr, ptr %lpc, align 8
  %37 = load ptr, ptr %work, align 8
  %38 = load ptr, ptr %v.addr, align 8
  %pcm_current27 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %pcm_current27, align 4
  %idx.ext = sext i32 %39 to i64
  %add.ptr = getelementptr inbounds float, ptr %37, i64 %idx.ext
  %40 = load ptr, ptr %v.addr, align 8
  %centerW28 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %40, i32 0, i32 12
  %41 = load i64, ptr %centerW28, align 8
  %idx.neg = sub i64 0, %41
  %add.ptr29 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.neg
  %42 = load i32, ptr %order, align 4
  %idx.ext30 = sext i32 %42 to i64
  %idx.neg31 = sub i64 0, %idx.ext30
  %add.ptr32 = getelementptr inbounds float, ptr %add.ptr29, i64 %idx.neg31
  %43 = load i32, ptr %order, align 4
  %44 = load ptr, ptr %work, align 8
  %45 = load ptr, ptr %v.addr, align 8
  %pcm_current33 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %pcm_current33, align 4
  %idx.ext34 = sext i32 %46 to i64
  %add.ptr35 = getelementptr inbounds float, ptr %44, i64 %idx.ext34
  %47 = load ptr, ptr %v.addr, align 8
  %centerW36 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %47, i32 0, i32 12
  %48 = load i64, ptr %centerW36, align 8
  %idx.neg37 = sub i64 0, %48
  %add.ptr38 = getelementptr inbounds float, ptr %add.ptr35, i64 %idx.neg37
  %49 = load ptr, ptr %v.addr, align 8
  %centerW39 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %49, i32 0, i32 12
  %50 = load i64, ptr %centerW39, align 8
  call void @vorbis_lpc_predict(ptr noundef %36, ptr noundef %add.ptr32, i32 noundef %43, ptr noundef %add.ptr38, i64 noundef %50)
  store i64 0, ptr %j, align 8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc55, %for.end
  %51 = load i64, ptr %j, align 8
  %52 = load ptr, ptr %v.addr, align 8
  %pcm_current41 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %52, i32 0, i32 5
  %53 = load i32, ptr %pcm_current41, align 4
  %conv42 = sext i32 %53 to i64
  %cmp43 = icmp slt i64 %51, %conv42
  br i1 %cmp43, label %for.body45, label %for.end57

for.body45:                                       ; preds = %for.cond40
  %54 = load ptr, ptr %work, align 8
  %55 = load i64, ptr %j, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %54, i64 %55
  %56 = load float, ptr %arrayidx46, align 4
  %57 = load ptr, ptr %v.addr, align 8
  %pcm47 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %pcm47, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %59 to i64
  %arrayidx49 = getelementptr inbounds ptr, ptr %58, i64 %idxprom48
  %60 = load ptr, ptr %arrayidx49, align 8
  %61 = load ptr, ptr %v.addr, align 8
  %pcm_current50 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %pcm_current50, align 4
  %conv51 = sext i32 %62 to i64
  %63 = load i64, ptr %j, align 8
  %sub52 = sub nsw i64 %conv51, %63
  %sub53 = sub nsw i64 %sub52, 1
  %arrayidx54 = getelementptr inbounds float, ptr %60, i64 %sub53
  store float %56, ptr %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body45
  %64 = load i64, ptr %j, align 8
  %inc56 = add nsw i64 %64, 1
  store i64 %inc56, ptr %j, align 8
  br label %for.cond40, !llvm.loop !8

for.end57:                                        ; preds = %for.cond40
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %65 = load i32, ptr %i, align 4
  %inc59 = add nsw i32 %65, 1
  store i32 %inc59, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end60:                                        ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end60, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local float @vorbis_lpc_from_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_lpc_predict(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
