; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_utf8_decode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nByte)
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nByte, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_null(ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %zIn, align 8
  %7 = load i32, ptr %nByte, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx6, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end5
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp ult ptr %8, %9
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %zIn, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %call8 = call i32 @PH7_Utf8Read(ptr noundef %10, ptr noundef %11, ptr noundef %zIn)
  store i32 %call8, ptr %c, align 4
  %12 = load i32, ptr %c, align 4
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  br label %while.end

if.end11:                                         ; preds = %while.body
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_string(ptr noundef %13, ptr noundef %c, i32 noundef 1)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then10, %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_Utf8Read(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
