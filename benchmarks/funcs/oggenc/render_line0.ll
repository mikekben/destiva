; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @render_line0(i32 noundef %x0, i32 noundef %x1, i32 noundef %y0, i32 noundef %y1, ptr noundef %d) #0 {
entry:
  %x0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %d.addr = alloca ptr, align 8
  %dy = alloca i32, align 4
  %adx = alloca i32, align 4
  %ady = alloca i32, align 4
  %base = alloca i32, align 4
  %sy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %x0, ptr %x0.addr, align 4
  store i32 %x1, ptr %x1.addr, align 4
  store i32 %y0, ptr %y0.addr, align 4
  store i32 %y1, ptr %y1.addr, align 4
  store ptr %d, ptr %d.addr, align 8
  %0 = load i32, ptr %y1.addr, align 4
  %1 = load i32, ptr %y0.addr, align 4
  %sub = sub nsw i32 %0, %1
  store i32 %sub, ptr %dy, align 4
  %2 = load i32, ptr %x1.addr, align 4
  %3 = load i32, ptr %x0.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, ptr %adx, align 4
  %4 = load i32, ptr %dy, align 4
  %5 = call i32 @llvm.abs.i32(i32 %4, i1 true)
  store i32 %5, ptr %ady, align 4
  %6 = load i32, ptr %dy, align 4
  %7 = load i32, ptr %adx, align 4
  %div = sdiv i32 %6, %7
  store i32 %div, ptr %base, align 4
  %8 = load i32, ptr %dy, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, ptr %base, align 4
  %sub2 = sub nsw i32 %9, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i32, ptr %base, align 4
  %add = add nsw i32 %10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub2, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr %sy, align 4
  %11 = load i32, ptr %x0.addr, align 4
  store i32 %11, ptr %x, align 4
  %12 = load i32, ptr %y0.addr, align 4
  store i32 %12, ptr %y, align 4
  store i32 0, ptr %err, align 4
  %13 = load i32, ptr %base, align 4
  %14 = load i32, ptr %adx, align 4
  %mul = mul nsw i32 %13, %14
  %15 = call i32 @llvm.abs.i32(i32 %mul, i1 true)
  %16 = load i32, ptr %ady, align 4
  %sub3 = sub nsw i32 %16, %15
  store i32 %sub3, ptr %ady, align 4
  %17 = load i32, ptr %y, align 4
  %18 = load ptr, ptr %d.addr, align 8
  %19 = load i32, ptr %x, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32, ptr %18, i64 %idxprom
  store i32 %17, ptr %arrayidx, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %20 = load i32, ptr %x, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %x, align 4
  %21 = load i32, ptr %x1.addr, align 4
  %cmp4 = icmp slt i32 %inc, %21
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, ptr %err, align 4
  %23 = load i32, ptr %ady, align 4
  %add5 = add nsw i32 %22, %23
  store i32 %add5, ptr %err, align 4
  %24 = load i32, ptr %err, align 4
  %25 = load i32, ptr %adx, align 4
  %cmp6 = icmp sge i32 %24, %25
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %26 = load i32, ptr %adx, align 4
  %27 = load i32, ptr %err, align 4
  %sub7 = sub nsw i32 %27, %26
  store i32 %sub7, ptr %err, align 4
  %28 = load i32, ptr %sy, align 4
  %29 = load i32, ptr %y, align 4
  %add8 = add nsw i32 %29, %28
  store i32 %add8, ptr %y, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %30 = load i32, ptr %base, align 4
  %31 = load i32, ptr %y, align 4
  %add9 = add nsw i32 %31, %30
  store i32 %add9, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load i32, ptr %y, align 4
  %33 = load ptr, ptr %d.addr, align 8
  %34 = load i32, ptr %x, align 4
  %idxprom10 = sext i32 %34 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %33, i64 %idxprom10
  store i32 %32, ptr %arrayidx11, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
