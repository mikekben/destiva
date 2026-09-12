; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.866 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.867 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.868 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.869 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.870 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @actionName(i8 noundef zeroext %action) #0 {
entry:
  %action.addr = alloca i8, align 1
  %zName = alloca ptr, align 8
  store i8 %action, ptr %action.addr, align 1
  %0 = load i8, ptr %action.addr, align 1
  %conv = zext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb1
    i32 10, label %sw.bb2
    i32 7, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.866, ptr %zName, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str.867, ptr %zName, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.868, ptr %zName, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store ptr @.str.869, ptr %zName, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store ptr @.str.870, ptr %zName, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %zName, align 8
  ret ptr %1
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
