; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str.1001 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1002 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1003 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1004 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1005 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1006 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1007 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1008 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1009 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1010 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_intkey_elem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_getdate(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sTm = alloca %struct.Sytm, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  %t11 = alloca i64, align 8
  %pTm12 = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i64 @time(ptr noundef %t) #2
  %call1 = call ptr @localtime(ptr noundef %t) #2
  store ptr %call1, ptr %pTm, align 8
  %1 = load ptr, ptr %pTm, align 8
  %tm_hour = getelementptr inbounds nuw %struct.tm, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %tm_hour, align 8
  %tm_hour2 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  store i32 %2, ptr %tm_hour2, align 8
  %3 = load ptr, ptr %pTm, align 8
  %tm_min = getelementptr inbounds nuw %struct.tm, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %tm_min, align 4
  %tm_min3 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  store i32 %4, ptr %tm_min3, align 4
  %5 = load ptr, ptr %pTm, align 8
  %tm_sec = getelementptr inbounds nuw %struct.tm, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %tm_sec, align 8
  %tm_sec4 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  store i32 %6, ptr %tm_sec4, align 8
  %7 = load ptr, ptr %pTm, align 8
  %tm_mon = getelementptr inbounds nuw %struct.tm, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %tm_mon, align 8
  %tm_mon5 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  store i32 %8, ptr %tm_mon5, align 8
  %9 = load ptr, ptr %pTm, align 8
  %tm_mday = getelementptr inbounds nuw %struct.tm, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %tm_mday, align 4
  %tm_mday6 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  store i32 %10, ptr %tm_mday6, align 4
  %11 = load ptr, ptr %pTm, align 8
  %tm_year = getelementptr inbounds nuw %struct.tm, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %tm_year, align 4
  %add = add nsw i32 %12, 1900
  %tm_year7 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  store i32 %add, ptr %tm_year7, align 4
  %13 = load ptr, ptr %pTm, align 8
  %tm_yday = getelementptr inbounds nuw %struct.tm, ptr %13, i32 0, i32 7
  %14 = load i32, ptr %tm_yday, align 4
  %tm_yday8 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  store i32 %14, ptr %tm_yday8, align 4
  %15 = load ptr, ptr %pTm, align 8
  %tm_wday = getelementptr inbounds nuw %struct.tm, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %tm_wday, align 8
  %tm_wday9 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  store i32 %16, ptr %tm_wday9, align 8
  %17 = load ptr, ptr %pTm, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.tm, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %tm_isdst, align 8
  %tm_isdst10 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  store i32 %18, ptr %tm_isdst10, align 8
  %tm_gmtoff = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  store i64 0, ptr %tm_gmtoff, align 8
  %tm_zone = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 9
  store ptr null, ptr %tm_zone, align 8
  br label %if.end46

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx, align 8
  %call13 = call i32 @ph7_value_is_int(ptr noundef %20)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then14, label %if.else21

if.then14:                                        ; preds = %if.else
  %21 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i64 @ph7_value_to_int64(ptr noundef %22)
  store i64 %call16, ptr %t11, align 8
  %call17 = call ptr @localtime(ptr noundef %t11) #2
  store ptr %call17, ptr %pTm12, align 8
  %23 = load ptr, ptr %pTm12, align 8
  %cmp18 = icmp eq ptr %23, null
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then14
  %call20 = call i64 @time(ptr noundef %t11) #2
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then14
  br label %if.end23

if.else21:                                        ; preds = %if.else
  %call22 = call i64 @time(ptr noundef %t11) #2
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %if.end
  %call24 = call ptr @localtime(ptr noundef %t11) #2
  store ptr %call24, ptr %pTm12, align 8
  %24 = load ptr, ptr %pTm12, align 8
  %tm_hour25 = getelementptr inbounds nuw %struct.tm, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %tm_hour25, align 8
  %tm_hour26 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  store i32 %25, ptr %tm_hour26, align 8
  %26 = load ptr, ptr %pTm12, align 8
  %tm_min27 = getelementptr inbounds nuw %struct.tm, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %tm_min27, align 4
  %tm_min28 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  store i32 %27, ptr %tm_min28, align 4
  %28 = load ptr, ptr %pTm12, align 8
  %tm_sec29 = getelementptr inbounds nuw %struct.tm, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %tm_sec29, align 8
  %tm_sec30 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  store i32 %29, ptr %tm_sec30, align 8
  %30 = load ptr, ptr %pTm12, align 8
  %tm_mon31 = getelementptr inbounds nuw %struct.tm, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %tm_mon31, align 8
  %tm_mon32 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  store i32 %31, ptr %tm_mon32, align 8
  %32 = load ptr, ptr %pTm12, align 8
  %tm_mday33 = getelementptr inbounds nuw %struct.tm, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %tm_mday33, align 4
  %tm_mday34 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  store i32 %33, ptr %tm_mday34, align 4
  %34 = load ptr, ptr %pTm12, align 8
  %tm_year35 = getelementptr inbounds nuw %struct.tm, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %tm_year35, align 4
  %add36 = add nsw i32 %35, 1900
  %tm_year37 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  store i32 %add36, ptr %tm_year37, align 4
  %36 = load ptr, ptr %pTm12, align 8
  %tm_yday38 = getelementptr inbounds nuw %struct.tm, ptr %36, i32 0, i32 7
  %37 = load i32, ptr %tm_yday38, align 4
  %tm_yday39 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  store i32 %37, ptr %tm_yday39, align 4
  %38 = load ptr, ptr %pTm12, align 8
  %tm_wday40 = getelementptr inbounds nuw %struct.tm, ptr %38, i32 0, i32 6
  %39 = load i32, ptr %tm_wday40, align 8
  %tm_wday41 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  store i32 %39, ptr %tm_wday41, align 8
  %40 = load ptr, ptr %pTm12, align 8
  %tm_isdst42 = getelementptr inbounds nuw %struct.tm, ptr %40, i32 0, i32 8
  %41 = load i32, ptr %tm_isdst42, align 8
  %tm_isdst43 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  store i32 %41, ptr %tm_isdst43, align 8
  %tm_gmtoff44 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  store i64 0, ptr %tm_gmtoff44, align 8
  %tm_zone45 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 9
  store ptr null, ptr %tm_zone45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.end23, %if.then
  %42 = load ptr, ptr %pCtx.addr, align 8
  %call47 = call ptr @ph7_context_new_scalar(ptr noundef %42)
  store ptr %call47, ptr %pValue, align 8
  %43 = load ptr, ptr %pValue, align 8
  %cmp48 = icmp eq ptr %43, null
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  %44 = load ptr, ptr %pCtx.addr, align 8
  %call50 = call i32 @ph7_result_null(ptr noundef %44)
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end46
  %45 = load ptr, ptr %pCtx.addr, align 8
  %call52 = call ptr @ph7_context_new_array(ptr noundef %45)
  store ptr %call52, ptr %pArray, align 8
  %46 = load ptr, ptr %pArray, align 8
  %cmp53 = icmp eq ptr %46, null
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call55 = call i32 @ph7_result_null(ptr noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end51
  %48 = load ptr, ptr %pValue, align 8
  %tm_sec57 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  %49 = load i32, ptr %tm_sec57, align 8
  %call58 = call i32 @ph7_value_int(ptr noundef %48, i32 noundef %49)
  %50 = load ptr, ptr %pArray, align 8
  %51 = load ptr, ptr %pValue, align 8
  %call59 = call i32 @ph7_array_add_strkey_elem(ptr noundef %50, ptr noundef @.str.1001, ptr noundef %51)
  %52 = load ptr, ptr %pValue, align 8
  %tm_min60 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  %53 = load i32, ptr %tm_min60, align 4
  %call61 = call i32 @ph7_value_int(ptr noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %pArray, align 8
  %55 = load ptr, ptr %pValue, align 8
  %call62 = call i32 @ph7_array_add_strkey_elem(ptr noundef %54, ptr noundef @.str.1002, ptr noundef %55)
  %56 = load ptr, ptr %pValue, align 8
  %tm_hour63 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  %57 = load i32, ptr %tm_hour63, align 8
  %call64 = call i32 @ph7_value_int(ptr noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %pArray, align 8
  %59 = load ptr, ptr %pValue, align 8
  %call65 = call i32 @ph7_array_add_strkey_elem(ptr noundef %58, ptr noundef @.str.1003, ptr noundef %59)
  %60 = load ptr, ptr %pValue, align 8
  %tm_mday66 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  %61 = load i32, ptr %tm_mday66, align 4
  %call67 = call i32 @ph7_value_int(ptr noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %pArray, align 8
  %63 = load ptr, ptr %pValue, align 8
  %call68 = call i32 @ph7_array_add_strkey_elem(ptr noundef %62, ptr noundef @.str.1004, ptr noundef %63)
  %64 = load ptr, ptr %pValue, align 8
  %tm_wday69 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  %65 = load i32, ptr %tm_wday69, align 8
  %call70 = call i32 @ph7_value_int(ptr noundef %64, i32 noundef %65)
  %66 = load ptr, ptr %pArray, align 8
  %67 = load ptr, ptr %pValue, align 8
  %call71 = call i32 @ph7_array_add_strkey_elem(ptr noundef %66, ptr noundef @.str.1005, ptr noundef %67)
  %68 = load ptr, ptr %pValue, align 8
  %tm_mon72 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %69 = load i32, ptr %tm_mon72, align 8
  %add73 = add nsw i32 %69, 1
  %call74 = call i32 @ph7_value_int(ptr noundef %68, i32 noundef %add73)
  %70 = load ptr, ptr %pArray, align 8
  %71 = load ptr, ptr %pValue, align 8
  %call75 = call i32 @ph7_array_add_strkey_elem(ptr noundef %70, ptr noundef @.str.1006, ptr noundef %71)
  %72 = load ptr, ptr %pValue, align 8
  %tm_year76 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %73 = load i32, ptr %tm_year76, align 4
  %call77 = call i32 @ph7_value_int(ptr noundef %72, i32 noundef %73)
  %74 = load ptr, ptr %pArray, align 8
  %75 = load ptr, ptr %pValue, align 8
  %call78 = call i32 @ph7_array_add_strkey_elem(ptr noundef %74, ptr noundef @.str.1007, ptr noundef %75)
  %76 = load ptr, ptr %pValue, align 8
  %tm_yday79 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  %77 = load i32, ptr %tm_yday79, align 4
  %call80 = call i32 @ph7_value_int(ptr noundef %76, i32 noundef %77)
  %78 = load ptr, ptr %pArray, align 8
  %79 = load ptr, ptr %pValue, align 8
  %call81 = call i32 @ph7_array_add_strkey_elem(ptr noundef %78, ptr noundef @.str.1008, ptr noundef %79)
  %80 = load ptr, ptr %pValue, align 8
  %tm_wday82 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  %81 = load i32, ptr %tm_wday82, align 8
  %call83 = call ptr @SyTimeGetDay(i32 noundef %81)
  %call84 = call i32 @ph7_value_string(ptr noundef %80, ptr noundef %call83, i32 noundef -1)
  %82 = load ptr, ptr %pArray, align 8
  %83 = load ptr, ptr %pValue, align 8
  %call85 = call i32 @ph7_array_add_strkey_elem(ptr noundef %82, ptr noundef @.str.1009, ptr noundef %83)
  %84 = load ptr, ptr %pValue, align 8
  %call86 = call i32 @ph7_value_reset_string_cursor(ptr noundef %84)
  %85 = load ptr, ptr %pValue, align 8
  %tm_mon87 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %86 = load i32, ptr %tm_mon87, align 8
  %call88 = call ptr @SyTimeGetMonth(i32 noundef %86)
  %call89 = call i32 @ph7_value_string(ptr noundef %85, ptr noundef %call88, i32 noundef -1)
  %87 = load ptr, ptr %pArray, align 8
  %88 = load ptr, ptr %pValue, align 8
  %call90 = call i32 @ph7_array_add_strkey_elem(ptr noundef %87, ptr noundef @.str.1010, ptr noundef %88)
  %89 = load ptr, ptr %pValue, align 8
  %call91 = call i64 @time(ptr noundef null) #2
  %call92 = call i32 @ph7_value_int64(ptr noundef %89, i64 noundef %call91)
  %90 = load ptr, ptr %pArray, align 8
  %91 = load ptr, ptr %pValue, align 8
  %call93 = call i32 @ph7_array_add_intkey_elem(ptr noundef %90, i32 noundef 0, ptr noundef %91)
  %92 = load ptr, ptr %pCtx.addr, align 8
  %93 = load ptr, ptr %pArray, align 8
  %call94 = call i32 @ph7_result_value(ptr noundef %92, ptr noundef %93)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then54, %if.then49
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyTimeGetDay(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyTimeGetMonth(i32 noundef) #0

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
