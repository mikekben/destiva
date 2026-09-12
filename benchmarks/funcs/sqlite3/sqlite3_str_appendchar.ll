; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_str_appendchar(ptr noundef %p, i32 noundef %N, i8 noundef signext %c) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i8 %c, ptr %c.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %nChar, align 8
  %conv = zext i32 %1 to i64
  %2 = load i32, ptr %N.addr, align 4
  %conv1 = sext i32 %2 to i64
  %add = add nsw i64 %conv, %conv1
  %3 = load ptr, ptr %p.addr, align 8
  %nAlloc = getelementptr inbounds nuw %struct.sqlite3_str, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %nAlloc, align 8
  %conv2 = zext i32 %4 to i64
  %cmp = icmp sge i64 %add, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load i32, ptr %N.addr, align 4
  %call = call i32 @sqlite3StrAccumEnlarge(ptr noundef %5, i32 noundef %6)
  store i32 %call, ptr %N.addr, align 4
  %cmp4 = icmp sle i32 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %N.addr, align 4
  %cmp6 = icmp sgt i32 %7, 0
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8, ptr %c.addr, align 1
  %9 = load ptr, ptr %p.addr, align 8
  %zText = getelementptr inbounds nuw %struct.sqlite3_str, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %zText, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %nChar8 = getelementptr inbounds nuw %struct.sqlite3_str, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %nChar8, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %nChar8, align 8
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %10, i64 %idxprom
  store i8 %8, ptr %arrayidx, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrAccumEnlarge(ptr noundef, i32 noundef) #0

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
