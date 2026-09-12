; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @binaryCompareP5(ptr noundef %pExpr1, ptr noundef %pExpr2, i32 noundef %jumpIfNull) #0 {
entry:
  %pExpr1.addr = alloca ptr, align 8
  %pExpr2.addr = alloca ptr, align 8
  %jumpIfNull.addr = alloca i32, align 4
  %aff = alloca i8, align 1
  store ptr %pExpr1, ptr %pExpr1.addr, align 8
  store ptr %pExpr2, ptr %pExpr2.addr, align 8
  store i32 %jumpIfNull, ptr %jumpIfNull.addr, align 4
  %0 = load ptr, ptr %pExpr2.addr, align 8
  %call = call signext i8 @sqlite3ExprAffinity(ptr noundef %0)
  store i8 %call, ptr %aff, align 1
  %1 = load ptr, ptr %pExpr1.addr, align 8
  %2 = load i8, ptr %aff, align 1
  %call1 = call signext i8 @sqlite3CompareAffinity(ptr noundef %1, i8 noundef signext %2)
  %conv = zext i8 %call1 to i32
  %3 = load i32, ptr %jumpIfNull.addr, align 4
  %conv2 = trunc i32 %3 to i8
  %conv3 = zext i8 %conv2 to i32
  %or = or i32 %conv, %conv3
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, ptr %aff, align 1
  %4 = load i8, ptr %aff, align 1
  ret i8 %4
}

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
