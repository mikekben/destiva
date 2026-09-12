; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler = type { %struct.res_state, ptr, ptr, ptr, i32, i32, i32 }
%struct.res_state = type { i32, i32, i32, i32, ptr, ptr, i32, i32 }

@stderr = external global ptr, align 8
@.str.194 = external hidden unnamed_addr constant [88 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i64 @read_resampled(ptr noundef %d, ptr noundef %buffer, i32 noundef %samples) #1 {
entry:
  %retval = alloca i64, align 8
  %d.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %rs = alloca ptr, align 8
  %in_samples = alloca i64, align 8
  %out_samples = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %samples, ptr %samples.addr, align 4
  %0 = load ptr, ptr %d.addr, align 8
  store ptr %0, ptr %rs, align 8
  %1 = load ptr, ptr %rs, align 8
  %resampler = getelementptr inbounds nuw %struct.resampler, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %samples.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @res_push_max_input(ptr noundef %resampler, i64 noundef %conv)
  %conv1 = sext i32 %call to i64
  store i64 %conv1, ptr %in_samples, align 8
  %3 = load i64, ptr %in_samples, align 8
  %4 = load ptr, ptr %rs, align 8
  %bufsize = getelementptr inbounds nuw %struct.resampler, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %bufsize, align 4
  %conv2 = sext i32 %5 to i64
  %cmp = icmp sgt i64 %3, %conv2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %rs, align 8
  %bufsize4 = getelementptr inbounds nuw %struct.resampler, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %bufsize4, align 4
  %conv5 = sext i32 %7 to i64
  store i64 %conv5, ptr %in_samples, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %rs, align 8
  %real_reader = getelementptr inbounds nuw %struct.resampler, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %real_reader, align 8
  %10 = load ptr, ptr %rs, align 8
  %real_readdata = getelementptr inbounds nuw %struct.resampler, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %real_readdata, align 8
  %12 = load ptr, ptr %rs, align 8
  %bufs = getelementptr inbounds nuw %struct.resampler, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %bufs, align 8
  %14 = load i64, ptr %in_samples, align 8
  %conv6 = trunc i64 %14 to i32
  %call7 = call i64 %9(ptr noundef %11, ptr noundef %13, i32 noundef %conv6)
  store i64 %call7, ptr %in_samples, align 8
  %15 = load i64, ptr %in_samples, align 8
  %cmp8 = icmp sle i64 %15, 0
  br i1 %cmp8, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end
  %16 = load ptr, ptr %rs, align 8
  %done = getelementptr inbounds nuw %struct.resampler, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %done, align 8
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.end16, label %if.then11

if.then11:                                        ; preds = %if.then10
  %18 = load ptr, ptr %rs, align 8
  %done12 = getelementptr inbounds nuw %struct.resampler, ptr %18, i32 0, i32 6
  store i32 1, ptr %done12, align 8
  %19 = load ptr, ptr %rs, align 8
  %resampler13 = getelementptr inbounds nuw %struct.resampler, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %buffer.addr, align 8
  %call14 = call i32 @res_drain(ptr noundef %resampler13, ptr noundef %20)
  store i32 %call14, ptr %out_samples, align 4
  %21 = load i32, ptr %out_samples, align 4
  %conv15 = sext i32 %21 to i64
  store i64 %conv15, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.then10
  store i64 0, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end
  %22 = load ptr, ptr %rs, align 8
  %resampler18 = getelementptr inbounds nuw %struct.resampler, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %buffer.addr, align 8
  %24 = load ptr, ptr %rs, align 8
  %bufs19 = getelementptr inbounds nuw %struct.resampler, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %bufs19, align 8
  %26 = load i64, ptr %in_samples, align 8
  %call20 = call i32 @res_push(ptr noundef %resampler18, ptr noundef %23, ptr noundef %25, i64 noundef %26)
  store i32 %call20, ptr %out_samples, align 4
  %27 = load i32, ptr %out_samples, align 4
  %cmp21 = icmp sle i32 %27, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end17
  %28 = load ptr, ptr @stderr, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.194) #2
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17
  %29 = load i32, ptr %out_samples, align 4
  %conv26 = sext i32 %29 to i64
  store i64 %conv26, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.end16, %if.then11
  %30 = load i64, ptr %retval, align 8
  ret i64 %30
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @res_push_max_input(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @res_push(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @res_drain(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
