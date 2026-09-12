; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler = type { %struct.res_state, ptr, ptr, ptr, i32, i32, i32 }
%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str.82 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @setup_resample(ptr noundef %opt) #2 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca ptr, align 8
  %rs = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %opt, ptr %opt.addr, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #4
  store ptr %call, ptr %rs, align 8
  %0 = load ptr, ptr %rs, align 8
  %bufsize = getelementptr inbounds nuw %struct.resampler, ptr %0, i32 0, i32 5
  store i32 4096, ptr %bufsize, align 4
  %1 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %read_samples, align 8
  %3 = load ptr, ptr %rs, align 8
  %real_reader = getelementptr inbounds nuw %struct.resampler, ptr %3, i32 0, i32 1
  store ptr %2, ptr %real_reader, align 8
  %4 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %4, i32 0, i32 7
  %5 = load ptr, ptr %readdata, align 8
  %6 = load ptr, ptr %rs, align 8
  %real_readdata = getelementptr inbounds nuw %struct.resampler, ptr %6, i32 0, i32 2
  store ptr %5, ptr %real_readdata, align 8
  %7 = load ptr, ptr %opt.addr, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %channels, align 8
  %conv = sext i32 %8 to i64
  %mul = mul i64 8, %conv
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #5
  %9 = load ptr, ptr %rs, align 8
  %bufs = getelementptr inbounds nuw %struct.resampler, ptr %9, i32 0, i32 3
  store ptr %call1, ptr %bufs, align 8
  %10 = load ptr, ptr %opt.addr, align 8
  %channels2 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %10, i32 0, i32 9
  %11 = load i32, ptr %channels2, align 8
  %12 = load ptr, ptr %rs, align 8
  %channels3 = getelementptr inbounds nuw %struct.resampler, ptr %12, i32 0, i32 4
  store i32 %11, ptr %channels3, align 8
  %13 = load ptr, ptr %rs, align 8
  %done = getelementptr inbounds nuw %struct.resampler, ptr %13, i32 0, i32 6
  store i32 0, ptr %done, align 8
  %14 = load ptr, ptr %rs, align 8
  %resampler = getelementptr inbounds nuw %struct.resampler, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %rs, align 8
  %channels4 = getelementptr inbounds nuw %struct.resampler, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %channels4, align 8
  %17 = load ptr, ptr %opt.addr, align 8
  %resamplefreq = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %resamplefreq, align 8
  %19 = load ptr, ptr %opt.addr, align 8
  %rate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %19, i32 0, i32 10
  %20 = load i64, ptr %rate, align 8
  %conv5 = trunc i64 %20 to i32
  %call6 = call i32 (ptr, i32, i32, i32, i32, ...) @res_init(ptr noundef %resampler, i32 noundef %16, i32 noundef %18, i32 noundef %conv5, i32 noundef 0)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %21 = load ptr, ptr @stderr, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.82) #6
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i32, ptr %c, align 4
  %23 = load ptr, ptr %opt.addr, align 8
  %channels8 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %channels8, align 8
  %cmp = icmp slt i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %rs, align 8
  %bufsize10 = getelementptr inbounds nuw %struct.resampler, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %bufsize10, align 4
  %conv11 = sext i32 %26 to i64
  %mul12 = mul i64 4, %conv11
  %call13 = call noalias ptr @malloc(i64 noundef %mul12) #5
  %27 = load ptr, ptr %rs, align 8
  %bufs14 = getelementptr inbounds nuw %struct.resampler, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %bufs14, align 8
  %29 = load i32, ptr %c, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 %idxprom
  store ptr %call13, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %c, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %opt.addr, align 8
  %read_samples15 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %31, i32 0, i32 2
  store ptr @read_resampled, ptr %read_samples15, align 8
  %32 = load ptr, ptr %rs, align 8
  %33 = load ptr, ptr %opt.addr, align 8
  %readdata16 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %33, i32 0, i32 7
  store ptr %32, ptr %readdata16, align 8
  %34 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %34, i32 0, i32 8
  %35 = load i64, ptr %total_samples_per_channel, align 8
  %tobool17 = icmp ne i64 %35, 0
  br i1 %tobool17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %for.end
  %36 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel19 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %36, i32 0, i32 8
  %37 = load i64, ptr %total_samples_per_channel19, align 8
  %conv20 = sitofp i64 %37 to float
  %38 = load ptr, ptr %opt.addr, align 8
  %resamplefreq21 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %38, i32 0, i32 13
  %39 = load i32, ptr %resamplefreq21, align 8
  %conv22 = sitofp i32 %39 to float
  %40 = load ptr, ptr %opt.addr, align 8
  %rate23 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %40, i32 0, i32 10
  %41 = load i64, ptr %rate23, align 8
  %conv24 = sitofp i64 %41 to float
  %div = fdiv float %conv22, %conv24
  %mul25 = fmul float %conv20, %div
  %conv26 = fptosi float %mul25 to i32
  %conv27 = sext i32 %conv26 to i64
  %42 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel28 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %42, i32 0, i32 8
  store i64 %conv27, ptr %total_samples_per_channel28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then18, %for.end
  %43 = load ptr, ptr %opt.addr, align 8
  %resamplefreq30 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %43, i32 0, i32 13
  %44 = load i32, ptr %resamplefreq30, align 8
  %conv31 = sext i32 %44 to i64
  %45 = load ptr, ptr %opt.addr, align 8
  %rate32 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %45, i32 0, i32 10
  store i64 %conv31, ptr %rate32, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local i32 @res_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ...) #2

; Function Attrs: nounwind uwtable
declare hidden i64 @read_resampled(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind allocsize(0) }
attributes #6 = { nounwind }

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
