; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ValueFromExpr(ptr noundef %db, ptr noundef %pExpr, i8 noundef zeroext %enc, i8 noundef zeroext %affinity, ptr noundef %ppVal) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %affinity.addr = alloca i8, align 1
  %ppVal.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store i8 %affinity, ptr %affinity.addr, align 1
  store ptr %ppVal, ptr %ppVal.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %3 = load i8, ptr %enc.addr, align 1
  %4 = load i8, ptr %affinity.addr, align 1
  %5 = load ptr, ptr %ppVal.addr, align 8
  %call = call i32 @valueFromExpr(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5, ptr noundef null)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
declare hidden i32 @valueFromExpr(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
