; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define hidden i32 @same_file(ptr noundef %stat1, ptr noundef %stat2) #0 {
entry:
  %stat1.addr = alloca ptr, align 8, !mymd !6
  %stat2.addr = alloca ptr, align 8, !mymd !7
  store ptr %stat1, ptr %stat1.addr, align 8, !mymd !8
  store ptr %stat2, ptr %stat2.addr, align 8, !mymd !9
  %0 = load ptr, ptr %stat1.addr, align 8, !mymd !10
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %0, i32 0, i32 1, !mymd !11
  %1 = load i64, ptr %st_ino, align 8, !mymd !12
  %2 = load ptr, ptr %stat2.addr, align 8, !mymd !13
  %st_ino1 = getelementptr inbounds nuw %struct.stat, ptr %2, i32 0, i32 1, !mymd !14
  %3 = load i64, ptr %st_ino1, align 8, !mymd !15
  %cmp = icmp eq i64 %1, %3, !mymd !16
  br i1 %cmp, label %land.rhs, label %land.end, !mymd !17

land.rhs:                                         ; preds = %entry
  %4 = load ptr, ptr %stat1.addr, align 8, !mymd !18
  %st_dev = getelementptr inbounds nuw %struct.stat, ptr %4, i32 0, i32 0, !mymd !19
  %5 = load i64, ptr %st_dev, align 8, !mymd !20
  %6 = load ptr, ptr %stat2.addr, align 8, !mymd !21
  %st_dev2 = getelementptr inbounds nuw %struct.stat, ptr %6, i32 0, i32 0, !mymd !22
  %7 = load i64, ptr %st_dev2, align 8, !mymd !23
  %cmp3 = icmp eq i64 %5, %7, !mymd !24
  br label %land.end, !mymd !25

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !mymd !26
  %land.ext = zext i1 %8 to i32, !mymd !27
  ret i32 %land.ext, !mymd !28
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12431"}
!7 = !{!"12432"}
!8 = !{!"12433"}
!9 = !{!"12434"}
!10 = !{!"12435"}
!11 = !{!"12436"}
!12 = !{!"12437"}
!13 = !{!"12438"}
!14 = !{!"12439"}
!15 = !{!"12440"}
!16 = !{!"12441"}
!17 = !{!"12442"}
!18 = !{!"12443"}
!19 = !{!"12444"}
!20 = !{!"12445"}
!21 = !{!"12446"}
!22 = !{!"12447"}
!23 = !{!"12448"}
!24 = !{!"12449"}
!25 = !{!"12450"}
!26 = !{!"12451"}
!27 = !{!"12452"}
!28 = !{!"12453"}
