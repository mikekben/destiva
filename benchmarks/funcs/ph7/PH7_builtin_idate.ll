; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@PH7_builtin_idate.aMonDays = external hidden constant [12 x i32], align 16
@PH7_builtin_idate.aISO8601 = external hidden constant [7 x i32], align 16
@.str.1051 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_idate(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zFormat = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %nLen = alloca i32, align 4
  %sTm = alloca %struct.Sytm, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  %t21 = alloca i64, align 8
  %pTm22 = alloca ptr, align 8
  %nDays = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i64 0, ptr %iVal, align 8
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
  %call1 = call i32 @ph7_result_int(ptr noundef %3, i32 noundef -1)
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
  %call6 = call i32 @ph7_result_int(ptr noundef %7, i32 noundef -1)
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
  %50 = load ptr, ptr %zFormat, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx60, align 1
  %conv = sext i8 %51 to i32
  switch i32 %conv, label %sw.default [
    i32 100, label %sw.bb
    i32 104, label %sw.bb63
    i32 72, label %sw.bb67
    i32 105, label %sw.bb70
    i32 73, label %sw.bb73
    i32 76, label %sw.bb76
    i32 109, label %sw.bb92
    i32 115, label %sw.bb95
    i32 116, label %sw.bb98
    i32 85, label %sw.bb123
    i32 119, label %sw.bb125
    i32 87, label %sw.bb128
    i32 121, label %sw.bb134
    i32 89, label %sw.bb138
    i32 122, label %sw.bb141
    i32 90, label %sw.bb144
  ]

sw.bb:                                            ; preds = %if.end59
  %tm_mday61 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  %52 = load i32, ptr %tm_mday61, align 4
  %conv62 = sext i32 %52 to i64
  store i64 %conv62, ptr %iVal, align 8
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end59
  %tm_hour64 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  %53 = load i32, ptr %tm_hour64, align 8
  %rem = srem i32 %53, 12
  %add65 = add nsw i32 1, %rem
  %conv66 = sext i32 %add65 to i64
  store i64 %conv66, ptr %iVal, align 8
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end59
  %tm_hour68 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  %54 = load i32, ptr %tm_hour68, align 8
  %conv69 = sext i32 %54 to i64
  store i64 %conv69, ptr %iVal, align 8
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end59
  %tm_min71 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  %55 = load i32, ptr %tm_min71, align 4
  %conv72 = sext i32 %55 to i64
  store i64 %conv72, ptr %iVal, align 8
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end59
  %tm_isdst74 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  %56 = load i32, ptr %tm_isdst74, align 8
  %conv75 = sext i32 %56 to i64
  store i64 %conv75, ptr %iVal, align 8
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end59
  %tm_year77 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %57 = load i32, ptr %tm_year77, align 4
  %rem78 = srem i32 %57, 400
  %tobool79 = icmp ne i32 %rem78, 0
  br i1 %tobool79, label %cond.true, label %cond.false88

cond.true:                                        ; preds = %sw.bb76
  %tm_year80 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %58 = load i32, ptr %tm_year80, align 4
  %rem81 = srem i32 %58, 100
  %tobool82 = icmp ne i32 %rem81, 0
  br i1 %tobool82, label %cond.true83, label %cond.false

cond.true83:                                      ; preds = %cond.true
  %tm_year84 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %59 = load i32, ptr %tm_year84, align 4
  %rem85 = srem i32 %59, 4
  %tobool86 = icmp ne i32 %rem85, 0
  %60 = zext i1 %tobool86 to i64
  %cond = select i1 %tobool86, i32 0, i32 1
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true83
  %cond87 = phi i32 [ %cond, %cond.true83 ], [ 0, %cond.false ]
  br label %cond.end89

cond.false88:                                     ; preds = %sw.bb76
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %cond.end
  %cond90 = phi i32 [ %cond87, %cond.end ], [ 1, %cond.false88 ]
  %conv91 = sext i32 %cond90 to i64
  store i64 %conv91, ptr %iVal, align 8
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end59
  %tm_mon93 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %61 = load i32, ptr %tm_mon93, align 8
  %conv94 = sext i32 %61 to i64
  store i64 %conv94, ptr %iVal, align 8
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end59
  %tm_sec96 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  %62 = load i32, ptr %tm_sec96, align 8
  %conv97 = sext i32 %62 to i64
  store i64 %conv97, ptr %iVal, align 8
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end59
  %tm_mon99 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %63 = load i32, ptr %tm_mon99, align 8
  %rem100 = srem i32 %63, 12
  %idxprom = sext i32 %rem100 to i64
  %arrayidx101 = getelementptr inbounds [12 x i32], ptr @PH7_builtin_idate.aMonDays, i64 0, i64 %idxprom
  %64 = load i32, ptr %arrayidx101, align 4
  store i32 %64, ptr %nDays, align 4
  %tm_mon102 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %65 = load i32, ptr %tm_mon102, align 8
  %cmp103 = icmp eq i32 %65, 1
  br i1 %cmp103, label %land.lhs.true, label %if.end121

land.lhs.true:                                    ; preds = %sw.bb98
  %tm_year105 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %66 = load i32, ptr %tm_year105, align 4
  %rem106 = srem i32 %66, 400
  %tobool107 = icmp ne i32 %rem106, 0
  br i1 %tobool107, label %cond.true108, label %cond.false119

cond.true108:                                     ; preds = %land.lhs.true
  %tm_year109 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %67 = load i32, ptr %tm_year109, align 4
  %rem110 = srem i32 %67, 100
  %tobool111 = icmp ne i32 %rem110, 0
  br i1 %tobool111, label %cond.true112, label %cond.false118

cond.true112:                                     ; preds = %cond.true108
  %tm_year113 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %68 = load i32, ptr %tm_year113, align 4
  %rem114 = srem i32 %68, 4
  %tobool115 = icmp ne i32 %rem114, 0
  br i1 %tobool115, label %cond.true116, label %cond.false117

cond.true116:                                     ; preds = %cond.true112
  br i1 false, label %if.end121, label %if.then120

cond.false117:                                    ; preds = %cond.true112
  br i1 true, label %if.end121, label %if.then120

cond.false118:                                    ; preds = %cond.true108
  br i1 false, label %if.end121, label %if.then120

cond.false119:                                    ; preds = %land.lhs.true
  br i1 true, label %if.end121, label %if.then120

if.then120:                                       ; preds = %cond.false119, %cond.false118, %cond.false117, %cond.true116
  store i32 28, ptr %nDays, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then120, %cond.false119, %cond.false118, %cond.false117, %cond.true116, %sw.bb98
  %69 = load i32, ptr %nDays, align 4
  %conv122 = sext i32 %69 to i64
  store i64 %conv122, ptr %iVal, align 8
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end59
  %call124 = call i64 @time(ptr noundef null) #2
  store i64 %call124, ptr %iVal, align 8
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.end59
  %tm_wday126 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  %70 = load i32, ptr %tm_wday126, align 8
  %conv127 = sext i32 %70 to i64
  store i64 %conv127, ptr %iVal, align 8
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end59
  %tm_wday129 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  %71 = load i32, ptr %tm_wday129, align 8
  %rem130 = srem i32 %71, 7
  %idxprom131 = sext i32 %rem130 to i64
  %arrayidx132 = getelementptr inbounds [7 x i32], ptr @PH7_builtin_idate.aISO8601, i64 0, i64 %idxprom131
  %72 = load i32, ptr %arrayidx132, align 4
  %conv133 = sext i32 %72 to i64
  store i64 %conv133, ptr %iVal, align 8
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end59
  %tm_year135 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %73 = load i32, ptr %tm_year135, align 4
  %rem136 = srem i32 %73, 100
  %conv137 = sext i32 %rem136 to i64
  store i64 %conv137, ptr %iVal, align 8
  br label %sw.epilog

sw.bb138:                                         ; preds = %if.end59
  %tm_year139 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %74 = load i32, ptr %tm_year139, align 4
  %conv140 = sext i32 %74 to i64
  store i64 %conv140, ptr %iVal, align 8
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end59
  %tm_yday142 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  %75 = load i32, ptr %tm_yday142, align 4
  %conv143 = sext i32 %75 to i64
  store i64 %conv143, ptr %iVal, align 8
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end59
  %tm_gmtoff145 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  %76 = load i64, ptr %tm_gmtoff145, align 8
  store i64 %76, ptr %iVal, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end59
  %77 = load ptr, ptr %pCtx.addr, align 8
  %call146 = call i32 @ph7_context_throw_error(ptr noundef %77, i32 noundef 2, ptr noundef @.str.1051)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb144, %sw.bb141, %sw.bb138, %sw.bb134, %sw.bb128, %sw.bb125, %sw.bb123, %if.end121, %sw.bb95, %sw.bb92, %cond.end89, %sw.bb73, %sw.bb70, %sw.bb67, %sw.bb63, %sw.bb
  %78 = load ptr, ptr %pCtx.addr, align 8
  %79 = load i64, ptr %iVal, align 8
  %call147 = call i32 @ph7_result_int64(ptr noundef %78, i64 noundef %79)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
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
