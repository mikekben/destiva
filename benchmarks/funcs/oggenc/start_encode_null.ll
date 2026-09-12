; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @start_encode_null(ptr noundef %fn, ptr noundef %outfn, i32 noundef %bitrate, float noundef %quality, i32 noundef %qset, i32 noundef %managed, i32 noundef %min, i32 noundef %max) #0 {
entry:
  %fn.addr = alloca ptr, align 8
  %outfn.addr = alloca ptr, align 8
  %bitrate.addr = alloca i32, align 4
  %quality.addr = alloca float, align 4
  %qset.addr = alloca i32, align 4
  %managed.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  store ptr %fn, ptr %fn.addr, align 8
  store ptr %outfn, ptr %outfn.addr, align 8
  store i32 %bitrate, ptr %bitrate.addr, align 4
  store float %quality, ptr %quality.addr, align 4
  store i32 %qset, ptr %qset.addr, align 4
  store i32 %managed, ptr %managed.addr, align 4
  store i32 %min, ptr %min.addr, align 4
  store i32 %max, ptr %max.addr, align 4
  ret void
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
