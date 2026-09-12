; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

@mask8B = external hidden global [9 x i32], align 16

; Function Attrs: nounwind uwtable
define dso_local void @oggpackB_writetrunc(ptr noundef %b, i64 noundef %bits) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %0 = load i64, ptr %bits.addr, align 8
  %shr = ashr i64 %0, 3
  store i64 %shr, ptr %bytes, align 8
  %1 = load i64, ptr %bytes, align 8
  %mul = mul nsw i64 %1, 8
  %2 = load i64, ptr %bits.addr, align 8
  %sub = sub nsw i64 %2, %mul
  store i64 %sub, ptr %bits.addr, align 8
  %3 = load ptr, ptr %b.addr, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %buffer, align 8
  %5 = load i64, ptr %bytes, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %6, i32 0, i32 3
  store ptr %add.ptr, ptr %ptr, align 8
  %7 = load i64, ptr %bits.addr, align 8
  %conv = trunc i64 %7 to i32
  %8 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %8, i32 0, i32 1
  store i32 %conv, ptr %endbit, align 8
  %9 = load i64, ptr %bytes, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %10, i32 0, i32 0
  store i64 %9, ptr %endbyte, align 8
  %11 = load i64, ptr %bits.addr, align 8
  %arrayidx = getelementptr inbounds [9 x i32], ptr @mask8B, i64 0, i64 %11
  %12 = load i32, ptr %arrayidx, align 4
  %13 = load ptr, ptr %b.addr, align 8
  %ptr1 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %ptr1, align 8
  %15 = load i8, ptr %14, align 1
  %conv2 = zext i8 %15 to i32
  %and = and i32 %conv2, %12
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, ptr %14, align 1
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
