; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @btreeHeapInsert(ptr noundef %aHeap, i32 noundef %x) #0 {
entry:
  %aHeap.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %aHeap, ptr %aHeap.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %0 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %arrayidx, align 4
  store i32 %inc, ptr %i, align 4
  %2 = load i32, ptr %x.addr, align 4
  %3 = load ptr, ptr %aHeap.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %3, i64 %idxprom
  store i32 %2, ptr %arrayidx1, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, ptr %i, align 4
  %div = udiv i32 %5, 2
  store i32 %div, ptr %j, align 4
  %cmp = icmp ugt i32 %div, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %aHeap.addr, align 8
  %7 = load i32, ptr %j, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds nuw i32, ptr %6, i64 %idxprom2
  %8 = load i32, ptr %arrayidx3, align 4
  %9 = load ptr, ptr %aHeap.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp ugt i32 %8, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %aHeap.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom7 = zext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds nuw i32, ptr %13, i64 %idxprom7
  %15 = load i32, ptr %arrayidx8, align 4
  store i32 %15, ptr %x.addr, align 4
  %16 = load ptr, ptr %aHeap.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom9 = zext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %16, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %aHeap.addr, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom11 = zext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %19, i64 %idxprom11
  store i32 %18, ptr %arrayidx12, align 4
  %21 = load i32, ptr %x.addr, align 4
  %22 = load ptr, ptr %aHeap.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom13 = zext i32 %23 to i64
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %22, i64 %idxprom13
  store i32 %21, ptr %arrayidx14, align 4
  %24 = load i32, ptr %j, align 4
  store i32 %24, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
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
