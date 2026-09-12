; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_create_collation(ptr noundef %db, ptr noundef %zName, i32 noundef %enc, ptr noundef %pCtx, ptr noundef %xCompare) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %enc.addr = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %xCompare.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %enc, ptr %enc.addr, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %xCompare, ptr %xCompare.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zName.addr, align 8
  %2 = load i32, ptr %enc.addr, align 4
  %3 = load ptr, ptr %pCtx.addr, align 8
  %4 = load ptr, ptr %xCompare.addr, align 8
  %call = call i32 @sqlite3_create_collation_v2(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_create_collation_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
