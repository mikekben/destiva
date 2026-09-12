; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @apsort(ptr noundef %a, ptr noundef %b) #1 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %f1 = alloca float, align 4
  %f2 = alloca float, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load float, ptr %1, align 4
  %conv = fpext float %2 to double
  %3 = call double @llvm.fabs.f64(double %conv)
  %conv1 = fptrunc double %3 to float
  store float %conv1, ptr %f1, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load float, ptr %5, align 4
  %conv2 = fpext float %6 to double
  %7 = call double @llvm.fabs.f64(double %conv2)
  %conv3 = fptrunc double %7 to float
  store float %conv3, ptr %f2, align 4
  %8 = load float, ptr %f1, align 4
  %9 = load float, ptr %f2, align 4
  %cmp = fcmp olt float %8, %9
  %conv4 = zext i1 %cmp to i32
  %10 = load float, ptr %f1, align 4
  %11 = load float, ptr %f2, align 4
  %cmp5 = fcmp ogt float %10, %11
  %conv6 = zext i1 %cmp5 to i32
  %sub = sub nsw i32 %conv4, %conv6
  ret i32 %sub
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
