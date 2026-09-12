; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @computeCellSize(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pRef = getelementptr inbounds nuw %struct.CellArray, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pRef, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 24
  %2 = load ptr, ptr %xCellSize, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pRef1 = getelementptr inbounds nuw %struct.CellArray, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pRef1, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %apCell, align 8
  %7 = load i32, ptr %N.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %call = call zeroext i16 %2(ptr noundef %4, ptr noundef %8)
  %9 = load ptr, ptr %p.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %szCell, align 8
  %11 = load i32, ptr %N.addr, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %10, i64 %idxprom2
  store i16 %call, ptr %arrayidx3, align 2
  %12 = load ptr, ptr %p.addr, align 8
  %szCell4 = getelementptr inbounds nuw %struct.CellArray, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %szCell4, align 8
  %14 = load i32, ptr %N.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i16, ptr %13, i64 %idxprom5
  %15 = load i16, ptr %arrayidx6, align 2
  ret i16 %15
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
