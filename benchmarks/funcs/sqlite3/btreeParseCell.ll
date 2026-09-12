; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @btreeParseCell(ptr noundef %pPage, i32 noundef %iCell, ptr noundef %pInfo) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %iCell.addr = alloca i32, align 4
  %pInfo.addr = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %iCell, ptr %iCell.addr, align 4
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 25
  %1 = load ptr, ptr %xParseCell, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %3 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %aData, align 8
  %5 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 15
  %6 = load i16, ptr %maskPage, align 2
  %conv = zext i16 %6 to i32
  %7 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 21
  %8 = load ptr, ptr %aCellIdx, align 8
  %9 = load i32, ptr %iCell.addr, align 4
  %mul = mul nsw i32 2, %9
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %arrayidx1 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %10 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %10 to i32
  %shl = shl i32 %conv2, 8
  %11 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx3 = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 21
  %12 = load ptr, ptr %aCellIdx3, align 8
  %13 = load i32, ptr %iCell.addr, align 4
  %mul4 = mul nsw i32 2, %13
  %idxprom5 = sext i32 %mul4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds i8, ptr %arrayidx6, i64 1
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %14 to i32
  %or = or i32 %shl, %conv8
  %and = and i32 %conv, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext
  %15 = load ptr, ptr %pInfo.addr, align 8
  call void %1(ptr noundef %2, ptr noundef %add.ptr, ptr noundef %15)
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
