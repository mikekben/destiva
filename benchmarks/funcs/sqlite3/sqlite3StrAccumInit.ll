; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3StrAccumInit(ptr noundef %p, ptr noundef %db, ptr noundef %zBase, i32 noundef %n, i32 noundef %mx) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zBase.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %mx.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zBase, ptr %zBase.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %mx, ptr %mx.addr, align 4
  %0 = load ptr, ptr %zBase.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %1, i32 0, i32 1
  store ptr %0, ptr %zText, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %3, i32 0, i32 0
  store ptr %2, ptr %db1, align 8
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %5, i32 0, i32 2
  store i32 %4, ptr %nAlloc, align 8
  %6 = load i32, ptr %mx.addr, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %mxAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %7, i32 0, i32 3
  store i32 %6, ptr %mxAlloc, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %8, i32 0, i32 4
  store i32 0, ptr %nChar, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %accError = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 5
  store i8 0, ptr %accError, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %10, i32 0, i32 6
  store i8 0, ptr %printfFlags, align 1
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
