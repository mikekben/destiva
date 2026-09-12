; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_bind_int(ptr noundef %p, i32 noundef %i, i32 noundef %iValue) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %iValue.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %iValue, ptr %iValue.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %2 = load i32, ptr %iValue.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call i32 @sqlite3_bind_int64(ptr noundef %0, i32 noundef %1, i64 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
