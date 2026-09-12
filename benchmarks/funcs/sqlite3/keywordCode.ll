; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@zKWText = external hidden constant [637 x i8], align 16
@aKWOffset = external hidden constant [143 x i16], align 16
@aKWLen = external hidden constant [143 x i8], align 16
@aKWHash = external hidden constant [127 x i8], align 16
@aKWCode = external hidden constant [143 x i8], align 16
@aKWNext = external hidden constant [143 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @keywordCode(ptr noundef %z, i32 noundef %n, ptr noundef %pType) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %pType.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zKW = alloca ptr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %pType, ptr %pType.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end46

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, 4
  %4 = load ptr, ptr %z.addr, align 8
  %5 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  %6 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %6 to i64
  %arrayidx5 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %mul7 = mul nsw i32 %conv6, 3
  %xor = xor i32 %mul, %mul7
  %8 = load i32, ptr %n.addr, align 4
  %xor8 = xor i32 %xor, %8
  %rem = srem i32 %xor8, 127
  store i32 %rem, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [127 x i8], ptr @aKWHash, i64 0, i64 %idxprom9
  %10 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %10 to i32
  %sub12 = sub nsw i32 %conv11, 1
  store i32 %sub12, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %i, align 4
  %cmp13 = icmp sge i32 %11, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [143 x i8], ptr @aKWLen, i64 0, i64 %idxprom15
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %14 = load i32, ptr %n.addr, align 4
  %cmp18 = icmp ne i32 %conv17, %14
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  store i32 0, ptr %j, align 4
  %15 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [143 x i16], ptr @aKWOffset, i64 0, i64 %idxprom21
  %16 = load i16, ptr %arrayidx22, align 2
  %idxprom23 = zext i16 %16 to i64
  %arrayidx24 = getelementptr inbounds nuw [637 x i8], ptr @zKWText, i64 0, i64 %idxprom23
  store ptr %arrayidx24, ptr %zKW, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %17 = load i32, ptr %j, align 4
  %18 = load i32, ptr %n.addr, align 4
  %cmp25 = icmp slt i32 %17, %18
  br i1 %cmp25, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load ptr, ptr %z.addr, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %19, i64 %idxprom27
  %21 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %21 to i32
  %and = and i32 %conv29, -33
  %22 = load ptr, ptr %zKW, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 %idxprom30
  %24 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %24 to i32
  %cmp33 = icmp eq i32 %and, %conv32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp33, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load i32, ptr %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %n.addr, align 4
  %cmp35 = icmp slt i32 %27, %28
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %while.end
  br label %for.inc

if.end38:                                         ; preds = %while.end
  %29 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [143 x i8], ptr @aKWCode, i64 0, i64 %idxprom39
  %30 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %30 to i32
  %31 = load ptr, ptr %pType.addr, align 8
  store i32 %conv41, ptr %31, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then37, %if.then20
  %32 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [143 x i8], ptr @aKWNext, i64 0, i64 %idxprom42
  %33 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %33 to i32
  %sub45 = sub nsw i32 %conv44, 1
  store i32 %sub45, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %if.end38, %for.cond
  br label %if.end46

if.end46:                                         ; preds = %for.end, %entry
  %34 = load i32, ptr %n.addr, align 4
  ret i32 %34
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
