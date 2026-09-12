; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.663 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.664 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.665 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.666 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @selectOpName(i32 noundef %id) #0 {
entry:
  %id.addr = alloca i32, align 4
  %z = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  %0 = load i32, ptr %id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 131, label %sw.bb
    i32 133, label %sw.bb1
    i32 132, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  store ptr @.str.663, ptr %z, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store ptr @.str.664, ptr %z, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store ptr @.str.665, ptr %z, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store ptr @.str.666, ptr %z, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %z, align 8
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
