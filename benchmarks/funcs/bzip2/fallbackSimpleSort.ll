; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @fallbackSimpleSort(ptr noundef %fmap, ptr noundef %eclass, i32 noundef %lo, i32 noundef %hi) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ec_tmp = alloca i32, align 4
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  %0 = load i32, ptr %lo.addr, align 4
  %1 = load i32, ptr %hi.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end58

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %hi.addr, align 4
  %3 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %2, %3
  %cmp1 = icmp sgt i32 %sub, 3
  br i1 %cmp1, label %if.then2, label %if.end26

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %hi.addr, align 4
  %sub3 = sub nsw i32 %4, 4
  store i32 %sub3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.then2
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %lo.addr, align 4
  %cmp4 = icmp sge i32 %5, %6
  br i1 %cmp4, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %fmap.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  store i32 %9, ptr %tmp, align 4
  %10 = load ptr, ptr %eclass.addr, align 8
  %11 = load i32, ptr %tmp, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4
  store i32 %12, ptr %ec_tmp, align 4
  %13 = load i32, ptr %i, align 4
  %add = add nsw i32 %13, 4
  store i32 %add, ptr %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %hi.addr, align 4
  %cmp8 = icmp sle i32 %14, %15
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond7
  %16 = load i32, ptr %ec_tmp, align 4
  %17 = load ptr, ptr %eclass.addr, align 8
  %18 = load ptr, ptr %fmap.addr, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom9
  %20 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = zext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %17, i64 %idxprom11
  %21 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp ugt i32 %16, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond7
  %22 = phi i1 [ false, %for.cond7 ], [ %cmp13, %land.rhs ]
  br i1 %22, label %for.body14, label %for.end

for.body14:                                       ; preds = %land.end
  %23 = load ptr, ptr %fmap.addr, align 8
  %24 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %23, i64 %idxprom15
  %25 = load i32, ptr %arrayidx16, align 4
  %26 = load ptr, ptr %fmap.addr, align 8
  %27 = load i32, ptr %j, align 4
  %sub17 = sub nsw i32 %27, 4
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %26, i64 %idxprom18
  store i32 %25, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %28 = load i32, ptr %j, align 4
  %add20 = add nsw i32 %28, 4
  store i32 %add20, ptr %j, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %29 = load i32, ptr %tmp, align 4
  %30 = load ptr, ptr %fmap.addr, align 8
  %31 = load i32, ptr %j, align 4
  %sub21 = sub nsw i32 %31, 4
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %30, i64 %idxprom22
  store i32 %29, ptr %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %32 = load i32, ptr %i, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %if.end
  %33 = load i32, ptr %hi.addr, align 4
  %sub27 = sub nsw i32 %33, 1
  store i32 %sub27, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc56, %if.end26
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %lo.addr, align 4
  %cmp29 = icmp sge i32 %34, %35
  br i1 %cmp29, label %for.body30, label %for.end58

for.body30:                                       ; preds = %for.cond28
  %36 = load ptr, ptr %fmap.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %36, i64 %idxprom31
  %38 = load i32, ptr %arrayidx32, align 4
  store i32 %38, ptr %tmp, align 4
  %39 = load ptr, ptr %eclass.addr, align 8
  %40 = load i32, ptr %tmp, align 4
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %39, i64 %idxprom33
  %41 = load i32, ptr %arrayidx34, align 4
  store i32 %41, ptr %ec_tmp, align 4
  %42 = load i32, ptr %i, align 4
  %add35 = add nsw i32 %42, 1
  store i32 %add35, ptr %j, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.body30
  %43 = load i32, ptr %j, align 4
  %44 = load i32, ptr %hi.addr, align 4
  %cmp37 = icmp sle i32 %43, %44
  br i1 %cmp37, label %land.rhs38, label %land.end44

land.rhs38:                                       ; preds = %for.cond36
  %45 = load i32, ptr %ec_tmp, align 4
  %46 = load ptr, ptr %eclass.addr, align 8
  %47 = load ptr, ptr %fmap.addr, align 8
  %48 = load i32, ptr %j, align 4
  %idxprom39 = sext i32 %48 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %47, i64 %idxprom39
  %49 = load i32, ptr %arrayidx40, align 4
  %idxprom41 = zext i32 %49 to i64
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %46, i64 %idxprom41
  %50 = load i32, ptr %arrayidx42, align 4
  %cmp43 = icmp ugt i32 %45, %50
  br label %land.end44

land.end44:                                       ; preds = %land.rhs38, %for.cond36
  %51 = phi i1 [ false, %for.cond36 ], [ %cmp43, %land.rhs38 ]
  br i1 %51, label %for.body45, label %for.end52

for.body45:                                       ; preds = %land.end44
  %52 = load ptr, ptr %fmap.addr, align 8
  %53 = load i32, ptr %j, align 4
  %idxprom46 = sext i32 %53 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %52, i64 %idxprom46
  %54 = load i32, ptr %arrayidx47, align 4
  %55 = load ptr, ptr %fmap.addr, align 8
  %56 = load i32, ptr %j, align 4
  %sub48 = sub nsw i32 %56, 1
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %55, i64 %idxprom49
  store i32 %54, ptr %arrayidx50, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %for.body45
  %57 = load i32, ptr %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond36, !llvm.loop !9

for.end52:                                        ; preds = %land.end44
  %58 = load i32, ptr %tmp, align 4
  %59 = load ptr, ptr %fmap.addr, align 8
  %60 = load i32, ptr %j, align 4
  %sub53 = sub nsw i32 %60, 1
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds i32, ptr %59, i64 %idxprom54
  store i32 %58, ptr %arrayidx55, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %for.end52
  %61 = load i32, ptr %i, align 4
  %dec57 = add nsw i32 %61, -1
  store i32 %dec57, ptr %i, align 4
  br label %for.cond28, !llvm.loop !10

for.end58:                                        ; preds = %for.cond28, %if.then
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
