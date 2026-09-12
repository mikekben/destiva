; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.scaler = type { ptr, ptr, i32, float }

; Function Attrs: nounwind uwtable
define dso_local void @setup_scaler(ptr noundef %opt, float noundef %scale) #0 {
entry:
  %opt.addr = alloca ptr, align 8
  %scale.addr = alloca float, align 4
  %d = alloca ptr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store float %scale, ptr %scale.addr, align 4
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 24) #2
  store ptr %call, ptr %d, align 8
  %0 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %read_samples, align 8
  %2 = load ptr, ptr %d, align 8
  %real_reader = getelementptr inbounds nuw %struct.scaler, ptr %2, i32 0, i32 0
  store ptr %1, ptr %real_reader, align 8
  %3 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %readdata, align 8
  %5 = load ptr, ptr %d, align 8
  %real_readdata = getelementptr inbounds nuw %struct.scaler, ptr %5, i32 0, i32 1
  store ptr %4, ptr %real_readdata, align 8
  %6 = load ptr, ptr %opt.addr, align 8
  %read_samples1 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %6, i32 0, i32 2
  store ptr @read_scaler, ptr %read_samples1, align 8
  %7 = load ptr, ptr %d, align 8
  %8 = load ptr, ptr %opt.addr, align 8
  %readdata2 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %8, i32 0, i32 7
  store ptr %7, ptr %readdata2, align 8
  %9 = load ptr, ptr %opt.addr, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %channels, align 8
  %11 = load ptr, ptr %d, align 8
  %channels3 = getelementptr inbounds nuw %struct.scaler, ptr %11, i32 0, i32 2
  store i32 %10, ptr %channels3, align 8
  %12 = load float, ptr %scale.addr, align 4
  %13 = load ptr, ptr %d, align 8
  %scale_factor = getelementptr inbounds nuw %struct.scaler, ptr %13, i32 0, i32 3
  store float %12, ptr %scale_factor, align 4
  ret void
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @read_scaler(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
