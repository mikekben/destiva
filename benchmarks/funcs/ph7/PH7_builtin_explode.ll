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
declare dso_local i32 @ph7_array_count(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_explode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zDelim = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nDelim = alloca i32, align 4
  %nStrlen = alloca i32, align 4
  %iLimit = alloca i32, align 4
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nDelim)
  store ptr %call1, ptr %zDelim, align 8
  %4 = load i32, ptr %nDelim, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx6, align 8
  %call7 = call ptr @ph7_value_to_string(ptr noundef %7, ptr noundef %nStrlen)
  store ptr %call7, ptr %zString, align 8
  %8 = load i32, ptr %nStrlen, align 4
  %cmp8 = icmp slt i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %9, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %10 = load ptr, ptr %zString, align 8
  %11 = load i32, ptr %nStrlen, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store ptr %arrayidx12, ptr %zEnd, align 8
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call ptr @ph7_context_new_array(ptr noundef %12)
  store ptr %call13, ptr %pArray, align 8
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call ptr @ph7_context_new_scalar(ptr noundef %13)
  store ptr %call14, ptr %pValue, align 8
  %14 = load ptr, ptr %pArray, align 8
  %cmp15 = icmp eq ptr %14, null
  br i1 %cmp15, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %15 = load ptr, ptr %pValue, align 8
  %cmp16 = icmp eq ptr %15, null
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %lor.lhs.false, %if.end11
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  store i32 2147483647, ptr %iLimit, align 4
  %17 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp sgt i32 %17, 2
  br i1 %cmp20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end19
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %18, i64 2
  %19 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i32 @ph7_value_to_int(ptr noundef %19)
  store i32 %call23, ptr %iLimit, align 4
  %20 = load i32, ptr %iLimit, align 4
  %cmp24 = icmp slt i32 %20, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  %21 = load i32, ptr %iLimit, align 4
  %sub = sub nsw i32 0, %21
  store i32 %sub, ptr %iLimit, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then21
  %22 = load i32, ptr %iLimit, align 4
  %cmp27 = icmp eq i32 %22, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  store i32 1, ptr %iLimit, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %23 = load i32, ptr %iLimit, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %iLimit, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end19
  br label %for.cond

for.cond:                                         ; preds = %if.end64, %if.end30
  %24 = load ptr, ptr %zString, align 8
  %25 = load ptr, ptr %zEnd, align 8
  %cmp31 = icmp uge ptr %24, %25
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.cond
  br label %for.end

if.end33:                                         ; preds = %for.cond
  %26 = load ptr, ptr %zString, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %28 = load ptr, ptr %zString, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %29 = load ptr, ptr %zDelim, align 8
  %30 = load i32, ptr %nDelim, align 4
  %call34 = call i32 @SyBlobSearch(ptr noundef %26, i32 noundef %conv, ptr noundef %29, i32 noundef %30, ptr noundef %nOfft)
  store i32 %call34, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp35 = icmp ne i32 %31, 0
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.end33
  %32 = load i32, ptr %iLimit, align 4
  %33 = load ptr, ptr %pArray, align 8
  %call38 = call i32 @ph7_array_count(ptr noundef %33)
  %cmp39 = icmp sle i32 %32, %call38
  br i1 %cmp39, label %if.then41, label %if.end52

if.then41:                                        ; preds = %lor.lhs.false37, %if.end33
  %34 = load ptr, ptr %zEnd, align 8
  %35 = load ptr, ptr %zString, align 8
  %cmp42 = icmp ugt ptr %34, %35
  br i1 %cmp42, label %if.then44, label %if.end51

if.then44:                                        ; preds = %if.then41
  %36 = load ptr, ptr %pValue, align 8
  %37 = load ptr, ptr %zString, align 8
  %38 = load ptr, ptr %zEnd, align 8
  %39 = load ptr, ptr %zString, align 8
  %sub.ptr.lhs.cast45 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast46 = ptrtoint ptr %39 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %conv48 = trunc i64 %sub.ptr.sub47 to i32
  %call49 = call i32 @ph7_value_string(ptr noundef %36, ptr noundef %37, i32 noundef %conv48)
  %40 = load ptr, ptr %pArray, align 8
  %41 = load ptr, ptr %pValue, align 8
  %call50 = call i32 @ph7_array_add_elem(ptr noundef %40, ptr noundef null, ptr noundef %41)
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.then41
  br label %for.end

if.end52:                                         ; preds = %lor.lhs.false37
  %42 = load ptr, ptr %zString, align 8
  %43 = load i32, ptr %nOfft, align 4
  %idxprom53 = zext i32 %43 to i64
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %42, i64 %idxprom53
  store ptr %arrayidx54, ptr %zCur, align 8
  %44 = load ptr, ptr %zCur, align 8
  %45 = load ptr, ptr %zString, align 8
  %cmp55 = icmp ugt ptr %44, %45
  br i1 %cmp55, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.end52
  %46 = load ptr, ptr %pValue, align 8
  %47 = load ptr, ptr %zString, align 8
  %48 = load ptr, ptr %zCur, align 8
  %49 = load ptr, ptr %zString, align 8
  %sub.ptr.lhs.cast58 = ptrtoint ptr %48 to i64
  %sub.ptr.rhs.cast59 = ptrtoint ptr %49 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  %conv61 = trunc i64 %sub.ptr.sub60 to i32
  %call62 = call i32 @ph7_value_string(ptr noundef %46, ptr noundef %47, i32 noundef %conv61)
  %50 = load ptr, ptr %pArray, align 8
  %51 = load ptr, ptr %pValue, align 8
  %call63 = call i32 @ph7_array_add_elem(ptr noundef %50, ptr noundef null, ptr noundef %51)
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end52
  %52 = load ptr, ptr %zCur, align 8
  %53 = load i32, ptr %nDelim, align 4
  %idxprom65 = sext i32 %53 to i64
  %arrayidx66 = getelementptr inbounds i8, ptr %52, i64 %idxprom65
  store ptr %arrayidx66, ptr %zString, align 8
  %54 = load ptr, ptr %pValue, align 8
  %call67 = call i32 @ph7_value_reset_string_cursor(ptr noundef %54)
  br label %for.cond

for.end:                                          ; preds = %if.end51, %if.then32
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load ptr, ptr %pArray, align 8
  %call68 = call i32 @ph7_result_value(ptr noundef %55, ptr noundef %56)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then17, %if.then9, %if.then3, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobSearch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
