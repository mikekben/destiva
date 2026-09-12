; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strpos(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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
  %nStart = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
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
  store i32 0, ptr %nStart, align 4
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %6, 2
  br i1 %cmp4, label %if.then5, label %if.end15

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 2
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call7, ptr %nStart, align 4
  %9 = load i32, ptr %nStart, align 4
  %cmp8 = icmp slt i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then5
  %10 = load i32, ptr %nStart, align 4
  %sub = sub nsw i32 0, %10
  store i32 %sub, ptr %nStart, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then5
  %11 = load i32, ptr %nStart, align 4
  %12 = load i32, ptr %nLen, align 4
  %cmp11 = icmp sge i32 %11, %12
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  store i32 0, ptr %nStart, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end10
  %13 = load i32, ptr %nStart, align 4
  %14 = load ptr, ptr %zBlob, align 8
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %zBlob, align 8
  %15 = load i32, ptr %nStart, align 4
  %16 = load i32, ptr %nLen, align 4
  %sub13 = sub nsw i32 %16, %15
  store i32 %sub13, ptr %nLen, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  %17 = load i32, ptr %nLen, align 4
  %cmp16 = icmp sgt i32 %17, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else25

land.lhs.true:                                    ; preds = %if.end15
  %18 = load i32, ptr %nPatLen, align 4
  %cmp17 = icmp sgt i32 %18, 0
  br i1 %cmp17, label %if.then18, label %if.else25

if.then18:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %xPatternMatch, align 8
  %20 = load ptr, ptr %zBlob, align 8
  %21 = load i32, ptr %nLen, align 4
  %22 = load ptr, ptr %zPattern, align 8
  %23 = load i32, ptr %nPatLen, align 4
  %call19 = call i32 %19(ptr noundef %20, i32 noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %nOfft)
  store i32 %call19, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp20 = icmp ne i32 %24, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then18
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call22 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.then18
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load i32, ptr %nOfft, align 4
  %28 = load i32, ptr %nStart, align 4
  %add = add i32 %27, %28
  %conv = zext i32 %add to i64
  %call24 = call i32 @ph7_result_int64(ptr noundef %26, i64 noundef %conv)
  br label %if.end27

if.else25:                                        ; preds = %land.lhs.true, %if.end15
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call i32 @ph7_result_bool(ptr noundef %29, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then21, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
