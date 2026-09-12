; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @_getopt_internal(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef %options, ptr noundef %long_options, ptr noundef %opt_index) #0 {
entry:
  %argc.addr = alloca i32, align 4, !mymd !6
  %argv.addr = alloca ptr, align 8, !mymd !7
  %options.addr = alloca ptr, align 8, !mymd !8
  %long_options.addr = alloca ptr, align 8, !mymd !9
  %opt_index.addr = alloca ptr, align 8, !mymd !10
  store i32 %argc, ptr %argc.addr, align 4, !mymd !11
  store ptr %argv, ptr %argv.addr, align 8, !mymd !12
  store ptr %options, ptr %options.addr, align 8, !mymd !13
  store ptr %long_options, ptr %long_options.addr, align 8, !mymd !14
  store ptr %opt_index, ptr %opt_index.addr, align 8, !mymd !15
  %0 = load i32, ptr %argc.addr, align 4, !mymd !16
  %1 = load ptr, ptr %argv.addr, align 8, !mymd !17
  %2 = load ptr, ptr %options.addr, align 8, !mymd !18
  %3 = load ptr, ptr %long_options.addr, align 8, !mymd !19
  %4 = load ptr, ptr %opt_index.addr, align 8, !mymd !20
  %call = call i32 @_getopt_internal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0), !mymd !21
  ret i32 %call, !mymd !22
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
!6 = !{!"4373"}
!7 = !{!"4374"}
!8 = !{!"4375"}
!9 = !{!"4376"}
!10 = !{!"4377"}
!11 = !{!"4378"}
!12 = !{!"4379"}
!13 = !{!"4380"}
!14 = !{!"4381"}
!15 = !{!"4382"}
!16 = !{!"4383"}
!17 = !{!"4384"}
!18 = !{!"4385"}
!19 = !{!"4386"}
!20 = !{!"4387"}
!21 = !{!"4388"}
!22 = !{!"4389"}
