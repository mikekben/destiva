; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @limit_sum(ptr noundef %bm, i32 noundef %limit) #0 {
entry:
  %bm.addr = alloca ptr, align 8
  %limit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %acc = alloca i64, align 8
  %bins = alloca i64, align 8
  store ptr %bm, ptr %bm.addr, align 8
  store i32 %limit, ptr %limit.addr, align 4
  %0 = load ptr, ptr %bm.addr, align 8
  %minmax_stackptr = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %0, i32 0, i32 15
  %1 = load i64, ptr %minmax_stackptr, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %i, align 4
  %2 = load ptr, ptr %bm.addr, align 8
  %minmax_acctotal = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %2, i32 0, i32 16
  %3 = load i64, ptr %minmax_acctotal, align 8
  store i64 %3, ptr %acc, align 8
  %4 = load ptr, ptr %bm.addr, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %queue_bins, align 8
  %conv1 = sext i32 %5 to i64
  store i64 %conv1, ptr %bins, align 8
  %6 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %6, i32 0, i32 12
  %7 = load ptr, ptr %minmax_binstack, align 8
  %8 = load i32, ptr %i, align 4
  %conv2 = sext i32 %8 to i64
  %9 = load i64, ptr %bins, align 8
  %mul = mul nsw i64 %conv2, %9
  %mul3 = mul nsw i64 %mul, 2
  %10 = load i64, ptr %bins, align 8
  %add = add nsw i64 0, %10
  %add4 = add nsw i64 %mul3, %add
  %arrayidx = getelementptr inbounds i64, ptr %7, i64 %add4
  %11 = load i64, ptr %arrayidx, align 8
  %12 = load i64, ptr %acc, align 8
  %sub = sub nsw i64 %12, %11
  store i64 %sub, ptr %acc, align 8
  %13 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack5 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %minmax_binstack5, align 8
  %15 = load i32, ptr %i, align 4
  %conv6 = sext i32 %15 to i64
  %16 = load i64, ptr %bins, align 8
  %mul7 = mul nsw i64 %conv6, %16
  %mul8 = mul nsw i64 %mul7, 2
  %17 = load i32, ptr %limit.addr, align 4
  %conv9 = sext i32 %17 to i64
  %18 = load i64, ptr %bins, align 8
  %add10 = add nsw i64 %conv9, %18
  %add11 = add nsw i64 %mul8, %add10
  %arrayidx12 = getelementptr inbounds i64, ptr %14, i64 %add11
  %19 = load i64, ptr %arrayidx12, align 8
  %20 = load i64, ptr %acc, align 8
  %add13 = add nsw i64 %20, %19
  store i64 %add13, ptr %acc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %21 = load i32, ptr %i, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, ptr %i, align 4
  %cmp = icmp sgt i32 %21, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %bm.addr, align 8
  %minmax_limitstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %22, i32 0, i32 14
  %23 = load ptr, ptr %minmax_limitstack, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds i64, ptr %23, i64 %idxprom
  %25 = load i64, ptr %arrayidx15, align 8
  %26 = load i32, ptr %limit.addr, align 4
  %conv16 = sext i32 %26 to i64
  %cmp17 = icmp sle i64 %25, %conv16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %27 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack19 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %minmax_binstack19, align 8
  %29 = load i32, ptr %i, align 4
  %conv20 = sext i32 %29 to i64
  %30 = load i64, ptr %bins, align 8
  %mul21 = mul nsw i64 %conv20, %30
  %mul22 = mul nsw i64 %mul21, 2
  %31 = load ptr, ptr %bm.addr, align 8
  %minmax_limitstack23 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %31, i32 0, i32 14
  %32 = load ptr, ptr %minmax_limitstack23, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds i64, ptr %32, i64 %idxprom24
  %34 = load i64, ptr %arrayidx25, align 8
  %35 = load i64, ptr %bins, align 8
  %add26 = add nsw i64 %34, %35
  %add27 = add nsw i64 %mul22, %add26
  %arrayidx28 = getelementptr inbounds i64, ptr %28, i64 %add27
  %36 = load i64, ptr %arrayidx28, align 8
  %37 = load i64, ptr %acc, align 8
  %sub29 = sub nsw i64 %37, %36
  store i64 %sub29, ptr %acc, align 8
  %38 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack30 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %minmax_binstack30, align 8
  %40 = load i32, ptr %i, align 4
  %conv31 = sext i32 %40 to i64
  %41 = load i64, ptr %bins, align 8
  %mul32 = mul nsw i64 %conv31, %41
  %mul33 = mul nsw i64 %mul32, 2
  %42 = load i32, ptr %limit.addr, align 4
  %conv34 = sext i32 %42 to i64
  %43 = load i64, ptr %bins, align 8
  %add35 = add nsw i64 %conv34, %43
  %add36 = add nsw i64 %mul33, %add35
  %arrayidx37 = getelementptr inbounds i64, ptr %39, i64 %add36
  %44 = load i64, ptr %arrayidx37, align 8
  %45 = load i64, ptr %acc, align 8
  %add38 = add nsw i64 %45, %44
  store i64 %add38, ptr %acc, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %46 = load i64, ptr %acc, align 8
  ret i64 %46
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
