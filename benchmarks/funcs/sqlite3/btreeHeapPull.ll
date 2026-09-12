; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @btreeHeapPull(ptr noundef %aHeap, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %aHeap.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %aHeap, ptr %aHeap.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %x, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  %4 = load ptr, ptr %pOut.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load ptr, ptr %aHeap.addr, align 8
  %6 = load i32, ptr %x, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds nuw i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %7, ptr %arrayidx3, align 4
  %9 = load ptr, ptr %aHeap.addr, align 8
  %10 = load i32, ptr %x, align 4
  %idxprom4 = zext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %9, i64 %idxprom4
  store i32 -1, ptr %arrayidx5, align 4
  %11 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 0
  %12 = load i32, ptr %arrayidx6, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %arrayidx6, align 4
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end
  %13 = load i32, ptr %i, align 4
  %mul = mul i32 %13, 2
  store i32 %mul, ptr %j, align 4
  %14 = load ptr, ptr %aHeap.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 0
  %15 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp ule i32 %mul, %15
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %aHeap.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom9 = zext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %16, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %aHeap.addr, align 8
  %20 = load i32, ptr %j, align 4
  %add = add i32 %20, 1
  %idxprom11 = zext i32 %add to i64
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %19, i64 %idxprom11
  %21 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp ugt i32 %18, %21
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body
  %22 = load i32, ptr %j, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body
  %23 = load ptr, ptr %aHeap.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %23, i64 %idxprom16
  %25 = load i32, ptr %arrayidx17, align 4
  %26 = load ptr, ptr %aHeap.addr, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom18 = zext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %26, i64 %idxprom18
  %28 = load i32, ptr %arrayidx19, align 4
  %cmp20 = icmp ult i32 %25, %28
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  br label %while.end

if.end22:                                         ; preds = %if.end15
  %29 = load ptr, ptr %aHeap.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom23 = zext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds nuw i32, ptr %29, i64 %idxprom23
  %31 = load i32, ptr %arrayidx24, align 4
  store i32 %31, ptr %x, align 4
  %32 = load ptr, ptr %aHeap.addr, align 8
  %33 = load i32, ptr %j, align 4
  %idxprom25 = zext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %32, i64 %idxprom25
  %34 = load i32, ptr %arrayidx26, align 4
  %35 = load ptr, ptr %aHeap.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom27 = zext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %35, i64 %idxprom27
  store i32 %34, ptr %arrayidx28, align 4
  %37 = load i32, ptr %x, align 4
  %38 = load ptr, ptr %aHeap.addr, align 8
  %39 = load i32, ptr %j, align 4
  %idxprom29 = zext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %38, i64 %idxprom29
  store i32 %37, ptr %arrayidx30, align 4
  %40 = load i32, ptr %j, align 4
  store i32 %40, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then21, %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
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
