; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = external dso_local global i32, align 4
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
define hidden void @exchange(ptr noundef %argv) #0 {
entry:
  %argv.addr = alloca ptr, align 8
  %bottom = alloca i32, align 4
  %middle = alloca i32, align 4
  %top = alloca i32, align 4
  %tem = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %len20 = alloca i32, align 4
  %i22 = alloca i32, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr @first_nonopt, align 4
  store i32 %0, ptr %bottom, align 4
  %1 = load i32, ptr @last_nonopt, align 4
  store i32 %1, ptr %middle, align 4
  %2 = load i32, ptr @optind, align 4
  store i32 %2, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %top, align 4
  %4 = load i32, ptr %middle, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %middle, align 4
  %6 = load i32, ptr %bottom, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %top, align 4
  %9 = load i32, ptr %middle, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32, ptr %middle, align 4
  %11 = load i32, ptr %bottom, align 4
  %sub2 = sub nsw i32 %10, %11
  %cmp3 = icmp sgt i32 %sub, %sub2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %middle, align 4
  %13 = load i32, ptr %bottom, align 4
  %sub4 = sub nsw i32 %12, %13
  store i32 %sub4, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %len, align 4
  %cmp5 = icmp slt i32 %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %bottom, align 4
  %18 = load i32, ptr %i, align 4
  %add = add nsw i32 %17, %18
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %19 = load ptr, ptr %arrayidx, align 8
  store ptr %19, ptr %tem, align 8
  %20 = load ptr, ptr %argv.addr, align 8
  %21 = load i32, ptr %top, align 4
  %22 = load i32, ptr %middle, align 4
  %23 = load i32, ptr %bottom, align 4
  %sub6 = sub nsw i32 %22, %23
  %sub7 = sub nsw i32 %21, %sub6
  %24 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %sub7, %24
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9
  %25 = load ptr, ptr %arrayidx10, align 8
  %26 = load ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr %bottom, align 4
  %28 = load i32, ptr %i, align 4
  %add11 = add nsw i32 %27, %28
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %26, i64 %idxprom12
  store ptr %25, ptr %arrayidx13, align 8
  %29 = load ptr, ptr %tem, align 8
  %30 = load ptr, ptr %argv.addr, align 8
  %31 = load i32, ptr %top, align 4
  %32 = load i32, ptr %middle, align 4
  %33 = load i32, ptr %bottom, align 4
  %sub14 = sub nsw i32 %32, %33
  %sub15 = sub nsw i32 %31, %sub14
  %34 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %sub15, %34
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %30, i64 %idxprom17
  store ptr %29, ptr %arrayidx18, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load i32, ptr %len, align 4
  %37 = load i32, ptr %top, align 4
  %sub19 = sub nsw i32 %37, %36
  store i32 %sub19, ptr %top, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %38 = load i32, ptr %top, align 4
  %39 = load i32, ptr %middle, align 4
  %sub21 = sub nsw i32 %38, %39
  store i32 %sub21, ptr %len20, align 4
  store i32 0, ptr %i22, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc38, %if.else
  %40 = load i32, ptr %i22, align 4
  %41 = load i32, ptr %len20, align 4
  %cmp24 = icmp slt i32 %40, %41
  br i1 %cmp24, label %for.body25, label %for.end40

for.body25:                                       ; preds = %for.cond23
  %42 = load ptr, ptr %argv.addr, align 8
  %43 = load i32, ptr %bottom, align 4
  %44 = load i32, ptr %i22, align 4
  %add26 = add nsw i32 %43, %44
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %42, i64 %idxprom27
  %45 = load ptr, ptr %arrayidx28, align 8
  store ptr %45, ptr %tem, align 8
  %46 = load ptr, ptr %argv.addr, align 8
  %47 = load i32, ptr %middle, align 4
  %48 = load i32, ptr %i22, align 4
  %add29 = add nsw i32 %47, %48
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %46, i64 %idxprom30
  %49 = load ptr, ptr %arrayidx31, align 8
  %50 = load ptr, ptr %argv.addr, align 8
  %51 = load i32, ptr %bottom, align 4
  %52 = load i32, ptr %i22, align 4
  %add32 = add nsw i32 %51, %52
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds ptr, ptr %50, i64 %idxprom33
  store ptr %49, ptr %arrayidx34, align 8
  %53 = load ptr, ptr %tem, align 8
  %54 = load ptr, ptr %argv.addr, align 8
  %55 = load i32, ptr %middle, align 4
  %56 = load i32, ptr %i22, align 4
  %add35 = add nsw i32 %55, %56
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %54, i64 %idxprom36
  store ptr %53, ptr %arrayidx37, align 8
  br label %for.inc38

for.inc38:                                        ; preds = %for.body25
  %57 = load i32, ptr %i22, align 4
  %inc39 = add nsw i32 %57, 1
  store i32 %inc39, ptr %i22, align 4
  br label %for.cond23, !llvm.loop !8

for.end40:                                        ; preds = %for.cond23
  %58 = load i32, ptr %len20, align 4
  %59 = load i32, ptr %bottom, align 4
  %add41 = add nsw i32 %59, %58
  store i32 %add41, ptr %bottom, align 4
  br label %if.end

if.end:                                           ; preds = %for.end40, %for.end
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %60 = load i32, ptr @optind, align 4
  %61 = load i32, ptr @last_nonopt, align 4
  %sub42 = sub nsw i32 %60, %61
  %62 = load i32, ptr @first_nonopt, align 4
  %add43 = add nsw i32 %62, %sub42
  store i32 %add43, ptr @first_nonopt, align 4
  %63 = load i32, ptr @optind, align 4
  store i32 %63, ptr @last_nonopt, align 4
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
!9 = distinct !{!9, !7}
