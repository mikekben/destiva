; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_simple_name(ptr noundef %name) #1 {
entry:
  %name.addr = alloca ptr, align 8, !mymd !6
  %p = alloca ptr, align 8, !mymd !7
  store ptr %name, ptr %name.addr, align 8, !mymd !8
  %0 = load ptr, ptr %name.addr, align 8, !mymd !9
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 46) #2, !mymd !10
  store ptr %call, ptr %p, align 8, !mymd !11
  %1 = load ptr, ptr %p, align 8, !mymd !12
  %cmp = icmp eq ptr %1, null, !mymd !13
  br i1 %cmp, label %if.then, label %if.end, !mymd !14

if.then:                                          ; preds = %entry
  br label %do.end, !mymd !15

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !mymd !16
  %3 = load ptr, ptr %name.addr, align 8, !mymd !17
  %cmp1 = icmp eq ptr %2, %3, !mymd !18
  br i1 %cmp1, label %if.then2, label %if.end3, !mymd !19

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %p, align 8, !mymd !20
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1, !mymd !21
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !22
  br label %if.end3, !mymd !23

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.body, !mymd !24

do.body:                                          ; preds = %do.cond, %if.end3
  %5 = load ptr, ptr %p, align 8, !mymd !25
  %incdec.ptr4 = getelementptr inbounds i8, ptr %5, i32 -1, !mymd !26
  store ptr %incdec.ptr4, ptr %p, align 8, !mymd !27
  %6 = load i8, ptr %incdec.ptr4, align 1, !mymd !28
  %conv = sext i8 %6 to i32, !mymd !29
  %cmp5 = icmp eq i32 %conv, 46, !mymd !30
  br i1 %cmp5, label %if.then7, label %if.end8, !mymd !31

if.then7:                                         ; preds = %do.body
  %7 = load ptr, ptr %p, align 8, !mymd !32
  store i8 95, ptr %7, align 1, !mymd !33
  br label %if.end8, !mymd !34

if.end8:                                          ; preds = %if.then7, %do.body
  br label %do.cond, !mymd !35

do.cond:                                          ; preds = %if.end8
  %8 = load ptr, ptr %p, align 8, !mymd !36
  %9 = load ptr, ptr %name.addr, align 8, !mymd !37
  %cmp9 = icmp ne ptr %8, %9, !mymd !38
  br i1 %cmp9, label %do.body, label %do.end, !llvm.loop !39, !mymd !41

do.end:                                           ; preds = %do.cond, %if.then
  ret void, !mymd !42
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10435"}
!7 = !{!"10436"}
!8 = !{!"10437"}
!9 = !{!"10438"}
!10 = !{!"10439"}
!11 = !{!"10440"}
!12 = !{!"10441"}
!13 = !{!"10442"}
!14 = !{!"10443"}
!15 = !{!"10444"}
!16 = !{!"10445"}
!17 = !{!"10446"}
!18 = !{!"10447"}
!19 = !{!"10448"}
!20 = !{!"10449"}
!21 = !{!"10450"}
!22 = !{!"10451"}
!23 = !{!"10452"}
!24 = !{!"10453"}
!25 = !{!"10454"}
!26 = !{!"10455"}
!27 = !{!"10456"}
!28 = !{!"10457"}
!29 = !{!"10458"}
!30 = !{!"10459"}
!31 = !{!"10460"}
!32 = !{!"10461"}
!33 = !{!"10462"}
!34 = !{!"10463"}
!35 = !{!"10464"}
!36 = !{!"10465"}
!37 = !{!"10466"}
!38 = !{!"10467"}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"10468"}
!42 = !{!"10469"}
