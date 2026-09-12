; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_mktime(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zFunction = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  %iVal8 = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i64 0, ptr %iVal, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_function_name(ptr noundef %0)
  store ptr %call, ptr %zFunction, align 8
  %call1 = call i64 @time(ptr noundef %t) #2
  %1 = load ptr, ptr %zFunction, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 103
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call ptr @gmtime(ptr noundef %t) #2
  store ptr %call3, ptr %pTm, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call4 = call ptr @localtime(ptr noundef %t) #2
  store ptr %call4, ptr %pTm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.then7, label %if.end52

if.then7:                                         ; preds = %if.end
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @ph7_value_to_int(ptr noundef %5)
  store i32 %call10, ptr %iVal8, align 4
  %6 = load i32, ptr %iVal8, align 4
  %7 = load ptr, ptr %pTm, align 8
  %tm_hour = getelementptr inbounds nuw %struct.tm, ptr %7, i32 0, i32 2
  store i32 %6, ptr %tm_hour, align 8
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %8, 1
  br i1 %cmp11, label %if.then13, label %if.end51

if.then13:                                        ; preds = %if.then7
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @ph7_value_to_int(ptr noundef %10)
  store i32 %call15, ptr %iVal8, align 4
  %11 = load i32, ptr %iVal8, align 4
  %12 = load ptr, ptr %pTm, align 8
  %tm_min = getelementptr inbounds nuw %struct.tm, ptr %12, i32 0, i32 1
  store i32 %11, ptr %tm_min, align 4
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp16 = icmp sgt i32 %13, 2
  br i1 %cmp16, label %if.then18, label %if.end50

if.then18:                                        ; preds = %if.then13
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @ph7_value_to_int(ptr noundef %15)
  store i32 %call20, ptr %iVal8, align 4
  %16 = load i32, ptr %iVal8, align 4
  %17 = load ptr, ptr %pTm, align 8
  %tm_sec = getelementptr inbounds nuw %struct.tm, ptr %17, i32 0, i32 0
  store i32 %16, ptr %tm_sec, align 8
  %18 = load i32, ptr %nArg.addr, align 4
  %cmp21 = icmp sgt i32 %18, 3
  br i1 %cmp21, label %if.then23, label %if.end49

if.then23:                                        ; preds = %if.then18
  %19 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %19, i64 3
  %20 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @ph7_value_to_int(ptr noundef %20)
  store i32 %call25, ptr %iVal8, align 4
  %21 = load i32, ptr %iVal8, align 4
  %sub = sub nsw i32 %21, 1
  %22 = load ptr, ptr %pTm, align 8
  %tm_mon = getelementptr inbounds nuw %struct.tm, ptr %22, i32 0, i32 4
  store i32 %sub, ptr %tm_mon, align 8
  %23 = load i32, ptr %nArg.addr, align 4
  %cmp26 = icmp sgt i32 %23, 4
  br i1 %cmp26, label %if.then28, label %if.end48

if.then28:                                        ; preds = %if.then23
  %24 = load ptr, ptr %apArg.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %24, i64 4
  %25 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @ph7_value_to_int(ptr noundef %25)
  store i32 %call30, ptr %iVal8, align 4
  %26 = load i32, ptr %iVal8, align 4
  %27 = load ptr, ptr %pTm, align 8
  %tm_mday = getelementptr inbounds nuw %struct.tm, ptr %27, i32 0, i32 3
  store i32 %26, ptr %tm_mday, align 4
  %28 = load i32, ptr %nArg.addr, align 4
  %cmp31 = icmp sgt i32 %28, 5
  br i1 %cmp31, label %if.then33, label %if.end47

if.then33:                                        ; preds = %if.then28
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %29, i64 5
  %30 = load ptr, ptr %arrayidx34, align 8
  %call35 = call i32 @ph7_value_to_int(ptr noundef %30)
  store i32 %call35, ptr %iVal8, align 4
  %31 = load i32, ptr %iVal8, align 4
  %cmp36 = icmp sgt i32 %31, 1900
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then33
  %32 = load i32, ptr %iVal8, align 4
  %sub39 = sub nsw i32 %32, 1900
  store i32 %sub39, ptr %iVal8, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then33
  %33 = load i32, ptr %iVal8, align 4
  %34 = load ptr, ptr %pTm, align 8
  %tm_year = getelementptr inbounds nuw %struct.tm, ptr %34, i32 0, i32 5
  store i32 %33, ptr %tm_year, align 4
  %35 = load i32, ptr %nArg.addr, align 4
  %cmp41 = icmp sgt i32 %35, 6
  br i1 %cmp41, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end40
  %36 = load ptr, ptr %apArg.addr, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %36, i64 6
  %37 = load ptr, ptr %arrayidx44, align 8
  %call45 = call i32 @ph7_value_to_bool(ptr noundef %37)
  store i32 %call45, ptr %iVal8, align 4
  %38 = load i32, ptr %iVal8, align 4
  %39 = load ptr, ptr %pTm, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.tm, ptr %39, i32 0, i32 8
  store i32 %38, ptr %tm_isdst, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then28
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then23
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then18
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then13
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then7
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end
  %40 = load ptr, ptr %pTm, align 8
  %call53 = call i64 @mktime(ptr noundef %40) #2
  store i64 %call53, ptr %iVal, align 8
  %41 = load ptr, ptr %pCtx.addr, align 8
  %42 = load i64, ptr %iVal, align 8
  %call54 = call i32 @ph7_result_int64(ptr noundef %41, i64 noundef %42)
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #1

; Function Attrs: nounwind
declare i64 @mktime(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
