; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remove_ofname = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@ofname = external dso_local global [1024 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @xunlink(ptr noundef) #0

declare i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden void @do_remove() #0 {
entry:
  %0 = load i32, ptr @remove_ofname, align 4, !mymd !6
  %tobool = icmp ne i32 %0, 0, !mymd !7
  br i1 %tobool, label %if.then, label %if.end, !mymd !8

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @ofd, align 4, !mymd !9
  %call = call i32 @close(i32 noundef %1), !mymd !10
  %call1 = call i32 @xunlink(ptr noundef @ofname), !mymd !11
  br label %if.end, !mymd !12

if.end:                                           ; preds = %if.then, %entry
  ret void, !mymd !13
}

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
!6 = !{!"12454"}
!7 = !{!"12455"}
!8 = !{!"12456"}
!9 = !{!"12457"}
!10 = !{!"12458"}
!11 = !{!"12459"}
!12 = !{!"12460"}
!13 = !{!"12461"}
