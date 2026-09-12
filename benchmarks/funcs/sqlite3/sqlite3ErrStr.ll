; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3ErrStr.aMsg = external hidden constant [29 x ptr], align 16
@.str.1065 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.1066 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1067 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1068 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ErrStr(i32 noundef %rc) #0 {
entry:
  %rc.addr = alloca i32, align 4
  %zErr = alloca ptr, align 8
  store i32 %rc, ptr %rc.addr, align 4
  store ptr @.str.1065, ptr %zErr, align 8
  %0 = load i32, ptr %rc.addr, align 4
  switch i32 %0, label %sw.default [
    i32 516, label %sw.bb
    i32 100, label %sw.bb1
    i32 101, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.1066, ptr %zErr, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str.1067, ptr %zErr, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.1068, ptr %zErr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %1 = load i32, ptr %rc.addr, align 4
  %and = and i32 %1, 255
  store i32 %and, ptr %rc.addr, align 4
  %2 = load i32, ptr %rc.addr, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.default
  %3 = load i32, ptr %rc.addr, align 4
  %cmp3 = icmp slt i32 %3, 29
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %rc.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [29 x ptr], ptr @sqlite3ErrStr.aMsg, i64 0, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %cmp5 = icmp ne ptr %5, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %6 = load i32, ptr %rc.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [29 x ptr], ptr @sqlite3ErrStr.aMsg, i64 0, i64 %idxprom6
  %7 = load ptr, ptr %arrayidx7, align 8
  store ptr %7, ptr %zErr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb2, %sw.bb1, %sw.bb
  %8 = load ptr, ptr %zErr, align 8
  ret ptr %8
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
