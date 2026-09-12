; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VListNumToName(ptr noundef %pIn, i32 noundef %iVal) #0 {
entry:
  %retval = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %iVal.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mx = alloca i32, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %iVal, ptr %iVal.addr, align 4
  %0 = load ptr, ptr %pIn.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pIn.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %mx, align 4
  store i32 2, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load ptr, ptr %pIn.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = load i32, ptr %iVal.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %do.body
  %7 = load ptr, ptr %pIn.addr, align 8
  %8 = load i32, ptr %i, align 4
  %add = add nsw i32 %8, 2
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %7, i64 %idxprom4
  store ptr %arrayidx5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %do.body
  %9 = load ptr, ptr %pIn.addr, align 8
  %10 = load i32, ptr %i, align 4
  %add7 = add nsw i32 %10, 1
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %9, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4
  %12 = load i32, ptr %i, align 4
  %add10 = add nsw i32 %12, %11
  store i32 %add10, ptr %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %mx, align 4
  %cmp11 = icmp slt i32 %13, %14
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
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
