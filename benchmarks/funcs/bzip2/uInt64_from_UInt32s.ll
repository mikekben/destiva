; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UInt64 = type { [8 x i8] }

; Function Attrs: nounwind uwtable
define hidden void @uInt64_from_UInt32s(ptr noundef %n, i32 noundef %lo32, i32 noundef %hi32) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %lo32.addr = alloca i32, align 4
  %hi32.addr = alloca i32, align 4
  store ptr %n, ptr %n.addr, align 8
  store i32 %lo32, ptr %lo32.addr, align 4
  store i32 %hi32, ptr %hi32.addr, align 4
  %0 = load i32, ptr %hi32.addr, align 4
  %shr = lshr i32 %0, 24
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  %1 = load ptr, ptr %n.addr, align 8
  %b = getelementptr inbounds nuw %struct.UInt64, ptr %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], ptr %b, i64 0, i64 7
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %hi32.addr, align 4
  %shr1 = lshr i32 %2, 16
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  %3 = load ptr, ptr %n.addr, align 8
  %b4 = getelementptr inbounds nuw %struct.UInt64, ptr %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr %b4, i64 0, i64 6
  store i8 %conv3, ptr %arrayidx5, align 1
  %4 = load i32, ptr %hi32.addr, align 4
  %shr6 = lshr i32 %4, 8
  %and7 = and i32 %shr6, 255
  %conv8 = trunc i32 %and7 to i8
  %5 = load ptr, ptr %n.addr, align 8
  %b9 = getelementptr inbounds nuw %struct.UInt64, ptr %5, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr %b9, i64 0, i64 5
  store i8 %conv8, ptr %arrayidx10, align 1
  %6 = load i32, ptr %hi32.addr, align 4
  %and11 = and i32 %6, 255
  %conv12 = trunc i32 %and11 to i8
  %7 = load ptr, ptr %n.addr, align 8
  %b13 = getelementptr inbounds nuw %struct.UInt64, ptr %7, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [8 x i8], ptr %b13, i64 0, i64 4
  store i8 %conv12, ptr %arrayidx14, align 1
  %8 = load i32, ptr %lo32.addr, align 4
  %shr15 = lshr i32 %8, 24
  %and16 = and i32 %shr15, 255
  %conv17 = trunc i32 %and16 to i8
  %9 = load ptr, ptr %n.addr, align 8
  %b18 = getelementptr inbounds nuw %struct.UInt64, ptr %9, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i8], ptr %b18, i64 0, i64 3
  store i8 %conv17, ptr %arrayidx19, align 1
  %10 = load i32, ptr %lo32.addr, align 4
  %shr20 = lshr i32 %10, 16
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %11 = load ptr, ptr %n.addr, align 8
  %b23 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [8 x i8], ptr %b23, i64 0, i64 2
  store i8 %conv22, ptr %arrayidx24, align 1
  %12 = load i32, ptr %lo32.addr, align 4
  %shr25 = lshr i32 %12, 8
  %and26 = and i32 %shr25, 255
  %conv27 = trunc i32 %and26 to i8
  %13 = load ptr, ptr %n.addr, align 8
  %b28 = getelementptr inbounds nuw %struct.UInt64, ptr %13, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [8 x i8], ptr %b28, i64 0, i64 1
  store i8 %conv27, ptr %arrayidx29, align 1
  %14 = load i32, ptr %lo32.addr, align 4
  %and30 = and i32 %14, 255
  %conv31 = trunc i32 %and30 to i8
  %15 = load ptr, ptr %n.addr, align 8
  %b32 = getelementptr inbounds nuw %struct.UInt64, ptr %15, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [8 x i8], ptr %b32, i64 0, i64 0
  store i8 %conv31, ptr %arrayidx33, align 1
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
