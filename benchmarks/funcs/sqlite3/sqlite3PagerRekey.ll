; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMove(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PagerRekey(ptr noundef %pPg, i32 noundef %iNew, i16 noundef zeroext %flags) #0 {
entry:
  %pPg.addr = alloca ptr, align 8
  %iNew.addr = alloca i32, align 4
  %flags.addr = alloca i16, align 2
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %iNew, ptr %iNew.addr, align 4
  store i16 %flags, ptr %flags.addr, align 2
  %0 = load i16, ptr %flags.addr, align 2
  %1 = load ptr, ptr %pPg.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.PgHdr, ptr %1, i32 0, i32 7
  store i16 %0, ptr %flags1, align 4
  %2 = load ptr, ptr %pPg.addr, align 8
  %3 = load i32, ptr %iNew.addr, align 4
  call void @sqlite3PcacheMove(ptr noundef %2, i32 noundef %3)
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
