; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@bytes_out = external dso_local global i64, align 8
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @flush_window() #0 {
entry:
  %0 = load i32, ptr @outcnt, align 4, !mymd !6
  %cmp = icmp eq i32 %0, 0, !mymd !7
  br i1 %cmp, label %if.then, label %if.end, !mymd !8

if.then:                                          ; preds = %entry
  br label %return, !mymd !9

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @outcnt, align 4, !mymd !10
  %call = call i64 @updcrc(ptr noundef @window, i32 noundef %1), !mymd !11
  %2 = load i32, ptr @test, align 4, !mymd !12
  %tobool = icmp ne i32 %2, 0, !mymd !13
  br i1 %tobool, label %if.end2, label %if.then1, !mymd !14

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr @ofd, align 4, !mymd !15
  %4 = load i32, ptr @outcnt, align 4, !mymd !16
  call void @write_buf(i32 noundef %3, ptr noundef @window, i32 noundef %4), !mymd !17
  br label %if.end2, !mymd !18

if.end2:                                          ; preds = %if.then1, %if.end
  %5 = load i32, ptr @outcnt, align 4, !mymd !19
  %conv = zext i32 %5 to i64, !mymd !20
  %6 = load i64, ptr @bytes_out, align 8, !mymd !21
  %add = add nsw i64 %6, %conv, !mymd !22
  store i64 %add, ptr @bytes_out, align 8, !mymd !23
  store i32 0, ptr @outcnt, align 4, !mymd !24
  br label %return, !mymd !25

return:                                           ; preds = %if.end2, %if.then
  ret void, !mymd !26
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_buf(i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @updcrc(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"6381"}
!7 = !{!"6382"}
!8 = !{!"6383"}
!9 = !{!"6384"}
!10 = !{!"6385"}
!11 = !{!"6386"}
!12 = !{!"6387"}
!13 = !{!"6388"}
!14 = !{!"6389"}
!15 = !{!"6390"}
!16 = !{!"6391"}
!17 = !{!"6392"}
!18 = !{!"6393"}
!19 = !{!"6394"}
!20 = !{!"6395"}
!21 = !{!"6396"}
!22 = !{!"6397"}
!23 = !{!"6398"}
!24 = !{!"6399"}
!25 = !{!"6400"}
!26 = !{!"6401"}
