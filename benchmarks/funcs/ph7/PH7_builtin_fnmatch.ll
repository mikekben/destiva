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
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fnmatch(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zPattern = alloca ptr, align 8
  %iEsc = alloca i32, align 4
  %noCase = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 92, ptr %iEsc, align 4
  store i32 0, ptr %noCase, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx6, align 8
  %call7 = call ptr @ph7_value_to_string(ptr noundef %7, ptr noundef null)
  store ptr %call7, ptr %zPattern, align 8
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx8, align 8
  %call9 = call ptr @ph7_value_to_string(ptr noundef %9, ptr noundef null)
  store ptr %call9, ptr %zString, align 8
  %10 = load i32, ptr %nArg.addr, align 4
  %cmp10 = icmp sgt i32 %10, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 @ph7_value_is_int(ptr noundef %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end24

if.then14:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %13, i64 2
  %14 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @ph7_value_to_int(ptr noundef %14)
  store i32 %call16, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %and = and i32 %15, 1
  %tobool17 = icmp ne i32 %and, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then14
  store i32 0, ptr %iEsc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then14
  %16 = load i32, ptr %rc, align 4
  %and20 = and i32 %16, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  store i32 1, ptr %noCase, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true, %if.end
  %17 = load ptr, ptr %zPattern, align 8
  %18 = load ptr, ptr %zString, align 8
  %19 = load i32, ptr %iEsc, align 4
  %20 = load i32, ptr %noCase, align 4
  %call25 = call i32 @Glob(ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20)
  store i32 %call25, ptr %rc, align 4
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load i32, ptr %rc, align 4
  %call26 = call i32 @ph7_result_bool(ptr noundef %21, i32 noundef %22)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @Glob(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
