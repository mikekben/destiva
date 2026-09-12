; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.115 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.117 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.118 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.119 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.120 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.121 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.122 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.123 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.124 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare hidden void @license() #0

; Function Attrs: noinline nounwind uwtable
define hidden void @version() #0 {
entry:
  call void @license(), !mymd !6
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.115, ptr noundef @.str.116, ptr noundef @.str.117), !mymd !7
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.118), !mymd !8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.119), !mymd !9
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.120), !mymd !10
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.121), !mymd !11
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.122), !mymd !12
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.123), !mymd !13
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.124), !mymd !14
  ret void, !mymd !15
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4452"}
!7 = !{!"4453"}
!8 = !{!"4454"}
!9 = !{!"4455"}
!10 = !{!"4456"}
!11 = !{!"4457"}
!12 = !{!"4458"}
!13 = !{!"4459"}
!14 = !{!"4460"}
!15 = !{!"4461"}
