; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_intkey_elem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_fill(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %i = alloca i32, align 4
  %nEntry = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call ptr @ph7_context_new_array(ptr noundef %2)
  store ptr %call1, ptr %pArray, align 8
  %3 = load ptr, ptr %pArray, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_null(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx, align 8
  %call6 = call i32 @ph7_value_to_int(ptr noundef %6)
  store i32 %call6, ptr %nEntry, align 4
  %7 = load ptr, ptr %pArray, align 8
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %9)
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @ph7_array_add_intkey_elem(ptr noundef %7, i32 noundef %call8, ptr noundef %11)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %nEntry, align 4
  %cmp11 = icmp slt i32 %12, %13
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pArray, align 8
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %15, i64 2
  %16 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @ph7_array_add_elem(ptr noundef %14, ptr noundef null, ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load ptr, ptr %pArray, align 8
  %call14 = call i32 @ph7_result_value(ptr noundef %18, ptr noundef %19)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
