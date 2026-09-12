; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i32 @valueBytes(ptr noundef %pVal, i8 noundef zeroext %enc) #0 {
entry:
  %pVal.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  store ptr %pVal, ptr %pVal.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load ptr, ptr %pVal.addr, align 8
  %1 = load i8, ptr %enc.addr, align 1
  %call = call ptr @valueToText(ptr noundef %0, i8 noundef zeroext %1)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pVal.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %n, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
declare hidden ptr @valueToText(ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
