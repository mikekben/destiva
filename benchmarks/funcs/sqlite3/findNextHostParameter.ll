; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @findNextHostParameter(ptr noundef %zSql, ptr noundef %pnToken) #0 {
entry:
  %zSql.addr = alloca ptr, align 8
  %pnToken.addr = alloca ptr, align 8
  %tokenType = alloca i32, align 4
  %nTotal = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %zSql, ptr %zSql.addr, align 8
  store ptr %pnToken, ptr %pnToken.addr, align 8
  store i32 0, ptr %nTotal, align 4
  %0 = load ptr, ptr %pnToken.addr, align 8
  store i32 0, ptr %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %zSql.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %zSql.addr, align 8
  %call = call i32 @sqlite3GetToken(ptr noundef %3, ptr noundef %tokenType)
  store i32 %call, ptr %n, align 4
  %4 = load i32, ptr %tokenType, align 4
  %cmp = icmp eq i32 %4, 151
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %n, align 4
  %6 = load ptr, ptr %pnToken.addr, align 8
  store i32 %5, ptr %6, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %7 = load i32, ptr %n, align 4
  %8 = load i32, ptr %nTotal, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %nTotal, align 4
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %zSql.addr, align 8
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %10, i64 %idx.ext
  store ptr %add.ptr, ptr %zSql.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i32, ptr %nTotal, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetToken(ptr noundef, ptr noundef) #0

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
