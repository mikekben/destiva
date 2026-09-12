; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local double @timer_time(ptr noundef %timer) #1 {
entry:
  %timer.addr = alloca ptr, align 8
  %now = alloca %struct.timeval, align 8
  %start = alloca %struct.timeval, align 8
  store ptr %timer, ptr %timer.addr, align 8
  %0 = load ptr, ptr %timer.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %start, ptr align 8 %0, i64 16, i1 false)
  %call = call i32 @gettimeofday(ptr noundef %now, ptr noundef null) #3
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %now, i32 0, i32 0
  %1 = load i64, ptr %tv_sec, align 8
  %conv = sitofp i64 %1 to double
  %tv_sec1 = getelementptr inbounds nuw %struct.timeval, ptr %start, i32 0, i32 0
  %2 = load i64, ptr %tv_sec1, align 8
  %conv2 = sitofp i64 %2 to double
  %sub = fsub double %conv, %conv2
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %now, i32 0, i32 1
  %3 = load i64, ptr %tv_usec, align 8
  %conv3 = sitofp i64 %3 to double
  %tv_usec4 = getelementptr inbounds nuw %struct.timeval, ptr %start, i32 0, i32 1
  %4 = load i64, ptr %tv_usec4, align 8
  %conv5 = sitofp i64 %4 to double
  %sub6 = fsub double %conv3, %conv5
  %div = fdiv double %sub6, 1.000000e+06
  %add = fadd double %sub, %div
  ret double %add
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
