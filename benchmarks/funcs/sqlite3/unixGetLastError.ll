; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @unixGetLastError(ptr noundef %NotUsed, i32 noundef %NotUsed2, ptr noundef %NotUsed3) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %NotUsed2.addr = alloca i32, align 4
  %NotUsed3.addr = alloca ptr, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store i32 %NotUsed2, ptr %NotUsed2.addr, align 4
  store ptr %NotUsed3, ptr %NotUsed3.addr, align 8
  %0 = load ptr, ptr %NotUsed.addr, align 8
  %1 = load i32, ptr %NotUsed2.addr, align 4
  %2 = load ptr, ptr %NotUsed3.addr, align 8
  %call = call ptr @__errno_location() #2
  %3 = load i32, ptr %call, align 4
  ret i32 %3
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
