; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@quiet = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@ifname = external dso_local global [1024 x i8], align 16
@.str.74 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(ptr noundef %m) #1 {
entry:
  %m.addr = alloca ptr, align 8, !mymd !6
  store ptr %m, ptr %m.addr, align 8, !mymd !7
  %0 = load i32, ptr @quiet, align 4, !mymd !8
  %tobool = icmp ne i32 %0, 0, !mymd !9
  br i1 %tobool, label %if.end, label %if.then, !mymd !10

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !mymd !11
  %2 = load ptr, ptr @progname, align 8, !mymd !12
  %3 = load ptr, ptr %m.addr, align 8, !mymd !13
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.74, ptr noundef %2, ptr noundef @ifname, ptr noundef %3) #2, !mymd !14
  br label %if.end, !mymd !15

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr @exit_code, align 4, !mymd !16
  %cmp = icmp eq i32 %4, 0, !mymd !17
  br i1 %cmp, label %if.then1, label %if.end2, !mymd !18

if.then1:                                         ; preds = %if.end
  store i32 2, ptr @exit_code, align 4, !mymd !19
  br label %if.end2, !mymd !20

if.end2:                                          ; preds = %if.then1, %if.end
  ret void, !mymd !21
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10484"}
!7 = !{!"10485"}
!8 = !{!"10486"}
!9 = !{!"10487"}
!10 = !{!"10488"}
!11 = !{!"10489"}
!12 = !{!"10490"}
!13 = !{!"10491"}
!14 = !{!"10492"}
!15 = !{!"10493"}
!16 = !{!"10494"}
!17 = !{!"10495"}
!18 = !{!"10496"}
!19 = !{!"10497"}
!20 = !{!"10498"}
!21 = !{!"10499"}
