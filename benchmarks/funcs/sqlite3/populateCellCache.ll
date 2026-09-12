; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @populateCellCache(ptr noundef %p, i32 noundef %idx, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %N.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %szCell, align 8
  %3 = load i32, ptr %idx.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %p.addr, align 8
  %pRef = getelementptr inbounds nuw %struct.CellArray, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pRef, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 24
  %7 = load ptr, ptr %xCellSize, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %pRef3 = getelementptr inbounds nuw %struct.CellArray, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pRef3, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %apCell, align 8
  %12 = load i32, ptr %idx.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  %13 = load ptr, ptr %arrayidx5, align 8
  %call = call zeroext i16 %7(ptr noundef %9, ptr noundef %13)
  %14 = load ptr, ptr %p.addr, align 8
  %szCell6 = getelementptr inbounds nuw %struct.CellArray, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %szCell6, align 8
  %16 = load i32, ptr %idx.addr, align 4
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %15, i64 %idxprom7
  store i16 %call, ptr %arrayidx8, align 2
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, ptr %idx.addr, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %idx.addr, align 4
  %18 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %N.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
