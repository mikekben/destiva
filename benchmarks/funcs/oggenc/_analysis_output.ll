; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@analysis_noisy = external dso_local global i32, align 4

; Function Attrs: nounwind uwtable
declare dso_local void @_analysis_output_always(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @_analysis_output(ptr noundef %base, i32 noundef %i, ptr noundef %v, i32 noundef %n, i32 noundef %bark, i32 noundef %dB, i64 noundef %off) #0 {
entry:
  %base.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %bark.addr = alloca i32, align 4
  %dB.addr = alloca i32, align 4
  %off.addr = alloca i64, align 8
  store ptr %base, ptr %base.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %bark, ptr %bark.addr, align 4
  store i32 %dB, ptr %dB.addr, align 4
  store i64 %off, ptr %off.addr, align 8
  %0 = load i32, ptr @analysis_noisy, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %base.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %3 = load ptr, ptr %v.addr, align 8
  %4 = load i32, ptr %n.addr, align 4
  %5 = load i32, ptr %bark.addr, align 4
  %6 = load i32, ptr %dB.addr, align 4
  %7 = load i64, ptr %off.addr, align 8
  call void @_analysis_output_always(ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
