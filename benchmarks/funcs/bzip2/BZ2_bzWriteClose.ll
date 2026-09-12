; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_bzWriteClose(ptr noundef %bzerror, ptr noundef %b, i32 noundef %abandon, ptr noundef %nbytes_in, ptr noundef %nbytes_out) #0 {
entry:
  %bzerror.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %abandon.addr = alloca i32, align 4
  %nbytes_in.addr = alloca ptr, align 8
  %nbytes_out.addr = alloca ptr, align 8
  store ptr %bzerror, ptr %bzerror.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %abandon, ptr %abandon.addr, align 4
  store ptr %nbytes_in, ptr %nbytes_in.addr, align 8
  store ptr %nbytes_out, ptr %nbytes_out.addr, align 8
  %0 = load ptr, ptr %bzerror.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i32, ptr %abandon.addr, align 4
  %3 = load ptr, ptr %nbytes_in.addr, align 8
  %4 = load ptr, ptr %nbytes_out.addr, align 8
  call void @BZ2_bzWriteClose64(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef %4, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
