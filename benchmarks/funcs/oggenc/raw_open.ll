; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wav_fmt = type { i16, i16, i32, i32, i16, i16 }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.wavfile = type { i16, i16, i64, i64, ptr, i16 }

; Function Attrs: nounwind uwtable
define dso_local i32 @raw_open(ptr noundef %in, ptr noundef %opt) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %format = alloca %struct.wav_fmt, align 4
  %wav = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  %call = call noalias ptr @malloc(i64 noundef 40) #2
  store ptr %call, ptr %wav, align 8
  %format1 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 0
  store i16 2, ptr %format1, align 4
  %0 = load ptr, ptr %opt.addr, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %channels, align 8
  %conv = trunc i32 %1 to i16
  %channels2 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  store i16 %conv, ptr %channels2, align 2
  %2 = load ptr, ptr %opt.addr, align 8
  %rate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %2, i32 0, i32 10
  %3 = load i64, ptr %rate, align 8
  %conv3 = trunc i64 %3 to i32
  %samplerate = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 2
  store i32 %conv3, ptr %samplerate, align 4
  %4 = load ptr, ptr %opt.addr, align 8
  %samplesize = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %4, i32 0, i32 11
  %5 = load i32, ptr %samplesize, align 8
  %conv4 = trunc i32 %5 to i16
  %samplesize5 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  store i16 %conv4, ptr %samplesize5, align 2
  %6 = load ptr, ptr %opt.addr, align 8
  %channels6 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %6, i32 0, i32 9
  %7 = load i32, ptr %channels6, align 8
  %conv7 = sext i32 %7 to i64
  %8 = load ptr, ptr %opt.addr, align 8
  %rate8 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %8, i32 0, i32 10
  %9 = load i64, ptr %rate8, align 8
  %mul = mul nsw i64 %conv7, %9
  %10 = load ptr, ptr %opt.addr, align 8
  %samplesize9 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %samplesize9, align 8
  %conv10 = sext i32 %11 to i64
  %mul11 = mul nsw i64 %mul, %conv10
  %div = sdiv i64 %mul11, 8
  %conv12 = trunc i64 %div to i32
  %bytespersec = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 3
  store i32 %conv12, ptr %bytespersec, align 4
  %bytespersec13 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 3
  %12 = load i32, ptr %bytespersec13, align 4
  %conv14 = trunc i32 %12 to i16
  %align = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 4
  store i16 %conv14, ptr %align, align 4
  %13 = load ptr, ptr %in.addr, align 8
  %14 = load ptr, ptr %wav, align 8
  %f = getelementptr inbounds nuw %struct.wavfile, ptr %14, i32 0, i32 4
  store ptr %13, ptr %f, align 8
  %15 = load ptr, ptr %wav, align 8
  %samplesread = getelementptr inbounds nuw %struct.wavfile, ptr %15, i32 0, i32 3
  store i64 0, ptr %samplesread, align 8
  %16 = load ptr, ptr %opt.addr, align 8
  %endianness = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %16, i32 0, i32 12
  %17 = load i32, ptr %endianness, align 4
  %conv15 = trunc i32 %17 to i16
  %18 = load ptr, ptr %wav, align 8
  %bigendian = getelementptr inbounds nuw %struct.wavfile, ptr %18, i32 0, i32 5
  store i16 %conv15, ptr %bigendian, align 8
  %channels16 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %19 = load i16, ptr %channels16, align 2
  %20 = load ptr, ptr %wav, align 8
  %channels17 = getelementptr inbounds nuw %struct.wavfile, ptr %20, i32 0, i32 0
  store i16 %19, ptr %channels17, align 8
  %21 = load ptr, ptr %opt.addr, align 8
  %samplesize18 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %21, i32 0, i32 11
  %22 = load i32, ptr %samplesize18, align 8
  %conv19 = trunc i32 %22 to i16
  %23 = load ptr, ptr %wav, align 8
  %samplesize20 = getelementptr inbounds nuw %struct.wavfile, ptr %23, i32 0, i32 1
  store i16 %conv19, ptr %samplesize20, align 2
  %24 = load ptr, ptr %wav, align 8
  %totalsamples = getelementptr inbounds nuw %struct.wavfile, ptr %24, i32 0, i32 2
  store i64 0, ptr %totalsamples, align 8
  %25 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %25, i32 0, i32 2
  store ptr @wav_read, ptr %read_samples, align 8
  %26 = load ptr, ptr %wav, align 8
  %27 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %27, i32 0, i32 7
  store ptr %26, ptr %readdata, align 8
  %28 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %28, i32 0, i32 8
  store i64 0, ptr %total_samples_per_channel, align 8
  ret i32 1
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @wav_read(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
