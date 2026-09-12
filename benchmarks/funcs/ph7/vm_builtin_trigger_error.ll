; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.534 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_trigger_error(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %nErr = alloca i32, align 4
  %rc = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 3, ptr %nErr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @ph7_value_to_string(ptr noundef %2, ptr noundef %nLen)
  store ptr %call, ptr %zErr, align 8
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_to_int(ptr noundef %5)
  store i32 %call4, ptr %nErr, align 4
  %6 = load i32, ptr %nErr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 16, label %sw.bb
    i32 64, label %sw.bb
    i32 256, label %sw.bb
    i32 2, label %sw.bb5
    i32 32, label %sw.bb5
    i32 123, label %sw.bb5
    i32 512, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then2, %if.then2, %if.then2, %if.then2
  store i32 1, ptr %nErr, align 4
  store i32 -10, ptr %rc, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then2, %if.then2, %if.then2, %if.then2
  store i32 2, ptr %nErr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then2
  store i32 3, ptr %nErr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %7 = load ptr, ptr %pCtx.addr, align 8
  %8 = load i32, ptr %nErr, align 4
  %9 = load i32, ptr %nLen, align 4
  %10 = load ptr, ptr %zErr, align 8
  %call6 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %7, i32 noundef %8, ptr noundef @.str.534, i32 noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 1)
  br label %if.end9

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_result_bool(ptr noundef %12, i32 noundef 0)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
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
