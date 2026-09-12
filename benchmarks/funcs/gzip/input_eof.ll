; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decompress = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@last_member = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @input_eof() #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %0 = load i32, ptr @decompress, align 4, !mymd !7
  %tobool = icmp ne i32 %0, 0, !mymd !8
  br i1 %tobool, label %lor.lhs.false, label %if.then, !mymd !9

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @last_member, align 4, !mymd !10
  %tobool1 = icmp ne i32 %1, 0, !mymd !11
  br i1 %tobool1, label %if.then, label %if.end, !mymd !12

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !mymd !13
  br label %return, !mymd !14

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, ptr @inptr, align 4, !mymd !15
  %3 = load i32, ptr @insize, align 4, !mymd !16
  %cmp = icmp eq i32 %2, %3, !mymd !17
  br i1 %cmp, label %if.then2, label %if.end8, !mymd !18

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr @insize, align 4, !mymd !19
  %cmp3 = icmp ne i32 %4, 32768, !mymd !20
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4, !mymd !21

lor.lhs.false4:                                   ; preds = %if.then2
  %call = call i32 @fill_inbuf(i32 noundef 1), !mymd !22
  %cmp5 = icmp eq i32 %call, -1, !mymd !23
  br i1 %cmp5, label %if.then6, label %if.end7, !mymd !24

if.then6:                                         ; preds = %lor.lhs.false4, %if.then2
  store i32 1, ptr %retval, align 4, !mymd !25
  br label %return, !mymd !26

if.end7:                                          ; preds = %lor.lhs.false4
  store i32 0, ptr @inptr, align 4, !mymd !27
  br label %if.end8, !mymd !28

if.end8:                                          ; preds = %if.end7, %if.end
  store i32 0, ptr %retval, align 4, !mymd !29
  br label %return, !mymd !30

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %5 = load i32, ptr %retval, align 4, !mymd !31
  ret i32 %5, !mymd !32
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
!6 = !{!"11429"}
!7 = !{!"11430"}
!8 = !{!"11431"}
!9 = !{!"11432"}
!10 = !{!"11433"}
!11 = !{!"11434"}
!12 = !{!"11435"}
!13 = !{!"11436"}
!14 = !{!"11437"}
!15 = !{!"11438"}
!16 = !{!"11439"}
!17 = !{!"11440"}
!18 = !{!"11441"}
!19 = !{!"11442"}
!20 = !{!"11443"}
!21 = !{!"11444"}
!22 = !{!"11445"}
!23 = !{!"11446"}
!24 = !{!"11447"}
!25 = !{!"11448"}
!26 = !{!"11449"}
!27 = !{!"11450"}
!28 = !{!"11451"}
!29 = !{!"11452"}
!30 = !{!"11453"}
!31 = !{!"11454"}
!32 = !{!"11455"}
