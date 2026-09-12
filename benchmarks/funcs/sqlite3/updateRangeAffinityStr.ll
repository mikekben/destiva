; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VectorFieldSubexpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden void @updateRangeAffinityStr(ptr noundef %pRight, i32 noundef %n, ptr noundef %zAff) #0 {
entry:
  %pRight.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %zAff.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %zAff, ptr %zAff.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %pRight.addr, align 8
  %3 = load i32, ptr %i, align 4
  %call = call ptr @sqlite3VectorFieldSubexpr(ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %zAff.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %call1 = call signext i8 @sqlite3CompareAffinity(ptr noundef %4, i8 noundef signext %7)
  %conv = sext i8 %call1 to i32
  %cmp2 = icmp eq i32 %conv, 65
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load ptr, ptr %p, align 8
  %9 = load ptr, ptr %zAff.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 %idxprom4
  %11 = load i8, ptr %arrayidx5, align 1
  %call6 = call i32 @sqlite3ExprNeedsNoAffinityChange(ptr noundef %8, i8 noundef signext %11)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %12 = load ptr, ptr %zAff.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %12, i64 %idxprom7
  store i8 65, ptr %arrayidx8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprNeedsNoAffinityChange(ptr noundef, i8 noundef signext) #0

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
