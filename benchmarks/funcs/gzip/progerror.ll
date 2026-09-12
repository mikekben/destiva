; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@.str.133 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden void @progerror(ptr noundef %string) #3 {
entry:
  %string.addr = alloca ptr, align 8, !mymd !6
  %e = alloca i32, align 4, !mymd !7
  store ptr %string, ptr %string.addr, align 8, !mymd !8
  %call = call ptr @__errno_location() #4, !mymd !9
  %0 = load i32, ptr %call, align 4, !mymd !10
  store i32 %0, ptr %e, align 4, !mymd !11
  %1 = load ptr, ptr @stderr, align 8, !mymd !12
  %2 = load ptr, ptr @progname, align 8, !mymd !13
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.133, ptr noundef %2) #5, !mymd !14
  %3 = load i32, ptr %e, align 4, !mymd !15
  %call2 = call ptr @__errno_location() #4, !mymd !16
  store i32 %3, ptr %call2, align 4, !mymd !17
  %4 = load ptr, ptr %string.addr, align 8, !mymd !18
  call void @perror(ptr noundef %4) #6, !mymd !19
  store i32 1, ptr @exit_code, align 4, !mymd !20
  ret void, !mymd !21
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"10706"}
!7 = !{!"10707"}
!8 = !{!"10708"}
!9 = !{!"10709"}
!10 = !{!"10710"}
!11 = !{!"10711"}
!12 = !{!"10712"}
!13 = !{!"10713"}
!14 = !{!"10714"}
!15 = !{!"10715"}
!16 = !{!"10716"}
!17 = !{!"10717"}
!18 = !{!"10718"}
!19 = !{!"10719"}
!20 = !{!"10720"}
!21 = !{!"10721"}
