; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_range(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %iOfft = alloca i64, align 8
  %iLimit = alloca i64, align 8
  %iStep = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 1, ptr %iStep, align 4
  store i64 0, ptr %iLimit, align 8
  store i64 0, ptr %iOfft, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @ph7_value_to_int64(ptr noundef %2)
  store i64 %call, ptr %iOfft, align 8
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i64 @ph7_value_to_int64(ptr noundef %5)
  store i64 %call4, ptr %iLimit, align 8
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %6, 2
  br i1 %cmp5, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.then2
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call8, ptr %iStep, align 4
  %9 = load i32, ptr %iStep, align 4
  %cmp9 = icmp slt i32 %9, 1
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  store i32 1, ptr %iStep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then2
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call ptr @ph7_context_new_scalar(ptr noundef %10)
  store ptr %call14, ptr %pValue, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call ptr @ph7_context_new_array(ptr noundef %11)
  store ptr %call15, ptr %pArray, align 8
  %12 = load ptr, ptr %pArray, align 8
  %cmp16 = icmp eq ptr %12, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %14 = load i64, ptr %iOfft, align 8
  %15 = load i64, ptr %iLimit, align 8
  %cmp20 = icmp sle i64 %14, %15
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pValue, align 8
  %17 = load i64, ptr %iOfft, align 8
  %call21 = call i32 @ph7_value_int64(ptr noundef %16, i64 noundef %17)
  %18 = load ptr, ptr %pArray, align 8
  %19 = load ptr, ptr %pValue, align 8
  %call22 = call i32 @ph7_array_add_elem(ptr noundef %18, ptr noundef null, ptr noundef %19)
  %20 = load i32, ptr %iStep, align 4
  %conv = sext i32 %20 to i64
  %21 = load i64, ptr %iOfft, align 8
  %add = add nsw i64 %21, %conv
  store i64 %add, ptr %iOfft, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %pCtx.addr, align 8
  %23 = load ptr, ptr %pArray, align 8
  %call23 = call i32 @ph7_result_value(ptr noundef %22, ptr noundef %23)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then17
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
