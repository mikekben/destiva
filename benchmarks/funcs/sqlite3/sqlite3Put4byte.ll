; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Put4byte(ptr noundef %p, i32 noundef %v) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %shr = lshr i32 %0, 24
  %conv = trunc i32 %shr to i8
  %1 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %2 = load i32, ptr %v.addr, align 4
  %shr1 = lshr i32 %2, 16
  %conv2 = trunc i32 %shr1 to i8
  %3 = load ptr, ptr %p.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 %conv2, ptr %arrayidx3, align 1
  %4 = load i32, ptr %v.addr, align 4
  %shr4 = lshr i32 %4, 8
  %conv5 = trunc i32 %shr4 to i8
  %5 = load ptr, ptr %p.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 2
  store i8 %conv5, ptr %arrayidx6, align 1
  %6 = load i32, ptr %v.addr, align 4
  %conv7 = trunc i32 %6 to i8
  %7 = load ptr, ptr %p.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %conv7, ptr %arrayidx8, align 1
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
