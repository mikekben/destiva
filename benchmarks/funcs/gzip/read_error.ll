; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@progname = external dso_local global ptr, align 8
@ifname = external dso_local global [1024 x i8], align 16
@.str.75 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.76 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @abort_gzip() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_error() #1 {
entry:
  %e = alloca i32, align 4, !mymd !6
  %call = call ptr @__errno_location() #4, !mymd !7
  %0 = load i32, ptr %call, align 4, !mymd !8
  store i32 %0, ptr %e, align 4, !mymd !9
  %1 = load ptr, ptr @stderr, align 8, !mymd !10
  %2 = load ptr, ptr @progname, align 8, !mymd !11
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.75, ptr noundef %2) #5, !mymd !12
  %3 = load i32, ptr %e, align 4, !mymd !13
  %cmp = icmp ne i32 %3, 0, !mymd !14
  br i1 %cmp, label %if.then, label %if.else, !mymd !15

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %e, align 4, !mymd !16
  %call2 = call ptr @__errno_location() #4, !mymd !17
  store i32 %4, ptr %call2, align 4, !mymd !18
  call void @perror(ptr noundef @ifname) #6, !mymd !19
  br label %if.end, !mymd !20

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !mymd !21
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.76, ptr noundef @ifname) #5, !mymd !22
  br label %if.end, !mymd !23

if.end:                                           ; preds = %if.else, %if.then
  call void @abort_gzip(), !mymd !24
  ret void, !mymd !25
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: cold
declare void @perror(ptr noundef) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"9171"}
!7 = !{!"9172"}
!8 = !{!"9173"}
!9 = !{!"9174"}
!10 = !{!"9175"}
!11 = !{!"9176"}
!12 = !{!"9177"}
!13 = !{!"9178"}
!14 = !{!"9179"}
!15 = !{!"9180"}
!16 = !{!"9181"}
!17 = !{!"9182"}
!18 = !{!"9183"}
!19 = !{!"9184"}
!20 = !{!"9185"}
!21 = !{!"9186"}
!22 = !{!"9187"}
!23 = !{!"9188"}
!24 = !{!"9189"}
!25 = !{!"9190"}
