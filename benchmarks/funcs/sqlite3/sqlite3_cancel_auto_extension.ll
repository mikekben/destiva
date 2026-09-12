; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3AutoExtList = type { i32, ptr }

@sqlite3Autoext = external hidden global { i32, [4 x i8], ptr }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_cancel_auto_extension(ptr noundef %xInit) #0 {
entry:
  %xInit.addr = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %xInit, ptr %xInit.addr, align 8
  %call = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call, ptr %mutex, align 8
  store i32 0, ptr %n, align 4
  %0 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %0)
  %1 = load i32, ptr @sqlite3Autoext, align 8
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %6 = load ptr, ptr %xInit.addr, align 8
  %cmp1 = icmp eq ptr %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr @sqlite3Autoext, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr @sqlite3Autoext, align 8
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %9 = load i32, ptr @sqlite3Autoext, align 8
  %idxprom2 = zext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds nuw ptr, ptr %8, i64 %idxprom2
  %10 = load ptr, ptr %arrayidx3, align 8
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3AutoExtList, ptr @sqlite3Autoext, i32 0, i32 1), align 8
  %12 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %11, i64 %idxprom4
  store ptr %10, ptr %arrayidx5, align 8
  %13 = load i32, ptr %n, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %n, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %dec6 = add nsw i32 %14, -1
  store i32 %dec6, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
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
