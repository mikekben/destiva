; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterCreateThread(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeIncrBgPopulate(ptr noundef %pIncr) #0 {
entry:
  %pIncr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pIncr, ptr %pIncr.addr, align 8
  %0 = load ptr, ptr %pIncr.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pIncr.addr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pTask, align 8
  %3 = load ptr, ptr %p, align 8
  %call = call i32 @vdbeSorterCreateThread(ptr noundef %2, ptr noundef @vdbeIncrPopulateThread, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeIncrPopulateThread(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
