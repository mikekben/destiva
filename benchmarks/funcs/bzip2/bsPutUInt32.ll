; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @bsPutUInt32(ptr noundef %s, i32 noundef %u) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %u.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %u, ptr %u.addr, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %u.addr, align 4
  %shr = lshr i32 %1, 24
  %conv = zext i32 %shr to i64
  %and = and i64 %conv, 255
  %conv1 = trunc i64 %and to i32
  call void @bsW(ptr noundef %0, i32 noundef 8, i32 noundef %conv1)
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %u.addr, align 4
  %shr2 = lshr i32 %3, 16
  %conv3 = zext i32 %shr2 to i64
  %and4 = and i64 %conv3, 255
  %conv5 = trunc i64 %and4 to i32
  call void @bsW(ptr noundef %2, i32 noundef 8, i32 noundef %conv5)
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %u.addr, align 4
  %shr6 = lshr i32 %5, 8
  %conv7 = zext i32 %shr6 to i64
  %and8 = and i64 %conv7, 255
  %conv9 = trunc i64 %and8 to i32
  call void @bsW(ptr noundef %4, i32 noundef 8, i32 noundef %conv9)
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %u.addr, align 4
  %conv10 = zext i32 %7 to i64
  %and11 = and i64 %conv10, 255
  %conv12 = trunc i64 %and11 to i32
  call void @bsW(ptr noundef %6, i32 noundef 8, i32 noundef %conv12)
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
