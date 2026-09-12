; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3AddInt64(ptr noundef %pA, i64 noundef %iB) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %iB.addr = alloca i64, align 8
  %iA = alloca i64, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store i64 %iB, ptr %iB.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %iA, align 8
  %2 = load i64, ptr %iB.addr, align 8
  %cmp = icmp sge i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %iA, align 8
  %cmp1 = icmp sgt i64 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i64, ptr %iA, align 8
  %sub = sub nsw i64 9223372036854775807, %4
  %5 = load i64, ptr %iB.addr, align 8
  %cmp2 = icmp slt i64 %sub, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end11

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %iA, align 8
  %cmp4 = icmp slt i64 %6, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end10

land.lhs.true5:                                   ; preds = %if.else
  %7 = load i64, ptr %iA, align 8
  %add = add nsw i64 %7, 9223372036854775807
  %sub6 = sub nsw i64 0, %add
  %8 = load i64, ptr %iB.addr, align 8
  %add7 = add nsw i64 %8, 1
  %cmp8 = icmp sgt i64 %sub6, %add7
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true5
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true5, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %9 = load i64, ptr %iB.addr, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %11 = load i64, ptr %10, align 8
  %add12 = add nsw i64 %11, %9
  store i64 %add12, ptr %10, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then9, %if.then3
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
