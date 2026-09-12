; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = external dso_local global ptr, align 8
@.str.105 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.106 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [4 x i8], align 1
@license_msg = external hidden global [7 x ptr], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @license() #0 {
entry:
  %p = alloca ptr, align 8, !mymd !6
  store ptr @license_msg, ptr %p, align 8, !mymd !7
  %0 = load ptr, ptr @progname, align 8, !mymd !8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.105, ptr noundef %0, ptr noundef @.str.106, ptr noundef @.str.107), !mymd !9
  br label %while.cond, !mymd !10

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8, !mymd !11
  %2 = load ptr, ptr %1, align 8, !mymd !12
  %tobool = icmp ne ptr %2, null, !mymd !13
  br i1 %tobool, label %while.body, label %while.end, !mymd !14

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !mymd !15
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %3, i32 1, !mymd !16
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !17
  %4 = load ptr, ptr %3, align 8, !mymd !18
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.108, ptr noundef %4), !mymd !19
  br label %while.cond, !llvm.loop !20, !mymd !22

while.end:                                        ; preds = %while.cond
  ret void, !mymd !23
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
!6 = !{!"4436"}
!7 = !{!"4437"}
!8 = !{!"4438"}
!9 = !{!"4439"}
!10 = !{!"4440"}
!11 = !{!"4441"}
!12 = !{!"4442"}
!13 = !{!"4443"}
!14 = !{!"4444"}
!15 = !{!"4445"}
!16 = !{!"4446"}
!17 = !{!"4447"}
!18 = !{!"4448"}
!19 = !{!"4449"}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"4450"}
!23 = !{!"4451"}
