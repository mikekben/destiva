; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @oggpack_writecopy(ptr noundef %b, ptr noundef %source, i64 noundef %bits) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %bits.addr = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  store i64 %bits, ptr %bits.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load ptr, ptr %source.addr, align 8
  %2 = load i64, ptr %bits.addr, align 8
  call void @oggpack_writecopy_helper(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef @oggpack_write, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @oggpack_writecopy_helper(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
