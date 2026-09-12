; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_result_buf_length(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_str_pad(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %iPadlen = alloca i32, align 4
  %iType = alloca i32, align 4
  %i = alloca i32, align 4
  %iDiv = alloca i32, align 4
  %iStrpad = alloca i32, align 4
  %iRealPad = alloca i32, align 4
  %jPad = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zPad = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
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
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_to_int(ptr noundef %5)
  store i32 %call3, ptr %iPadlen, align 4
  store i32 %call3, ptr %iRealPad, align 4
  %6 = load i32, ptr %iPadlen, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %iLen, align 4
  %8 = load i32, ptr %iPadlen, align 4
  %sub = sub nsw i32 %8, %7
  store i32 %sub, ptr %iPadlen, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load i32, ptr %iPadlen, align 4
  %cmp7 = icmp slt i32 %9, 1
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %pCtx.addr, align 8
  %11 = load ptr, ptr %zIn, align 8
  %12 = load i32, ptr %iLen, align 4
  %call9 = call i32 @ph7_result_string(ptr noundef %10, ptr noundef %11, i32 noundef %12)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  store ptr @.str.61, ptr %zPad, align 8
  store i32 1, ptr %iStrpad, align 4
  store i32 1, ptr %iType, align 4
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %13, 2
  br i1 %cmp11, label %if.then12, label %if.end27

if.then12:                                        ; preds = %if.end10
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call ptr @ph7_value_to_string(ptr noundef %15, ptr noundef %iStrpad)
  store ptr %call14, ptr %zPad, align 8
  %16 = load i32, ptr %iStrpad, align 4
  %cmp15 = icmp slt i32 %16, 1
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then12
  store ptr @.str.61, ptr %zPad, align 8
  store i32 1, ptr %iStrpad, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then12
  %17 = load i32, ptr %nArg.addr, align 4
  %cmp18 = icmp sgt i32 %17, 3
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end17
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %18, i64 3
  %19 = load ptr, ptr %arrayidx20, align 8
  %call21 = call i32 @ph7_value_to_int(ptr noundef %19)
  store i32 %call21, ptr %iType, align 4
  %20 = load i32, ptr %iType, align 4
  %cmp22 = icmp ne i32 %20, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.then19
  %21 = load i32, ptr %iType, align 4
  %cmp23 = icmp ne i32 %21, 2
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  store i32 1, ptr %iType, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true, %if.then19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end10
  store i32 1, ptr %iDiv, align 4
  %22 = load i32, ptr %iType, align 4
  %cmp28 = icmp eq i32 %22, 2
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end27
  store i32 2, ptr %iDiv, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end27
  %23 = load i32, ptr %iType, align 4
  %cmp31 = icmp eq i32 %23, 0
  br i1 %cmp31, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end30
  %24 = load i32, ptr %iType, align 4
  %cmp32 = icmp eq i32 %24, 2
  br i1 %cmp32, label %if.then33, label %if.end58

if.then33:                                        ; preds = %lor.lhs.false, %if.end30
  %25 = load i32, ptr %iStrpad, align 4
  store i32 %25, ptr %jPad, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %iPadlen, align 4
  %28 = load i32, ptr %iDiv, align 4
  %div = sdiv i32 %27, %28
  %cmp34 = icmp slt i32 %26, %div
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call35 = call i32 @ph7_context_result_buf_length(ptr noundef %29)
  %30 = load i32, ptr %iLen, align 4
  %add = add nsw i32 %call35, %30
  %31 = load i32, ptr %jPad, align 4
  %add36 = add nsw i32 %add, %31
  %32 = load i32, ptr %iRealPad, align 4
  %cmp37 = icmp sge i32 %add36, %32
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body
  br label %for.end

if.end39:                                         ; preds = %for.body
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load ptr, ptr %zPad, align 8
  %35 = load i32, ptr %jPad, align 4
  %call40 = call i32 @ph7_result_string(ptr noundef %33, ptr noundef %34, i32 noundef %35)
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %36 = load i32, ptr %jPad, align 4
  %37 = load i32, ptr %i, align 4
  %add41 = add nsw i32 %37, %36
  store i32 %add41, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then38, %for.cond
  %38 = load i32, ptr %iType, align 4
  %cmp42 = icmp eq i32 %38, 0
  br i1 %cmp42, label %if.then43, label %if.end57

if.then43:                                        ; preds = %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %if.then43
  %39 = load ptr, ptr %pCtx.addr, align 8
  %call44 = call i32 @ph7_context_result_buf_length(ptr noundef %39)
  %40 = load i32, ptr %iLen, align 4
  %add45 = add nsw i32 %call44, %40
  %41 = load i32, ptr %iRealPad, align 4
  %cmp46 = icmp slt i32 %add45, %41
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load i32, ptr %iRealPad, align 4
  %43 = load i32, ptr %iLen, align 4
  %44 = load ptr, ptr %pCtx.addr, align 8
  %call47 = call i32 @ph7_context_result_buf_length(ptr noundef %44)
  %add48 = add nsw i32 %43, %call47
  %sub49 = sub nsw i32 %42, %add48
  store i32 %sub49, ptr %jPad, align 4
  %45 = load i32, ptr %jPad, align 4
  %46 = load i32, ptr %iStrpad, align 4
  %cmp50 = icmp sgt i32 %45, %46
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %while.body
  %47 = load i32, ptr %iStrpad, align 4
  store i32 %47, ptr %jPad, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %while.body
  %48 = load i32, ptr %jPad, align 4
  %cmp53 = icmp slt i32 %48, 1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end52
  br label %while.end

if.end55:                                         ; preds = %if.end52
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load ptr, ptr %zPad, align 8
  %51 = load i32, ptr %jPad, align 4
  %call56 = call i32 @ph7_result_string(ptr noundef %49, ptr noundef %50, i32 noundef %51)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then54, %while.cond
  br label %if.end57

if.end57:                                         ; preds = %while.end, %for.end
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %lor.lhs.false
  %52 = load i32, ptr %iLen, align 4
  %cmp59 = icmp sgt i32 %52, 0
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end58
  %53 = load ptr, ptr %pCtx.addr, align 8
  %54 = load ptr, ptr %zIn, align 8
  %55 = load i32, ptr %iLen, align 4
  %call61 = call i32 @ph7_result_string(ptr noundef %53, ptr noundef %54, i32 noundef %55)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58
  %56 = load i32, ptr %iType, align 4
  %cmp63 = icmp eq i32 %56, 1
  br i1 %cmp63, label %if.then66, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end62
  %57 = load i32, ptr %iType, align 4
  %cmp65 = icmp eq i32 %57, 2
  br i1 %cmp65, label %if.then66, label %if.end94

if.then66:                                        ; preds = %lor.lhs.false64, %if.end62
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc77, %if.then66
  %58 = load i32, ptr %i, align 4
  %59 = load i32, ptr %iPadlen, align 4
  %60 = load i32, ptr %iDiv, align 4
  %div68 = sdiv i32 %59, %60
  %cmp69 = icmp slt i32 %58, %div68
  br i1 %cmp69, label %for.body70, label %for.end79

for.body70:                                       ; preds = %for.cond67
  %61 = load ptr, ptr %pCtx.addr, align 8
  %call71 = call i32 @ph7_context_result_buf_length(ptr noundef %61)
  %62 = load i32, ptr %iStrpad, align 4
  %add72 = add nsw i32 %call71, %62
  %63 = load i32, ptr %iRealPad, align 4
  %cmp73 = icmp sge i32 %add72, %63
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %for.body70
  br label %for.end79

if.end75:                                         ; preds = %for.body70
  %64 = load ptr, ptr %pCtx.addr, align 8
  %65 = load ptr, ptr %zPad, align 8
  %66 = load i32, ptr %iStrpad, align 4
  %call76 = call i32 @ph7_result_string(ptr noundef %64, ptr noundef %65, i32 noundef %66)
  br label %for.inc77

for.inc77:                                        ; preds = %if.end75
  %67 = load i32, ptr %iStrpad, align 4
  %68 = load i32, ptr %i, align 4
  %add78 = add nsw i32 %68, %67
  store i32 %add78, ptr %i, align 4
  br label %for.cond67, !llvm.loop !9

for.end79:                                        ; preds = %if.then74, %for.cond67
  br label %while.cond80

while.cond80:                                     ; preds = %if.end91, %for.end79
  %69 = load ptr, ptr %pCtx.addr, align 8
  %call81 = call i32 @ph7_context_result_buf_length(ptr noundef %69)
  %70 = load i32, ptr %iRealPad, align 4
  %cmp82 = icmp slt i32 %call81, %70
  br i1 %cmp82, label %while.body83, label %while.end93

while.body83:                                     ; preds = %while.cond80
  %71 = load i32, ptr %iRealPad, align 4
  %72 = load ptr, ptr %pCtx.addr, align 8
  %call84 = call i32 @ph7_context_result_buf_length(ptr noundef %72)
  %sub85 = sub nsw i32 %71, %call84
  store i32 %sub85, ptr %jPad, align 4
  %73 = load i32, ptr %jPad, align 4
  %74 = load i32, ptr %iStrpad, align 4
  %cmp86 = icmp sgt i32 %73, %74
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %while.body83
  %75 = load i32, ptr %iStrpad, align 4
  store i32 %75, ptr %jPad, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %while.body83
  %76 = load i32, ptr %jPad, align 4
  %cmp89 = icmp slt i32 %76, 1
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.end88
  br label %while.end93

if.end91:                                         ; preds = %if.end88
  %77 = load ptr, ptr %pCtx.addr, align 8
  %78 = load ptr, ptr %zPad, align 8
  %79 = load i32, ptr %jPad, align 4
  %call92 = call i32 @ph7_result_string(ptr noundef %77, ptr noundef %78, i32 noundef %79)
  br label %while.cond80, !llvm.loop !10

while.end93:                                      ; preds = %if.then90, %while.cond80
  br label %if.end94

if.end94:                                         ; preds = %while.end93, %lor.lhs.false64
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end94, %if.then8, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
