; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@incs = external hidden global [14 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden void @mainSimpleSort(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, i32 noundef %nblock, i32 noundef %lo, i32 noundef %hi, i32 noundef %d, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %bigN = alloca i32, align 4
  %hp = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %0 = load i32, ptr %hi.addr, align 4
  %1 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %bigN, align 4
  %2 = load i32, ptr %bigN, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %hp, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i32, ptr %hp, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [14 x i32], ptr @incs, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %bigN, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %hp, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %hp, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %hp, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %hp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %hp, align 4
  %cmp2 = icmp sge i32 %8, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %hp, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [14 x i32], ptr @incs, i64 0, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  store i32 %10, ptr %h, align 4
  %11 = load i32, ptr %lo.addr, align 4
  %12 = load i32, ptr %h, align 4
  %add5 = add nsw i32 %11, %12
  store i32 %add5, ptr %i, align 4
  br label %while.body7

while.body7:                                      ; preds = %if.end95, %for.body
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %hi.addr, align 4
  %cmp8 = icmp sgt i32 %13, %14
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body7
  br label %while.end96

if.end10:                                         ; preds = %while.body7
  %15 = load ptr, ptr %ptr.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %15, i64 %idxprom11
  %17 = load i32, ptr %arrayidx12, align 4
  store i32 %17, ptr %v, align 4
  %18 = load i32, ptr %i, align 4
  store i32 %18, ptr %j, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end30, %if.end10
  %19 = load ptr, ptr %ptr.addr, align 8
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %h, align 4
  %sub14 = sub nsw i32 %20, %21
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %19, i64 %idxprom15
  %22 = load i32, ptr %arrayidx16, align 4
  %23 = load i32, ptr %d.addr, align 4
  %add17 = add i32 %22, %23
  %24 = load i32, ptr %v, align 4
  %25 = load i32, ptr %d.addr, align 4
  %add18 = add i32 %24, %25
  %26 = load ptr, ptr %block.addr, align 8
  %27 = load ptr, ptr %quadrant.addr, align 8
  %28 = load i32, ptr %nblock.addr, align 4
  %29 = load ptr, ptr %budget.addr, align 8
  %call = call zeroext i8 @mainGtU(i32 noundef %add17, i32 noundef %add18, ptr noundef %26, ptr noundef %27, i32 noundef %28, ptr noundef %29)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %while.body19, label %while.end31

while.body19:                                     ; preds = %while.cond13
  %30 = load ptr, ptr %ptr.addr, align 8
  %31 = load i32, ptr %j, align 4
  %32 = load i32, ptr %h, align 4
  %sub20 = sub nsw i32 %31, %32
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %30, i64 %idxprom21
  %33 = load i32, ptr %arrayidx22, align 4
  %34 = load ptr, ptr %ptr.addr, align 8
  %35 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %34, i64 %idxprom23
  store i32 %33, ptr %arrayidx24, align 4
  %36 = load i32, ptr %j, align 4
  %37 = load i32, ptr %h, align 4
  %sub25 = sub nsw i32 %36, %37
  store i32 %sub25, ptr %j, align 4
  %38 = load i32, ptr %j, align 4
  %39 = load i32, ptr %lo.addr, align 4
  %40 = load i32, ptr %h, align 4
  %add26 = add nsw i32 %39, %40
  %sub27 = sub nsw i32 %add26, 1
  %cmp28 = icmp sle i32 %38, %sub27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.body19
  br label %while.end31

if.end30:                                         ; preds = %while.body19
  br label %while.cond13, !llvm.loop !8

while.end31:                                      ; preds = %if.then29, %while.cond13
  %41 = load i32, ptr %v, align 4
  %42 = load ptr, ptr %ptr.addr, align 8
  %43 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %42, i64 %idxprom32
  store i32 %41, ptr %arrayidx33, align 4
  %44 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %44, 1
  store i32 %inc34, ptr %i, align 4
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %hi.addr, align 4
  %cmp35 = icmp sgt i32 %45, %46
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %while.end31
  br label %while.end96

if.end37:                                         ; preds = %while.end31
  %47 = load ptr, ptr %ptr.addr, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %48 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %47, i64 %idxprom38
  %49 = load i32, ptr %arrayidx39, align 4
  store i32 %49, ptr %v, align 4
  %50 = load i32, ptr %i, align 4
  store i32 %50, ptr %j, align 4
  br label %while.cond40

while.cond40:                                     ; preds = %if.end59, %if.end37
  %51 = load ptr, ptr %ptr.addr, align 8
  %52 = load i32, ptr %j, align 4
  %53 = load i32, ptr %h, align 4
  %sub41 = sub nsw i32 %52, %53
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %51, i64 %idxprom42
  %54 = load i32, ptr %arrayidx43, align 4
  %55 = load i32, ptr %d.addr, align 4
  %add44 = add i32 %54, %55
  %56 = load i32, ptr %v, align 4
  %57 = load i32, ptr %d.addr, align 4
  %add45 = add i32 %56, %57
  %58 = load ptr, ptr %block.addr, align 8
  %59 = load ptr, ptr %quadrant.addr, align 8
  %60 = load i32, ptr %nblock.addr, align 4
  %61 = load ptr, ptr %budget.addr, align 8
  %call46 = call zeroext i8 @mainGtU(i32 noundef %add44, i32 noundef %add45, ptr noundef %58, ptr noundef %59, i32 noundef %60, ptr noundef %61)
  %tobool47 = icmp ne i8 %call46, 0
  br i1 %tobool47, label %while.body48, label %while.end60

while.body48:                                     ; preds = %while.cond40
  %62 = load ptr, ptr %ptr.addr, align 8
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %h, align 4
  %sub49 = sub nsw i32 %63, %64
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %62, i64 %idxprom50
  %65 = load i32, ptr %arrayidx51, align 4
  %66 = load ptr, ptr %ptr.addr, align 8
  %67 = load i32, ptr %j, align 4
  %idxprom52 = sext i32 %67 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %66, i64 %idxprom52
  store i32 %65, ptr %arrayidx53, align 4
  %68 = load i32, ptr %j, align 4
  %69 = load i32, ptr %h, align 4
  %sub54 = sub nsw i32 %68, %69
  store i32 %sub54, ptr %j, align 4
  %70 = load i32, ptr %j, align 4
  %71 = load i32, ptr %lo.addr, align 4
  %72 = load i32, ptr %h, align 4
  %add55 = add nsw i32 %71, %72
  %sub56 = sub nsw i32 %add55, 1
  %cmp57 = icmp sle i32 %70, %sub56
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %while.body48
  br label %while.end60

if.end59:                                         ; preds = %while.body48
  br label %while.cond40, !llvm.loop !9

while.end60:                                      ; preds = %if.then58, %while.cond40
  %73 = load i32, ptr %v, align 4
  %74 = load ptr, ptr %ptr.addr, align 8
  %75 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %75 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %74, i64 %idxprom61
  store i32 %73, ptr %arrayidx62, align 4
  %76 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %76, 1
  store i32 %inc63, ptr %i, align 4
  %77 = load i32, ptr %i, align 4
  %78 = load i32, ptr %hi.addr, align 4
  %cmp64 = icmp sgt i32 %77, %78
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.end60
  br label %while.end96

if.end66:                                         ; preds = %while.end60
  %79 = load ptr, ptr %ptr.addr, align 8
  %80 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %80 to i64
  %arrayidx68 = getelementptr inbounds i32, ptr %79, i64 %idxprom67
  %81 = load i32, ptr %arrayidx68, align 4
  store i32 %81, ptr %v, align 4
  %82 = load i32, ptr %i, align 4
  store i32 %82, ptr %j, align 4
  br label %while.cond69

while.cond69:                                     ; preds = %if.end88, %if.end66
  %83 = load ptr, ptr %ptr.addr, align 8
  %84 = load i32, ptr %j, align 4
  %85 = load i32, ptr %h, align 4
  %sub70 = sub nsw i32 %84, %85
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %83, i64 %idxprom71
  %86 = load i32, ptr %arrayidx72, align 4
  %87 = load i32, ptr %d.addr, align 4
  %add73 = add i32 %86, %87
  %88 = load i32, ptr %v, align 4
  %89 = load i32, ptr %d.addr, align 4
  %add74 = add i32 %88, %89
  %90 = load ptr, ptr %block.addr, align 8
  %91 = load ptr, ptr %quadrant.addr, align 8
  %92 = load i32, ptr %nblock.addr, align 4
  %93 = load ptr, ptr %budget.addr, align 8
  %call75 = call zeroext i8 @mainGtU(i32 noundef %add73, i32 noundef %add74, ptr noundef %90, ptr noundef %91, i32 noundef %92, ptr noundef %93)
  %tobool76 = icmp ne i8 %call75, 0
  br i1 %tobool76, label %while.body77, label %while.end89

while.body77:                                     ; preds = %while.cond69
  %94 = load ptr, ptr %ptr.addr, align 8
  %95 = load i32, ptr %j, align 4
  %96 = load i32, ptr %h, align 4
  %sub78 = sub nsw i32 %95, %96
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds i32, ptr %94, i64 %idxprom79
  %97 = load i32, ptr %arrayidx80, align 4
  %98 = load ptr, ptr %ptr.addr, align 8
  %99 = load i32, ptr %j, align 4
  %idxprom81 = sext i32 %99 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %98, i64 %idxprom81
  store i32 %97, ptr %arrayidx82, align 4
  %100 = load i32, ptr %j, align 4
  %101 = load i32, ptr %h, align 4
  %sub83 = sub nsw i32 %100, %101
  store i32 %sub83, ptr %j, align 4
  %102 = load i32, ptr %j, align 4
  %103 = load i32, ptr %lo.addr, align 4
  %104 = load i32, ptr %h, align 4
  %add84 = add nsw i32 %103, %104
  %sub85 = sub nsw i32 %add84, 1
  %cmp86 = icmp sle i32 %102, %sub85
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %while.body77
  br label %while.end89

if.end88:                                         ; preds = %while.body77
  br label %while.cond69, !llvm.loop !10

while.end89:                                      ; preds = %if.then87, %while.cond69
  %105 = load i32, ptr %v, align 4
  %106 = load ptr, ptr %ptr.addr, align 8
  %107 = load i32, ptr %j, align 4
  %idxprom90 = sext i32 %107 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %106, i64 %idxprom90
  store i32 %105, ptr %arrayidx91, align 4
  %108 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %108, 1
  store i32 %inc92, ptr %i, align 4
  %109 = load ptr, ptr %budget.addr, align 8
  %110 = load i32, ptr %109, align 4
  %cmp93 = icmp slt i32 %110, 0
  br i1 %cmp93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %while.end89
  br label %for.end

if.end95:                                         ; preds = %while.end89
  br label %while.body7

while.end96:                                      ; preds = %if.then65, %if.then36, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %while.end96
  %111 = load i32, ptr %hp, align 4
  %dec97 = add nsw i32 %111, -1
  store i32 %dec97, ptr %hp, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %if.then94, %for.cond, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @mainGtU(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

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
