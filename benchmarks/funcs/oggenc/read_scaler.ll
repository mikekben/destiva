; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler = type { ptr, ptr, i32, float }

; Function Attrs: nounwind uwtable
define hidden i64 @read_scaler(ptr noundef %data, ptr noundef %buffer, i32 noundef %samples) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %d = alloca ptr, align 8
  %in_samples = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %samples, ptr %samples.addr, align 4
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %d, align 8
  %1 = load ptr, ptr %d, align 8
  %real_reader = getelementptr inbounds nuw %struct.scaler, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %real_reader, align 8
  %3 = load ptr, ptr %d, align 8
  %real_readdata = getelementptr inbounds nuw %struct.scaler, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %real_readdata, align 8
  %5 = load ptr, ptr %buffer.addr, align 8
  %6 = load i32, ptr %samples.addr, align 4
  %call = call i64 %2(ptr noundef %4, ptr noundef %5, i32 noundef %6)
  store i64 %call, ptr %in_samples, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load ptr, ptr %d, align 8
  %channels = getelementptr inbounds nuw %struct.scaler, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %channels, align 8
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, ptr %in_samples, align 8
  %cmp2 = icmp slt i64 %conv, %11
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %12 = load ptr, ptr %d, align 8
  %scale_factor = getelementptr inbounds nuw %struct.scaler, ptr %12, i32 0, i32 3
  %13 = load float, ptr %scale_factor, align 4
  %14 = load ptr, ptr %buffer.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %17 to i64
  %arrayidx6 = getelementptr inbounds float, ptr %16, i64 %idxprom5
  %18 = load float, ptr %arrayidx6, align 4
  %mul = fmul float %18, %13
  store float %mul, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %20, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %21 = load i64, ptr %in_samples, align 8
  ret i64 %21
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
!8 = distinct !{!8, !7}
