; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strpbrk(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zList = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %iListLen = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %nMax = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %iLen)
  store ptr %call1, ptr %zString, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %iListLen)
  store ptr %call3, ptr %zList, align 8
  %6 = load i32, ptr %iLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %zString, align 8
  %9 = load i32, ptr %iLen, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store ptr %arrayidx8, ptr %zEnd, align 8
  store i32 -1, ptr %nMax, align 4
  store i32 -1, ptr %nOfft, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %iListLen, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %zList, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  %14 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %14 to i32
  store i32 %conv, ptr %c, align 4
  %15 = load ptr, ptr %zString, align 8
  %16 = load i32, ptr %iLen, align 4
  %17 = load i32, ptr %c, align 4
  %call12 = call i32 @SyByteFind(ptr noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef %nMax)
  store i32 %call12, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %18, 0
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.body
  %19 = load i32, ptr %nMax, align 4
  %20 = load i32, ptr %nOfft, align 4
  %cmp16 = icmp ult i32 %19, %20
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then15
  %21 = load i32, ptr %nMax, align 4
  store i32 %21, ptr %nOfft, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %nOfft, align 4
  %cmp21 = icmp eq i32 %23, -1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.end
  %24 = load ptr, ptr %pCtx.addr, align 8
  %call24 = call i32 @ph7_result_bool(ptr noundef %24, i32 noundef 0)
  br label %if.end31

if.else:                                          ; preds = %for.end
  %25 = load ptr, ptr %pCtx.addr, align 8
  %26 = load ptr, ptr %zString, align 8
  %27 = load i32, ptr %nOfft, align 4
  %idxprom25 = zext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %26, i64 %idxprom25
  %28 = load ptr, ptr %zEnd, align 8
  %29 = load ptr, ptr %zString, align 8
  %30 = load i32, ptr %nOfft, align 4
  %idxprom27 = zext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds nuw i8, ptr %29, i64 %idxprom27
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv29 = trunc i64 %sub.ptr.sub to i32
  %call30 = call i32 @ph7_result_string(ptr noundef %25, ptr noundef %arrayidx26, i32 noundef %conv29)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then5, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
