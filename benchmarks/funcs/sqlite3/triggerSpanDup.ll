; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbSpanDup(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @triggerSpanDup(ptr noundef %db, ptr noundef %zStart, ptr noundef %zEnd) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zStart.addr, align 8
  %2 = load ptr, ptr %zEnd.addr, align 8
  %call = call ptr @sqlite3DbSpanDup(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %z, align 8
  %3 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %z, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %tobool1 = icmp ne i8 %6, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %z, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 %idxprom2
  %9 = load i8, ptr %arrayidx3, align 1
  %idxprom4 = zext i8 %9 to i64
  %arrayidx5 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom4
  %10 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %11 = load ptr, ptr %z, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 32, ptr %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
  %14 = load ptr, ptr %z, align 8
  ret ptr %14
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
