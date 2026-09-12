; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = external dso_local global ptr, align 8
@help.help_msg = external hidden global [20 x ptr], align 16
@.str.105 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.106 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare hidden void @usage() #0

; Function Attrs: noinline nounwind uwtable
define hidden void @help() #0 {
entry:
  %p = alloca ptr, align 8, !mymd !6
  store ptr @help.help_msg, ptr %p, align 8, !mymd !7
  %0 = load ptr, ptr @progname, align 8, !mymd !8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.105, ptr noundef %0, ptr noundef @.str.106, ptr noundef @.str.107), !mymd !9
  call void @usage(), !mymd !10
  br label %while.cond, !mymd !11

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8, !mymd !12
  %2 = load ptr, ptr %1, align 8, !mymd !13
  %tobool = icmp ne ptr %2, null, !mymd !14
  br i1 %tobool, label %while.body, label %while.end, !mymd !15

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !mymd !16
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %3, i32 1, !mymd !17
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !18
  %4 = load ptr, ptr %3, align 8, !mymd !19
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.108, ptr noundef %4), !mymd !20
  br label %while.cond, !llvm.loop !21, !mymd !23

while.end:                                        ; preds = %while.cond
  ret void, !mymd !24
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
!6 = !{!"4419"}
!7 = !{!"4420"}
!8 = !{!"4421"}
!9 = !{!"4422"}
!10 = !{!"4423"}
!11 = !{!"4424"}
!12 = !{!"4425"}
!13 = !{!"4426"}
!14 = !{!"4427"}
!15 = !{!"4428"}
!16 = !{!"4429"}
!17 = !{!"4430"}
!18 = !{!"4431"}
!19 = !{!"4432"}
!20 = !{!"4433"}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"4434"}
!24 = !{!"4435"}
