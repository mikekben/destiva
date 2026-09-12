; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_str_split(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %split_len = alloca i32, align 4
  %nLen = alloca i32, align 4
  %nMax = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zString, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %split_len, align 4
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp6 = icmp sgt i32 %6, 1
  br i1 %cmp6, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call9, ptr %split_len, align 4
  %9 = load i32, ptr %split_len, align 4
  %cmp10 = icmp slt i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then7
  %11 = load i32, ptr %split_len, align 4
  %12 = load i32, ptr %nLen, align 4
  %cmp14 = icmp sgt i32 %11, %12
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %13 = load i32, ptr %nLen, align 4
  store i32 %13, ptr %split_len, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end5
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call ptr @ph7_context_new_array(ptr noundef %14)
  store ptr %call18, ptr %pArray, align 8
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call ptr @ph7_context_new_scalar(ptr noundef %15)
  store ptr %call19, ptr %pValue, align 8
  %16 = load ptr, ptr %pValue, align 8
  %cmp20 = icmp eq ptr %16, null
  br i1 %cmp20, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end17
  %17 = load ptr, ptr %pArray, align 8
  %cmp21 = icmp eq ptr %17, null
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %lor.lhs.false, %if.end17
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_bool(ptr noundef %18, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %zString, align 8
  %20 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %19, i64 %idxprom
  store ptr %arrayidx25, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end32, %if.end24
  %21 = load ptr, ptr %zString, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp26 = icmp uge ptr %21, %22
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.cond
  br label %for.end

if.end28:                                         ; preds = %for.cond
  %23 = load ptr, ptr %zEnd, align 8
  %24 = load ptr, ptr %zString, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %nMax, align 4
  %25 = load i32, ptr %nMax, align 4
  %26 = load i32, ptr %split_len, align 4
  %cmp29 = icmp slt i32 %25, %26
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  %27 = load i32, ptr %nMax, align 4
  store i32 %27, ptr %split_len, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end28
  %28 = load ptr, ptr %pValue, align 8
  %29 = load ptr, ptr %zString, align 8
  %30 = load i32, ptr %split_len, align 4
  %call33 = call i32 @ph7_value_string(ptr noundef %28, ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr %pArray, align 8
  %32 = load ptr, ptr %pValue, align 8
  %call34 = call i32 @ph7_array_add_elem(ptr noundef %31, ptr noundef null, ptr noundef %32)
  %33 = load ptr, ptr %pValue, align 8
  %call35 = call i32 @ph7_value_reset_string_cursor(ptr noundef %33)
  %34 = load i32, ptr %split_len, align 4
  %35 = load ptr, ptr %zString, align 8
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds i8, ptr %35, i64 %idx.ext
  store ptr %add.ptr, ptr %zString, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then27
  %36 = load ptr, ptr %pCtx.addr, align 8
  %37 = load ptr, ptr %pArray, align 8
  %call36 = call i32 @ph7_result_value(ptr noundef %36, ptr noundef %37)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then22, %if.then11, %if.then3, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
