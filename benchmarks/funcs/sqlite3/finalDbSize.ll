; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @finalDbSize(ptr noundef %pBt, i32 noundef %nOrig, i32 noundef %nFree) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %nOrig.addr = alloca i32, align 4
  %nFree.addr = alloca i32, align 4
  %nEntry = alloca i32, align 4
  %nPtrmap = alloca i32, align 4
  %nFin = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %nOrig, ptr %nOrig.addr, align 4
  store i32 %nFree, ptr %nFree.addr, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 16
  %1 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %1, 5
  store i32 %div, ptr %nEntry, align 4
  %2 = load i32, ptr %nFree.addr, align 4
  %3 = load i32, ptr %nOrig.addr, align 4
  %sub = sub i32 %2, %3
  %4 = load ptr, ptr %pBt.addr, align 8
  %5 = load i32, ptr %nOrig.addr, align 4
  %call = call i32 @ptrmapPageno(ptr noundef %4, i32 noundef %5)
  %add = add i32 %sub, %call
  %6 = load i32, ptr %nEntry, align 4
  %add1 = add i32 %add, %6
  %7 = load i32, ptr %nEntry, align 4
  %div2 = udiv i32 %add1, %7
  store i32 %div2, ptr %nPtrmap, align 4
  %8 = load i32, ptr %nOrig.addr, align 4
  %9 = load i32, ptr %nFree.addr, align 4
  %sub3 = sub i32 %8, %9
  %10 = load i32, ptr %nPtrmap, align 4
  %sub4 = sub i32 %sub3, %10
  store i32 %sub4, ptr %nFin, align 4
  %11 = load i32, ptr %nOrig.addr, align 4
  %12 = load i32, ptr @sqlite3PendingByte, align 4
  %13 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %13, i32 0, i32 15
  %14 = load i32, ptr %pageSize, align 8
  %div5 = udiv i32 %12, %14
  %add6 = add i32 %div5, 1
  %cmp = icmp ugt i32 %11, %add6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load i32, ptr %nFin, align 4
  %16 = load i32, ptr @sqlite3PendingByte, align 4
  %17 = load ptr, ptr %pBt.addr, align 8
  %pageSize7 = getelementptr inbounds nuw %struct.BtShared, ptr %17, i32 0, i32 15
  %18 = load i32, ptr %pageSize7, align 8
  %div8 = udiv i32 %16, %18
  %add9 = add i32 %div8, 1
  %cmp10 = icmp ult i32 %15, %add9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, ptr %nFin, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nFin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %20 = load ptr, ptr %pBt.addr, align 8
  %21 = load i32, ptr %nFin, align 4
  %call11 = call i32 @ptrmapPageno(ptr noundef %20, i32 noundef %21)
  %22 = load i32, ptr %nFin, align 4
  %cmp12 = icmp eq i32 %call11, %22
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %23 = load i32, ptr %nFin, align 4
  %24 = load i32, ptr @sqlite3PendingByte, align 4
  %25 = load ptr, ptr %pBt.addr, align 8
  %pageSize13 = getelementptr inbounds nuw %struct.BtShared, ptr %25, i32 0, i32 15
  %26 = load i32, ptr %pageSize13, align 8
  %div14 = udiv i32 %24, %26
  %add15 = add i32 %div14, 1
  %cmp16 = icmp eq i32 %23, %add15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %27 = phi i1 [ true, %while.cond ], [ %cmp16, %lor.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %28 = load i32, ptr %nFin, align 4
  %dec17 = add i32 %28, -1
  store i32 %dec17, ptr %nFin, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %29 = load i32, ptr %nFin, align 4
  ret i32 %29
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
