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
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strstr(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %xPatternMatch = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  %zPattern = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %nPatLen = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  %before = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr @SyBlobSearch, ptr %xPatternMatch, align 8
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zBlob, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nPatLen)
  store ptr %call3, ptr %zPattern, align 8
  store i32 0, ptr %nOfft, align 4
  %6 = load i32, ptr %nLen, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else32

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, ptr %nPatLen, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.else32

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %before, align 4
  %8 = load ptr, ptr %xPatternMatch, align 8
  %9 = load ptr, ptr %zBlob, align 8
  %10 = load i32, ptr %nLen, align 4
  %11 = load ptr, ptr %zPattern, align 8
  %12 = load i32, ptr %nPatLen, align 4
  %call7 = call i32 %8(ptr noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %nOfft)
  store i32 %call7, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then6
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %14, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.then6
  %15 = load i32, ptr %nArg.addr, align 4
  %cmp12 = icmp sgt i32 %15, 2
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %16 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @ph7_value_to_int(ptr noundef %17)
  store i32 %call15, ptr %before, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  %18 = load i32, ptr %before, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end16
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %zBlob, align 8
  %21 = load ptr, ptr %zBlob, align 8
  %22 = load i32, ptr %nOfft, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %zBlob, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %call19 = call i32 @ph7_result_string(ptr noundef %19, ptr noundef %20, i32 noundef %conv)
  br label %if.end31

if.else:                                          ; preds = %if.end16
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load ptr, ptr %zBlob, align 8
  %26 = load i32, ptr %nOfft, align 4
  %idxprom20 = zext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom20
  %27 = load ptr, ptr %zBlob, align 8
  %28 = load i32, ptr %nLen, align 4
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %27, i64 %idxprom22
  %29 = load ptr, ptr %zBlob, align 8
  %30 = load i32, ptr %nOfft, align 4
  %idxprom24 = zext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %29, i64 %idxprom24
  %sub.ptr.lhs.cast26 = ptrtoint ptr %arrayidx23 to i64
  %sub.ptr.rhs.cast27 = ptrtoint ptr %arrayidx25 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  %conv29 = trunc i64 %sub.ptr.sub28 to i32
  %call30 = call i32 @ph7_result_string(ptr noundef %24, ptr noundef %arrayidx21, i32 noundef %conv29)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then17
  br label %if.end34

if.else32:                                        ; preds = %land.lhs.true, %if.end
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call33 = call i32 @ph7_result_bool(ptr noundef %31, i32 noundef 0)
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.end31
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then9, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
