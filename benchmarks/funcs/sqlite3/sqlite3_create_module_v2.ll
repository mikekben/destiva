; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @createModule(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_create_module_v2(ptr noundef %db, ptr noundef %zName, ptr noundef %pModule, ptr noundef %pAux, ptr noundef %xDestroy) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pModule.addr = alloca ptr, align 8
  %pAux.addr = alloca ptr, align 8
  %xDestroy.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pModule, ptr %pModule.addr, align 8
  store ptr %pAux, ptr %pAux.addr, align 8
  store ptr %xDestroy, ptr %xDestroy.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zName.addr, align 8
  %2 = load ptr, ptr %pModule.addr, align 8
  %3 = load ptr, ptr %pAux.addr, align 8
  %4 = load ptr, ptr %xDestroy.addr, align 8
  %call = call i32 @createModule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %call
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
