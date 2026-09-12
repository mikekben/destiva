; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_substr(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zSource = alloca ptr, align 8
  %zOfft = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  %nLen = alloca i32, align 4
  %nSrcLen = alloca i32, align 4
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nSrcLen)
  store ptr %call1, ptr %zSource, align 8
  %4 = load i32, ptr %nSrcLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nSrcLen, align 4
  store i32 %6, ptr %nLen, align 4
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call7, ptr %nOfft, align 4
  %9 = load i32, ptr %nOfft, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end5
  %10 = load ptr, ptr %zSource, align 8
  %11 = load i32, ptr %nSrcLen, align 4
  %12 = load i32, ptr %nOfft, align 4
  %add = add nsw i32 %11, %12
  %idxprom = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 %idxprom
  store ptr %arrayidx10, ptr %zOfft, align 8
  %13 = load ptr, ptr %zOfft, align 8
  %14 = load ptr, ptr %zSource, align 8
  %cmp11 = icmp ult ptr %13, %14
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_bool(ptr noundef %15, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then9
  %16 = load ptr, ptr %zSource, align 8
  %17 = load i32, ptr %nSrcLen, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 %idxprom15
  %18 = load ptr, ptr %zOfft, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %nLen, align 4
  %19 = load ptr, ptr %zOfft, align 8
  %20 = load ptr, ptr %zSource, align 8
  %sub.ptr.lhs.cast17 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast18 = ptrtoint ptr %20 to i64
  %sub.ptr.sub19 = sub i64 %sub.ptr.lhs.cast17, %sub.ptr.rhs.cast18
  %conv20 = trunc i64 %sub.ptr.sub19 to i32
  store i32 %conv20, ptr %nOfft, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end5
  %21 = load i32, ptr %nOfft, align 4
  %22 = load i32, ptr %nSrcLen, align 4
  %cmp21 = icmp sge i32 %21, %22
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.else
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call24 = call i32 @ph7_result_bool(ptr noundef %23, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else25:                                        ; preds = %if.else
  %24 = load ptr, ptr %zSource, align 8
  %25 = load i32, ptr %nOfft, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 %idxprom26
  store ptr %arrayidx27, ptr %zOfft, align 8
  %26 = load i32, ptr %nSrcLen, align 4
  %27 = load i32, ptr %nOfft, align 4
  %sub = sub nsw i32 %26, %27
  store i32 %sub, ptr %nLen, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end14
  %28 = load i32, ptr %nArg.addr, align 4
  %cmp30 = icmp sgt i32 %28, 2
  br i1 %cmp30, label %if.then32, label %if.end58

if.then32:                                        ; preds = %if.end29
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %29, i64 2
  %30 = load ptr, ptr %arrayidx33, align 8
  %call34 = call i32 @ph7_value_to_int(ptr noundef %30)
  store i32 %call34, ptr %nLen, align 4
  %31 = load i32, ptr %nLen, align 4
  %cmp35 = icmp eq i32 %31, 0
  br i1 %cmp35, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.then32
  %32 = load ptr, ptr %pCtx.addr, align 8
  %call38 = call i32 @ph7_result_string(ptr noundef %32, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else39:                                        ; preds = %if.then32
  %33 = load i32, ptr %nLen, align 4
  %cmp40 = icmp slt i32 %33, 0
  br i1 %cmp40, label %if.then42, label %if.end50

if.then42:                                        ; preds = %if.else39
  %34 = load i32, ptr %nSrcLen, align 4
  %35 = load i32, ptr %nLen, align 4
  %add43 = add nsw i32 %34, %35
  %36 = load i32, ptr %nOfft, align 4
  %sub44 = sub nsw i32 %add43, %36
  store i32 %sub44, ptr %nLen, align 4
  %37 = load i32, ptr %nLen, align 4
  %cmp45 = icmp slt i32 %37, 1
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.then42
  %38 = load i32, ptr %nSrcLen, align 4
  %39 = load i32, ptr %nOfft, align 4
  %sub48 = sub nsw i32 %38, %39
  store i32 %sub48, ptr %nLen, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.then42
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.else39
  br label %if.end51

if.end51:                                         ; preds = %if.end50
  %40 = load i32, ptr %nLen, align 4
  %41 = load i32, ptr %nOfft, align 4
  %add52 = add nsw i32 %40, %41
  %42 = load i32, ptr %nSrcLen, align 4
  %cmp53 = icmp sgt i32 %add52, %42
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end51
  %43 = load i32, ptr %nSrcLen, align 4
  %44 = load i32, ptr %nOfft, align 4
  %sub56 = sub nsw i32 %43, %44
  store i32 %sub56, ptr %nLen, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end29
  %45 = load ptr, ptr %pCtx.addr, align 8
  %46 = load ptr, ptr %zOfft, align 8
  %47 = load i32, ptr %nLen, align 4
  %call59 = call i32 @ph7_result_string(ptr noundef %45, ptr noundef %46, i32 noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then37, %if.then23, %if.then12, %if.then3, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
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
