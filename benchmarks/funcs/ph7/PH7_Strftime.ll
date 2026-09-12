; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.59 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.239 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.817 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.1032 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1033 = external hidden unnamed_addr constant [3 x i8], align 1
@aISO8601 = external hidden constant [7 x i32], align 16
@.str.1034 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1035 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1036 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1037 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1038 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1039 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1040 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1044 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1045 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1046 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1047 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.1048 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.1049 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.1050 = external hidden unnamed_addr constant [28 x i8], align 1

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
define hidden i32 @PH7_Strftime(ptr noundef %pCtx, ptr noundef %zIn, i32 noundef %nLen, ptr noundef %pTm) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %zIn.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pTm.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
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
  store ptr %2, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %3 = load ptr, ptr %zIn.addr, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %zIn.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp ne i32 %conv, 37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %zIn.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %zIn.addr, align 8
  %10 = load ptr, ptr %zCur, align 8
  %cmp4 = icmp ugt ptr %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %zCur, align 8
  %13 = load ptr, ptr %zIn.addr, align 8
  %14 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  %call = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %12, i32 noundef %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %15 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr7, ptr %zIn.addr, align 8
  %16 = load ptr, ptr %zIn.addr, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp8 = icmp uge ptr %16, %17
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %for.end

if.end11:                                         ; preds = %if.end
  %18 = load ptr, ptr %zIn.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %19 to i32
  store i32 %conv13, ptr %c, align 4
  %20 = load i32, ptr %c, align 4
  switch i32 %20, label %sw.default [
    i32 37, label %sw.bb
    i32 116, label %sw.bb15
    i32 110, label %sw.bb17
    i32 97, label %sw.bb19
    i32 65, label %sw.bb22
    i32 101, label %sw.bb26
    i32 100, label %sw.bb28
    i32 106, label %sw.bb30
    i32 117, label %sw.bb32
    i32 119, label %sw.bb37
    i32 98, label %sw.bb40
    i32 104, label %sw.bb40
    i32 66, label %sw.bb44
    i32 109, label %sw.bb48
    i32 67, label %sw.bb52
    i32 121, label %sw.bb54
    i32 103, label %sw.bb54
    i32 89, label %sw.bb58
    i32 71, label %sw.bb58
    i32 73, label %sw.bb61
    i32 108, label %sw.bb65
    i32 72, label %sw.bb70
    i32 77, label %sw.bb73
    i32 83, label %sw.bb75
    i32 122, label %sw.bb77
    i32 90, label %sw.bb77
    i32 84, label %sw.bb83
    i32 88, label %sw.bb83
    i32 82, label %sw.bb88
    i32 80, label %sw.bb92
    i32 112, label %sw.bb97
    i32 114, label %sw.bb103
    i32 68, label %sw.bb114
    i32 120, label %sw.bb114
    i32 70, label %sw.bb121
    i32 99, label %sw.bb127
    i32 115, label %sw.bb136
  ]

sw.bb:                                            ; preds = %if.end11
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_string(ptr noundef %21, ptr noundef @.str.59, i32 noundef 1)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call i32 @ph7_result_string(ptr noundef %22, ptr noundef @.str.239, i32 noundef 1)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end11
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef @.str.47, i32 noundef 1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end11
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load ptr, ptr %pTm.addr, align 8
  %tm_wday = getelementptr inbounds nuw %struct.Sytm, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %tm_wday, align 8
  %call20 = call ptr @SyTimeGetDay(i32 noundef %26)
  %call21 = call i32 @ph7_result_string(ptr noundef %24, ptr noundef %call20, i32 noundef 3)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end11
  %27 = load ptr, ptr %pCtx.addr, align 8
  %28 = load ptr, ptr %pTm.addr, align 8
  %tm_wday23 = getelementptr inbounds nuw %struct.Sytm, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %tm_wday23, align 8
  %call24 = call ptr @SyTimeGetDay(i32 noundef %29)
  %call25 = call i32 @ph7_result_string(ptr noundef %27, ptr noundef %call24, i32 noundef -1)
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end11
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load ptr, ptr %pTm.addr, align 8
  %tm_mday = getelementptr inbounds nuw %struct.Sytm, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %tm_mday, align 4
  %call27 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %30, ptr noundef @.str.1044, i32 noundef %32)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end11
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load ptr, ptr %pTm.addr, align 8
  %tm_mon = getelementptr inbounds nuw %struct.Sytm, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %tm_mon, align 8
  %add = add nsw i32 %35, 1
  %call29 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %33, ptr noundef @.str.1032, i32 noundef %add)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end11
  %36 = load ptr, ptr %pCtx.addr, align 8
  %37 = load ptr, ptr %pTm.addr, align 8
  %tm_yday = getelementptr inbounds nuw %struct.Sytm, ptr %37, i32 0, i32 7
  %38 = load i32, ptr %tm_yday, align 4
  %call31 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %36, ptr noundef @.str.1045, i32 noundef %38)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end11
  %39 = load ptr, ptr %pCtx.addr, align 8
  %40 = load ptr, ptr %pTm.addr, align 8
  %tm_wday33 = getelementptr inbounds nuw %struct.Sytm, ptr %40, i32 0, i32 6
  %41 = load i32, ptr %tm_wday33, align 8
  %rem = srem i32 %41, 7
  %idxprom34 = sext i32 %rem to i64
  %arrayidx35 = getelementptr inbounds [7 x i32], ptr @aISO8601, i64 0, i64 %idxprom34
  %42 = load i32, ptr %arrayidx35, align 4
  %call36 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %39, ptr noundef @.str.1033, i32 noundef %42)
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end11
  %43 = load ptr, ptr %pCtx.addr, align 8
  %44 = load ptr, ptr %pTm.addr, align 8
  %tm_wday38 = getelementptr inbounds nuw %struct.Sytm, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %tm_wday38, align 8
  %call39 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %43, ptr noundef @.str.1033, i32 noundef %45)
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end11, %if.end11
  %46 = load ptr, ptr %pCtx.addr, align 8
  %47 = load ptr, ptr %pTm.addr, align 8
  %tm_mon41 = getelementptr inbounds nuw %struct.Sytm, ptr %47, i32 0, i32 4
  %48 = load i32, ptr %tm_mon41, align 8
  %call42 = call ptr @SyTimeGetMonth(i32 noundef %48)
  %call43 = call i32 @ph7_result_string(ptr noundef %46, ptr noundef %call42, i32 noundef 3)
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end11
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load ptr, ptr %pTm.addr, align 8
  %tm_mon45 = getelementptr inbounds nuw %struct.Sytm, ptr %50, i32 0, i32 4
  %51 = load i32, ptr %tm_mon45, align 8
  %call46 = call ptr @SyTimeGetMonth(i32 noundef %51)
  %call47 = call i32 @ph7_result_string(ptr noundef %49, ptr noundef %call46, i32 noundef -1)
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end11
  %52 = load ptr, ptr %pCtx.addr, align 8
  %53 = load ptr, ptr %pTm.addr, align 8
  %tm_mon49 = getelementptr inbounds nuw %struct.Sytm, ptr %53, i32 0, i32 4
  %54 = load i32, ptr %tm_mon49, align 8
  %add50 = add nsw i32 %54, 1
  %call51 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %52, ptr noundef @.str.1032, i32 noundef %add50)
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end11
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load ptr, ptr %pTm.addr, align 8
  %tm_year = getelementptr inbounds nuw %struct.Sytm, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %tm_year, align 4
  %div = sdiv i32 %57, 100
  %call53 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %55, ptr noundef @.str.1044, i32 noundef %div)
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end11, %if.end11
  %58 = load ptr, ptr %pCtx.addr, align 8
  %59 = load ptr, ptr %pTm.addr, align 8
  %tm_year55 = getelementptr inbounds nuw %struct.Sytm, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %tm_year55, align 4
  %rem56 = srem i32 %60, 100
  %call57 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %58, ptr noundef @.str.1044, i32 noundef %rem56)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end11, %if.end11
  %61 = load ptr, ptr %pCtx.addr, align 8
  %62 = load ptr, ptr %pTm.addr, align 8
  %tm_year59 = getelementptr inbounds nuw %struct.Sytm, ptr %62, i32 0, i32 5
  %63 = load i32, ptr %tm_year59, align 4
  %call60 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %61, ptr noundef @.str.1034, i32 noundef %63)
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end11
  %64 = load ptr, ptr %pCtx.addr, align 8
  %65 = load ptr, ptr %pTm.addr, align 8
  %tm_hour = getelementptr inbounds nuw %struct.Sytm, ptr %65, i32 0, i32 2
  %66 = load i32, ptr %tm_hour, align 8
  %rem62 = srem i32 %66, 12
  %add63 = add nsw i32 1, %rem62
  %call64 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %64, ptr noundef @.str.1032, i32 noundef %add63)
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end11
  %67 = load ptr, ptr %pCtx.addr, align 8
  %68 = load ptr, ptr %pTm.addr, align 8
  %tm_hour66 = getelementptr inbounds nuw %struct.Sytm, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %tm_hour66, align 8
  %rem67 = srem i32 %69, 12
  %add68 = add nsw i32 1, %rem67
  %call69 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %67, ptr noundef @.str.1044, i32 noundef %add68)
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end11
  %70 = load ptr, ptr %pCtx.addr, align 8
  %71 = load ptr, ptr %pTm.addr, align 8
  %tm_hour71 = getelementptr inbounds nuw %struct.Sytm, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %tm_hour71, align 8
  %call72 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %70, ptr noundef @.str.1032, i32 noundef %72)
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end11
  %73 = load ptr, ptr %pCtx.addr, align 8
  %74 = load ptr, ptr %pTm.addr, align 8
  %tm_min = getelementptr inbounds nuw %struct.Sytm, ptr %74, i32 0, i32 1
  %75 = load i32, ptr %tm_min, align 4
  %call74 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %73, ptr noundef @.str.1032, i32 noundef %75)
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end11
  %76 = load ptr, ptr %pCtx.addr, align 8
  %77 = load ptr, ptr %pTm.addr, align 8
  %tm_sec = getelementptr inbounds nuw %struct.Sytm, ptr %77, i32 0, i32 0
  %78 = load i32, ptr %tm_sec, align 8
  %call76 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %76, ptr noundef @.str.1032, i32 noundef %78)
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end11, %if.end11
  %79 = load ptr, ptr %pTm.addr, align 8
  %tm_zone = getelementptr inbounds nuw %struct.Sytm, ptr %79, i32 0, i32 9
  %80 = load ptr, ptr %tm_zone, align 8
  store ptr %80, ptr %zCur, align 8
  %81 = load ptr, ptr %zCur, align 8
  %cmp78 = icmp eq ptr %81, null
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %sw.bb77
  store ptr @.str.1040, ptr %zCur, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %sw.bb77
  %82 = load ptr, ptr %pCtx.addr, align 8
  %83 = load ptr, ptr %zCur, align 8
  %call82 = call i32 @ph7_result_string(ptr noundef %82, ptr noundef %83, i32 noundef -1)
  br label %sw.epilog

sw.bb83:                                          ; preds = %if.end11, %if.end11
  %84 = load ptr, ptr %pCtx.addr, align 8
  %85 = load ptr, ptr %pTm.addr, align 8
  %tm_hour84 = getelementptr inbounds nuw %struct.Sytm, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %tm_hour84, align 8
  %87 = load ptr, ptr %pTm.addr, align 8
  %tm_min85 = getelementptr inbounds nuw %struct.Sytm, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %tm_min85, align 4
  %89 = load ptr, ptr %pTm.addr, align 8
  %tm_sec86 = getelementptr inbounds nuw %struct.Sytm, ptr %89, i32 0, i32 0
  %90 = load i32, ptr %tm_sec86, align 8
  %call87 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %84, ptr noundef @.str.817, i32 noundef %86, i32 noundef %88, i32 noundef %90)
  br label %sw.epilog

sw.bb88:                                          ; preds = %if.end11
  %91 = load ptr, ptr %pCtx.addr, align 8
  %92 = load ptr, ptr %pTm.addr, align 8
  %tm_hour89 = getelementptr inbounds nuw %struct.Sytm, ptr %92, i32 0, i32 2
  %93 = load i32, ptr %tm_hour89, align 8
  %94 = load ptr, ptr %pTm.addr, align 8
  %tm_min90 = getelementptr inbounds nuw %struct.Sytm, ptr %94, i32 0, i32 1
  %95 = load i32, ptr %tm_min90, align 4
  %call91 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %91, ptr noundef @.str.1046, i32 noundef %93, i32 noundef %95)
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end11
  %96 = load ptr, ptr %pCtx.addr, align 8
  %97 = load ptr, ptr %pTm.addr, align 8
  %tm_hour93 = getelementptr inbounds nuw %struct.Sytm, ptr %97, i32 0, i32 2
  %98 = load i32, ptr %tm_hour93, align 8
  %cmp94 = icmp sgt i32 %98, 12
  %99 = zext i1 %cmp94 to i64
  %cond = select i1 %cmp94, ptr @.str.1035, ptr @.str.1036
  %call96 = call i32 @ph7_result_string(ptr noundef %96, ptr noundef %cond, i32 noundef 2)
  br label %sw.epilog

sw.bb97:                                          ; preds = %if.end11
  %100 = load ptr, ptr %pCtx.addr, align 8
  %101 = load ptr, ptr %pTm.addr, align 8
  %tm_hour98 = getelementptr inbounds nuw %struct.Sytm, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %tm_hour98, align 8
  %cmp99 = icmp sgt i32 %102, 12
  %103 = zext i1 %cmp99 to i64
  %cond101 = select i1 %cmp99, ptr @.str.1037, ptr @.str.1038
  %call102 = call i32 @ph7_result_string(ptr noundef %100, ptr noundef %cond101, i32 noundef 2)
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end11
  %104 = load ptr, ptr %pCtx.addr, align 8
  %105 = load ptr, ptr %pTm.addr, align 8
  %tm_hour104 = getelementptr inbounds nuw %struct.Sytm, ptr %105, i32 0, i32 2
  %106 = load i32, ptr %tm_hour104, align 8
  %rem105 = srem i32 %106, 12
  %add106 = add nsw i32 1, %rem105
  %107 = load ptr, ptr %pTm.addr, align 8
  %tm_min107 = getelementptr inbounds nuw %struct.Sytm, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %tm_min107, align 4
  %109 = load ptr, ptr %pTm.addr, align 8
  %tm_sec108 = getelementptr inbounds nuw %struct.Sytm, ptr %109, i32 0, i32 0
  %110 = load i32, ptr %tm_sec108, align 8
  %111 = load ptr, ptr %pTm.addr, align 8
  %tm_hour109 = getelementptr inbounds nuw %struct.Sytm, ptr %111, i32 0, i32 2
  %112 = load i32, ptr %tm_hour109, align 8
  %cmp110 = icmp sgt i32 %112, 12
  %113 = zext i1 %cmp110 to i64
  %cond112 = select i1 %cmp110, ptr @.str.1037, ptr @.str.1038
  %call113 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %104, ptr noundef @.str.1047, i32 noundef %add106, i32 noundef %108, i32 noundef %110, ptr noundef %cond112)
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end11, %if.end11
  %114 = load ptr, ptr %pCtx.addr, align 8
  %115 = load ptr, ptr %pTm.addr, align 8
  %tm_mon115 = getelementptr inbounds nuw %struct.Sytm, ptr %115, i32 0, i32 4
  %116 = load i32, ptr %tm_mon115, align 8
  %add116 = add nsw i32 %116, 1
  %117 = load ptr, ptr %pTm.addr, align 8
  %tm_mday117 = getelementptr inbounds nuw %struct.Sytm, ptr %117, i32 0, i32 3
  %118 = load i32, ptr %tm_mday117, align 4
  %119 = load ptr, ptr %pTm.addr, align 8
  %tm_year118 = getelementptr inbounds nuw %struct.Sytm, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %tm_year118, align 4
  %rem119 = srem i32 %120, 100
  %call120 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %114, ptr noundef @.str.1048, i32 noundef %add116, i32 noundef %118, i32 noundef %rem119)
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end11
  %121 = load ptr, ptr %pCtx.addr, align 8
  %122 = load ptr, ptr %pTm.addr, align 8
  %tm_year122 = getelementptr inbounds nuw %struct.Sytm, ptr %122, i32 0, i32 5
  %123 = load i32, ptr %tm_year122, align 4
  %124 = load ptr, ptr %pTm.addr, align 8
  %tm_mon123 = getelementptr inbounds nuw %struct.Sytm, ptr %124, i32 0, i32 4
  %125 = load i32, ptr %tm_mon123, align 8
  %add124 = add nsw i32 %125, 1
  %126 = load ptr, ptr %pTm.addr, align 8
  %tm_mday125 = getelementptr inbounds nuw %struct.Sytm, ptr %126, i32 0, i32 3
  %127 = load i32, ptr %tm_mday125, align 4
  %call126 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %121, ptr noundef @.str.1049, i32 noundef %123, i32 noundef %add124, i32 noundef %127)
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end11
  %128 = load ptr, ptr %pCtx.addr, align 8
  %129 = load ptr, ptr %pTm.addr, align 8
  %tm_year128 = getelementptr inbounds nuw %struct.Sytm, ptr %129, i32 0, i32 5
  %130 = load i32, ptr %tm_year128, align 4
  %131 = load ptr, ptr %pTm.addr, align 8
  %tm_mon129 = getelementptr inbounds nuw %struct.Sytm, ptr %131, i32 0, i32 4
  %132 = load i32, ptr %tm_mon129, align 8
  %add130 = add nsw i32 %132, 1
  %133 = load ptr, ptr %pTm.addr, align 8
  %tm_mday131 = getelementptr inbounds nuw %struct.Sytm, ptr %133, i32 0, i32 3
  %134 = load i32, ptr %tm_mday131, align 4
  %135 = load ptr, ptr %pTm.addr, align 8
  %tm_hour132 = getelementptr inbounds nuw %struct.Sytm, ptr %135, i32 0, i32 2
  %136 = load i32, ptr %tm_hour132, align 8
  %137 = load ptr, ptr %pTm.addr, align 8
  %tm_min133 = getelementptr inbounds nuw %struct.Sytm, ptr %137, i32 0, i32 1
  %138 = load i32, ptr %tm_min133, align 4
  %139 = load ptr, ptr %pTm.addr, align 8
  %tm_sec134 = getelementptr inbounds nuw %struct.Sytm, ptr %139, i32 0, i32 0
  %140 = load i32, ptr %tm_sec134, align 8
  %call135 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %128, ptr noundef @.str.1050, i32 noundef %130, i32 noundef %add130, i32 noundef %134, i32 noundef %136, i32 noundef %138, i32 noundef %140)
  br label %sw.epilog

sw.bb136:                                         ; preds = %if.end11
  %call137 = call i64 @time(ptr noundef %tt) #2
  %141 = load ptr, ptr %pCtx.addr, align 8
  %142 = load i64, ptr %tt, align 8
  %conv138 = trunc i64 %142 to i32
  %call139 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %141, ptr noundef @.str.1039, i32 noundef %conv138)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb136, %sw.bb127, %sw.bb121, %sw.bb114, %sw.bb103, %sw.bb97, %sw.bb92, %sw.bb88, %sw.bb83, %if.end81, %sw.bb75, %sw.bb73, %sw.bb70, %sw.bb65, %sw.bb61, %sw.bb58, %sw.bb54, %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb40, %sw.bb37, %sw.bb32, %sw.bb30, %sw.bb28, %sw.bb26, %sw.bb22, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb
  %143 = load ptr, ptr %zIn.addr, align 8
  %incdec.ptr140 = getelementptr inbounds nuw i8, ptr %143, i32 1
  store ptr %incdec.ptr140, ptr %zIn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then10
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
