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
define hidden i32 @vm_builtin_utf8_encode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
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
  br label %for.cond

for.cond:                                         ; preds = %if.end56, %if.end5
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %8, %9
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zIn, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %11 to i32
  store i32 %conv, ptr %c, align 4
  %12 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %13 = load i32, ptr %c, align 4
  %cmp11 = icmp slt i32 %13, 128
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %14 = load i32, ptr %c, align 4
  %and = and i32 %14, 255
  store i32 %and, ptr %e, align 4
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_string(ptr noundef %15, ptr noundef %e, i32 noundef 1)
  br label %if.end56

if.else:                                          ; preds = %if.end9
  %16 = load i32, ptr %c, align 4
  %cmp15 = icmp slt i32 %16, 2048
  br i1 %cmp15, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %17 = load i32, ptr %c, align 4
  %shr = ashr i32 %17, 6
  %and18 = and i32 %shr, 31
  %add = add nsw i32 192, %and18
  store i32 %add, ptr %e, align 4
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %e, i32 noundef 1)
  %19 = load i32, ptr %c, align 4
  %and20 = and i32 %19, 63
  %add21 = add nsw i32 128, %and20
  store i32 %add21, ptr %e, align 4
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call22 = call i32 @ph7_result_string(ptr noundef %20, ptr noundef %e, i32 noundef 1)
  br label %if.end55

if.else23:                                        ; preds = %if.else
  %21 = load i32, ptr %c, align 4
  %cmp24 = icmp slt i32 %21, 65536
  br i1 %cmp24, label %if.then26, label %if.else38

if.then26:                                        ; preds = %if.else23
  %22 = load i32, ptr %c, align 4
  %shr27 = ashr i32 %22, 12
  %and28 = and i32 %shr27, 15
  %add29 = add nsw i32 224, %and28
  store i32 %add29, ptr %e, align 4
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %e, i32 noundef 1)
  %24 = load i32, ptr %c, align 4
  %shr31 = ashr i32 %24, 6
  %and32 = and i32 %shr31, 63
  %add33 = add nsw i32 128, %and32
  store i32 %add33, ptr %e, align 4
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call34 = call i32 @ph7_result_string(ptr noundef %25, ptr noundef %e, i32 noundef 1)
  %26 = load i32, ptr %c, align 4
  %and35 = and i32 %26, 63
  %add36 = add nsw i32 128, %and35
  store i32 %add36, ptr %e, align 4
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call37 = call i32 @ph7_result_string(ptr noundef %27, ptr noundef %e, i32 noundef 1)
  br label %if.end54

if.else38:                                        ; preds = %if.else23
  %28 = load i32, ptr %c, align 4
  %shr39 = ashr i32 %28, 18
  %and40 = and i32 %shr39, 7
  %add41 = add nsw i32 240, %and40
  store i32 %add41, ptr %e, align 4
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call42 = call i32 @ph7_result_string(ptr noundef %29, ptr noundef %e, i32 noundef 1)
  %30 = load i32, ptr %c, align 4
  %shr43 = ashr i32 %30, 12
  %and44 = and i32 %shr43, 63
  %add45 = add nsw i32 128, %and44
  store i32 %add45, ptr %e, align 4
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call46 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef %e, i32 noundef 1)
  %32 = load i32, ptr %c, align 4
  %shr47 = ashr i32 %32, 6
  %and48 = and i32 %shr47, 63
  %add49 = add nsw i32 128, %and48
  store i32 %add49, ptr %e, align 4
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call50 = call i32 @ph7_result_string(ptr noundef %33, ptr noundef %e, i32 noundef 1)
  %34 = load i32, ptr %c, align 4
  %and51 = and i32 %34, 63
  %add52 = add nsw i32 128, %and51
  store i32 %add52, ptr %e, align 4
  %35 = load ptr, ptr %pCtx.addr, align 8
  %call53 = call i32 @ph7_result_string(ptr noundef %35, ptr noundef %e, i32 noundef 1)
  br label %if.end54

if.end54:                                         ; preds = %if.else38, %if.then26
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then17
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then13
  br label %for.cond

for.end:                                          ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
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
