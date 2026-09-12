; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UInt64 = type { [8 x i8] }

; Function Attrs: nounwind uwtable
define hidden i32 @uInt64_qrm10(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store i32 0, ptr %rem, align 4
  store i32 7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %rem, align 4
  %mul = mul i32 %1, 256
  %2 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds nuw %struct.UInt64, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %add = add i32 %mul, %conv
  store i32 %add, ptr %tmp, align 4
  %5 = load i32, ptr %tmp, align 4
  %div = udiv i32 %5, 10
  %conv1 = trunc i32 %div to i8
  %6 = load ptr, ptr %n.addr, align 8
  %b2 = getelementptr inbounds nuw %struct.UInt64, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], ptr %b2, i64 0, i64 %idxprom3
  store i8 %conv1, ptr %arrayidx4, align 1
  %8 = load i32, ptr %tmp, align 4
  %rem5 = urem i32 %8, 10
  store i32 %rem5, ptr %rem, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %rem, align 4
  ret i32 %10
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
