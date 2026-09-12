; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bzFile = type { ptr, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }
%struct.bz_stream = type { ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }

@bzerrorstrings = external hidden global [16 x ptr], align 16

; Function Attrs: nounwind uwtable
define dso_local ptr @BZ2_bzerror(ptr noundef %b, ptr noundef %errnum) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %errnum.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %errnum, ptr %errnum.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %lastErr = getelementptr inbounds nuw %struct.bzFile, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %lastErr, align 8
  store i32 %1, ptr %err, align 4
  %2 = load i32, ptr %err, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %err, align 4
  %4 = load ptr, ptr %errnum.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %err, align 4
  %mul = mul nsw i32 %5, -1
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x ptr], ptr @bzerrorstrings, i64 0, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  ret ptr %6
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
