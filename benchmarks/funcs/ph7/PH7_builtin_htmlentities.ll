; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@azHtmlEscape = external hidden global [40 x ptr], align 16

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_htmlentities(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %c = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 1, ptr %iFlags, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call3, ptr %zIn, align 8
  %6 = load ptr, ptr %zIn, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx4, ptr %zEnd, align 8
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %8, 1
  br i1 %cmp5, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %10)
  store i32 %call8, ptr %iFlags, align 4
  %11 = load i32, ptr %iFlags, align 4
  %cmp9 = icmp slt i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then6
  store i32 1, ptr %iFlags, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end58, %if.end12
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp uge ptr %12, %13
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.cond
  br label %for.end59

if.end15:                                         ; preds = %for.cond
  %14 = load ptr, ptr %zIn, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx16, align 1
  %conv = sext i8 %15 to i32
  store i32 %conv, ptr %c, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.end15
  %16 = load i32, ptr %n, align 4
  %conv18 = zext i32 %16 to i64
  %cmp19 = icmp ult i64 %conv18, 40
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond17
  %17 = load i32, ptr %n, align 4
  %add = add i32 %17, 1
  %idxprom21 = zext i32 %add to i64
  %arrayidx22 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom21
  %18 = load ptr, ptr %arrayidx22, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %19 to i32
  %20 = load i32, ptr %c, align 4
  %cmp25 = icmp eq i32 %conv24, %20
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %for.end

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %21 = load i32, ptr %n, align 4
  %add29 = add i32 %21, 2
  store i32 %add29, ptr %n, align 4
  br label %for.cond17, !llvm.loop !6

for.end:                                          ; preds = %if.then27, %for.cond17
  %22 = load i32, ptr %n, align 4
  %conv30 = zext i32 %22 to i64
  %cmp31 = icmp ult i64 %conv30, 40
  br i1 %cmp31, label %if.then33, label %if.else56

if.then33:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4
  %cmp34 = icmp eq i32 %23, 34
  br i1 %cmp34, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then33
  %24 = load i32, ptr %iFlags, align 4
  %and = and i32 %24, 4
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.then37, label %if.else

if.then37:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call38 = call i32 @ph7_result_string(ptr noundef %25, ptr noundef %c, i32 noundef 1)
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true, %if.then33
  %26 = load i32, ptr %c, align 4
  %cmp39 = icmp eq i32 %26, 39
  br i1 %cmp39, label %land.lhs.true41, label %if.else50

land.lhs.true41:                                  ; preds = %if.else
  %27 = load i32, ptr %iFlags, align 4
  %and42 = and i32 %27, 2
  %cmp43 = icmp eq i32 %and42, 0
  br i1 %cmp43, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %land.lhs.true41
  %28 = load i32, ptr %iFlags, align 4
  %and46 = and i32 %28, 4
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %lor.lhs.false45, %land.lhs.true41
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call49 = call i32 @ph7_result_string(ptr noundef %29, ptr noundef %c, i32 noundef 1)
  br label %if.end54

if.else50:                                        ; preds = %lor.lhs.false45, %if.else
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load i32, ptr %n, align 4
  %idxprom51 = zext i32 %31 to i64
  %arrayidx52 = getelementptr inbounds nuw [40 x ptr], ptr @azHtmlEscape, i64 0, i64 %idxprom51
  %32 = load ptr, ptr %arrayidx52, align 8
  %call53 = call i32 @ph7_result_string(ptr noundef %30, ptr noundef %32, i32 noundef -1)
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %if.then48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then37
  br label %if.end58

if.else56:                                        ; preds = %for.end
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call57 = call i32 @ph7_result_string(ptr noundef %33, ptr noundef %c, i32 noundef 1)
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.end55
  %34 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %for.cond

for.end59:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end59, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
