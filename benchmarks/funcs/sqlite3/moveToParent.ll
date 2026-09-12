; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden void @releasePageNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @moveToParent(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pLeaf = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %1 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 1
  %2 = load i8, ptr %curFlags, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, -7
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %curFlags, align 1
  %3 = load ptr, ptr %pCur.addr, align 8
  %aiIdx = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 16
  %4 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %iPage, align 4
  %conv2 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [19 x i16], ptr %aiIdx, i64 0, i64 %idxprom
  %6 = load i16, ptr %arrayidx, align 2
  %7 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 15
  store i16 %6, ptr %ix, align 2
  %8 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %pPage, align 8
  store ptr %9, ptr %pLeaf, align 8
  %10 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 19
  %11 = load ptr, ptr %pCur.addr, align 8
  %iPage3 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 13
  %12 = load i8, ptr %iPage3, align 4
  %dec = add i8 %12, -1
  store i8 %dec, ptr %iPage3, align 4
  %idxprom4 = sext i8 %dec to i64
  %arrayidx5 = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %pPage6 = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 18
  store ptr %13, ptr %pPage6, align 8
  %15 = load ptr, ptr %pLeaf, align 8
  call void @releasePageNotNull(ptr noundef %15)
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
