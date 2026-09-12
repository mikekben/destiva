; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash = type { i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3HashInit(ptr noundef %pNew) #0 {
entry:
  %pNew.addr = alloca ptr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %pNew.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %0, i32 0, i32 2
  store ptr null, ptr %first, align 8
  %1 = load ptr, ptr %pNew.addr, align 8
  %count = getelementptr inbounds nuw %struct.Hash, ptr %1, i32 0, i32 1
  store i32 0, ptr %count, align 4
  %2 = load ptr, ptr %pNew.addr, align 8
  %htsize = getelementptr inbounds nuw %struct.Hash, ptr %2, i32 0, i32 0
  store i32 0, ptr %htsize, align 8
  %3 = load ptr, ptr %pNew.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %3, i32 0, i32 3
  store ptr null, ptr %ht, align 8
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
