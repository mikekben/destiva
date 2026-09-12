; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
define hidden void @recomputeColumnsNotIndexed(ptr noundef %pIdx) #0 {
entry:
  %pIdx.addr = alloca ptr, align 8
  %m = alloca i64, align 8
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i64 0, ptr %m, align 8
  %0 = load ptr, ptr %pIdx.addr, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 14
  %1 = load i16, ptr %nColumn, align 8
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %j, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %aiColumn, align 8
  %5 = load i32, ptr %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom
  %6 = load i16, ptr %arrayidx, align 2
  %conv2 = sext i16 %6 to i32
  store i32 %conv2, ptr %x, align 4
  %7 = load i32, ptr %x, align 4
  %cmp3 = icmp sge i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %x, align 4
  %cmp5 = icmp slt i32 %8, 63
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %9 = load i32, ptr %x, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %10 = load i64, ptr %m, align 8
  %or = or i64 %10, %shl
  store i64 %or, ptr %m, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %11 = load i32, ptr %j, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %m, align 8
  %not = xor i64 %12, -1
  %13 = load ptr, ptr %pIdx.addr, align 8
  %colNotIdxed = getelementptr inbounds nuw %struct.Index, ptr %13, i32 0, i32 18
  store i64 %not, ptr %colNotIdxed, align 8
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
