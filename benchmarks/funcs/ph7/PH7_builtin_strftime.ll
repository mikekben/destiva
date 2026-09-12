; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_result_buf_length(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strftime(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zFormat = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %sTm = alloca %struct.Sytm, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  %t21 = alloca i64, align 8
  %pTm22 = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call3, ptr %zFormat, align 8
  %6 = load i32, ptr %nLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp slt i32 %8, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  %call10 = call i64 @time(ptr noundef %t) #2
  %call11 = call ptr @localtime(ptr noundef %t) #2
  store ptr %call11, ptr %pTm, align 8
  %9 = load ptr, ptr %pTm, align 8
  %tm_hour = getelementptr inbounds nuw %struct.tm, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %tm_hour, align 8
  %tm_hour12 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  store i32 %10, ptr %tm_hour12, align 8
  %11 = load ptr, ptr %pTm, align 8
  %tm_min = getelementptr inbounds nuw %struct.tm, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %tm_min, align 4
  %tm_min13 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  store i32 %12, ptr %tm_min13, align 4
  %13 = load ptr, ptr %pTm, align 8
  %tm_sec = getelementptr inbounds nuw %struct.tm, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %tm_sec, align 8
  %tm_sec14 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  store i32 %14, ptr %tm_sec14, align 8
  %15 = load ptr, ptr %pTm, align 8
  %tm_mon = getelementptr inbounds nuw %struct.tm, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %tm_mon, align 8
  %tm_mon15 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  store i32 %16, ptr %tm_mon15, align 8
  %17 = load ptr, ptr %pTm, align 8
  %tm_mday = getelementptr inbounds nuw %struct.tm, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %tm_mday, align 4
  %tm_mday16 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  store i32 %18, ptr %tm_mday16, align 4
  %19 = load ptr, ptr %pTm, align 8
  %tm_year = getelementptr inbounds nuw %struct.tm, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %tm_year, align 4
  %add = add nsw i32 %20, 1900
  %tm_year17 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  store i32 %add, ptr %tm_year17, align 4
  %21 = load ptr, ptr %pTm, align 8
  %tm_yday = getelementptr inbounds nuw %struct.tm, ptr %21, i32 0, i32 7
  %22 = load i32, ptr %tm_yday, align 4
  %tm_yday18 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  store i32 %22, ptr %tm_yday18, align 4
  %23 = load ptr, ptr %pTm, align 8
  %tm_wday = getelementptr inbounds nuw %struct.tm, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %tm_wday, align 8
  %tm_wday19 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  store i32 %24, ptr %tm_wday19, align 8
  %25 = load ptr, ptr %pTm, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.tm, ptr %25, i32 0, i32 8
  %26 = load i32, ptr %tm_isdst, align 8
  %tm_isdst20 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  store i32 %26, ptr %tm_isdst20, align 8
  %tm_gmtoff = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  store i64 0, ptr %tm_gmtoff, align 8
  %tm_zone = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 9
  store ptr null, ptr %tm_zone, align 8
  br label %if.end59

if.else:                                          ; preds = %if.end7
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %27, i64 1
  %28 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @ph7_value_is_int(ptr noundef %28)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else34

if.then26:                                        ; preds = %if.else
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %29, i64 1
  %30 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i64 @ph7_value_to_int64(ptr noundef %30)
  store i64 %call28, ptr %t21, align 8
  %call29 = call ptr @localtime(ptr noundef %t21) #2
  store ptr %call29, ptr %pTm22, align 8
  %31 = load ptr, ptr %pTm22, align 8
  %cmp30 = icmp eq ptr %31, null
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then26
  %call32 = call i64 @time(ptr noundef %t21) #2
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then26
  br label %if.end36

if.else34:                                        ; preds = %if.else
  %call35 = call i64 @time(ptr noundef %t21) #2
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  %call37 = call ptr @localtime(ptr noundef %t21) #2
  store ptr %call37, ptr %pTm22, align 8
  %32 = load ptr, ptr %pTm22, align 8
  %tm_hour38 = getelementptr inbounds nuw %struct.tm, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %tm_hour38, align 8
  %tm_hour39 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  store i32 %33, ptr %tm_hour39, align 8
  %34 = load ptr, ptr %pTm22, align 8
  %tm_min40 = getelementptr inbounds nuw %struct.tm, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %tm_min40, align 4
  %tm_min41 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  store i32 %35, ptr %tm_min41, align 4
  %36 = load ptr, ptr %pTm22, align 8
  %tm_sec42 = getelementptr inbounds nuw %struct.tm, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %tm_sec42, align 8
  %tm_sec43 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  store i32 %37, ptr %tm_sec43, align 8
  %38 = load ptr, ptr %pTm22, align 8
  %tm_mon44 = getelementptr inbounds nuw %struct.tm, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %tm_mon44, align 8
  %tm_mon45 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  store i32 %39, ptr %tm_mon45, align 8
  %40 = load ptr, ptr %pTm22, align 8
  %tm_mday46 = getelementptr inbounds nuw %struct.tm, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %tm_mday46, align 4
  %tm_mday47 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  store i32 %41, ptr %tm_mday47, align 4
  %42 = load ptr, ptr %pTm22, align 8
  %tm_year48 = getelementptr inbounds nuw %struct.tm, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %tm_year48, align 4
  %add49 = add nsw i32 %43, 1900
  %tm_year50 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  store i32 %add49, ptr %tm_year50, align 4
  %44 = load ptr, ptr %pTm22, align 8
  %tm_yday51 = getelementptr inbounds nuw %struct.tm, ptr %44, i32 0, i32 7
  %45 = load i32, ptr %tm_yday51, align 4
  %tm_yday52 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  store i32 %45, ptr %tm_yday52, align 4
  %46 = load ptr, ptr %pTm22, align 8
  %tm_wday53 = getelementptr inbounds nuw %struct.tm, ptr %46, i32 0, i32 6
  %47 = load i32, ptr %tm_wday53, align 8
  %tm_wday54 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  store i32 %47, ptr %tm_wday54, align 8
  %48 = load ptr, ptr %pTm22, align 8
  %tm_isdst55 = getelementptr inbounds nuw %struct.tm, ptr %48, i32 0, i32 8
  %49 = load i32, ptr %tm_isdst55, align 8
  %tm_isdst56 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  store i32 %49, ptr %tm_isdst56, align 8
  %tm_gmtoff57 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  store i64 0, ptr %tm_gmtoff57, align 8
  %tm_zone58 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 9
  store ptr null, ptr %tm_zone58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.end36, %if.then9
  %50 = load ptr, ptr %pCtx.addr, align 8
  %51 = load ptr, ptr %zFormat, align 8
  %52 = load i32, ptr %nLen, align 4
  %call60 = call i32 @PH7_Strftime(ptr noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %sTm)
  %53 = load ptr, ptr %pCtx.addr, align 8
  %call61 = call i32 @ph7_context_result_buf_length(ptr noundef %53)
  %cmp62 = icmp ult i32 %call61, 1
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  %54 = load ptr, ptr %pCtx.addr, align 8
  %call64 = call i32 @ph7_result_bool(ptr noundef %54, i32 noundef 0)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end59
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_Strftime(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

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
