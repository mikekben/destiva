; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str.1052 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1053 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1054 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1055 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1056 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1057 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1058 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1059 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1060 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_localtime(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %isAssoc = alloca i32, align 4
  %sTm = alloca %struct.Sytm, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  %t11 = alloca i64, align 8
  %pTm12 = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %isAssoc, align 4
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
  %48 = load i32, ptr %nArg.addr, align 4
  %cmp57 = icmp sgt i32 %48, 1
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %49 = load ptr, ptr %apArg.addr, align 8
  %arrayidx59 = getelementptr inbounds ptr, ptr %49, i64 1
  %50 = load ptr, ptr %arrayidx59, align 8
  %call60 = call i32 @ph7_value_to_bool(ptr noundef %50)
  store i32 %call60, ptr %isAssoc, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end56
  %51 = load ptr, ptr %pValue, align 8
  %tm_sec62 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  %52 = load i32, ptr %tm_sec62, align 8
  %call63 = call i32 @ph7_value_int(ptr noundef %51, i32 noundef %52)
  %53 = load i32, ptr %isAssoc, align 4
  %tobool64 = icmp ne i32 %53, 0
  br i1 %tobool64, label %if.then65, label %if.else67

if.then65:                                        ; preds = %if.end61
  %54 = load ptr, ptr %pArray, align 8
  %55 = load ptr, ptr %pValue, align 8
  %call66 = call i32 @ph7_array_add_strkey_elem(ptr noundef %54, ptr noundef @.str.1052, ptr noundef %55)
  br label %if.end69

if.else67:                                        ; preds = %if.end61
  %56 = load ptr, ptr %pArray, align 8
  %57 = load ptr, ptr %pValue, align 8
  %call68 = call i32 @ph7_array_add_elem(ptr noundef %56, ptr noundef null, ptr noundef %57)
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %if.then65
  %58 = load ptr, ptr %pValue, align 8
  %tm_min70 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  %59 = load i32, ptr %tm_min70, align 4
  %call71 = call i32 @ph7_value_int(ptr noundef %58, i32 noundef %59)
  %60 = load i32, ptr %isAssoc, align 4
  %tobool72 = icmp ne i32 %60, 0
  br i1 %tobool72, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end69
  %61 = load ptr, ptr %pArray, align 8
  %62 = load ptr, ptr %pValue, align 8
  %call74 = call i32 @ph7_array_add_strkey_elem(ptr noundef %61, ptr noundef @.str.1053, ptr noundef %62)
  br label %if.end77

if.else75:                                        ; preds = %if.end69
  %63 = load ptr, ptr %pArray, align 8
  %64 = load ptr, ptr %pValue, align 8
  %call76 = call i32 @ph7_array_add_elem(ptr noundef %63, ptr noundef null, ptr noundef %64)
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then73
  %65 = load ptr, ptr %pValue, align 8
  %tm_hour78 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  %66 = load i32, ptr %tm_hour78, align 8
  %call79 = call i32 @ph7_value_int(ptr noundef %65, i32 noundef %66)
  %67 = load i32, ptr %isAssoc, align 4
  %tobool80 = icmp ne i32 %67, 0
  br i1 %tobool80, label %if.then81, label %if.else83

if.then81:                                        ; preds = %if.end77
  %68 = load ptr, ptr %pArray, align 8
  %69 = load ptr, ptr %pValue, align 8
  %call82 = call i32 @ph7_array_add_strkey_elem(ptr noundef %68, ptr noundef @.str.1054, ptr noundef %69)
  br label %if.end85

if.else83:                                        ; preds = %if.end77
  %70 = load ptr, ptr %pArray, align 8
  %71 = load ptr, ptr %pValue, align 8
  %call84 = call i32 @ph7_array_add_elem(ptr noundef %70, ptr noundef null, ptr noundef %71)
  br label %if.end85

if.end85:                                         ; preds = %if.else83, %if.then81
  %72 = load ptr, ptr %pValue, align 8
  %tm_mday86 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  %73 = load i32, ptr %tm_mday86, align 4
  %call87 = call i32 @ph7_value_int(ptr noundef %72, i32 noundef %73)
  %74 = load i32, ptr %isAssoc, align 4
  %tobool88 = icmp ne i32 %74, 0
  br i1 %tobool88, label %if.then89, label %if.else91

if.then89:                                        ; preds = %if.end85
  %75 = load ptr, ptr %pArray, align 8
  %76 = load ptr, ptr %pValue, align 8
  %call90 = call i32 @ph7_array_add_strkey_elem(ptr noundef %75, ptr noundef @.str.1055, ptr noundef %76)
  br label %if.end93

if.else91:                                        ; preds = %if.end85
  %77 = load ptr, ptr %pArray, align 8
  %78 = load ptr, ptr %pValue, align 8
  %call92 = call i32 @ph7_array_add_elem(ptr noundef %77, ptr noundef null, ptr noundef %78)
  br label %if.end93

if.end93:                                         ; preds = %if.else91, %if.then89
  %79 = load ptr, ptr %pValue, align 8
  %tm_mon94 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %80 = load i32, ptr %tm_mon94, align 8
  %call95 = call i32 @ph7_value_int(ptr noundef %79, i32 noundef %80)
  %81 = load i32, ptr %isAssoc, align 4
  %tobool96 = icmp ne i32 %81, 0
  br i1 %tobool96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %if.end93
  %82 = load ptr, ptr %pArray, align 8
  %83 = load ptr, ptr %pValue, align 8
  %call98 = call i32 @ph7_array_add_strkey_elem(ptr noundef %82, ptr noundef @.str.1056, ptr noundef %83)
  br label %if.end101

if.else99:                                        ; preds = %if.end93
  %84 = load ptr, ptr %pArray, align 8
  %85 = load ptr, ptr %pValue, align 8
  %call100 = call i32 @ph7_array_add_elem(ptr noundef %84, ptr noundef null, ptr noundef %85)
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  %86 = load ptr, ptr %pValue, align 8
  %tm_year102 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %87 = load i32, ptr %tm_year102, align 4
  %sub = sub nsw i32 %87, 1900
  %call103 = call i32 @ph7_value_int(ptr noundef %86, i32 noundef %sub)
  %88 = load i32, ptr %isAssoc, align 4
  %tobool104 = icmp ne i32 %88, 0
  br i1 %tobool104, label %if.then105, label %if.else107

if.then105:                                       ; preds = %if.end101
  %89 = load ptr, ptr %pArray, align 8
  %90 = load ptr, ptr %pValue, align 8
  %call106 = call i32 @ph7_array_add_strkey_elem(ptr noundef %89, ptr noundef @.str.1057, ptr noundef %90)
  br label %if.end109

if.else107:                                       ; preds = %if.end101
  %91 = load ptr, ptr %pArray, align 8
  %92 = load ptr, ptr %pValue, align 8
  %call108 = call i32 @ph7_array_add_elem(ptr noundef %91, ptr noundef null, ptr noundef %92)
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then105
  %93 = load ptr, ptr %pValue, align 8
  %tm_wday110 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  %94 = load i32, ptr %tm_wday110, align 8
  %call111 = call i32 @ph7_value_int(ptr noundef %93, i32 noundef %94)
  %95 = load i32, ptr %isAssoc, align 4
  %tobool112 = icmp ne i32 %95, 0
  br i1 %tobool112, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.end109
  %96 = load ptr, ptr %pArray, align 8
  %97 = load ptr, ptr %pValue, align 8
  %call114 = call i32 @ph7_array_add_strkey_elem(ptr noundef %96, ptr noundef @.str.1058, ptr noundef %97)
  br label %if.end117

if.else115:                                       ; preds = %if.end109
  %98 = load ptr, ptr %pArray, align 8
  %99 = load ptr, ptr %pValue, align 8
  %call116 = call i32 @ph7_array_add_elem(ptr noundef %98, ptr noundef null, ptr noundef %99)
  br label %if.end117

if.end117:                                        ; preds = %if.else115, %if.then113
  %100 = load ptr, ptr %pValue, align 8
  %tm_yday118 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  %101 = load i32, ptr %tm_yday118, align 4
  %call119 = call i32 @ph7_value_int(ptr noundef %100, i32 noundef %101)
  %102 = load i32, ptr %isAssoc, align 4
  %tobool120 = icmp ne i32 %102, 0
  br i1 %tobool120, label %if.then121, label %if.else123

if.then121:                                       ; preds = %if.end117
  %103 = load ptr, ptr %pArray, align 8
  %104 = load ptr, ptr %pValue, align 8
  %call122 = call i32 @ph7_array_add_strkey_elem(ptr noundef %103, ptr noundef @.str.1059, ptr noundef %104)
  br label %if.end125

if.else123:                                       ; preds = %if.end117
  %105 = load ptr, ptr %pArray, align 8
  %106 = load ptr, ptr %pValue, align 8
  %call124 = call i32 @ph7_array_add_elem(ptr noundef %105, ptr noundef null, ptr noundef %106)
  br label %if.end125

if.end125:                                        ; preds = %if.else123, %if.then121
  %107 = load ptr, ptr %pValue, align 8
  %tm_isdst126 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  %108 = load i32, ptr %tm_isdst126, align 8
  %call127 = call i32 @ph7_value_int(ptr noundef %107, i32 noundef %108)
  %109 = load i32, ptr %isAssoc, align 4
  %tobool128 = icmp ne i32 %109, 0
  br i1 %tobool128, label %if.then129, label %if.else131

if.then129:                                       ; preds = %if.end125
  %110 = load ptr, ptr %pArray, align 8
  %111 = load ptr, ptr %pValue, align 8
  %call130 = call i32 @ph7_array_add_strkey_elem(ptr noundef %110, ptr noundef @.str.1060, ptr noundef %111)
  br label %if.end133

if.else131:                                       ; preds = %if.end125
  %112 = load ptr, ptr %pArray, align 8
  %113 = load ptr, ptr %pValue, align 8
  %call132 = call i32 @ph7_array_add_elem(ptr noundef %112, ptr noundef null, ptr noundef %113)
  br label %if.end133

if.end133:                                        ; preds = %if.else131, %if.then129
  %114 = load ptr, ptr %pCtx.addr, align 8
  %115 = load ptr, ptr %pArray, align 8
  %call134 = call i32 @ph7_result_value(ptr noundef %114, ptr noundef %115)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end133, %if.then54, %if.then49
  %116 = load i32, ptr %retval, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) #1

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
