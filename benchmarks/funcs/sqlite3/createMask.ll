; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereMaskSet = type { i32, i32, [64 x i32] }

; Function Attrs: nounwind uwtable
define hidden void @createMask(ptr noundef %pMaskSet, i32 noundef %iCursor) #0 {
entry:
  %pMaskSet.addr = alloca ptr, align 8
  %iCursor.addr = alloca i32, align 4
  store ptr %pMaskSet, ptr %pMaskSet.addr, align 8
  store i32 %iCursor, ptr %iCursor.addr, align 4
  %0 = load i32, ptr %iCursor.addr, align 4
  %1 = load ptr, ptr %pMaskSet.addr, align 8
  %ix = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pMaskSet.addr, align 8
  %n = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr %ix, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
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
