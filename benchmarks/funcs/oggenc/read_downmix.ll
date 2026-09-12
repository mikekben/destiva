; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.downmix = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @read_downmix(ptr noundef %data, ptr noundef %buffer, i32 noundef %samples) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %d = alloca ptr, align 8
  %in_samples = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %samples, ptr %samples.addr, align 4
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %d, align 8
  %1 = load ptr, ptr %d, align 8
  %real_reader = getelementptr inbounds nuw %struct.downmix, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %real_reader, align 8
  %3 = load ptr, ptr %d, align 8
  %real_readdata = getelementptr inbounds nuw %struct.downmix, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %real_readdata, align 8
  %5 = load ptr, ptr %d, align 8
  %bufs = getelementptr inbounds nuw %struct.downmix, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %bufs, align 8
  %7 = load i32, ptr %samples.addr, align 4
  %call = call i64 %2(ptr noundef %4, ptr noundef %6, i32 noundef %7)
  store i64 %call, ptr %in_samples, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, ptr %i, align 4
  %conv = sext i32 %8 to i64
  %9 = load i64, ptr %in_samples, align 8
  %cmp = icmp slt i64 %conv, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %d, align 8
  %bufs2 = getelementptr inbounds nuw %struct.downmix, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %bufs2, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds float, ptr %12, i64 %idxprom
  %14 = load float, ptr %arrayidx3, align 4
  %15 = load ptr, ptr %d, align 8
  %bufs4 = getelementptr inbounds nuw %struct.downmix, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %bufs4, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx5, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %17, i64 %idxprom6
  %19 = load float, ptr %arrayidx7, align 4
  %add = fadd float %14, %19
  %mul = fmul float %add, 5.000000e-01
  %20 = load ptr, ptr %buffer.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %20, i64 0
  %21 = load ptr, ptr %arrayidx8, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds float, ptr %21, i64 %idxprom9
  store float %mul, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load i64, ptr %in_samples, align 8
  ret i64 %24
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
