; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_blocksize_setup(ptr noundef %vi, double noundef %s, ptr noundef %shortb, ptr noundef %longb) #0 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %shortb.addr = alloca ptr, align 8
  %longb.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %is = alloca i32, align 4
  %blockshort = alloca i32, align 4
  %blocklong = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store ptr %shortb, ptr %shortb.addr, align 8
  store ptr %longb, ptr %longb.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load double, ptr %s.addr, align 8
  %conv = fptosi double %2 to i32
  store i32 %conv, ptr %is, align 4
  %3 = load ptr, ptr %shortb.addr, align 8
  %4 = load i32, ptr %is, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %blockshort, align 4
  %6 = load ptr, ptr %longb.addr, align 8
  %7 = load i32, ptr %is, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom1
  %8 = load i32, ptr %arrayidx2, align 4
  store i32 %8, ptr %blocklong, align 4
  %9 = load i32, ptr %blockshort, align 4
  %conv3 = sext i32 %9 to i64
  %10 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %10, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  store i64 %conv3, ptr %arrayidx4, align 8
  %11 = load i32, ptr %blocklong, align 4
  %conv5 = sext i32 %11 to i64
  %12 = load ptr, ptr %ci, align 8
  %blocksizes6 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %12, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [2 x i64], ptr %blocksizes6, i64 0, i64 1
  store i64 %conv5, ptr %arrayidx7, align 8
  ret void
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
