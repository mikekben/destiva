; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden i32 @getPageReferenced(ptr noundef %pCheck, i32 noundef %iPg) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %iPg.addr = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %iPg, ptr %iPg.addr, align 4
  %0 = load ptr, ptr %pCheck.addr, align 8
  %aPgRef = getelementptr inbounds nuw %struct.IntegrityCk, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %aPgRef, align 8
  %2 = load i32, ptr %iPg.addr, align 4
  %div = udiv i32 %2, 8
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = load i32, ptr %iPg.addr, align 4
  %and = and i32 %4, 7
  %shl = shl i32 1, %and
  %and1 = and i32 %conv, %shl
  ret i32 %and1
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
