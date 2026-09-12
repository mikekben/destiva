; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }

@aPragmaName = external hidden constant [63 x { ptr, i8, i8, i8, i8, [4 x i8], i64 }], align 16

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pragmaLocate(ptr noundef %zName) #0 {
entry:
  %zName.addr = alloca ptr, align 8
  %upr = alloca i32, align 4
  %lwr = alloca i32, align 4
  %mid = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zName, ptr %zName.addr, align 8
  store i32 0, ptr %mid, align 4
  store i32 0, ptr %lwr, align 4
  store i32 62, ptr %upr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, ptr %lwr, align 4
  %1 = load i32, ptr %upr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %lwr, align 4
  %3 = load i32, ptr %upr, align 4
  %add = add nsw i32 %2, %3
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %mid, align 4
  %4 = load ptr, ptr %zName.addr, align 8
  %5 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [63 x %struct.PragmaName], ptr @aPragmaName, i64 0, i64 %idxprom
  %zName1 = getelementptr inbounds nuw %struct.PragmaName, ptr %arrayidx, i32 0, i32 0
  %6 = load ptr, ptr %zName1, align 8
  %call = call i32 @sqlite3_stricmp(ptr noundef %4, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load i32, ptr %mid, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %upr, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %mid, align 4
  %add5 = add nsw i32 %10, 1
  store i32 %add5, ptr %lwr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i32, ptr %lwr, align 4
  %12 = load i32, ptr %upr, align 4
  %cmp7 = icmp sgt i32 %11, %12
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %13 = load i32, ptr %mid, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [63 x %struct.PragmaName], ptr @aPragmaName, i64 0, i64 %idxprom8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %arrayidx9, %cond.false ]
  ret ptr %cond
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
