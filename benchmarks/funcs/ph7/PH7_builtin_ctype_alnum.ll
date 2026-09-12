; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_ctype_alnum(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
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
  store ptr %call1, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store ptr %arrayidx2, ptr %zEnd, align 8
  %6 = load i32, ptr %nLen, align 4
  %cmp3 = icmp slt i32 %6, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %if.end6
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %8, %9
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %for.cond
  %call11 = call ptr @__ctype_b_loc() #2
  %11 = load ptr, ptr %call11, align 8
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %13 to i32
  %idxprom13 = sext i32 %conv to i64
  %arrayidx14 = getelementptr inbounds i16, ptr %11, i64 %idxprom13
  %14 = load i16, ptr %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %and = and i32 %conv15, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end10
  br label %for.end

if.end17:                                         ; preds = %if.end10
  %15 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then16
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then4, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
