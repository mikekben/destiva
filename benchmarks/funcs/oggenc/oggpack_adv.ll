; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_adv(ptr noundef %b, i32 noundef %bits) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %bits.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %bits, ptr %bits.addr, align 4
  %0 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %endbit, align 8
  %2 = load i32, ptr %bits.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %bits.addr, align 4
  %3 = load i32, ptr %bits.addr, align 4
  %div = sdiv i32 %3, 8
  %4 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %ptr, align 8
  %idx.ext = sext i32 %div to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %ptr, align 8
  %6 = load i32, ptr %bits.addr, align 4
  %div1 = sdiv i32 %6, 8
  %conv = sext i32 %div1 to i64
  %7 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %7, i32 0, i32 0
  %8 = load i64, ptr %endbyte, align 8
  %add2 = add nsw i64 %8, %conv
  store i64 %add2, ptr %endbyte, align 8
  %9 = load i32, ptr %bits.addr, align 4
  %and = and i32 %9, 7
  %10 = load ptr, ptr %b.addr, align 8
  %endbit3 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %10, i32 0, i32 1
  store i32 %and, ptr %endbit3, align 8
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
