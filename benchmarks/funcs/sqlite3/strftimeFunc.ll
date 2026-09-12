; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.111 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.299 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1036 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1037 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1038 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1039 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_text(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_toobig(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @strftimeFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca %struct.DateTime, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %z = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zFmt = alloca ptr, align 8
  %zBuf = alloca [100 x i8], align 16
  %s = alloca double, align 8
  %nDay = alloca i32, align 4
  %y = alloca %struct.DateTime, align 8
  %wd = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call, ptr %zFmt, align 8
  %3 = load ptr, ptr %zFmt, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %context.addr, align 8
  %5 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %5, 1
  %6 = load ptr, ptr %argv.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %6, i64 1
  %call2 = call i32 @isDate(ptr noundef %4, i32 noundef %sub, ptr noundef %add.ptr, ptr noundef %x)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %context.addr, align 8
  %call5 = call ptr @sqlite3_context_db_handle(ptr noundef %7)
  store ptr %call5, ptr %db, align 8
  store i64 0, ptr %i, align 8
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load ptr, ptr %zFmt, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %8, i64 %9
  %10 = load i8, ptr %arrayidx6, align 1
  %tobool7 = icmp ne i8 %10, 0
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %zFmt, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %11, i64 %12
  %13 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv, 37
  br i1 %cmp9, label %if.then11, label %if.end24

if.then11:                                        ; preds = %for.body
  %14 = load ptr, ptr %zFmt, align 8
  %15 = load i64, ptr %i, align 8
  %add = add i64 %15, 1
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %14, i64 %add
  %16 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %16 to i32
  switch i32 %conv13, label %sw.default [
    i32 100, label %sw.bb
    i32 72, label %sw.bb
    i32 109, label %sw.bb
    i32 77, label %sw.bb
    i32 83, label %sw.bb
    i32 87, label %sw.bb
    i32 119, label %sw.bb14
    i32 37, label %sw.bb14
    i32 102, label %sw.bb15
    i32 106, label %sw.bb17
    i32 89, label %sw.bb19
    i32 115, label %sw.bb21
    i32 74, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.then11, %if.then11, %if.then11, %if.then11, %if.then11, %if.then11
  %17 = load i64, ptr %n, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %n, align 8
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb, %if.then11, %if.then11
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then11
  %18 = load i64, ptr %n, align 8
  %add16 = add i64 %18, 8
  store i64 %add16, ptr %n, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.then11
  %19 = load i64, ptr %n, align 8
  %add18 = add i64 %19, 3
  store i64 %add18, ptr %n, align 8
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.then11
  %20 = load i64, ptr %n, align 8
  %add20 = add i64 %20, 8
  store i64 %add20, ptr %n, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then11, %if.then11
  %21 = load i64, ptr %n, align 8
  %add22 = add i64 %21, 50
  store i64 %add22, ptr %n, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then11
  br label %return

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb14
  %22 = load i64, ptr %i, align 8
  %inc23 = add i64 %22, 1
  store i64 %inc23, ptr %i, align 8
  br label %if.end24

if.end24:                                         ; preds = %sw.epilog, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %23 = load i64, ptr %i, align 8
  %inc25 = add i64 %23, 1
  store i64 %inc25, ptr %i, align 8
  %24 = load i64, ptr %n, align 8
  %inc26 = add i64 %24, 1
  store i64 %inc26, ptr %n, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %25 = load i64, ptr %n, align 8
  %cmp27 = icmp ult i64 %25, 100
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zBuf, i64 0, i64 0
  store ptr %arraydecay, ptr %z, align 8
  br label %if.end44

if.else:                                          ; preds = %for.end
  %26 = load i64, ptr %n, align 8
  %27 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 33
  %arrayidx30 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %28 = load i32, ptr %arrayidx30, align 4
  %conv31 = sext i32 %28 to i64
  %cmp32 = icmp ugt i64 %26, %conv31
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else
  %29 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_toobig(ptr noundef %29)
  br label %return

if.else35:                                        ; preds = %if.else
  %30 = load ptr, ptr %db, align 8
  %31 = load i64, ptr %n, align 8
  %conv36 = trunc i64 %31 to i32
  %conv37 = sext i32 %conv36 to i64
  %call38 = call ptr @sqlite3DbMallocRawNN(ptr noundef %30, i64 noundef %conv37)
  store ptr %call38, ptr %z, align 8
  %32 = load ptr, ptr %z, align 8
  %cmp39 = icmp eq ptr %32, null
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.else35
  %33 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %33)
  br label %return

if.end42:                                         ; preds = %if.else35
  br label %if.end43

if.end43:                                         ; preds = %if.end42
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then29
  call void @computeJD(ptr noundef %x)
  call void @computeYMD_HMS(ptr noundef %x)
  store i64 0, ptr %j, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc166, %if.end44
  %34 = load ptr, ptr %zFmt, align 8
  %35 = load i64, ptr %i, align 8
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  %36 = load i8, ptr %arrayidx46, align 1
  %tobool47 = icmp ne i8 %36, 0
  br i1 %tobool47, label %for.body48, label %for.end168

for.body48:                                       ; preds = %for.cond45
  %37 = load ptr, ptr %zFmt, align 8
  %38 = load i64, ptr %i, align 8
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %37, i64 %38
  %39 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %39 to i32
  %cmp51 = icmp ne i32 %conv50, 37
  br i1 %cmp51, label %if.then53, label %if.else57

if.then53:                                        ; preds = %for.body48
  %40 = load ptr, ptr %zFmt, align 8
  %41 = load i64, ptr %i, align 8
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %40, i64 %41
  %42 = load i8, ptr %arrayidx54, align 1
  %43 = load ptr, ptr %z, align 8
  %44 = load i64, ptr %j, align 8
  %inc55 = add i64 %44, 1
  store i64 %inc55, ptr %j, align 8
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  store i8 %42, ptr %arrayidx56, align 1
  br label %if.end165

if.else57:                                        ; preds = %for.body48
  %45 = load i64, ptr %i, align 8
  %inc58 = add i64 %45, 1
  store i64 %inc58, ptr %i, align 8
  %46 = load ptr, ptr %zFmt, align 8
  %47 = load i64, ptr %i, align 8
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %46, i64 %47
  %48 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %48 to i32
  switch i32 %conv60, label %sw.default161 [
    i32 100, label %sw.bb61
    i32 102, label %sw.bb65
    i32 72, label %sw.bb77
    i32 87, label %sw.bb81
    i32 106, label %sw.bb81
    i32 74, label %sw.bb108
    i32 109, label %sw.bb118
    i32 77, label %sw.bb123
    i32 115, label %sw.bb127
    i32 83, label %sw.bb137
    i32 119, label %sw.bb143
    i32 89, label %sw.bb154
  ]

sw.bb61:                                          ; preds = %if.else57
  %49 = load ptr, ptr %z, align 8
  %50 = load i64, ptr %j, align 8
  %arrayidx62 = getelementptr inbounds nuw i8, ptr %49, i64 %50
  %D = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 3
  %51 = load i32, ptr %D, align 8
  %call63 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx62, ptr noundef @.str.1036, i32 noundef %51)
  %52 = load i64, ptr %j, align 8
  %add64 = add i64 %52, 2
  store i64 %add64, ptr %j, align 8
  br label %sw.epilog164

sw.bb65:                                          ; preds = %if.else57
  %s66 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  %53 = load double, ptr %s66, align 8
  store double %53, ptr %s, align 8
  %54 = load double, ptr %s, align 8
  %cmp67 = fcmp ogt double %54, 5.999900e+01
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.bb65
  store double 5.999900e+01, ptr %s, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %sw.bb65
  %55 = load ptr, ptr %z, align 8
  %56 = load i64, ptr %j, align 8
  %arrayidx71 = getelementptr inbounds nuw i8, ptr %55, i64 %56
  %57 = load double, ptr %s, align 8
  %call72 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 7, ptr noundef %arrayidx71, ptr noundef @.str.1037, double noundef %57)
  %58 = load ptr, ptr %z, align 8
  %59 = load i64, ptr %j, align 8
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %58, i64 %59
  %call74 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx73)
  %conv75 = sext i32 %call74 to i64
  %60 = load i64, ptr %j, align 8
  %add76 = add i64 %60, %conv75
  store i64 %add76, ptr %j, align 8
  br label %sw.epilog164

sw.bb77:                                          ; preds = %if.else57
  %61 = load ptr, ptr %z, align 8
  %62 = load i64, ptr %j, align 8
  %arrayidx78 = getelementptr inbounds nuw i8, ptr %61, i64 %62
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 4
  %63 = load i32, ptr %h, align 4
  %call79 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx78, ptr noundef @.str.1036, i32 noundef %63)
  %64 = load i64, ptr %j, align 8
  %add80 = add i64 %64, 2
  store i64 %add80, ptr %j, align 8
  br label %sw.epilog164

sw.bb81:                                          ; preds = %if.else57, %if.else57
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %y, ptr align 8 %x, i64 48, i1 false)
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 8
  store i8 0, ptr %validJD, align 8
  %M = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 2
  store i32 1, ptr %M, align 4
  %D82 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 3
  store i32 1, ptr %D82, align 8
  call void @computeJD(ptr noundef %y)
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %65 = load i64, ptr %iJD, align 8
  %iJD83 = getelementptr inbounds nuw %struct.DateTime, ptr %y, i32 0, i32 0
  %66 = load i64, ptr %iJD83, align 8
  %sub84 = sub nsw i64 %65, %66
  %add85 = add nsw i64 %sub84, 43200000
  %div = sdiv i64 %add85, 86400000
  %conv86 = trunc i64 %div to i32
  store i32 %conv86, ptr %nDay, align 4
  %67 = load ptr, ptr %zFmt, align 8
  %68 = load i64, ptr %i, align 8
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %67, i64 %68
  %69 = load i8, ptr %arrayidx87, align 1
  %conv88 = sext i8 %69 to i32
  %cmp89 = icmp eq i32 %conv88, 87
  br i1 %cmp89, label %if.then91, label %if.else102

if.then91:                                        ; preds = %sw.bb81
  %iJD92 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %70 = load i64, ptr %iJD92, align 8
  %add93 = add nsw i64 %70, 43200000
  %div94 = sdiv i64 %add93, 86400000
  %rem = srem i64 %div94, 7
  %conv95 = trunc i64 %rem to i32
  store i32 %conv95, ptr %wd, align 4
  %71 = load ptr, ptr %z, align 8
  %72 = load i64, ptr %j, align 8
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %71, i64 %72
  %73 = load i32, ptr %nDay, align 4
  %add97 = add nsw i32 %73, 7
  %74 = load i32, ptr %wd, align 4
  %sub98 = sub nsw i32 %add97, %74
  %div99 = sdiv i32 %sub98, 7
  %call100 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx96, ptr noundef @.str.1036, i32 noundef %div99)
  %75 = load i64, ptr %j, align 8
  %add101 = add i64 %75, 2
  store i64 %add101, ptr %j, align 8
  br label %if.end107

if.else102:                                       ; preds = %sw.bb81
  %76 = load ptr, ptr %z, align 8
  %77 = load i64, ptr %j, align 8
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %76, i64 %77
  %78 = load i32, ptr %nDay, align 4
  %add104 = add nsw i32 %78, 1
  %call105 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 4, ptr noundef %arrayidx103, ptr noundef @.str.1038, i32 noundef %add104)
  %79 = load i64, ptr %j, align 8
  %add106 = add i64 %79, 3
  store i64 %add106, ptr %j, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.else102, %if.then91
  br label %sw.epilog164

sw.bb108:                                         ; preds = %if.else57
  %80 = load ptr, ptr %z, align 8
  %81 = load i64, ptr %j, align 8
  %arrayidx109 = getelementptr inbounds nuw i8, ptr %80, i64 %81
  %iJD110 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %82 = load i64, ptr %iJD110, align 8
  %conv111 = sitofp i64 %82 to double
  %div112 = fdiv double %conv111, 8.640000e+07
  %call113 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 20, ptr noundef %arrayidx109, ptr noundef @.str.299, double noundef %div112)
  %83 = load ptr, ptr %z, align 8
  %84 = load i64, ptr %j, align 8
  %arrayidx114 = getelementptr inbounds nuw i8, ptr %83, i64 %84
  %call115 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx114)
  %conv116 = sext i32 %call115 to i64
  %85 = load i64, ptr %j, align 8
  %add117 = add i64 %85, %conv116
  store i64 %add117, ptr %j, align 8
  br label %sw.epilog164

sw.bb118:                                         ; preds = %if.else57
  %86 = load ptr, ptr %z, align 8
  %87 = load i64, ptr %j, align 8
  %arrayidx119 = getelementptr inbounds nuw i8, ptr %86, i64 %87
  %M120 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 2
  %88 = load i32, ptr %M120, align 4
  %call121 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx119, ptr noundef @.str.1036, i32 noundef %88)
  %89 = load i64, ptr %j, align 8
  %add122 = add i64 %89, 2
  store i64 %add122, ptr %j, align 8
  br label %sw.epilog164

sw.bb123:                                         ; preds = %if.else57
  %90 = load ptr, ptr %z, align 8
  %91 = load i64, ptr %j, align 8
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %90, i64 %91
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 5
  %92 = load i32, ptr %m, align 8
  %call125 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx124, ptr noundef @.str.1036, i32 noundef %92)
  %93 = load i64, ptr %j, align 8
  %add126 = add i64 %93, 2
  store i64 %add126, ptr %j, align 8
  br label %sw.epilog164

sw.bb127:                                         ; preds = %if.else57
  %94 = load ptr, ptr %z, align 8
  %95 = load i64, ptr %j, align 8
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %94, i64 %95
  %iJD129 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %96 = load i64, ptr %iJD129, align 8
  %div130 = sdiv i64 %96, 1000
  %sub131 = sub nsw i64 %div130, 210866760000
  %call132 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 30, ptr noundef %arrayidx128, ptr noundef @.str.111, i64 noundef %sub131)
  %97 = load ptr, ptr %z, align 8
  %98 = load i64, ptr %j, align 8
  %arrayidx133 = getelementptr inbounds nuw i8, ptr %97, i64 %98
  %call134 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx133)
  %conv135 = sext i32 %call134 to i64
  %99 = load i64, ptr %j, align 8
  %add136 = add i64 %99, %conv135
  store i64 %add136, ptr %j, align 8
  br label %sw.epilog164

sw.bb137:                                         ; preds = %if.else57
  %100 = load ptr, ptr %z, align 8
  %101 = load i64, ptr %j, align 8
  %arrayidx138 = getelementptr inbounds nuw i8, ptr %100, i64 %101
  %s139 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 7
  %102 = load double, ptr %s139, align 8
  %conv140 = fptosi double %102 to i32
  %call141 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 3, ptr noundef %arrayidx138, ptr noundef @.str.1036, i32 noundef %conv140)
  %103 = load i64, ptr %j, align 8
  %add142 = add i64 %103, 2
  store i64 %add142, ptr %j, align 8
  br label %sw.epilog164

sw.bb143:                                         ; preds = %if.else57
  %iJD144 = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 0
  %104 = load i64, ptr %iJD144, align 8
  %add145 = add nsw i64 %104, 129600000
  %div146 = sdiv i64 %add145, 86400000
  %rem147 = srem i64 %div146, 7
  %conv148 = trunc i64 %rem147 to i8
  %conv149 = sext i8 %conv148 to i32
  %add150 = add nsw i32 %conv149, 48
  %conv151 = trunc i32 %add150 to i8
  %105 = load ptr, ptr %z, align 8
  %106 = load i64, ptr %j, align 8
  %inc152 = add i64 %106, 1
  store i64 %inc152, ptr %j, align 8
  %arrayidx153 = getelementptr inbounds nuw i8, ptr %105, i64 %106
  store i8 %conv151, ptr %arrayidx153, align 1
  br label %sw.epilog164

sw.bb154:                                         ; preds = %if.else57
  %107 = load ptr, ptr %z, align 8
  %108 = load i64, ptr %j, align 8
  %arrayidx155 = getelementptr inbounds nuw i8, ptr %107, i64 %108
  %Y = getelementptr inbounds nuw %struct.DateTime, ptr %x, i32 0, i32 1
  %109 = load i32, ptr %Y, align 8
  %call156 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 5, ptr noundef %arrayidx155, ptr noundef @.str.1039, i32 noundef %109)
  %110 = load ptr, ptr %z, align 8
  %111 = load i64, ptr %j, align 8
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %110, i64 %111
  %call158 = call i32 @sqlite3Strlen30(ptr noundef %arrayidx157)
  %conv159 = sext i32 %call158 to i64
  %112 = load i64, ptr %j, align 8
  %add160 = add i64 %112, %conv159
  store i64 %add160, ptr %j, align 8
  br label %sw.epilog164

sw.default161:                                    ; preds = %if.else57
  %113 = load ptr, ptr %z, align 8
  %114 = load i64, ptr %j, align 8
  %inc162 = add i64 %114, 1
  store i64 %inc162, ptr %j, align 8
  %arrayidx163 = getelementptr inbounds nuw i8, ptr %113, i64 %114
  store i8 37, ptr %arrayidx163, align 1
  br label %sw.epilog164

sw.epilog164:                                     ; preds = %sw.default161, %sw.bb154, %sw.bb143, %sw.bb137, %sw.bb127, %sw.bb123, %sw.bb118, %sw.bb108, %if.end107, %sw.bb77, %if.end70, %sw.bb61
  br label %if.end165

if.end165:                                        ; preds = %sw.epilog164, %if.then53
  br label %for.inc166

for.inc166:                                       ; preds = %if.end165
  %115 = load i64, ptr %i, align 8
  %inc167 = add i64 %115, 1
  store i64 %inc167, ptr %i, align 8
  br label %for.cond45, !llvm.loop !8

for.end168:                                       ; preds = %for.cond45
  %116 = load ptr, ptr %z, align 8
  %117 = load i64, ptr %j, align 8
  %arrayidx169 = getelementptr inbounds nuw i8, ptr %116, i64 %117
  store i8 0, ptr %arrayidx169, align 1
  %118 = load ptr, ptr %context.addr, align 8
  %119 = load ptr, ptr %z, align 8
  %120 = load ptr, ptr %z, align 8
  %arraydecay170 = getelementptr inbounds [100 x i8], ptr %zBuf, i64 0, i64 0
  %cmp171 = icmp eq ptr %120, %arraydecay170
  %121 = zext i1 %cmp171 to i64
  %cond = select i1 %cmp171, ptr inttoptr (i64 -1 to ptr), ptr @sqlite3MallocSize
  call void @sqlite3_result_text(ptr noundef %118, ptr noundef %119, i32 noundef -1, ptr noundef %cond)
  br label %return

return:                                           ; preds = %for.end168, %if.then41, %if.then34, %sw.default, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @isDate(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @computeYMD_HMS(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
