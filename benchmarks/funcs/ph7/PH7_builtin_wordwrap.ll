; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_wordwrap(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zBreak = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %iBreaklen = alloca i32, align 4
  %iChunk = alloca i32, align 4
  %nMax = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %iLen)
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %iLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  store i32 75, ptr %iChunk, align 4
  store i32 0, ptr %iBreaklen, align 4
  store ptr @.str.4, ptr %zBreak, align 8
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp6 = icmp sgt i32 %6, 1
  br i1 %cmp6, label %if.then7, label %if.end18

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call9, ptr %iChunk, align 4
  %9 = load i32, ptr %iChunk, align 4
  %cmp10 = icmp slt i32 %9, 1
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  store i32 75, ptr %iChunk, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then7
  %10 = load i32, ptr %nArg.addr, align 4
  %cmp13 = icmp sgt i32 %10, 2
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %11, i64 2
  %12 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @ph7_value_to_string(ptr noundef %12, ptr noundef %iBreaklen)
  store ptr %call16, ptr %zBreak, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end5
  %13 = load i32, ptr %iBreaklen, align 4
  %cmp19 = icmp slt i32 %13, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  store ptr @.str.47, ptr %zBreak, align 8
  store i32 1, ptr %iBreaklen, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  %14 = load ptr, ptr %zIn, align 8
  %15 = load i32, ptr %iLen, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %14, i64 %idxprom
  store ptr %arrayidx22, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end21
  %16 = load ptr, ptr %zIn, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp23 = icmp uge ptr %16, %17
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.cond
  br label %for.end

if.end25:                                         ; preds = %for.cond
  %18 = load ptr, ptr %zEnd, align 8
  %19 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %nMax, align 4
  %20 = load i32, ptr %iChunk, align 4
  %21 = load i32, ptr %nMax, align 4
  %cmp26 = icmp sgt i32 %20, %21
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %22 = load i32, ptr %nMax, align 4
  store i32 %22, ptr %iChunk, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %zIn, align 8
  %25 = load i32, ptr %iChunk, align 4
  %call30 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  %26 = load i32, ptr %iChunk, align 4
  %27 = load ptr, ptr %zIn, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  store ptr %add.ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zIn, align 8
  %29 = load ptr, ptr %zEnd, align 8
  %cmp31 = icmp ult ptr %28, %29
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load ptr, ptr %zBreak, align 8
  %32 = load i32, ptr %iBreaklen, align 4
  %call34 = call i32 @ph7_result_string(ptr noundef %30, ptr noundef %31, i32 noundef %32)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end29
  br label %for.cond

for.end:                                          ; preds = %if.then24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
