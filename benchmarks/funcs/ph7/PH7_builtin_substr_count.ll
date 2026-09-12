; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_substr_count(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zText = alloca ptr, align 8
  %zPattern = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nTextlen = alloca i32, align 4
  %nPatlen = alloca i32, align 4
  %iCount = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  %nOfft13 = alloca i32, align 4
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %iCount, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_int(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nTextlen)
  store ptr %call1, ptr %zText, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nPatlen)
  store ptr %call3, ptr %zPattern, align 8
  %6 = load i32, ptr %nTextlen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, ptr %nPatlen, align 4
  %cmp5 = icmp slt i32 %7, 1
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %nPatlen, align 4
  %9 = load i32, ptr %nTextlen, align 4
  %cmp7 = icmp sgt i32 %8, %9
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false6, %lor.lhs.false, %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_int(ptr noundef %10, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false6
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %11, 2
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %if.end10
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @ph7_value_to_int(ptr noundef %13)
  store i32 %call15, ptr %nOfft13, align 4
  %14 = load i32, ptr %nOfft13, align 4
  %cmp16 = icmp slt i32 %14, 0
  br i1 %cmp16, label %if.then19, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then12
  %15 = load i32, ptr %nOfft13, align 4
  %16 = load i32, ptr %nTextlen, align 4
  %cmp18 = icmp sgt i32 %15, %16
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %lor.lhs.false17, %if.then12
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_int(ptr noundef %17, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false17
  %18 = load ptr, ptr %zText, align 8
  %19 = load i32, ptr %nOfft13, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %18, i64 %idxprom
  store ptr %arrayidx22, ptr %zText, align 8
  %20 = load i32, ptr %nOfft13, align 4
  %21 = load i32, ptr %nTextlen, align 4
  %sub = sub nsw i32 %21, %20
  store i32 %sub, ptr %nTextlen, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end10
  %22 = load ptr, ptr %zText, align 8
  %23 = load i32, ptr %nTextlen, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %22, i64 %idxprom24
  store ptr %arrayidx25, ptr %zEnd, align 8
  %24 = load i32, ptr %nArg.addr, align 4
  %cmp26 = icmp sgt i32 %24, 3
  br i1 %cmp26, label %if.then27, label %if.end38

if.then27:                                        ; preds = %if.end23
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %25, i64 3
  %26 = load ptr, ptr %arrayidx28, align 8
  %call29 = call i32 @ph7_value_to_int(ptr noundef %26)
  store i32 %call29, ptr %nLen, align 4
  %27 = load i32, ptr %nLen, align 4
  %cmp30 = icmp slt i32 %27, 0
  br i1 %cmp30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then27
  %28 = load i32, ptr %nLen, align 4
  %29 = load i32, ptr %nTextlen, align 4
  %cmp32 = icmp sgt i32 %28, %29
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false31, %if.then27
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call34 = call i32 @ph7_result_int(ptr noundef %30, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false31
  %31 = load i32, ptr %nLen, align 4
  store i32 %31, ptr %nTextlen, align 4
  %32 = load ptr, ptr %zText, align 8
  %33 = load i32, ptr %nTextlen, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %32, i64 %idxprom36
  store ptr %arrayidx37, ptr %zEnd, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %if.end23
  br label %for.cond

for.cond:                                         ; preds = %if.end47, %if.end38
  %34 = load ptr, ptr %zText, align 8
  %35 = load ptr, ptr %zEnd, align 8
  %36 = load ptr, ptr %zText, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %37 = load ptr, ptr %zPattern, align 8
  %38 = load i32, ptr %nPatlen, align 4
  %call39 = call i32 @SyBlobSearch(ptr noundef %34, i32 noundef %conv, ptr noundef %37, i32 noundef %38, ptr noundef %nOfft)
  store i32 %call39, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp40 = icmp ne i32 %39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.cond
  br label %for.end

if.end43:                                         ; preds = %for.cond
  %40 = load i32, ptr %iCount, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %iCount, align 4
  %41 = load i32, ptr %nOfft, align 4
  %42 = load i32, ptr %nPatlen, align 4
  %add = add i32 %41, %42
  %43 = load ptr, ptr %zText, align 8
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %43, i64 %idx.ext
  store ptr %add.ptr, ptr %zText, align 8
  %44 = load ptr, ptr %zText, align 8
  %45 = load ptr, ptr %zEnd, align 8
  %cmp44 = icmp uge ptr %44, %45
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  br label %for.end

if.end47:                                         ; preds = %if.end43
  br label %for.cond

for.end:                                          ; preds = %if.then46, %if.then42
  %46 = load ptr, ptr %pCtx.addr, align 8
  %47 = load i32, ptr %iCount, align 4
  %call48 = call i32 @ph7_result_int(ptr noundef %46, i32 noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then33, %if.then19, %if.then8, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
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
