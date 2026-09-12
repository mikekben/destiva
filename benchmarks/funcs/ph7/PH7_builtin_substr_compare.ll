; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_substr_compare(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zSource = alloca ptr, align 8
  %zOfft = alloca ptr, align 8
  %zSub = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  %nLen = alloca i32, align 4
  %nSrcLen = alloca i32, align 4
  %nSublen = alloca i32, align 4
  %iCase = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %iCase, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
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
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nSrcLen)
  store ptr %call1, ptr %zSource, align 8
  %4 = load i32, ptr %nSrcLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nSrcLen, align 4
  store i32 %6, ptr %nLen, align 4
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call ptr @ph7_value_to_string(ptr noundef %8, ptr noundef %nSublen)
  store ptr %call7, ptr %zSub, align 8
  %9 = load i32, ptr %nSublen, align 4
  %cmp8 = icmp slt i32 %9, 1
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %10 = load i32, ptr %nSublen, align 4
  %11 = load i32, ptr %nSrcLen, align 4
  %cmp9 = icmp sgt i32 %10, %11
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end5
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_bool(ptr noundef %12, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %13, i64 2
  %14 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @ph7_value_to_int(ptr noundef %14)
  store i32 %call14, ptr %nOfft, align 4
  %15 = load i32, ptr %nOfft, align 4
  %cmp15 = icmp slt i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  %16 = load ptr, ptr %zSource, align 8
  %17 = load i32, ptr %nSrcLen, align 4
  %18 = load i32, ptr %nOfft, align 4
  %add = add nsw i32 %17, %18
  %idxprom = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i64 %idxprom
  store ptr %arrayidx17, ptr %zOfft, align 8
  %19 = load ptr, ptr %zOfft, align 8
  %20 = load ptr, ptr %zSource, align 8
  %cmp18 = icmp ult ptr %19, %20
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then16
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_bool(ptr noundef %21, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then16
  %22 = load ptr, ptr %zSource, align 8
  %23 = load i32, ptr %nSrcLen, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %22, i64 %idxprom22
  %24 = load ptr, ptr %zOfft, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %nLen, align 4
  %25 = load ptr, ptr %zOfft, align 8
  %26 = load ptr, ptr %zSource, align 8
  %sub.ptr.lhs.cast24 = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast25 = ptrtoint ptr %26 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %conv27 = trunc i64 %sub.ptr.sub26 to i32
  store i32 %conv27, ptr %nOfft, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end12
  %27 = load i32, ptr %nOfft, align 4
  %28 = load i32, ptr %nSrcLen, align 4
  %cmp28 = icmp sge i32 %27, %28
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call31 = call i32 @ph7_result_bool(ptr noundef %29, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else32:                                        ; preds = %if.else
  %30 = load ptr, ptr %zSource, align 8
  %31 = load i32, ptr %nOfft, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %30, i64 %idxprom33
  store ptr %arrayidx34, ptr %zOfft, align 8
  %32 = load i32, ptr %nSrcLen, align 4
  %33 = load i32, ptr %nOfft, align 4
  %sub = sub nsw i32 %32, %33
  store i32 %sub, ptr %nLen, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else32
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end21
  %34 = load i32, ptr %nArg.addr, align 4
  %cmp37 = icmp sgt i32 %34, 3
  br i1 %cmp37, label %if.then39, label %if.end60

if.then39:                                        ; preds = %if.end36
  %35 = load ptr, ptr %apArg.addr, align 8
  %arrayidx40 = getelementptr inbounds ptr, ptr %35, i64 3
  %36 = load ptr, ptr %arrayidx40, align 8
  %call41 = call i32 @ph7_value_to_int(ptr noundef %36)
  store i32 %call41, ptr %nLen, align 4
  %37 = load i32, ptr %nLen, align 4
  %cmp42 = icmp slt i32 %37, 1
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.then39
  %38 = load ptr, ptr %pCtx.addr, align 8
  %call45 = call i32 @ph7_result_int(ptr noundef %38, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

if.else46:                                        ; preds = %if.then39
  %39 = load i32, ptr %nLen, align 4
  %40 = load i32, ptr %nOfft, align 4
  %add47 = add nsw i32 %39, %40
  %41 = load i32, ptr %nSrcLen, align 4
  %cmp48 = icmp sgt i32 %add47, %41
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else46
  %42 = load i32, ptr %nSrcLen, align 4
  %43 = load i32, ptr %nOfft, align 4
  %sub51 = sub nsw i32 %42, %43
  store i32 %sub51, ptr %nLen, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.else46
  br label %if.end53

if.end53:                                         ; preds = %if.end52
  %44 = load i32, ptr %nArg.addr, align 4
  %cmp54 = icmp sgt i32 %44, 4
  br i1 %cmp54, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end53
  %45 = load ptr, ptr %apArg.addr, align 8
  %arrayidx57 = getelementptr inbounds ptr, ptr %45, i64 4
  %46 = load ptr, ptr %arrayidx57, align 8
  %call58 = call i32 @ph7_value_to_bool(ptr noundef %46)
  store i32 %call58, ptr %iCase, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end53
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end36
  %47 = load i32, ptr %iCase, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %if.then61, label %if.else63

if.then61:                                        ; preds = %if.end60
  %48 = load ptr, ptr %zOfft, align 8
  %49 = load ptr, ptr %zSub, align 8
  %50 = load i32, ptr %nLen, align 4
  %call62 = call i32 @SyStrnicmp(ptr noundef %48, ptr noundef %49, i32 noundef %50)
  store i32 %call62, ptr %rc, align 4
  br label %if.end65

if.else63:                                        ; preds = %if.end60
  %51 = load ptr, ptr %zOfft, align 8
  %52 = load ptr, ptr %zSub, align 8
  %53 = load i32, ptr %nLen, align 4
  %call64 = call i32 @SyStrncmp(ptr noundef %51, ptr noundef %52, i32 noundef %53)
  store i32 %call64, ptr %rc, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then61
  %54 = load ptr, ptr %pCtx.addr, align 8
  %55 = load i32, ptr %rc, align 4
  %call66 = call i32 @ph7_result_int(ptr noundef %54, i32 noundef %55)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then44, %if.then30, %if.then19, %if.then10, %if.then3, %if.then
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrncmp(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
