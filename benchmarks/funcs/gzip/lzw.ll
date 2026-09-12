; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@exit_code = external dso_local global i32, align 4
@msg_done = external hidden global i32, align 4
@.str.52 = external hidden unnamed_addr constant [44 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lzw(i32 noundef %in, i32 noundef %out) #1 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %in.addr = alloca i32, align 4, !mymd !7
  %out.addr = alloca i32, align 4, !mymd !8
  store i32 %in, ptr %in.addr, align 4, !mymd !9
  store i32 %out, ptr %out.addr, align 4, !mymd !10
  %0 = load i32, ptr @msg_done, align 4, !mymd !11
  %tobool = icmp ne i32 %0, 0, !mymd !12
  br i1 %tobool, label %if.then, label %if.end, !mymd !13

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !mymd !14
  br label %return, !mymd !15

if.end:                                           ; preds = %entry
  store i32 1, ptr @msg_done, align 4, !mymd !16
  %1 = load ptr, ptr @stderr, align 8, !mymd !17
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.52) #2, !mymd !18
  %2 = load i32, ptr %in.addr, align 4, !mymd !19
  %3 = load i32, ptr %out.addr, align 4, !mymd !20
  %cmp = icmp ne i32 %2, %3, !mymd !21
  br i1 %cmp, label %if.then1, label %if.end2, !mymd !22

if.then1:                                         ; preds = %if.end
  store i32 1, ptr @exit_code, align 4, !mymd !23
  br label %if.end2, !mymd !24

if.end2:                                          ; preds = %if.then1, %if.end
  store i32 1, ptr %retval, align 4, !mymd !25
  br label %return, !mymd !26

return:                                           ; preds = %if.end2, %if.then
  %4 = load i32, ptr %retval, align 4, !mymd !27
  ret i32 %4, !mymd !28
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4462"}
!7 = !{!"4463"}
!8 = !{!"4464"}
!9 = !{!"4465"}
!10 = !{!"4466"}
!11 = !{!"4467"}
!12 = !{!"4468"}
!13 = !{!"4469"}
!14 = !{!"4470"}
!15 = !{!"4471"}
!16 = !{!"4472"}
!17 = !{!"4473"}
!18 = !{!"4474"}
!19 = !{!"4475"}
!20 = !{!"4476"}
!21 = !{!"4477"}
!22 = !{!"4478"}
!23 = !{!"4479"}
!24 = !{!"4480"}
!25 = !{!"4481"}
!26 = !{!"4482"}
!27 = !{!"4483"}
!28 = !{!"4484"}
