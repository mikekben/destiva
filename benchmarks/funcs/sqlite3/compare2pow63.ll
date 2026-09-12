; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.113 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @compare2pow63(ptr noundef %zNum, i32 noundef %incr) #0 {
entry:
  %zNum.addr = alloca ptr, align 8
  %incr.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %pow63 = alloca ptr, align 8
  store ptr %zNum, ptr %zNum.addr, align 8
  store i32 %incr, ptr %incr.addr, align 4
  store i32 0, ptr %c, align 4
  store ptr @.str.113, ptr %pow63, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load ptr, ptr %zNum.addr, align 8
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %incr.addr, align 4
  %mul = mul nsw i32 %4, %5
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %pow63, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 %idxprom2
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %sub = sub nsw i32 %conv, %conv4
  %mul5 = mul nsw i32 %sub, 10
  store i32 %mul5, ptr %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %11 = load i32, ptr %c, align 4
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load ptr, ptr %zNum.addr, align 8
  %13 = load i32, ptr %incr.addr, align 4
  %mul8 = mul nsw i32 18, %13
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %idxprom9
  %14 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %sub12 = sub nsw i32 %conv11, 56
  store i32 %sub12, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %15 = load i32, ptr %c, align 4
  ret i32 %15
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
