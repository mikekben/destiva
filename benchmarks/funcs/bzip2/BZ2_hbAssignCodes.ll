; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_hbAssignCodes(ptr noundef %code, ptr noundef %length, i32 noundef %minLen, i32 noundef %maxLen, i32 noundef %alphaSize) #0 {
entry:
  %code.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %vec = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %code, ptr %code.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  store i32 %minLen, ptr %minLen.addr, align 4
  store i32 %maxLen, ptr %maxLen.addr, align 4
  store i32 %alphaSize, ptr %alphaSize.addr, align 4
  store i32 0, ptr %vec, align 4
  %0 = load i32, ptr %minLen.addr, align 4
  store i32 %0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, ptr %n, align 4
  %2 = load i32, ptr %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %length.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %n, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %vec, align 4
  %10 = load ptr, ptr %code.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  store i32 %9, ptr %arrayidx7, align 4
  %12 = load i32, ptr %vec, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %vec, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %14 = load i32, ptr %vec, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, ptr %vec, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %15 = load i32, ptr %n, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end11:                                        ; preds = %for.cond
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
!8 = distinct !{!8, !7}
