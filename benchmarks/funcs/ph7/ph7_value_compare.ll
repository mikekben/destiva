; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_value_compare(ptr noundef %pLeft, ptr noundef %pRight, i32 noundef %bStrict) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  %0 = load ptr, ptr %pLeft.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pRight.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %pLeft.addr, align 8
  %3 = load ptr, ptr %pRight.addr, align 8
  %4 = load i32, ptr %bStrict.addr, align 4
  %call = call i32 @PH7_MemObjCmp(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
