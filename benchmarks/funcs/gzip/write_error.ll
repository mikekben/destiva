; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@progname = external dso_local global ptr, align 8
@.str.75 = external hidden unnamed_addr constant [6 x i8], align 1
@ofname = external dso_local global [1024 x i8], align 16

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @abort_gzip() #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_error() #1 {
entry:
  %e = alloca i32, align 4, !mymd !6
  %call = call ptr @__errno_location() #4, !mymd !7
  %0 = load i32, ptr %call, align 4, !mymd !8
  store i32 %0, ptr %e, align 4, !mymd !9
  %1 = load ptr, ptr @stderr, align 8, !mymd !10
  %2 = load ptr, ptr @progname, align 8, !mymd !11
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.75, ptr noundef %2) #5, !mymd !12
  %3 = load i32, ptr %e, align 4, !mymd !13
  %call2 = call ptr @__errno_location() #4, !mymd !14
  store i32 %3, ptr %call2, align 4, !mymd !15
  call void @perror(ptr noundef @ofname) #6, !mymd !16
  call void @abort_gzip(), !mymd !17
  ret void, !mymd !18
}

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
!6 = !{!"10372"}
!7 = !{!"10373"}
!8 = !{!"10374"}
!9 = !{!"10375"}
!10 = !{!"10376"}
!11 = !{!"10377"}
!12 = !{!"10378"}
!13 = !{!"10379"}
!14 = !{!"10380"}
!15 = !{!"10381"}
!16 = !{!"10382"}
!17 = !{!"10383"}
!18 = !{!"10384"}
