; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_pcm_seek(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_ov_64_seek_lap(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_lap(ptr noundef %vf, i64 noundef %pos) #0 {
entry:
  %vf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %1 = load i64, ptr %pos.addr, align 8
  %call = call i32 @_ov_64_seek_lap(ptr noundef %0, i64 noundef %1, ptr noundef @ov_pcm_seek)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
