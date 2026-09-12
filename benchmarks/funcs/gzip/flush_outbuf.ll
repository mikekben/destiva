; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@bytes_out = external dso_local global i64, align 8
@outbuf = external dso_local global [18432 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @flush_outbuf() #0 {
entry:
  %0 = load i32, ptr @outcnt, align 4, !mymd !6
  %cmp = icmp eq i32 %0, 0, !mymd !7
  br i1 %cmp, label %if.then, label %if.end, !mymd !8

if.then:                                          ; preds = %entry
  br label %return, !mymd !9

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @ofd, align 4, !mymd !10
  %2 = load i32, ptr @outcnt, align 4, !mymd !11
  call void @write_buf(i32 noundef %1, ptr noundef @outbuf, i32 noundef %2), !mymd !12
  %3 = load i32, ptr @outcnt, align 4, !mymd !13
  %conv = zext i32 %3 to i64, !mymd !14
  %4 = load i64, ptr @bytes_out, align 8, !mymd !15
  %add = add nsw i64 %4, %conv, !mymd !16
  store i64 %add, ptr @bytes_out, align 8, !mymd !17
  store i32 0, ptr @outcnt, align 4, !mymd !18
  br label %return, !mymd !19

return:                                           ; preds = %if.end, %if.then
  ret void, !mymd !20
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_buf(i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"156"}
!7 = !{!"157"}
!8 = !{!"158"}
!9 = !{!"159"}
!10 = !{!"160"}
!11 = !{!"161"}
!12 = !{!"162"}
!13 = !{!"163"}
!14 = !{!"164"}
!15 = !{!"165"}
!16 = !{!"166"}
!17 = !{!"167"}
!18 = !{!"168"}
!19 = !{!"169"}
!20 = !{!"170"}
