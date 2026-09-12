; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strcasecmp(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %z1 = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 0, i32 1
  store i32 %cond, ptr %res, align 4
  %3 = load ptr, ptr %pCtx.addr, align 8
  %4 = load i32, ptr %res, align 4
  %call = call i32 @ph7_result_int(ptr noundef %3, i32 noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %call2 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %n1)
  store ptr %call2, ptr %z1, align 8
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %8, ptr noundef %n2)
  store ptr %call4, ptr %z2, align 8
  %9 = load ptr, ptr %z1, align 8
  %10 = load ptr, ptr %z2, align 8
  %11 = load i32, ptr %n1, align 4
  %12 = load i32, ptr %n2, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %13 = load i32, ptr %n2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %14 = load i32, ptr %n1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond6 = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  %call7 = call i32 @SyStrnicmp(ptr noundef %9, ptr noundef %10, i32 noundef %cond6)
  store i32 %call7, ptr %res, align 4
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load i32, ptr %res, align 4
  %call8 = call i32 @ph7_result_int(ptr noundef %15, i32 noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
