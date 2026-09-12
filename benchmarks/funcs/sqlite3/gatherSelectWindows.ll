; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @gatherSelectWindows(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %w = alloca %struct.Walker, align 8
  store ptr %p, ptr %p.addr, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @gatherSelectWindowsCallback, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @gatherSelectWindowsSelectCallback, ptr %xSelectCallback, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr null, ptr %xSelectCallback2, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  store ptr null, ptr %pParse, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %0, ptr %u, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3WalkSelect(ptr noundef %w, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @gatherSelectWindowsCallback(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @gatherSelectWindowsSelectCallback(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
