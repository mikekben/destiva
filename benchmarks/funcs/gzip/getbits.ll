; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_bitbuf = external hidden global i16, align 2

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @getbits(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4, !mymd !6
  %x = alloca i32, align 4, !mymd !7
  store i32 %n, ptr %n.addr, align 4, !mymd !8
  %0 = load i16, ptr @io_bitbuf, align 2, !mymd !9
  %conv = zext i16 %0 to i32, !mymd !10
  %1 = load i32, ptr %n.addr, align 4, !mymd !11
  %conv1 = sext i32 %1 to i64, !mymd !12
  %sub = sub i64 16, %conv1, !mymd !13
  %sh_prom = trunc i64 %sub to i32, !mymd !14
  %shr = ashr i32 %conv, %sh_prom, !mymd !15
  store i32 %shr, ptr %x, align 4, !mymd !16
  %2 = load i32, ptr %n.addr, align 4, !mymd !17
  call void @fillbuf(i32 noundef %2), !mymd !18
  %3 = load i32, ptr %x, align 4, !mymd !19
  ret i32 %3, !mymd !20
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
!6 = !{!"13429"}
!7 = !{!"13430"}
!8 = !{!"13431"}
!9 = !{!"13432"}
!10 = !{!"13433"}
!11 = !{!"13434"}
!12 = !{!"13435"}
!13 = !{!"13436"}
!14 = !{!"13437"}
!15 = !{!"13438"}
!16 = !{!"13439"}
!17 = !{!"13440"}
!18 = !{!"13441"}
!19 = !{!"13442"}
!20 = !{!"13443"}
