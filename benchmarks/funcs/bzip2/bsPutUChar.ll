; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @bsPutUChar(ptr noundef %s, i8 noundef zeroext %c) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %c.addr, align 1
  %conv = zext i8 %1 to i32
  call void @bsW(ptr noundef %0, i32 noundef 8, i32 noundef %conv)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @bsW(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
