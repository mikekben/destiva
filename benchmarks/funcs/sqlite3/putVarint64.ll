; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @putVarint64(ptr noundef %p, i64 noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %v.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %buf = alloca [10 x i8], align 1
  store ptr %p, ptr %p.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %v.addr, align 8
  %and = and i64 %0, -72057594037927936
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %v.addr, align 8
  %conv = trunc i64 %1 to i8
  %2 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 8
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i64, ptr %v.addr, align 8
  %shr = lshr i64 %3, 8
  store i64 %shr, ptr %v.addr, align 8
  store i32 7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %v.addr, align 8
  %and2 = and i64 %5, 127
  %or = or i64 %and2, 128
  %conv3 = trunc i64 %or to i8
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv3, ptr %arrayidx4, align 1
  %8 = load i64, ptr %v.addr, align 8
  %shr5 = lshr i64 %8, 7
  store i64 %shr5, ptr %v.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %n, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %10 = load i64, ptr %v.addr, align 8
  %and6 = and i64 %10, 127
  %or7 = or i64 %and6, 128
  %conv8 = trunc i64 %or7 to i8
  %11 = load i32, ptr %n, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %n, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 %idxprom9
  store i8 %conv8, ptr %arrayidx10, align 1
  %12 = load i64, ptr %v.addr, align 8
  %shr11 = lshr i64 %12, 7
  store i64 %shr11, ptr %v.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i64, ptr %v.addr, align 8
  %cmp12 = icmp ne i64 %13, 0
  br i1 %cmp12, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  %arrayidx14 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 0
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i32
  %and16 = and i32 %conv15, 127
  %conv17 = trunc i32 %and16 to i8
  store i8 %conv17, ptr %arrayidx14, align 1
  store i32 0, ptr %i, align 4
  %15 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %do.end
  %16 = load i32, ptr %j, align 4
  %cmp19 = icmp sge i32 %16, 0
  br i1 %cmp19, label %for.body21, label %for.end29

for.body21:                                       ; preds = %for.cond18
  %17 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds [10 x i8], ptr %buf, i64 0, i64 %idxprom22
  %18 = load i8, ptr %arrayidx23, align 1
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %19, i64 %idxprom24
  store i8 %18, ptr %arrayidx25, align 1
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %21 = load i32, ptr %j, align 4
  %dec27 = add nsw i32 %21, -1
  store i32 %dec27, ptr %j, align 4
  %22 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond18, !llvm.loop !9

for.end29:                                        ; preds = %for.cond18
  %23 = load i32, ptr %n, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end29, %for.end
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
