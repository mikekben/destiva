; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.62 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @xmalloc(i32 noundef %size) #0 {
entry:
  %size.addr = alloca i32, align 4, !mymd !6
  %cp = alloca ptr, align 8, !mymd !7
  store i32 %size, ptr %size.addr, align 4, !mymd !8
  %0 = load i32, ptr %size.addr, align 4, !mymd !9
  %conv = zext i32 %0 to i64, !mymd !10
  %call = call noalias ptr @malloc(i64 noundef %conv) #2, !mymd !11
  store ptr %call, ptr %cp, align 8, !mymd !12
  %1 = load ptr, ptr %cp, align 8, !mymd !13
  %cmp = icmp eq ptr %1, null, !mymd !14
  br i1 %cmp, label %if.then, label %if.end, !mymd !15

if.then:                                          ; preds = %entry
  call void @error(ptr noundef @.str.62), !mymd !16
  br label %if.end, !mymd !17

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %cp, align 8, !mymd !18
  ret ptr %2, !mymd !19
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10470"}
!7 = !{!"10471"}
!8 = !{!"10472"}
!9 = !{!"10473"}
!10 = !{!"10474"}
!11 = !{!"10475"}
!12 = !{!"10476"}
!13 = !{!"10477"}
!14 = !{!"10478"}
!15 = !{!"10479"}
!16 = !{!"10480"}
!17 = !{!"10481"}
!18 = !{!"10482"}
!19 = !{!"10483"}
