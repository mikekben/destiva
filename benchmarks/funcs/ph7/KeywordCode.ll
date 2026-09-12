; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KeywordCode.zText = external hidden constant [332 x i8], align 16
@KeywordCode.aHash = external hidden constant [151 x i8], align 16
@KeywordCode.aNext = external hidden constant [84 x i8], align 16
@KeywordCode.aLen = external hidden constant [84 x i8], align 16
@KeywordCode.aOffset = external hidden constant [84 x i16], align 16
@KeywordCode.aCode = external hidden constant [84 x i32], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @KeywordCode(ptr noundef %z, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %mul = mul nsw i32 %conv, 4
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %5 to i32
  %mul3 = mul nsw i32 %conv2, 3
  %xor = xor i32 %mul, %mul3
  %6 = load i32, ptr %n.addr, align 4
  %xor4 = xor i32 %xor, %6
  %rem = srem i32 %xor4, 151
  store i32 %rem, ptr %h, align 4
  %7 = load i32, ptr %h, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [151 x i8], ptr @KeywordCode.aHash, i64 0, i64 %idxprom5
  %8 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  %sub8 = sub nsw i32 %conv7, 1
  store i32 %sub8, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %cmp9 = icmp sge i32 %9, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [84 x i8], ptr @KeywordCode.aLen, i64 0, i64 %idxprom11
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %12 = load i32, ptr %n.addr, align 4
  %cmp14 = icmp eq i32 %conv13, %12
  br i1 %cmp14, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [84 x i16], ptr @KeywordCode.aOffset, i64 0, i64 %idxprom16
  %14 = load i16, ptr %arrayidx17, align 2
  %idxprom18 = zext i16 %14 to i64
  %arrayidx19 = getelementptr inbounds nuw [332 x i8], ptr @KeywordCode.zText, i64 0, i64 %idxprom18
  %15 = load ptr, ptr %z.addr, align 8
  %16 = load i32, ptr %n.addr, align 4
  %call = call i32 @SyMemcmp(ptr noundef %arrayidx19, ptr noundef %15, i32 noundef %16)
  %cmp20 = icmp eq i32 %call, 0
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  %17 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [84 x i32], ptr @KeywordCode.aCode, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %19 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [84 x i8], ptr @KeywordCode.aNext, i64 0, i64 %idxprom26
  %20 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %20 to i32
  %sub29 = sub nsw i32 %conv28, 1
  store i32 %sub29, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then22, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
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
