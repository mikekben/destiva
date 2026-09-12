; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.960 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local double @ph7_value_to_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBufferFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_round(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %r = alloca double, align 8
  %zBuf = alloca [256 x i8], align 16
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %n, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_int(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp1 = icmp sgt i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @ph7_value_to_int(ptr noundef %4)
  store i32 %call3, ptr %n, align 4
  %5 = load i32, ptr %n, align 4
  %cmp4 = icmp sgt i32 %5, 30
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i32 30, ptr %n, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then2
  %6 = load i32, ptr %n, align 4
  %cmp7 = icmp slt i32 %6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %n, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx11, align 8
  %call12 = call double @ph7_value_to_double(ptr noundef %8)
  store double %call12, ptr %r, align 8
  %9 = load i32, ptr %n, align 4
  %cmp13 = icmp eq i32 %9, 0
  br i1 %cmp13, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end10
  %10 = load double, ptr %r, align 8
  %cmp14 = fcmp oge double %10, 0.000000e+00
  br i1 %cmp14, label %land.lhs.true15, label %if.else

land.lhs.true15:                                  ; preds = %land.lhs.true
  %11 = load double, ptr %r, align 8
  %cmp16 = fcmp olt double %11, 0x43E0000000000000
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %land.lhs.true15
  %12 = load double, ptr %r, align 8
  %add = fadd double %12, 5.000000e-01
  %conv = fptosi double %add to i64
  %conv18 = sitofp i64 %conv to double
  store double %conv18, ptr %r, align 8
  br label %if.end38

if.else:                                          ; preds = %land.lhs.true15, %land.lhs.true, %if.end10
  %13 = load i32, ptr %n, align 4
  %cmp19 = icmp eq i32 %13, 0
  br i1 %cmp19, label %land.lhs.true21, label %if.else33

land.lhs.true21:                                  ; preds = %if.else
  %14 = load double, ptr %r, align 8
  %cmp22 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp22, label %land.lhs.true24, label %if.else33

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %15 = load double, ptr %r, align 8
  %fneg = fneg double %15
  %cmp25 = fcmp olt double %fneg, 0x43E0000000000000
  br i1 %cmp25, label %if.then27, label %if.else33

if.then27:                                        ; preds = %land.lhs.true24
  %16 = load double, ptr %r, align 8
  %fneg28 = fneg double %16
  %add29 = fadd double %fneg28, 5.000000e-01
  %conv30 = fptosi double %add29 to i64
  %conv31 = sitofp i64 %conv30 to double
  %fneg32 = fneg double %conv31
  store double %fneg32, ptr %r, align 8
  br label %if.end37

if.else33:                                        ; preds = %land.lhs.true24, %land.lhs.true21, %if.else
  %arraydecay = getelementptr inbounds [256 x i8], ptr %zBuf, i64 0, i64 0
  %17 = load i32, ptr %n, align 4
  %18 = load double, ptr %r, align 8
  %call34 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay, i32 noundef 256, ptr noundef @.str.960, i32 noundef %17, double noundef %18)
  store i32 %call34, ptr %nLen, align 4
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %zBuf, i64 0, i64 0
  %19 = load i32, ptr %nLen, align 4
  %call36 = call i32 @SyStrToReal(ptr noundef %arraydecay35, i32 noundef %19, ptr noundef %r, ptr noundef null)
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.then27
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then17
  %20 = load ptr, ptr %pCtx.addr, align 8
  %21 = load double, ptr %r, align 8
  %call39 = call i32 @ph7_result_double(ptr noundef %20, double noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToReal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
