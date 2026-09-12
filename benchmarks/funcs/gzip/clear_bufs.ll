; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@bytes_in = external dso_local global i64, align 8
@bytes_out = external dso_local global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @clear_bufs() #0 {
entry:
  store i32 0, ptr @outcnt, align 4, !mymd !6
  store i32 0, ptr @inptr, align 4, !mymd !7
  store i32 0, ptr @insize, align 4, !mymd !8
  store i64 0, ptr @bytes_out, align 8, !mymd !9
  store i64 0, ptr @bytes_in, align 8, !mymd !10
  ret void, !mymd !11
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
!6 = !{!"10366"}
!7 = !{!"10367"}
!8 = !{!"10368"}
!9 = !{!"10369"}
!10 = !{!"10370"}
!11 = !{!"10371"}
