; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OsFullPathname(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %nPathOut, ptr noundef %zPathOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %nPathOut.addr = alloca i32, align 4
  %zPathOut.addr = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nPathOut, ptr %nPathOut.addr, align 4
  store ptr %zPathOut, ptr %zPathOut.addr, align 8
  %0 = load ptr, ptr %zPathOut.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store i8 0, ptr %arrayidx, align 1
  %1 = load ptr, ptr %pVfs.addr, align 8
  %xFullPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %1, i32 0, i32 9
  %2 = load ptr, ptr %xFullPathname, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %4 = load ptr, ptr %zPath.addr, align 8
  %5 = load i32, ptr %nPathOut.addr, align 4
  %6 = load ptr, ptr %zPathOut.addr, align 8
  %call = call i32 %2(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6)
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
