; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfile = external hidden global i32, align 4
@bi_buf = external hidden global i16, align 2
@bi_valid = external hidden global i32, align 4
@read_buf = external dso_local global ptr, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @bi_init(i32 noundef %zipfile) #0 {
entry:
  %zipfile.addr = alloca i32, align 4, !mymd !6
  store i32 %zipfile, ptr %zipfile.addr, align 4, !mymd !7
  %0 = load i32, ptr %zipfile.addr, align 4, !mymd !8
  store i32 %0, ptr @zfile, align 4, !mymd !9
  store i16 0, ptr @bi_buf, align 2, !mymd !10
  store i32 0, ptr @bi_valid, align 4, !mymd !11
  %1 = load i32, ptr @zfile, align 4, !mymd !12
  %cmp = icmp ne i32 %1, -1, !mymd !13
  br i1 %cmp, label %if.then, label %if.end, !mymd !14

if.then:                                          ; preds = %entry
  store ptr @file_read, ptr @read_buf, align 8, !mymd !15
  br label %if.end, !mymd !16

if.end:                                           ; preds = %if.then, %entry
  ret void, !mymd !17
}

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @file_read(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"0"}
!7 = !{!"1"}
!8 = !{!"2"}
!9 = !{!"3"}
!10 = !{!"4"}
!11 = !{!"5"}
!12 = !{!"6"}
!13 = !{!"7"}
!14 = !{!"8"}
!15 = !{!"9"}
!16 = !{!"10"}
!17 = !{!"11"}
