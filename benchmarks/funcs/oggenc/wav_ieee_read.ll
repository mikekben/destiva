; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavfile = type { i16, i16, i64, i64, ptr, i16 }

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @wav_ieee_read(ptr noundef %in, ptr noundef %buffer, i32 noundef %samples) #1 {
entry:
  %in.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %f = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %bytes_read = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %realsamples = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %samples, ptr %samples.addr, align 4
  %0 = load ptr, ptr %in.addr, align 8
  store ptr %0, ptr %f, align 8
  %1 = load i32, ptr %samples.addr, align 4
  %mul = mul nsw i32 %1, 4
  %2 = load ptr, ptr %f, align 8
  %channels = getelementptr inbounds nuw %struct.wavfile, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %channels, align 8
  %conv = sext i16 %3 to i32
  %mul1 = mul nsw i32 %mul, %conv
  %conv2 = sext i32 %mul1 to i64
  %4 = alloca i8, i64 %conv2, align 16
  store ptr %4, ptr %buf, align 8
  %5 = load ptr, ptr %buf, align 8
  %6 = load i32, ptr %samples.addr, align 4
  %mul3 = mul nsw i32 %6, 4
  %7 = load ptr, ptr %f, align 8
  %channels4 = getelementptr inbounds nuw %struct.wavfile, ptr %7, i32 0, i32 0
  %8 = load i16, ptr %channels4, align 8
  %conv5 = sext i16 %8 to i32
  %mul6 = mul nsw i32 %mul3, %conv5
  %conv7 = sext i32 %mul6 to i64
  %9 = load ptr, ptr %f, align 8
  %f8 = getelementptr inbounds nuw %struct.wavfile, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %f8, align 8
  %call = call i64 @fread(ptr noundef %5, i64 noundef 1, i64 noundef %conv7, ptr noundef %10)
  store i64 %call, ptr %bytes_read, align 8
  %11 = load ptr, ptr %f, align 8
  %totalsamples = getelementptr inbounds nuw %struct.wavfile, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %totalsamples, align 8
  %tobool = icmp ne i64 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %f, align 8
  %samplesread = getelementptr inbounds nuw %struct.wavfile, ptr %13, i32 0, i32 3
  %14 = load i64, ptr %samplesread, align 8
  %15 = load i64, ptr %bytes_read, align 8
  %16 = load ptr, ptr %f, align 8
  %channels9 = getelementptr inbounds nuw %struct.wavfile, ptr %16, i32 0, i32 0
  %17 = load i16, ptr %channels9, align 8
  %conv10 = sext i16 %17 to i32
  %mul11 = mul nsw i32 4, %conv10
  %conv12 = sext i32 %mul11 to i64
  %div = sdiv i64 %15, %conv12
  %add = add nsw i64 %14, %div
  %18 = load ptr, ptr %f, align 8
  %totalsamples13 = getelementptr inbounds nuw %struct.wavfile, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %totalsamples13, align 8
  %cmp = icmp sgt i64 %add, %19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %20 = load ptr, ptr %f, align 8
  %channels15 = getelementptr inbounds nuw %struct.wavfile, ptr %20, i32 0, i32 0
  %21 = load i16, ptr %channels15, align 8
  %conv16 = sext i16 %21 to i32
  %mul17 = mul nsw i32 4, %conv16
  %conv18 = sext i32 %mul17 to i64
  %22 = load ptr, ptr %f, align 8
  %totalsamples19 = getelementptr inbounds nuw %struct.wavfile, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %totalsamples19, align 8
  %24 = load ptr, ptr %f, align 8
  %samplesread20 = getelementptr inbounds nuw %struct.wavfile, ptr %24, i32 0, i32 3
  %25 = load i64, ptr %samplesread20, align 8
  %sub = sub nsw i64 %23, %25
  %mul21 = mul nsw i64 %conv18, %sub
  store i64 %mul21, ptr %bytes_read, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %26 = load i64, ptr %bytes_read, align 8
  %27 = load ptr, ptr %f, align 8
  %channels22 = getelementptr inbounds nuw %struct.wavfile, ptr %27, i32 0, i32 0
  %28 = load i16, ptr %channels22, align 8
  %conv23 = sext i16 %28 to i32
  %mul24 = mul nsw i32 4, %conv23
  %conv25 = sext i32 %mul24 to i64
  %div26 = sdiv i64 %26, %conv25
  store i64 %div26, ptr %realsamples, align 8
  %29 = load i64, ptr %realsamples, align 8
  %30 = load ptr, ptr %f, align 8
  %samplesread27 = getelementptr inbounds nuw %struct.wavfile, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %samplesread27, align 8
  %add28 = add nsw i64 %31, %29
  store i64 %add28, ptr %samplesread27, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %if.end
  %32 = load i32, ptr %i, align 4
  %conv29 = sext i32 %32 to i64
  %33 = load i64, ptr %realsamples, align 8
  %cmp30 = icmp slt i64 %conv29, %33
  br i1 %cmp30, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc, %for.body
  %34 = load i32, ptr %j, align 4
  %35 = load ptr, ptr %f, align 8
  %channels33 = getelementptr inbounds nuw %struct.wavfile, ptr %35, i32 0, i32 0
  %36 = load i16, ptr %channels33, align 8
  %conv34 = sext i16 %36 to i32
  %cmp35 = icmp slt i32 %34, %conv34
  br i1 %cmp35, label %for.body37, label %for.end

for.body37:                                       ; preds = %for.cond32
  %37 = load ptr, ptr %buf, align 8
  %38 = load i32, ptr %i, align 4
  %39 = load ptr, ptr %f, align 8
  %channels38 = getelementptr inbounds nuw %struct.wavfile, ptr %39, i32 0, i32 0
  %40 = load i16, ptr %channels38, align 8
  %conv39 = sext i16 %40 to i32
  %mul40 = mul nsw i32 %38, %conv39
  %41 = load i32, ptr %j, align 4
  %add41 = add nsw i32 %mul40, %41
  %idxprom = sext i32 %add41 to i64
  %arrayidx = getelementptr inbounds float, ptr %37, i64 %idxprom
  %42 = load float, ptr %arrayidx, align 4
  %43 = load ptr, ptr %buffer.addr, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %44 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %43, i64 %idxprom42
  %45 = load ptr, ptr %arrayidx43, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %46 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %45, i64 %idxprom44
  store float %42, ptr %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body37
  %47 = load i32, ptr %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond32, !llvm.loop !6

for.end:                                          ; preds = %for.cond32
  br label %for.inc46

for.inc46:                                        ; preds = %for.end
  %48 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %48, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end48:                                        ; preds = %for.cond
  %49 = load i64, ptr %realsamples, align 8
  ret i64 %49
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !7}
