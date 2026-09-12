; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_hbCreateDecodeTables(ptr noundef %limit, ptr noundef %base, ptr noundef %perm, ptr noundef %length, i32 noundef %minLen, i32 noundef %maxLen, i32 noundef %alphaSize) #0 {
entry:
  %limit.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  %perm.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %minLen.addr = alloca i32, align 4
  %maxLen.addr = alloca i32, align 4
  %alphaSize.addr = alloca i32, align 4
  %pp = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %vec = alloca i32, align 4
  store ptr %limit, ptr %limit.addr, align 8
  store ptr %base, ptr %base.addr, align 8
  store ptr %perm, ptr %perm.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  store i32 %minLen, ptr %minLen.addr, align 4
  store i32 %maxLen, ptr %maxLen.addr, align 4
  store i32 %alphaSize, ptr %alphaSize.addr, align 4
  store i32 0, ptr %pp, align 4
  %0 = load i32, ptr %minLen.addr, align 4
  store i32 %0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %maxLen.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %alphaSize.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %length.addr, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr %i, align 4
  %cmp4 = icmp eq i32 %conv, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %10 = load ptr, ptr %perm.addr, align 8
  %11 = load i32, ptr %pp, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  store i32 %9, ptr %arrayidx7, align 4
  %12 = load i32, ptr %pp, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %pp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4
  %inc8 = add nsw i32 %13, 1
  store i32 %inc8, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end11:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end11
  %15 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %15, 23
  br i1 %cmp13, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond12
  %16 = load ptr, ptr %base.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %16, i64 %idxprom16
  store i32 0, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %18 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond12, !llvm.loop !9

for.end20:                                        ; preds = %for.cond12
  store i32 0, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc31, %for.end20
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %alphaSize.addr, align 4
  %cmp22 = icmp slt i32 %19, %20
  br i1 %cmp22, label %for.body24, label %for.end33

for.body24:                                       ; preds = %for.cond21
  %21 = load ptr, ptr %base.addr, align 8
  %22 = load ptr, ptr %length.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i8, ptr %22, i64 %idxprom25
  %24 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %24 to i32
  %add = add nsw i32 %conv27, 1
  %idxprom28 = sext i32 %add to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %21, i64 %idxprom28
  %25 = load i32, ptr %arrayidx29, align 4
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %arrayidx29, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body24
  %26 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond21, !llvm.loop !10

for.end33:                                        ; preds = %for.cond21
  store i32 1, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.end33
  %27 = load i32, ptr %i, align 4
  %cmp35 = icmp slt i32 %27, 23
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %28 = load ptr, ptr %base.addr, align 8
  %29 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom38 = sext i32 %sub to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %28, i64 %idxprom38
  %30 = load i32, ptr %arrayidx39, align 4
  %31 = load ptr, ptr %base.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %31, i64 %idxprom40
  %33 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %33, %30
  store i32 %add42, ptr %arrayidx41, align 4
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %34 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond34, !llvm.loop !11

for.end45:                                        ; preds = %for.cond34
  store i32 0, ptr %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc52, %for.end45
  %35 = load i32, ptr %i, align 4
  %cmp47 = icmp slt i32 %35, 23
  br i1 %cmp47, label %for.body49, label %for.end54

for.body49:                                       ; preds = %for.cond46
  %36 = load ptr, ptr %limit.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %37 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %36, i64 %idxprom50
  store i32 0, ptr %arrayidx51, align 4
  br label %for.inc52

for.inc52:                                        ; preds = %for.body49
  %38 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %38, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond46, !llvm.loop !12

for.end54:                                        ; preds = %for.cond46
  store i32 0, ptr %vec, align 4
  %39 = load i32, ptr %minLen.addr, align 4
  store i32 %39, ptr %i, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %for.end54
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %maxLen.addr, align 4
  %cmp56 = icmp sle i32 %40, %41
  br i1 %cmp56, label %for.body58, label %for.end71

for.body58:                                       ; preds = %for.cond55
  %42 = load ptr, ptr %base.addr, align 8
  %43 = load i32, ptr %i, align 4
  %add59 = add nsw i32 %43, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %42, i64 %idxprom60
  %44 = load i32, ptr %arrayidx61, align 4
  %45 = load ptr, ptr %base.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %46 to i64
  %arrayidx63 = getelementptr inbounds i32, ptr %45, i64 %idxprom62
  %47 = load i32, ptr %arrayidx63, align 4
  %sub64 = sub nsw i32 %44, %47
  %48 = load i32, ptr %vec, align 4
  %add65 = add nsw i32 %48, %sub64
  store i32 %add65, ptr %vec, align 4
  %49 = load i32, ptr %vec, align 4
  %sub66 = sub nsw i32 %49, 1
  %50 = load ptr, ptr %limit.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %51 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %50, i64 %idxprom67
  store i32 %sub66, ptr %arrayidx68, align 4
  %52 = load i32, ptr %vec, align 4
  %shl = shl i32 %52, 1
  store i32 %shl, ptr %vec, align 4
  br label %for.inc69

for.inc69:                                        ; preds = %for.body58
  %53 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %53, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond55, !llvm.loop !13

for.end71:                                        ; preds = %for.cond55
  %54 = load i32, ptr %minLen.addr, align 4
  %add72 = add nsw i32 %54, 1
  store i32 %add72, ptr %i, align 4
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc87, %for.end71
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %maxLen.addr, align 4
  %cmp74 = icmp sle i32 %55, %56
  br i1 %cmp74, label %for.body76, label %for.end89

for.body76:                                       ; preds = %for.cond73
  %57 = load ptr, ptr %limit.addr, align 8
  %58 = load i32, ptr %i, align 4
  %sub77 = sub nsw i32 %58, 1
  %idxprom78 = sext i32 %sub77 to i64
  %arrayidx79 = getelementptr inbounds i32, ptr %57, i64 %idxprom78
  %59 = load i32, ptr %arrayidx79, align 4
  %add80 = add nsw i32 %59, 1
  %shl81 = shl i32 %add80, 1
  %60 = load ptr, ptr %base.addr, align 8
  %61 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %61 to i64
  %arrayidx83 = getelementptr inbounds i32, ptr %60, i64 %idxprom82
  %62 = load i32, ptr %arrayidx83, align 4
  %sub84 = sub nsw i32 %shl81, %62
  %63 = load ptr, ptr %base.addr, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom85 = sext i32 %64 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %63, i64 %idxprom85
  store i32 %sub84, ptr %arrayidx86, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %for.body76
  %65 = load i32, ptr %i, align 4
  %inc88 = add nsw i32 %65, 1
  store i32 %inc88, ptr %i, align 4
  br label %for.cond73, !llvm.loop !14

for.end89:                                        ; preds = %for.cond73
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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
