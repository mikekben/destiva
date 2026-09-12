; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_bitbuf = external hidden global i16, align 2
@subbitbuf = external hidden global i32, align 4
@bitcount = external hidden global i32, align 4

; Function Attrs: noinline nounwind uwtable
define hidden void @init_getbits() #0 {
entry:
  store i16 0, ptr @io_bitbuf, align 2, !mymd !6
  store i32 0, ptr @subbitbuf, align 4, !mymd !7
  store i32 0, ptr @bitcount, align 4, !mymd !8
  call void @fillbuf(i32 noundef 16), !mymd !9
  ret void, !mymd !10
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"13230"}
!7 = !{!"13231"}
!8 = !{!"13232"}
!9 = !{!"13233"}
!10 = !{!"13234"}
