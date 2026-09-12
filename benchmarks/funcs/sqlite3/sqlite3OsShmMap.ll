; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OsShmMap(ptr noundef %id, i32 noundef %iPage, i32 noundef %pgsz, i32 noundef %bExtend, ptr noundef %pp) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %pgsz.addr = alloca i32, align 4
  %bExtend.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store i32 %pgsz, ptr %pgsz.addr, align 4
  store i32 %bExtend, ptr %bExtend.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMethods, align 8
  %xShmMap = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %1, i32 0, i32 13
  %2 = load ptr, ptr %xShmMap, align 8
  %3 = load ptr, ptr %id.addr, align 8
  %4 = load i32, ptr %iPage.addr, align 4
  %5 = load i32, ptr %pgsz.addr, align 4
  %6 = load i32, ptr %bExtend.addr, align 4
  %7 = load ptr, ptr %pp.addr, align 8
  %call = call i32 %2(ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7)
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
