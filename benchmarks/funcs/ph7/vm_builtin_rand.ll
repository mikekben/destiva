; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRandomNum(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_rand(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %iNum = alloca i32, align 4
  %iMin = alloca i32, align 4
  %iMax = alloca i32, align 4
  %iDiv = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmRandomNum(ptr noundef %1)
  store i32 %call, ptr %iNum, align 4
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_to_int(ptr noundef %4)
  store i32 %call1, ptr %iMin, align 4
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_to_int(ptr noundef %6)
  store i32 %call3, ptr %iMax, align 4
  %7 = load i32, ptr %iMin, align 4
  %8 = load i32, ptr %iMax, align 4
  %cmp4 = icmp ult i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %9 = load i32, ptr %iMax, align 4
  %add = add i32 %9, 1
  %10 = load i32, ptr %iMin, align 4
  %sub = sub i32 %add, %10
  store i32 %sub, ptr %iDiv, align 4
  %11 = load i32, ptr %iDiv, align 4
  %cmp6 = icmp ugt i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %12 = load i32, ptr %iNum, align 4
  %13 = load i32, ptr %iDiv, align 4
  %rem = urem i32 %12, %13
  %14 = load i32, ptr %iMin, align 4
  %add8 = add i32 %rem, %14
  store i32 %add8, ptr %iNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  br label %if.end13

if.else:                                          ; preds = %if.then
  %15 = load i32, ptr %iMax, align 4
  %cmp9 = icmp ugt i32 %15, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.else
  %16 = load i32, ptr %iMax, align 4
  %17 = load i32, ptr %iNum, align 4
  %rem11 = urem i32 %17, %16
  store i32 %rem11, ptr %iNum, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load i32, ptr %iNum, align 4
  %conv = zext i32 %19 to i64
  %call15 = call i32 @ph7_result_int64(ptr noundef %18, i64 noundef %conv)
  ret i32 0
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
