; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test = external dso_local global i32, align 4
@ifd = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@done = external hidden global i32, align 4
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unlzh(i32 noundef %in, i32 noundef %out) #0 {
entry:
  %in.addr = alloca i32, align 4, !mymd !6
  %out.addr = alloca i32, align 4, !mymd !7
  %n = alloca i32, align 4, !mymd !8
  store i32 %in, ptr %in.addr, align 4, !mymd !9
  store i32 %out, ptr %out.addr, align 4, !mymd !10
  %0 = load i32, ptr %in.addr, align 4, !mymd !11
  store i32 %0, ptr @ifd, align 4, !mymd !12
  %1 = load i32, ptr %out.addr, align 4, !mymd !13
  store i32 %1, ptr @ofd, align 4, !mymd !14
  call void @decode_start(), !mymd !15
  br label %while.cond, !mymd !16

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr @done, align 4, !mymd !17
  %tobool = icmp ne i32 %2, 0, !mymd !18
  %lnot = xor i1 %tobool, true, !mymd !19
  br i1 %lnot, label %while.body, label %while.end, !mymd !20

while.body:                                       ; preds = %while.cond
  %call = call i32 @decode(i32 noundef 8192, ptr noundef @window), !mymd !21
  store i32 %call, ptr %n, align 4, !mymd !22
  %3 = load i32, ptr @test, align 4, !mymd !23
  %tobool1 = icmp ne i32 %3, 0, !mymd !24
  br i1 %tobool1, label %if.end, label %land.lhs.true, !mymd !25

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %n, align 4, !mymd !26
  %cmp = icmp ugt i32 %4, 0, !mymd !27
  br i1 %cmp, label %if.then, label %if.end, !mymd !28

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %out.addr, align 4, !mymd !29
  %6 = load i32, ptr %n, align 4, !mymd !30
  call void @write_buf(i32 noundef %5, ptr noundef @window, i32 noundef %6), !mymd !31
  br label %if.end, !mymd !32

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !33, !mymd !35

while.end:                                        ; preds = %while.cond
  ret i32 0, !mymd !36
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @decode_start() #0

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @decode(i32 noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @write_buf(i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"8475"}
!7 = !{!"8476"}
!8 = !{!"8477"}
!9 = !{!"8478"}
!10 = !{!"8479"}
!11 = !{!"8480"}
!12 = !{!"8481"}
!13 = !{!"8482"}
!14 = !{!"8483"}
!15 = !{!"8484"}
!16 = !{!"8485"}
!17 = !{!"8486"}
!18 = !{!"8487"}
!19 = !{!"8488"}
!20 = !{!"8489"}
!21 = !{!"8490"}
!22 = !{!"8491"}
!23 = !{!"8492"}
!24 = !{!"8493"}
!25 = !{!"8494"}
!26 = !{!"8495"}
!27 = !{!"8496"}
!28 = !{!"8497"}
!29 = !{!"8498"}
!30 = !{!"8499"}
!31 = !{!"8500"}
!32 = !{!"8501"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"8502"}
!36 = !{!"8503"}
