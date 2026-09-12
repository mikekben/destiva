; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @LongestStringMask2(ptr noundef %zString, i32 noundef %nLen, ptr noundef %zMask, i32 noundef %nMaskLen) #0 {
entry:
  %zString.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zMask.addr = alloca ptr, align 8
  %nMaskLen.addr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %zString, ptr %zString.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %zMask, ptr %zMask.addr, align 8
  store i32 %nMaskLen, ptr %nMaskLen.addr, align 4
  %0 = load ptr, ptr %zString.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load ptr, ptr %zString.addr, align 8
  store ptr %2, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %entry
  %3 = load ptr, ptr %zString.addr, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end16

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %zString.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  store i32 %conv, ptr %c, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %nMaskLen.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond2
  %9 = load i32, ptr %c, align 4
  %10 = load ptr, ptr %zMask.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 %idxprom5
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %9, %conv7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %if.then10, %for.cond2
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %nMaskLen.addr, align 4
  %cmp12 = icmp slt i32 %14, %15
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.end
  br label %for.end16

if.end15:                                         ; preds = %for.end
  %16 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %zString.addr, align 8
  br label %for.cond

for.end16:                                        ; preds = %if.then14, %if.then
  %17 = load ptr, ptr %zString.addr, align 8
  %18 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv17 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv17
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
