; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @bitreverse(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %shr = lshr i32 %0, 16
  %conv = zext i32 %shr to i64
  %and = and i64 %conv, 65535
  %1 = load i32, ptr %x.addr, align 4
  %shl = shl i32 %1, 16
  %conv1 = zext i32 %shl to i64
  %and2 = and i64 %conv1, 4294901760
  %or = or i64 %and, %and2
  %conv3 = trunc i64 %or to i32
  store i32 %conv3, ptr %x.addr, align 4
  %2 = load i32, ptr %x.addr, align 4
  %shr4 = lshr i32 %2, 8
  %conv5 = zext i32 %shr4 to i64
  %and6 = and i64 %conv5, 16711935
  %3 = load i32, ptr %x.addr, align 4
  %shl7 = shl i32 %3, 8
  %conv8 = zext i32 %shl7 to i64
  %and9 = and i64 %conv8, 4278255360
  %or10 = or i64 %and6, %and9
  %conv11 = trunc i64 %or10 to i32
  store i32 %conv11, ptr %x.addr, align 4
  %4 = load i32, ptr %x.addr, align 4
  %shr12 = lshr i32 %4, 4
  %conv13 = zext i32 %shr12 to i64
  %and14 = and i64 %conv13, 252645135
  %5 = load i32, ptr %x.addr, align 4
  %shl15 = shl i32 %5, 4
  %conv16 = zext i32 %shl15 to i64
  %and17 = and i64 %conv16, 4042322160
  %or18 = or i64 %and14, %and17
  %conv19 = trunc i64 %or18 to i32
  store i32 %conv19, ptr %x.addr, align 4
  %6 = load i32, ptr %x.addr, align 4
  %shr20 = lshr i32 %6, 2
  %conv21 = zext i32 %shr20 to i64
  %and22 = and i64 %conv21, 858993459
  %7 = load i32, ptr %x.addr, align 4
  %shl23 = shl i32 %7, 2
  %conv24 = zext i32 %shl23 to i64
  %and25 = and i64 %conv24, 3435973836
  %or26 = or i64 %and22, %and25
  %conv27 = trunc i64 %or26 to i32
  store i32 %conv27, ptr %x.addr, align 4
  %8 = load i32, ptr %x.addr, align 4
  %shr28 = lshr i32 %8, 1
  %conv29 = zext i32 %shr28 to i64
  %and30 = and i64 %conv29, 1431655765
  %9 = load i32, ptr %x.addr, align 4
  %shl31 = shl i32 %9, 1
  %conv32 = zext i32 %shl31 to i64
  %and33 = and i64 %conv32, 2863311530
  %or34 = or i64 %and30, %and33
  %conv35 = trunc i64 %or34 to i32
  ret i32 %conv35
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
