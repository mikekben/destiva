; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @BINBYTES(ptr noundef %bm, i64 noundef %pos, i64 noundef %bin) #0 {
entry:
  %bm.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %bin.addr = alloca i64, align 8
  %bins = alloca i32, align 4
  store ptr %bm, ptr %bm.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  store i64 %bin, ptr %bin.addr, align 8
  %0 = load ptr, ptr %bm.addr, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %queue_bins, align 8
  store i32 %1, ptr %bins, align 4
  %2 = load ptr, ptr %bm.addr, align 8
  %queue_binned = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %queue_binned, align 8
  %4 = load i64, ptr %pos.addr, align 8
  %5 = load i32, ptr %bins, align 4
  %conv = sext i32 %5 to i64
  %mul = mul nsw i64 %4, %conv
  %6 = load i64, ptr %bin.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %add
  %7 = load i32, ptr %arrayidx, align 4
  %conv1 = zext i32 %7 to i64
  ret i64 %conv1
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
