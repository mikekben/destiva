; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@PH7_builtin_size_format.zUnit = external hidden constant [8 x i8], align 1
@.str.996 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.997 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_size_format(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %nRest = alloca i32, align 4
  %i_32 = alloca i32, align 4
  %iSize = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 -1, ptr %c, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_string(ptr noundef %1, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i64 @ph7_value_to_int64(ptr noundef %3)
  store i64 %call1, ptr %iSize, align 8
  %4 = load i64, ptr %iSize, align 8
  %cmp2 = icmp slt i64 %4, 100
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.996, i32 noundef 6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %if.end5
  %6 = load i64, ptr %iSize, align 8
  %and = and i64 %6, 1023
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %nRest, align 4
  %7 = load i64, ptr %iSize, align 8
  %shr = ashr i64 %7, 10
  store i64 %shr, ptr %iSize, align 8
  %8 = load i32, ptr %c, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %c, align 4
  %9 = load i64, ptr %iSize, align 8
  %and6 = and i64 %9, -1024
  %cmp7 = icmp eq i64 %and6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.cond
  br label %for.end

if.end10:                                         ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %if.then9
  %10 = load i32, ptr %nRest, align 4
  %div = sdiv i32 %10, 100
  store i32 %div, ptr %nRest, align 4
  %11 = load i32, ptr %nRest, align 4
  %cmp11 = icmp sgt i32 %11, 9
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 9, ptr %nRest, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  %12 = load i64, ptr %iSize, align 8
  %cmp15 = icmp sgt i64 %12, 999
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %13 = load i32, ptr %c, align 4
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr %c, align 4
  store i32 9, ptr %nRest, align 4
  store i64 0, ptr %iSize, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  %14 = load i64, ptr %iSize, align 8
  %conv20 = trunc i64 %14 to i32
  store i32 %conv20, ptr %i_32, align 4
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load i32, ptr %i_32, align 4
  %17 = load i32, ptr %nRest, align 4
  %18 = load i32, ptr %c, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [8 x i8], ptr @PH7_builtin_size_format.zUnit, i64 0, i64 %idxprom
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %call23 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %15, ptr noundef @.str.997, i32 noundef %16, i32 noundef %17, i32 noundef %conv22)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then3, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
