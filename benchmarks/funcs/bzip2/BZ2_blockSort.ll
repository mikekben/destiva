; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

@stderr = external global ptr, align 8
@.str = external hidden unnamed_addr constant [38 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local void @BZ2_blockSort(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %block = alloca ptr, align 8
  %ftab = alloca ptr, align 8
  %nblock = alloca i32, align 4
  %verb = alloca i32, align 4
  %wfact = alloca i32, align 4
  %quadrant = alloca ptr, align 8
  %budget = alloca i32, align 4
  %budgetInit = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %ptr1 = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %ptr1, align 8
  store ptr %1, ptr %ptr, align 8
  %2 = load ptr, ptr %s.addr, align 8
  %block2 = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 9
  %3 = load ptr, ptr %block2, align 8
  store ptr %3, ptr %block, align 8
  %4 = load ptr, ptr %s.addr, align 8
  %ftab3 = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %ftab3, align 8
  store ptr %5, ptr %ftab, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %nblock4 = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 17
  %7 = load i32, ptr %nblock4, align 4
  store i32 %7, ptr %nblock, align 4
  %8 = load ptr, ptr %s.addr, align 8
  %verbosity = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 28
  %9 = load i32, ptr %verbosity, align 8
  store i32 %9, ptr %verb, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %workFactor = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 12
  %11 = load i32, ptr %workFactor, align 8
  store i32 %11, ptr %wfact, align 4
  %12 = load i32, ptr %nblock, align 4
  %cmp = icmp slt i32 %12, 10000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %s.addr, align 8
  %arr1 = getelementptr inbounds nuw %struct.EState, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %arr1, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %arr2 = getelementptr inbounds nuw %struct.EState, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %arr2, align 8
  %17 = load ptr, ptr %ftab, align 8
  %18 = load i32, ptr %nblock, align 4
  %19 = load i32, ptr %verb, align 4
  call void @fallbackSort(ptr noundef %14, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  br label %if.end33

if.else:                                          ; preds = %entry
  %20 = load i32, ptr %nblock, align 4
  %add = add nsw i32 %20, 34
  store i32 %add, ptr %i, align 4
  %21 = load i32, ptr %i, align 4
  %and = and i32 %21, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %23 = load ptr, ptr %block, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  store ptr %arrayidx, ptr %quadrant, align 8
  %25 = load i32, ptr %wfact, align 4
  %cmp6 = icmp slt i32 %25, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %wfact, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %26 = load i32, ptr %wfact, align 4
  %cmp9 = icmp sgt i32 %26, 100
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  store i32 100, ptr %wfact, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  %27 = load i32, ptr %nblock, align 4
  %28 = load i32, ptr %wfact, align 4
  %sub = sub nsw i32 %28, 1
  %div = sdiv i32 %sub, 3
  %mul = mul nsw i32 %27, %div
  store i32 %mul, ptr %budgetInit, align 4
  %29 = load i32, ptr %budgetInit, align 4
  store i32 %29, ptr %budget, align 4
  %30 = load ptr, ptr %ptr, align 8
  %31 = load ptr, ptr %block, align 8
  %32 = load ptr, ptr %quadrant, align 8
  %33 = load ptr, ptr %ftab, align 8
  %34 = load i32, ptr %nblock, align 4
  %35 = load i32, ptr %verb, align 4
  call void @mainSort(ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %35, ptr noundef %budget)
  %36 = load i32, ptr %verb, align 4
  %cmp12 = icmp sge i32 %36, 3
  br i1 %cmp12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end11
  %37 = load ptr, ptr @stderr, align 8
  %38 = load i32, ptr %budgetInit, align 4
  %39 = load i32, ptr %budget, align 4
  %sub14 = sub nsw i32 %38, %39
  %40 = load i32, ptr %nblock, align 4
  %41 = load i32, ptr %budgetInit, align 4
  %42 = load i32, ptr %budget, align 4
  %sub15 = sub nsw i32 %41, %42
  %conv = sitofp i32 %sub15 to float
  %43 = load i32, ptr %nblock, align 4
  %cmp16 = icmp eq i32 %43, 0
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  br label %cond.end

cond.false:                                       ; preds = %if.then13
  %44 = load i32, ptr %nblock, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %44, %cond.false ]
  %conv18 = sitofp i32 %cond to float
  %div19 = fdiv float %conv, %conv18
  %conv20 = fpext float %div19 to double
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str, i32 noundef %sub14, i32 noundef %40, double noundef %conv20) #2
  br label %if.end21

if.end21:                                         ; preds = %cond.end, %if.end11
  %45 = load i32, ptr %budget, align 4
  %cmp22 = icmp slt i32 %45, 0
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %46 = load i32, ptr %verb, align 4
  %cmp25 = icmp sge i32 %46, 2
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then24
  %47 = load ptr, ptr @stderr, align 8
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.1) #2
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then24
  %48 = load ptr, ptr %s.addr, align 8
  %arr130 = getelementptr inbounds nuw %struct.EState, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %arr130, align 8
  %50 = load ptr, ptr %s.addr, align 8
  %arr231 = getelementptr inbounds nuw %struct.EState, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %arr231, align 8
  %52 = load ptr, ptr %ftab, align 8
  %53 = load i32, ptr %nblock, align 4
  %54 = load i32, ptr %verb, align 4
  call void @fallbackSort(ptr noundef %49, ptr noundef %51, ptr noundef %52, i32 noundef %53, i32 noundef %54)
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end21
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then
  %55 = load ptr, ptr %s.addr, align 8
  %origPtr = getelementptr inbounds nuw %struct.EState, ptr %55, i32 0, i32 7
  store i32 -1, ptr %origPtr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %56 = load i32, ptr %i, align 4
  %57 = load ptr, ptr %s.addr, align 8
  %nblock34 = getelementptr inbounds nuw %struct.EState, ptr %57, i32 0, i32 17
  %58 = load i32, ptr %nblock34, align 4
  %cmp35 = icmp slt i32 %56, %58
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load ptr, ptr %ptr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %60 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %59, i64 %idxprom37
  %61 = load i32, ptr %arrayidx38, align 4
  %cmp39 = icmp eq i32 %61, 0
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body
  %62 = load i32, ptr %i, align 4
  %63 = load ptr, ptr %s.addr, align 8
  %origPtr42 = getelementptr inbounds nuw %struct.EState, ptr %63, i32 0, i32 7
  store i32 %62, ptr %origPtr42, align 8
  br label %for.end

if.end43:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %64 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %64, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then41, %for.cond
  %65 = load ptr, ptr %s.addr, align 8
  %origPtr45 = getelementptr inbounds nuw %struct.EState, ptr %65, i32 0, i32 7
  %66 = load i32, ptr %origPtr45, align 8
  %cmp46 = icmp ne i32 %66, -1
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %for.end
  call void @BZ2_bz__AssertH__fail(i32 noundef 1003)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @fallbackSort(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @mainSort(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
