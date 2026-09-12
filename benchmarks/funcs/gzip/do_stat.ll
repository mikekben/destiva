; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_stdout = external dso_local global i32, align 4
@force = external dso_local global i32, align 4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @do_stat(ptr noundef %name, ptr noundef %sbuf) #1 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %name.addr = alloca ptr, align 8, !mymd !7
  %sbuf.addr = alloca ptr, align 8, !mymd !8
  store ptr %name, ptr %name.addr, align 8, !mymd !9
  store ptr %sbuf, ptr %sbuf.addr, align 8, !mymd !10
  %call = call ptr @__errno_location() #3, !mymd !11
  store i32 0, ptr %call, align 4, !mymd !12
  %0 = load i32, ptr @to_stdout, align 4, !mymd !13
  %tobool = icmp ne i32 %0, 0, !mymd !14
  br i1 %tobool, label %if.end, label %land.lhs.true, !mymd !15

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @force, align 4, !mymd !16
  %tobool1 = icmp ne i32 %1, 0, !mymd !17
  br i1 %tobool1, label %if.end, label %if.then, !mymd !18

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %name.addr, align 8, !mymd !19
  %3 = load ptr, ptr %sbuf.addr, align 8, !mymd !20
  %call2 = call i32 @lstat(ptr noundef %2, ptr noundef %3) #4, !mymd !21
  store i32 %call2, ptr %retval, align 4, !mymd !22
  br label %return, !mymd !23

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %name.addr, align 8, !mymd !24
  %5 = load ptr, ptr %sbuf.addr, align 8, !mymd !25
  %call3 = call i32 @stat(ptr noundef %4, ptr noundef %5) #4, !mymd !26
  store i32 %call3, ptr %retval, align 4, !mymd !27
  br label %return, !mymd !28

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !mymd !29
  ret i32 %6, !mymd !30
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12009"}
!7 = !{!"12010"}
!8 = !{!"12011"}
!9 = !{!"12012"}
!10 = !{!"12013"}
!11 = !{!"12014"}
!12 = !{!"12015"}
!13 = !{!"12016"}
!14 = !{!"12017"}
!15 = !{!"12018"}
!16 = !{!"12019"}
!17 = !{!"12020"}
!18 = !{!"12021"}
!19 = !{!"12022"}
!20 = !{!"12023"}
!21 = !{!"12024"}
!22 = !{!"12025"}
!23 = !{!"12026"}
!24 = !{!"12027"}
!25 = !{!"12028"}
!26 = !{!"12029"}
!27 = !{!"12030"}
!28 = !{!"12031"}
!29 = !{!"12032"}
!30 = !{!"12033"}
