; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ReusableSpace = type { ptr, i64, i64 }

; Function Attrs: nounwind uwtable
define hidden ptr @allocSpace(ptr noundef %p, ptr noundef %pBuf, i64 noundef %nByte) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %nByte.addr = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i64 %nByte, ptr %nByte.addr, align 8
  %0 = load ptr, ptr %pBuf.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %nByte.addr, align 8
  %add = add nsw i64 %1, 7
  %and = and i64 %add, -8
  store i64 %and, ptr %nByte.addr, align 8
  %2 = load i64, ptr %nByte.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.ReusableSpace, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %nFree, align 8
  %cmp1 = icmp sle i64 %2, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load i64, ptr %nByte.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %nFree3 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %nFree3, align 8
  %sub = sub nsw i64 %7, %5
  store i64 %sub, ptr %nFree3, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %pSpace = getelementptr inbounds nuw %struct.ReusableSpace, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pSpace, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %nFree4 = getelementptr inbounds nuw %struct.ReusableSpace, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %nFree4, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %11
  store ptr %arrayidx, ptr %pBuf.addr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i64, ptr %nByte.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %nNeeded = getelementptr inbounds nuw %struct.ReusableSpace, ptr %13, i32 0, i32 2
  %14 = load i64, ptr %nNeeded, align 8
  %add5 = add nsw i64 %14, %12
  store i64 %add5, ptr %nNeeded, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %pBuf.addr, align 8
  ret ptr %15
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
