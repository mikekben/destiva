; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3KeywordCode(ptr noundef %z, i32 noundef %n) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %id = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 59, ptr %id, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i32, ptr %n.addr, align 4
  %call = call i32 @keywordCode(ptr noundef %0, i32 noundef %1, ptr noundef %id)
  %2 = load i32, ptr %id, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
declare hidden i32 @keywordCode(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
