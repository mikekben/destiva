; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huft = type { i8, i8, %union.anon }
%union.anon = type { ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @huft_free(ptr noundef %t) #0 {
entry:
  %t.addr = alloca ptr, align 8, !mymd !6
  %p = alloca ptr, align 8, !mymd !7
  %q = alloca ptr, align 8, !mymd !8
  store ptr %t, ptr %t.addr, align 8, !mymd !9
  %0 = load ptr, ptr %t.addr, align 8, !mymd !10
  store ptr %0, ptr %p, align 8, !mymd !11
  br label %while.cond, !mymd !12

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8, !mymd !13
  %cmp = icmp ne ptr %1, null, !mymd !14
  br i1 %cmp, label %while.body, label %while.end, !mymd !15

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8, !mymd !16
  %incdec.ptr = getelementptr inbounds %struct.huft, ptr %2, i32 -1, !mymd !17
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !18
  %v = getelementptr inbounds nuw %struct.huft, ptr %incdec.ptr, i32 0, i32 2, !mymd !19
  %3 = load ptr, ptr %v, align 8, !mymd !20
  store ptr %3, ptr %q, align 8, !mymd !21
  %4 = load ptr, ptr %p, align 8, !mymd !22
  call void @free(ptr noundef %4) #2, !mymd !23
  %5 = load ptr, ptr %q, align 8, !mymd !24
  store ptr %5, ptr %p, align 8, !mymd !25
  br label %while.cond, !llvm.loop !26, !mymd !28

while.end:                                        ; preds = %while.cond
  ret i32 0, !mymd !29
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"5742"}
!7 = !{!"5743"}
!8 = !{!"5744"}
!9 = !{!"5745"}
!10 = !{!"5746"}
!11 = !{!"5747"}
!12 = !{!"5748"}
!13 = !{!"5749"}
!14 = !{!"5750"}
!15 = !{!"5751"}
!16 = !{!"5752"}
!17 = !{!"5753"}
!18 = !{!"5754"}
!19 = !{!"5755"}
!20 = !{!"5756"}
!21 = !{!"5757"}
!22 = !{!"5758"}
!23 = !{!"5759"}
!24 = !{!"5760"}
!25 = !{!"5761"}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"5762"}
!29 = !{!"5763"}
