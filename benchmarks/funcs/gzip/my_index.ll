; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define hidden ptr @my_index(ptr noundef %str, i32 noundef %chr) #0 {
entry:
  %retval = alloca ptr, align 8, !mymd !6
  %str.addr = alloca ptr, align 8, !mymd !7
  %chr.addr = alloca i32, align 4, !mymd !8
  store ptr %str, ptr %str.addr, align 8, !mymd !9
  store i32 %chr, ptr %chr.addr, align 4, !mymd !10
  br label %while.cond, !mymd !11

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8, !mymd !12
  %1 = load i8, ptr %0, align 1, !mymd !13
  %tobool = icmp ne i8 %1, 0, !mymd !14
  br i1 %tobool, label %while.body, label %while.end, !mymd !15

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8, !mymd !16
  %3 = load i8, ptr %2, align 1, !mymd !17
  %conv = sext i8 %3 to i32, !mymd !18
  %4 = load i32, ptr %chr.addr, align 4, !mymd !19
  %cmp = icmp eq i32 %conv, %4, !mymd !20
  br i1 %cmp, label %if.then, label %if.end, !mymd !21

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %str.addr, align 8, !mymd !22
  store ptr %5, ptr %retval, align 8, !mymd !23
  br label %return, !mymd !24

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %str.addr, align 8, !mymd !25
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %6, i32 1, !mymd !26
  store ptr %incdec.ptr, ptr %str.addr, align 8, !mymd !27
  br label %while.cond, !llvm.loop !28, !mymd !30

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !mymd !31
  br label %return, !mymd !32

return:                                           ; preds = %while.end, %if.then
  %7 = load ptr, ptr %retval, align 8, !mymd !33
  ret ptr %7, !mymd !34
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"3288"}
!7 = !{!"3289"}
!8 = !{!"3290"}
!9 = !{!"3291"}
!10 = !{!"3292"}
!11 = !{!"3293"}
!12 = !{!"3294"}
!13 = !{!"3295"}
!14 = !{!"3296"}
!15 = !{!"3297"}
!16 = !{!"3298"}
!17 = !{!"3299"}
!18 = !{!"3300"}
!19 = !{!"3301"}
!20 = !{!"3302"}
!21 = !{!"3303"}
!22 = !{!"3304"}
!23 = !{!"3305"}
!24 = !{!"3306"}
!25 = !{!"3307"}
!26 = !{!"3308"}
!27 = !{!"3309"}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"3310"}
!31 = !{!"3311"}
!32 = !{!"3312"}
!33 = !{!"3313"}
!34 = !{!"3314"}
