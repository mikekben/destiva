; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@progname = external dso_local global ptr, align 8
@ifname = external dso_local global [1024 x i8], align 16
@.str.73 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8, !mymd !6
  store ptr %m, ptr %m.addr, align 8, !mymd !7
  %0 = load ptr, ptr @stderr, align 8, !mymd !8
  %1 = load ptr, ptr @progname, align 8, !mymd !9
  %2 = load ptr, ptr %m.addr, align 8, !mymd !10
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.73, ptr noundef %1, ptr noundef @ifname, ptr noundef %2) #2, !mymd !11
  call void @abort_gzip(), !mymd !12
  ret void, !mymd !13
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @abort_gzip() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"550"}
!7 = !{!"551"}
!8 = !{!"552"}
!9 = !{!"553"}
!10 = !{!"554"}
!11 = !{!"555"}
!12 = !{!"556"}
!13 = !{!"557"}
