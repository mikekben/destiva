; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @base_name(ptr noundef %fname) #0 {
entry:
  %fname.addr = alloca ptr, align 8, !mymd !6
  %p = alloca ptr, align 8, !mymd !7
  store ptr %fname, ptr %fname.addr, align 8, !mymd !8
  %0 = load ptr, ptr %fname.addr, align 8, !mymd !9
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 47) #2, !mymd !10
  store ptr %call, ptr %p, align 8, !mymd !11
  %cmp = icmp ne ptr %call, null, !mymd !12
  br i1 %cmp, label %if.then, label %if.end, !mymd !13

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !mymd !14
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 1, !mymd !15
  store ptr %add.ptr, ptr %fname.addr, align 8, !mymd !16
  br label %if.end, !mymd !17

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %fname.addr, align 8, !mymd !18
  ret ptr %2, !mymd !19
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4190"}
!7 = !{!"4191"}
!8 = !{!"4192"}
!9 = !{!"4193"}
!10 = !{!"4194"}
!11 = !{!"4195"}
!12 = !{!"4196"}
!13 = !{!"4197"}
!14 = !{!"4198"}
!15 = !{!"4199"}
!16 = !{!"4200"}
!17 = !{!"4201"}
!18 = !{!"4202"}
!19 = !{!"4203"}
