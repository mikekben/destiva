; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@args = external dso_local global ptr, align 8
@env = external dso_local global ptr, align 8
@do_exit.in_exit = external hidden global i32, align 4

; Function Attrs: noinline nounwind uwtable
define hidden void @do_exit(i32 noundef %exitcode) #0 {
entry:
  %exitcode.addr = alloca i32, align 4, !mymd !6
  store i32 %exitcode, ptr %exitcode.addr, align 4, !mymd !7
  %0 = load i32, ptr @do_exit.in_exit, align 4, !mymd !8
  %tobool = icmp ne i32 %0, 0, !mymd !9
  br i1 %tobool, label %if.then, label %if.end, !mymd !10

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %exitcode.addr, align 4, !mymd !11
  call void @exit(i32 noundef %1) #3, !mymd !12
  unreachable, !mymd !13

if.end:                                           ; preds = %entry
  store i32 1, ptr @do_exit.in_exit, align 4, !mymd !14
  %2 = load ptr, ptr @env, align 8, !mymd !15
  %cmp = icmp ne ptr %2, null, !mymd !16
  br i1 %cmp, label %if.then1, label %if.end2, !mymd !17

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr @env, align 8, !mymd !18
  call void @free(ptr noundef %3) #4, !mymd !19
  store ptr null, ptr @env, align 8, !mymd !20
  br label %if.end2, !mymd !21

if.end2:                                          ; preds = %if.then1, %if.end
  %4 = load ptr, ptr @args, align 8, !mymd !22
  %cmp3 = icmp ne ptr %4, null, !mymd !23
  br i1 %cmp3, label %if.then4, label %if.end5, !mymd !24

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr @args, align 8, !mymd !25
  call void @free(ptr noundef %5) #4, !mymd !26
  store ptr null, ptr @args, align 8, !mymd !27
  br label %if.end5, !mymd !28

if.end5:                                          ; preds = %if.then4, %if.end2
  %6 = load i32, ptr %exitcode.addr, align 4, !mymd !29
  call void @exit(i32 noundef %6) #3, !mymd !30
  unreachable, !mymd !31
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4393"}
!7 = !{!"4394"}
!8 = !{!"4395"}
!9 = !{!"4396"}
!10 = !{!"4397"}
!11 = !{!"4398"}
!12 = !{!"4399"}
!13 = !{!"4400"}
!14 = !{!"4401"}
!15 = !{!"4402"}
!16 = !{!"4403"}
!17 = !{!"4404"}
!18 = !{!"4405"}
!19 = !{!"4406"}
!20 = !{!"4407"}
!21 = !{!"4408"}
!22 = !{!"4409"}
!23 = !{!"4410"}
!24 = !{!"4411"}
!25 = !{!"4412"}
!26 = !{!"4413"}
!27 = !{!"4414"}
!28 = !{!"4415"}
!29 = !{!"4416"}
!30 = !{!"4417"}
!31 = !{!"4418"}
