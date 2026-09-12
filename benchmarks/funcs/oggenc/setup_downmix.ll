; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.downmix = type { ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str.83 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @setup_downmix(ptr noundef %opt) #2 {
entry:
  %opt.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 24) #4
  store ptr %call, ptr %d, align 8
  %0 = load ptr, ptr %opt.addr, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %channels, align 8
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.83) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @malloc(i64 noundef 16) #6
  %3 = load ptr, ptr %d, align 8
  %bufs = getelementptr inbounds nuw %struct.downmix, ptr %3, i32 0, i32 2
  store ptr %call2, ptr %bufs, align 8
  %call3 = call noalias ptr @malloc(i64 noundef 16384) #6
  %4 = load ptr, ptr %d, align 8
  %bufs4 = getelementptr inbounds nuw %struct.downmix, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %bufs4, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  store ptr %call3, ptr %arrayidx, align 8
  %call5 = call noalias ptr @malloc(i64 noundef 16384) #6
  %6 = load ptr, ptr %d, align 8
  %bufs6 = getelementptr inbounds nuw %struct.downmix, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %bufs6, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %call5, ptr %arrayidx7, align 8
  %8 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %read_samples, align 8
  %10 = load ptr, ptr %d, align 8
  %real_reader = getelementptr inbounds nuw %struct.downmix, ptr %10, i32 0, i32 0
  store ptr %9, ptr %real_reader, align 8
  %11 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %readdata, align 8
  %13 = load ptr, ptr %d, align 8
  %real_readdata = getelementptr inbounds nuw %struct.downmix, ptr %13, i32 0, i32 1
  store ptr %12, ptr %real_readdata, align 8
  %14 = load ptr, ptr %opt.addr, align 8
  %read_samples8 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %14, i32 0, i32 2
  store ptr @read_downmix, ptr %read_samples8, align 8
  %15 = load ptr, ptr %d, align 8
  %16 = load ptr, ptr %opt.addr, align 8
  %readdata9 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %16, i32 0, i32 7
  store ptr %15, ptr %readdata9, align 8
  %17 = load ptr, ptr %opt.addr, align 8
  %channels10 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %17, i32 0, i32 9
  store i32 1, ptr %channels10, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i64 @read_downmix(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
