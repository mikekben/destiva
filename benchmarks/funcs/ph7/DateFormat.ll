; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }

@.str.1032 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1033 = external hidden unnamed_addr constant [3 x i8], align 1
@aISO8601 = external hidden constant [7 x i32], align 16
@DateFormat.aMonDays = external hidden constant [12 x i32], align 16
@.str.1034 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1035 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1036 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1037 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1038 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1039 = external hidden unnamed_addr constant [3 x i8], align 1
@DateFormat.zSuffix = external hidden constant [21 x i8], align 16
@.str.1040 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1041 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.1042 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1043 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyTimeGetDay(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyTimeGetMonth(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @DateFormat(ptr noundef %pCtx, ptr noundef %zIn, i32 noundef %nLen, ptr noundef %pTm) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pTm.addr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %nDays = alloca i32, align 4
  %isLeap = alloca i32, align 4
  %v = alloca i32, align 4
  %tt = alloca i64, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pTm, ptr %pTm.addr, align 8
  %0 = load ptr, ptr %zIn.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %2 = load ptr, ptr %zIn.addr, align 8
  %3 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %zIn.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 100, label %sw.bb
    i32 68, label %sw.bb2
    i32 106, label %sw.bb5
    i32 108, label %sw.bb8
    i32 78, label %sw.bb12
    i32 119, label %sw.bb17
    i32 122, label %sw.bb20
    i32 70, label %sw.bb22
    i32 109, label %sw.bb25
    i32 77, label %sw.bb28
    i32 110, label %sw.bb32
    i32 116, label %sw.bb36
    i32 76, label %sw.bb58
    i32 111, label %sw.bb76
    i32 89, label %sw.bb79
    i32 121, label %sw.bb82
    i32 97, label %sw.bb86
    i32 65, label %sw.bb91
    i32 103, label %sw.bb97
    i32 71, label %sw.bb102
    i32 104, label %sw.bb105
    i32 72, label %sw.bb110
    i32 105, label %sw.bb113
    i32 115, label %sw.bb115
    i32 117, label %sw.bb117
    i32 83, label %sw.bb120
    i32 101, label %sw.bb134
    i32 73, label %sw.bb140
    i32 114, label %sw.bb144
    i32 85, label %sw.bb155
    i32 79, label %sw.bb159
    i32 80, label %sw.bb159
    i32 90, label %sw.bb161
    i32 99, label %sw.bb164
    i32 92, label %sw.bb174
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %7 = load ptr, ptr %pTm.addr, align 8
  %tm_mday = getelementptr inbounds nuw %struct.Sytm, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %tm_mday, align 4
  %call = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %6, ptr noundef @.str.1032, i32 noundef %8)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %9 = load ptr, ptr %pTm.addr, align 8
  %tm_wday = getelementptr inbounds nuw %struct.Sytm, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %tm_wday, align 8
  %call3 = call ptr @SyTimeGetDay(i32 noundef %10)
  store ptr %call3, ptr %zCur, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %zCur, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %12, i32 noundef 3)
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %13 = load ptr, ptr %pCtx.addr, align 8
  %14 = load ptr, ptr %pTm.addr, align 8
  %tm_mday6 = getelementptr inbounds nuw %struct.Sytm, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %tm_mday6, align 4
  %call7 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %13, ptr noundef @.str.1033, i32 noundef %15)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %16 = load ptr, ptr %pTm.addr, align 8
  %tm_wday9 = getelementptr inbounds nuw %struct.Sytm, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %tm_wday9, align 8
  %call10 = call ptr @SyTimeGetDay(i32 noundef %17)
  store ptr %call10, ptr %zCur, align 8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load ptr, ptr %zCur, align 8
  %call11 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %19, i32 noundef -1)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %20 = load ptr, ptr %pCtx.addr, align 8
  %21 = load ptr, ptr %pTm.addr, align 8
  %tm_wday13 = getelementptr inbounds nuw %struct.Sytm, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %tm_wday13, align 8
  %rem = srem i32 %22, 7
  %idxprom14 = sext i32 %rem to i64
  %arrayidx15 = getelementptr inbounds [7 x i32], ptr @aISO8601, i64 0, i64 %idxprom14
  %23 = load i32, ptr %arrayidx15, align 4
  %call16 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %20, ptr noundef @.str.1033, i32 noundef %23)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load ptr, ptr %pTm.addr, align 8
  %tm_wday18 = getelementptr inbounds nuw %struct.Sytm, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %tm_wday18, align 8
  %call19 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %24, ptr noundef @.str.1033, i32 noundef %26)
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  %27 = load ptr, ptr %pCtx.addr, align 8
  %28 = load ptr, ptr %pTm.addr, align 8
  %tm_yday = getelementptr inbounds nuw %struct.Sytm, ptr %28, i32 0, i32 7
  %29 = load i32, ptr %tm_yday, align 4
  %call21 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %27, ptr noundef @.str.1033, i32 noundef %29)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %30 = load ptr, ptr %pTm.addr, align 8
  %tm_mon = getelementptr inbounds nuw %struct.Sytm, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %tm_mon, align 8
  %call23 = call ptr @SyTimeGetMonth(i32 noundef %31)
  store ptr %call23, ptr %zCur, align 8
  %32 = load ptr, ptr %pCtx.addr, align 8
  %33 = load ptr, ptr %zCur, align 8
  %call24 = call i32 @ph7_result_string(ptr noundef %32, ptr noundef %33, i32 noundef -1)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %34 = load ptr, ptr %pCtx.addr, align 8
  %35 = load ptr, ptr %pTm.addr, align 8
  %tm_mon26 = getelementptr inbounds nuw %struct.Sytm, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %tm_mon26, align 8
  %add = add nsw i32 %36, 1
  %call27 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %34, ptr noundef @.str.1032, i32 noundef %add)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  %37 = load ptr, ptr %pTm.addr, align 8
  %tm_mon29 = getelementptr inbounds nuw %struct.Sytm, ptr %37, i32 0, i32 4
  %38 = load i32, ptr %tm_mon29, align 8
  %call30 = call ptr @SyTimeGetMonth(i32 noundef %38)
  store ptr %call30, ptr %zCur, align 8
  %39 = load ptr, ptr %pCtx.addr, align 8
  %40 = load ptr, ptr %zCur, align 8
  %call31 = call i32 @ph7_result_string(ptr noundef %39, ptr noundef %40, i32 noundef 3)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end
  %41 = load ptr, ptr %pCtx.addr, align 8
  %42 = load ptr, ptr %pTm.addr, align 8
  %tm_mon33 = getelementptr inbounds nuw %struct.Sytm, ptr %42, i32 0, i32 4
  %43 = load i32, ptr %tm_mon33, align 8
  %add34 = add nsw i32 %43, 1
  %call35 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %41, ptr noundef @.str.1033, i32 noundef %add34)
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  %44 = load ptr, ptr %pTm.addr, align 8
  %tm_mon37 = getelementptr inbounds nuw %struct.Sytm, ptr %44, i32 0, i32 4
  %45 = load i32, ptr %tm_mon37, align 8
  %rem38 = srem i32 %45, 12
  %idxprom39 = sext i32 %rem38 to i64
  %arrayidx40 = getelementptr inbounds [12 x i32], ptr @DateFormat.aMonDays, i64 0, i64 %idxprom39
  %46 = load i32, ptr %arrayidx40, align 4
  store i32 %46, ptr %nDays, align 4
  %47 = load ptr, ptr %pTm.addr, align 8
  %tm_mon41 = getelementptr inbounds nuw %struct.Sytm, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %tm_mon41, align 8
  %cmp42 = icmp eq i32 %48, 1
  br i1 %cmp42, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %sw.bb36
  %49 = load ptr, ptr %pTm.addr, align 8
  %tm_year = getelementptr inbounds nuw %struct.Sytm, ptr %49, i32 0, i32 5
  %50 = load i32, ptr %tm_year, align 4
  %rem44 = srem i32 %50, 400
  %tobool = icmp ne i32 %rem44, 0
  br i1 %tobool, label %cond.true, label %cond.false54

cond.true:                                        ; preds = %land.lhs.true
  %51 = load ptr, ptr %pTm.addr, align 8
  %tm_year45 = getelementptr inbounds nuw %struct.Sytm, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %tm_year45, align 4
  %rem46 = srem i32 %52, 100
  %tobool47 = icmp ne i32 %rem46, 0
  br i1 %tobool47, label %cond.true48, label %cond.false53

cond.true48:                                      ; preds = %cond.true
  %53 = load ptr, ptr %pTm.addr, align 8
  %tm_year49 = getelementptr inbounds nuw %struct.Sytm, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %tm_year49, align 4
  %rem50 = srem i32 %54, 4
  %tobool51 = icmp ne i32 %rem50, 0
  br i1 %tobool51, label %cond.true52, label %cond.false

cond.true52:                                      ; preds = %cond.true48
  br i1 false, label %if.end56, label %if.then55

cond.false:                                       ; preds = %cond.true48
  br i1 true, label %if.end56, label %if.then55

cond.false53:                                     ; preds = %cond.true
  br i1 false, label %if.end56, label %if.then55

cond.false54:                                     ; preds = %land.lhs.true
  br i1 true, label %if.end56, label %if.then55

if.then55:                                        ; preds = %cond.false54, %cond.false53, %cond.false, %cond.true52
  store i32 28, ptr %nDays, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %cond.false54, %cond.false53, %cond.false, %cond.true52, %sw.bb36
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load i32, ptr %nDays, align 4
  %call57 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %55, ptr noundef @.str.1033, i32 noundef %56)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end
  %57 = load ptr, ptr %pTm.addr, align 8
  %tm_year59 = getelementptr inbounds nuw %struct.Sytm, ptr %57, i32 0, i32 5
  %58 = load i32, ptr %tm_year59, align 4
  %rem60 = srem i32 %58, 400
  %tobool61 = icmp ne i32 %rem60, 0
  br i1 %tobool61, label %cond.true62, label %cond.false72

cond.true62:                                      ; preds = %sw.bb58
  %59 = load ptr, ptr %pTm.addr, align 8
  %tm_year63 = getelementptr inbounds nuw %struct.Sytm, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %tm_year63, align 4
  %rem64 = srem i32 %60, 100
  %tobool65 = icmp ne i32 %rem64, 0
  br i1 %tobool65, label %cond.true66, label %cond.false70

cond.true66:                                      ; preds = %cond.true62
  %61 = load ptr, ptr %pTm.addr, align 8
  %tm_year67 = getelementptr inbounds nuw %struct.Sytm, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %tm_year67, align 4
  %rem68 = srem i32 %62, 4
  %tobool69 = icmp ne i32 %rem68, 0
  %63 = zext i1 %tobool69 to i64
  %cond = select i1 %tobool69, i32 0, i32 1
  br label %cond.end

cond.false70:                                     ; preds = %cond.true62
  br label %cond.end

cond.end:                                         ; preds = %cond.false70, %cond.true66
  %cond71 = phi i32 [ %cond, %cond.true66 ], [ 0, %cond.false70 ]
  br label %cond.end73

cond.false72:                                     ; preds = %sw.bb58
  br label %cond.end73

cond.end73:                                       ; preds = %cond.false72, %cond.end
  %cond74 = phi i32 [ %cond71, %cond.end ], [ 1, %cond.false72 ]
  store i32 %cond74, ptr %isLeap, align 4
  %64 = load ptr, ptr %pCtx.addr, align 8
  %65 = load i32, ptr %isLeap, align 4
  %call75 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %64, ptr noundef @.str.1033, i32 noundef %65)
  br label %sw.epilog

sw.bb76:                                          ; preds = %if.end
  %66 = load ptr, ptr %pCtx.addr, align 8
  %67 = load ptr, ptr %pTm.addr, align 8
  %tm_year77 = getelementptr inbounds nuw %struct.Sytm, ptr %67, i32 0, i32 5
  %68 = load i32, ptr %tm_year77, align 4
  %call78 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %66, ptr noundef @.str.1034, i32 noundef %68)
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end
  %69 = load ptr, ptr %pCtx.addr, align 8
  %70 = load ptr, ptr %pTm.addr, align 8
  %tm_year80 = getelementptr inbounds nuw %struct.Sytm, ptr %70, i32 0, i32 5
  %71 = load i32, ptr %tm_year80, align 4
  %call81 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %69, ptr noundef @.str.1034, i32 noundef %71)
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end
  %72 = load ptr, ptr %pCtx.addr, align 8
  %73 = load ptr, ptr %pTm.addr, align 8
  %tm_year83 = getelementptr inbounds nuw %struct.Sytm, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %tm_year83, align 4
  %rem84 = srem i32 %74, 100
  %call85 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %72, ptr noundef @.str.1032, i32 noundef %rem84)
  br label %sw.epilog

sw.bb86:                                          ; preds = %if.end
  %75 = load ptr, ptr %pCtx.addr, align 8
  %76 = load ptr, ptr %pTm.addr, align 8
  %tm_hour = getelementptr inbounds nuw %struct.Sytm, ptr %76, i32 0, i32 2
  %77 = load i32, ptr %tm_hour, align 8
  %cmp87 = icmp sgt i32 %77, 12
  %78 = zext i1 %cmp87 to i64
  %cond89 = select i1 %cmp87, ptr @.str.1035, ptr @.str.1036
  %call90 = call i32 @ph7_result_string(ptr noundef %75, ptr noundef %cond89, i32 noundef 2)
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end
  %79 = load ptr, ptr %pCtx.addr, align 8
  %80 = load ptr, ptr %pTm.addr, align 8
  %tm_hour92 = getelementptr inbounds nuw %struct.Sytm, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %tm_hour92, align 8
  %cmp93 = icmp sgt i32 %81, 12
  %82 = zext i1 %cmp93 to i64
  %cond95 = select i1 %cmp93, ptr @.str.1037, ptr @.str.1038
  %call96 = call i32 @ph7_result_string(ptr noundef %79, ptr noundef %cond95, i32 noundef 2)
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end
  %83 = load ptr, ptr %pCtx.addr, align 8
  %84 = load ptr, ptr %pTm.addr, align 8
  %tm_hour98 = getelementptr inbounds nuw %struct.Sytm, ptr %84, i32 0, i32 2
  %85 = load i32, ptr %tm_hour98, align 8
  %rem99 = srem i32 %85, 12
  %add100 = add nsw i32 1, %rem99
  %call101 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %83, ptr noundef @.str.1033, i32 noundef %add100)
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end
  %86 = load ptr, ptr %pCtx.addr, align 8
  %87 = load ptr, ptr %pTm.addr, align 8
  %tm_hour103 = getelementptr inbounds nuw %struct.Sytm, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %tm_hour103, align 8
  %call104 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %86, ptr noundef @.str.1033, i32 noundef %88)
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end
  %89 = load ptr, ptr %pCtx.addr, align 8
  %90 = load ptr, ptr %pTm.addr, align 8
  %tm_hour106 = getelementptr inbounds nuw %struct.Sytm, ptr %90, i32 0, i32 2
  %91 = load i32, ptr %tm_hour106, align 8
  %rem107 = srem i32 %91, 12
  %add108 = add nsw i32 1, %rem107
  %call109 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %89, ptr noundef @.str.1032, i32 noundef %add108)
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end
  %92 = load ptr, ptr %pCtx.addr, align 8
  %93 = load ptr, ptr %pTm.addr, align 8
  %tm_hour111 = getelementptr inbounds nuw %struct.Sytm, ptr %93, i32 0, i32 2
  %94 = load i32, ptr %tm_hour111, align 8
  %call112 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %92, ptr noundef @.str.1032, i32 noundef %94)
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end
  %95 = load ptr, ptr %pCtx.addr, align 8
  %96 = load ptr, ptr %pTm.addr, align 8
  %tm_min = getelementptr inbounds nuw %struct.Sytm, ptr %96, i32 0, i32 1
  %97 = load i32, ptr %tm_min, align 4
  %call114 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %95, ptr noundef @.str.1032, i32 noundef %97)
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end
  %98 = load ptr, ptr %pCtx.addr, align 8
  %99 = load ptr, ptr %pTm.addr, align 8
  %tm_sec = getelementptr inbounds nuw %struct.Sytm, ptr %99, i32 0, i32 0
  %100 = load i32, ptr %tm_sec, align 8
  %call116 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %98, ptr noundef @.str.1032, i32 noundef %100)
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end
  %101 = load ptr, ptr %pCtx.addr, align 8
  %102 = load ptr, ptr %pTm.addr, align 8
  %tm_sec118 = getelementptr inbounds nuw %struct.Sytm, ptr %102, i32 0, i32 0
  %103 = load i32, ptr %tm_sec118, align 8
  %mul = mul nsw i32 %103, 1000000
  %call119 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %101, ptr noundef @.str.1039, i32 noundef %mul)
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end
  %104 = load ptr, ptr %pTm.addr, align 8
  %tm_mday121 = getelementptr inbounds nuw %struct.Sytm, ptr %104, i32 0, i32 3
  %105 = load i32, ptr %tm_mday121, align 4
  store i32 %105, ptr %v, align 4
  %106 = load ptr, ptr %pCtx.addr, align 8
  %107 = load i32, ptr %v, align 4
  %div = sdiv i32 %107, 10
  %rem122 = srem i32 %div, 10
  %cmp123 = icmp ne i32 %rem122, 1
  br i1 %cmp123, label %cond.true125, label %cond.false127

cond.true125:                                     ; preds = %sw.bb120
  %108 = load i32, ptr %v, align 4
  %rem126 = srem i32 %108, 10
  br label %cond.end128

cond.false127:                                    ; preds = %sw.bb120
  br label %cond.end128

cond.end128:                                      ; preds = %cond.false127, %cond.true125
  %cond129 = phi i32 [ %rem126, %cond.true125 ], [ 0, %cond.false127 ]
  %mul130 = mul nsw i32 2, %cond129
  %idxprom131 = sext i32 %mul130 to i64
  %arrayidx132 = getelementptr inbounds [21 x i8], ptr @DateFormat.zSuffix, i64 0, i64 %idxprom131
  %call133 = call i32 @ph7_result_string(ptr noundef %106, ptr noundef %arrayidx132, i32 noundef 2)
  br label %sw.epilog

sw.bb134:                                         ; preds = %if.end
  %109 = load ptr, ptr %pTm.addr, align 8
  %tm_zone = getelementptr inbounds nuw %struct.Sytm, ptr %109, i32 0, i32 9
  %110 = load ptr, ptr %tm_zone, align 8
  store ptr %110, ptr %zCur, align 8
  %111 = load ptr, ptr %zCur, align 8
  %cmp135 = icmp eq ptr %111, null
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %sw.bb134
  store ptr @.str.1040, ptr %zCur, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %sw.bb134
  %112 = load ptr, ptr %pCtx.addr, align 8
  %113 = load ptr, ptr %zCur, align 8
  %call139 = call i32 @ph7_result_string(ptr noundef %112, ptr noundef %113, i32 noundef -1)
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end
  %114 = load ptr, ptr %pCtx.addr, align 8
  %115 = load ptr, ptr %pTm.addr, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.Sytm, ptr %115, i32 0, i32 8
  %116 = load i32, ptr %tm_isdst, align 8
  %cmp141 = icmp eq i32 %116, 1
  %conv142 = zext i1 %cmp141 to i32
  %call143 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %114, ptr noundef @.str.1033, i32 noundef %conv142)
  br label %sw.epilog

sw.bb144:                                         ; preds = %if.end
  %117 = load ptr, ptr %pCtx.addr, align 8
  %118 = load ptr, ptr %pTm.addr, align 8
  %tm_wday145 = getelementptr inbounds nuw %struct.Sytm, ptr %118, i32 0, i32 6
  %119 = load i32, ptr %tm_wday145, align 8
  %call146 = call ptr @SyTimeGetDay(i32 noundef %119)
  %120 = load ptr, ptr %pTm.addr, align 8
  %tm_mday147 = getelementptr inbounds nuw %struct.Sytm, ptr %120, i32 0, i32 3
  %121 = load i32, ptr %tm_mday147, align 4
  %122 = load ptr, ptr %pTm.addr, align 8
  %tm_mon148 = getelementptr inbounds nuw %struct.Sytm, ptr %122, i32 0, i32 4
  %123 = load i32, ptr %tm_mon148, align 8
  %call149 = call ptr @SyTimeGetMonth(i32 noundef %123)
  %124 = load ptr, ptr %pTm.addr, align 8
  %tm_year150 = getelementptr inbounds nuw %struct.Sytm, ptr %124, i32 0, i32 5
  %125 = load i32, ptr %tm_year150, align 4
  %126 = load ptr, ptr %pTm.addr, align 8
  %tm_hour151 = getelementptr inbounds nuw %struct.Sytm, ptr %126, i32 0, i32 2
  %127 = load i32, ptr %tm_hour151, align 8
  %128 = load ptr, ptr %pTm.addr, align 8
  %tm_min152 = getelementptr inbounds nuw %struct.Sytm, ptr %128, i32 0, i32 1
  %129 = load i32, ptr %tm_min152, align 4
  %130 = load ptr, ptr %pTm.addr, align 8
  %tm_sec153 = getelementptr inbounds nuw %struct.Sytm, ptr %130, i32 0, i32 0
  %131 = load i32, ptr %tm_sec153, align 8
  %call154 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %117, ptr noundef @.str.1041, ptr noundef %call146, i32 noundef %121, ptr noundef %call149, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131)
  br label %sw.epilog

sw.bb155:                                         ; preds = %if.end
  %call156 = call i64 @time(ptr noundef %tt) #2
  %132 = load ptr, ptr %pCtx.addr, align 8
  %133 = load i64, ptr %tt, align 8
  %conv157 = trunc i64 %133 to i32
  %call158 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %132, ptr noundef @.str.1039, i32 noundef %conv157)
  br label %sw.epilog

sw.bb159:                                         ; preds = %if.end, %if.end
  %134 = load ptr, ptr %pCtx.addr, align 8
  %135 = load ptr, ptr %pTm.addr, align 8
  %tm_gmtoff = getelementptr inbounds nuw %struct.Sytm, ptr %135, i32 0, i32 10
  %136 = load i64, ptr %tm_gmtoff, align 8
  %call160 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %134, ptr noundef @.str.1042, i64 noundef %136)
  br label %sw.epilog

sw.bb161:                                         ; preds = %if.end
  %137 = load ptr, ptr %pCtx.addr, align 8
  %138 = load ptr, ptr %pTm.addr, align 8
  %tm_gmtoff162 = getelementptr inbounds nuw %struct.Sytm, ptr %138, i32 0, i32 10
  %139 = load i64, ptr %tm_gmtoff162, align 8
  %call163 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %137, ptr noundef @.str.1042, i64 noundef %139)
  br label %sw.epilog

sw.bb164:                                         ; preds = %if.end
  %140 = load ptr, ptr %pCtx.addr, align 8
  %141 = load ptr, ptr %pTm.addr, align 8
  %tm_year165 = getelementptr inbounds nuw %struct.Sytm, ptr %141, i32 0, i32 5
  %142 = load i32, ptr %tm_year165, align 4
  %143 = load ptr, ptr %pTm.addr, align 8
  %tm_mon166 = getelementptr inbounds nuw %struct.Sytm, ptr %143, i32 0, i32 4
  %144 = load i32, ptr %tm_mon166, align 8
  %add167 = add nsw i32 %144, 1
  %145 = load ptr, ptr %pTm.addr, align 8
  %tm_mday168 = getelementptr inbounds nuw %struct.Sytm, ptr %145, i32 0, i32 3
  %146 = load i32, ptr %tm_mday168, align 4
  %147 = load ptr, ptr %pTm.addr, align 8
  %tm_hour169 = getelementptr inbounds nuw %struct.Sytm, ptr %147, i32 0, i32 2
  %148 = load i32, ptr %tm_hour169, align 8
  %149 = load ptr, ptr %pTm.addr, align 8
  %tm_min170 = getelementptr inbounds nuw %struct.Sytm, ptr %149, i32 0, i32 1
  %150 = load i32, ptr %tm_min170, align 4
  %151 = load ptr, ptr %pTm.addr, align 8
  %tm_sec171 = getelementptr inbounds nuw %struct.Sytm, ptr %151, i32 0, i32 0
  %152 = load i32, ptr %tm_sec171, align 8
  %153 = load ptr, ptr %pTm.addr, align 8
  %tm_gmtoff172 = getelementptr inbounds nuw %struct.Sytm, ptr %153, i32 0, i32 10
  %154 = load i64, ptr %tm_gmtoff172, align 8
  %call173 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %140, ptr noundef @.str.1043, i32 noundef %142, i32 noundef %add167, i32 noundef %146, i32 noundef %148, i32 noundef %150, i32 noundef %152, i64 noundef %154)
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.end
  %155 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %155, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  %156 = load ptr, ptr %zIn.addr, align 8
  %157 = load ptr, ptr %zEnd, align 8
  %cmp175 = icmp ult ptr %156, %157
  br i1 %cmp175, label %if.then177, label %if.end179

if.then177:                                       ; preds = %sw.bb174
  %158 = load ptr, ptr %pCtx.addr, align 8
  %159 = load ptr, ptr %zIn.addr, align 8
  %call178 = call i32 @ph7_result_string(ptr noundef %158, ptr noundef %159, i32 noundef 1)
  br label %if.end179

if.end179:                                        ; preds = %if.then177, %sw.bb174
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %160 = load ptr, ptr %pCtx.addr, align 8
  %161 = load ptr, ptr %zIn.addr, align 8
  %call180 = call i32 @ph7_result_string(ptr noundef %160, ptr noundef %161, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end179, %sw.bb164, %sw.bb161, %sw.bb159, %sw.bb155, %sw.bb144, %sw.bb140, %if.end138, %cond.end128, %sw.bb117, %sw.bb115, %sw.bb113, %sw.bb110, %sw.bb105, %sw.bb102, %sw.bb97, %sw.bb91, %sw.bb86, %sw.bb82, %sw.bb79, %sw.bb76, %cond.end73, %if.end56, %sw.bb32, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb20, %sw.bb17, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %162 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr181 = getelementptr inbounds nuw i8, ptr %162, i32 1
  store ptr %incdec.ptr181, ptr %zIn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  ret i32 0
}

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
