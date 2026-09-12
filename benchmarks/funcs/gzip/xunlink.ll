; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xunlink(ptr noundef %filename) #0 {
entry:
  %filename.addr = alloca ptr, align 8, !mymd !6
  %r = alloca i32, align 4, !mymd !7
  store ptr %filename, ptr %filename.addr, align 8, !mymd !8
  %0 = load ptr, ptr %filename.addr, align 8, !mymd !9
  %call = call i32 @unlink(ptr noundef %0) #2, !mymd !10
  store i32 %call, ptr %r, align 4, !mymd !11
  %1 = load i32, ptr %r, align 4, !mymd !12
  ret i32 %1, !mymd !13
}

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10427"}
!7 = !{!"10428"}
!8 = !{!"10429"}
!9 = !{!"10430"}
!10 = !{!"10431"}
!11 = !{!"10432"}
!12 = !{!"10433"}
!13 = !{!"10434"}
