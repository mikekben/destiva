; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zzzz = type { ptr, ptr }

@stderr = external global ptr, align 8
@outputHandleJustInCase = external dso_local global ptr, align 8
@smallMode = external dso_local global i8, align 1
@keepInputFiles = external dso_local global i8, align 1
@forceOverwrite = external dso_local global i8, align 1
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@blockSize100k = external dso_local global i32, align 4
@testFailsExist = external dso_local global i8, align 1
@unzFailsExist = external dso_local global i8, align 1
@numFileNames = external dso_local global i32, align 4
@numFilesProcessed = external dso_local global i32, align 4
@workFactor = external dso_local global i32, align 4
@deleteOutputOnInterrupt = external dso_local global i8, align 1
@exitValue = external dso_local global i32, align 4
@inName = external dso_local global [1034 x i8], align 16
@.str.18 = external hidden unnamed_addr constant [7 x i8], align 1
@outName = external dso_local global [1034 x i8], align 16
@progNameReally = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@.str.19 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [5 x i8], align 1
@longestFileName = external dso_local global i32, align 4
@.str.21 = external hidden unnamed_addr constant [3 x i8], align 1
@srcMode = external dso_local global i32, align 4
@opMode = external dso_local global i32, align 4
@.str.22 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.24 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.26 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.27 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.28 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.30 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.31 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.32 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.33 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.34 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.35 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.36 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.37 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.42 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.43 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.45 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [113 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca ptr, align 8
  %argList = alloca ptr, align 8
  %aa = alloca ptr, align 8
  %decode = alloca i8, align 1
  %aa2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr @outputHandleJustInCase, align 8
  store i8 0, ptr @smallMode, align 1
  store i8 0, ptr @keepInputFiles, align 1
  store i8 0, ptr @forceOverwrite, align 1
  store i8 1, ptr @noisy, align 1
  store i32 0, ptr @verbosity, align 4
  store i32 9, ptr @blockSize100k, align 4
  store i8 0, ptr @testFailsExist, align 1
  store i8 0, ptr @unzFailsExist, align 1
  store i32 0, ptr @numFileNames, align 4
  store i32 0, ptr @numFilesProcessed, align 4
  store i32 30, ptr @workFactor, align 4
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  store i32 0, ptr @exitValue, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  %call = call ptr @signal(i32 noundef 11, ptr noundef @mySIGSEGVorSIGBUScatcher) #4
  %call1 = call ptr @signal(i32 noundef 7, ptr noundef @mySIGSEGVorSIGBUScatcher) #4
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.18)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.18)
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  call void @copyFileName(ptr noundef @progNameReally, ptr noundef %1)
  store ptr @progNameReally, ptr @progName, align 8
  store ptr @progNameReally, ptr %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %tmp, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %tmp, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 47
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %tmp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr @progName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load ptr, ptr %tmp, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %tmp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %argList, align 8
  call void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef @.str.19)
  call void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef @.str.20)
  store i32 1, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %9, 1
  %cmp7 = icmp sle i32 %8, %sub
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %10 = load ptr, ptr %argList, align 8
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @snocString(ptr noundef %10, ptr noundef %13)
  store ptr %call11, ptr %argList, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end13:                                        ; preds = %for.cond6
  store i32 7, ptr @longestFileName, align 4
  store i32 0, ptr @numFileNames, align 4
  store i8 1, ptr %decode, align 1
  %15 = load ptr, ptr %argList, align 8
  store ptr %15, ptr %aa, align 8
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc42, %for.end13
  %16 = load ptr, ptr %aa, align 8
  %cmp15 = icmp ne ptr %16, null
  br i1 %cmp15, label %for.body17, label %for.end43

for.body17:                                       ; preds = %for.cond14
  %17 = load ptr, ptr %aa, align 8
  %name = getelementptr inbounds nuw %struct.zzzz, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %name, align 8
  %call18 = call i32 @strcmp(ptr noundef %18, ptr noundef @.str.21) #5
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.body17
  store i8 0, ptr %decode, align 1
  br label %for.inc42

if.end22:                                         ; preds = %for.body17
  %19 = load ptr, ptr %aa, align 8
  %name23 = getelementptr inbounds nuw %struct.zzzz, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %name23, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %21 to i32
  %cmp26 = icmp eq i32 %conv25, 45
  br i1 %cmp26, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end22
  %22 = load i8, ptr %decode, align 1
  %conv28 = zext i8 %22 to i32
  %tobool = icmp ne i32 %conv28, 0
  br i1 %tobool, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  br label %for.inc42

if.end30:                                         ; preds = %land.lhs.true, %if.end22
  %23 = load i32, ptr @numFileNames, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr @numFileNames, align 4
  %24 = load i32, ptr @longestFileName, align 4
  %25 = load ptr, ptr %aa, align 8
  %name32 = getelementptr inbounds nuw %struct.zzzz, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %name32, align 8
  %call33 = call i64 @strlen(ptr noundef %26) #5
  %conv34 = trunc i64 %call33 to i32
  %cmp35 = icmp slt i32 %24, %conv34
  br i1 %cmp35, label %if.then37, label %if.end41

if.then37:                                        ; preds = %if.end30
  %27 = load ptr, ptr %aa, align 8
  %name38 = getelementptr inbounds nuw %struct.zzzz, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %name38, align 8
  %call39 = call i64 @strlen(ptr noundef %28) #5
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, ptr @longestFileName, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end30
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41, %if.then29, %if.then21
  %29 = load ptr, ptr %aa, align 8
  %link = getelementptr inbounds nuw %struct.zzzz, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %link, align 8
  store ptr %30, ptr %aa, align 8
  br label %for.cond14, !llvm.loop !9

for.end43:                                        ; preds = %for.cond14
  %31 = load i32, ptr @numFileNames, align 4
  %cmp44 = icmp eq i32 %31, 0
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %for.end43
  store i32 1, ptr @srcMode, align 4
  br label %if.end47

if.else:                                          ; preds = %for.end43
  store i32 3, ptr @srcMode, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then46
  store i32 1, ptr @opMode, align 4
  %32 = load ptr, ptr @progName, align 8
  %call48 = call ptr @strstr(ptr noundef %32, ptr noundef @.str.22) #5
  %cmp49 = icmp ne ptr %call48, null
  br i1 %cmp49, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %33 = load ptr, ptr @progName, align 8
  %call51 = call ptr @strstr(ptr noundef %33, ptr noundef @.str.23) #5
  %cmp52 = icmp ne ptr %call51, null
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %lor.lhs.false, %if.end47
  store i32 2, ptr @opMode, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %lor.lhs.false
  %34 = load ptr, ptr @progName, align 8
  %call56 = call ptr @strstr(ptr noundef %34, ptr noundef @.str.24) #5
  %cmp57 = icmp ne ptr %call56, null
  br i1 %cmp57, label %if.then71, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end55
  %35 = load ptr, ptr @progName, align 8
  %call60 = call ptr @strstr(ptr noundef %35, ptr noundef @.str.25) #5
  %cmp61 = icmp ne ptr %call60, null
  br i1 %cmp61, label %if.then71, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false59
  %36 = load ptr, ptr @progName, align 8
  %call64 = call ptr @strstr(ptr noundef %36, ptr noundef @.str.26) #5
  %cmp65 = icmp ne ptr %call64, null
  br i1 %cmp65, label %if.then71, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false63
  %37 = load ptr, ptr @progName, align 8
  %call68 = call ptr @strstr(ptr noundef %37, ptr noundef @.str.27) #5
  %cmp69 = icmp ne ptr %call68, null
  br i1 %cmp69, label %if.then71, label %if.end74

if.then71:                                        ; preds = %lor.lhs.false67, %lor.lhs.false63, %lor.lhs.false59, %if.end55
  store i32 2, ptr @opMode, align 4
  %38 = load i32, ptr @numFileNames, align 4
  %cmp72 = icmp eq i32 %38, 0
  %39 = zext i1 %cmp72 to i64
  %cond = select i1 %cmp72, i32 1, i32 2
  store i32 %cond, ptr @srcMode, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %lor.lhs.false67
  %40 = load ptr, ptr %argList, align 8
  store ptr %40, ptr %aa, align 8
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc135, %if.end74
  %41 = load ptr, ptr %aa, align 8
  %cmp76 = icmp ne ptr %41, null
  br i1 %cmp76, label %for.body78, label %for.end137

for.body78:                                       ; preds = %for.cond75
  %42 = load ptr, ptr %aa, align 8
  %name79 = getelementptr inbounds nuw %struct.zzzz, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %name79, align 8
  %call80 = call i32 @strcmp(ptr noundef %43, ptr noundef @.str.21) #5
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %for.body78
  br label %for.end137

if.end84:                                         ; preds = %for.body78
  %44 = load ptr, ptr %aa, align 8
  %name85 = getelementptr inbounds nuw %struct.zzzz, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %name85, align 8
  %arrayidx86 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %46 to i32
  %cmp88 = icmp eq i32 %conv87, 45
  br i1 %cmp88, label %land.lhs.true90, label %if.end134

land.lhs.true90:                                  ; preds = %if.end84
  %47 = load ptr, ptr %aa, align 8
  %name91 = getelementptr inbounds nuw %struct.zzzz, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %name91, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %48, i64 1
  %49 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %49 to i32
  %cmp94 = icmp ne i32 %conv93, 45
  br i1 %cmp94, label %if.then96, label %if.end134

if.then96:                                        ; preds = %land.lhs.true90
  store i32 1, ptr %j, align 4
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc131, %if.then96
  %50 = load ptr, ptr %aa, align 8
  %name98 = getelementptr inbounds nuw %struct.zzzz, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %name98, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom99 = sext i32 %52 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %51, i64 %idxprom99
  %53 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %53 to i32
  %cmp102 = icmp ne i32 %conv101, 0
  br i1 %cmp102, label %for.body104, label %for.end133

for.body104:                                      ; preds = %for.cond97
  %54 = load ptr, ptr %aa, align 8
  %name105 = getelementptr inbounds nuw %struct.zzzz, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %name105, align 8
  %56 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %56 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %55, i64 %idxprom106
  %57 = load i8, ptr %arrayidx107, align 1
  %conv108 = sext i8 %57 to i32
  switch i32 %conv108, label %sw.default [
    i32 99, label %sw.bb
    i32 100, label %sw.bb109
    i32 122, label %sw.bb110
    i32 102, label %sw.bb111
    i32 116, label %sw.bb112
    i32 107, label %sw.bb113
    i32 115, label %sw.bb114
    i32 113, label %sw.bb115
    i32 49, label %sw.bb116
    i32 50, label %sw.bb117
    i32 51, label %sw.bb118
    i32 52, label %sw.bb119
    i32 53, label %sw.bb120
    i32 54, label %sw.bb121
    i32 55, label %sw.bb122
    i32 56, label %sw.bb123
    i32 57, label %sw.bb124
    i32 86, label %sw.bb125
    i32 76, label %sw.bb125
    i32 118, label %sw.bb126
    i32 104, label %sw.bb128
  ]

sw.bb:                                            ; preds = %for.body104
  store i32 2, ptr @srcMode, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %for.body104
  store i32 2, ptr @opMode, align 4
  br label %sw.epilog

sw.bb110:                                         ; preds = %for.body104
  store i32 1, ptr @opMode, align 4
  br label %sw.epilog

sw.bb111:                                         ; preds = %for.body104
  store i8 1, ptr @forceOverwrite, align 1
  br label %sw.epilog

sw.bb112:                                         ; preds = %for.body104
  store i32 3, ptr @opMode, align 4
  br label %sw.epilog

sw.bb113:                                         ; preds = %for.body104
  store i8 1, ptr @keepInputFiles, align 1
  br label %sw.epilog

sw.bb114:                                         ; preds = %for.body104
  store i8 1, ptr @smallMode, align 1
  br label %sw.epilog

sw.bb115:                                         ; preds = %for.body104
  store i8 0, ptr @noisy, align 1
  br label %sw.epilog

sw.bb116:                                         ; preds = %for.body104
  store i32 1, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb117:                                         ; preds = %for.body104
  store i32 2, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %for.body104
  store i32 3, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb119:                                         ; preds = %for.body104
  store i32 4, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb120:                                         ; preds = %for.body104
  store i32 5, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb121:                                         ; preds = %for.body104
  store i32 6, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb122:                                         ; preds = %for.body104
  store i32 7, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb123:                                         ; preds = %for.body104
  store i32 8, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb124:                                         ; preds = %for.body104
  store i32 9, ptr @blockSize100k, align 4
  br label %sw.epilog

sw.bb125:                                         ; preds = %for.body104, %for.body104
  call void @license()
  br label %sw.epilog

sw.bb126:                                         ; preds = %for.body104
  %58 = load i32, ptr @verbosity, align 4
  %inc127 = add nsw i32 %58, 1
  store i32 %inc127, ptr @verbosity, align 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %for.body104
  %59 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %59)
  call void @exit(i32 noundef 0) #6
  unreachable

sw.default:                                       ; preds = %for.body104
  %60 = load ptr, ptr @stderr, align 8
  %61 = load ptr, ptr @progName, align 8
  %62 = load ptr, ptr %aa, align 8
  %name129 = getelementptr inbounds nuw %struct.zzzz, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %name129, align 8
  %call130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.28, ptr noundef %61, ptr noundef %63) #4
  %64 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %64)
  call void @exit(i32 noundef 1) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb126, %sw.bb125, %sw.bb124, %sw.bb123, %sw.bb122, %sw.bb121, %sw.bb120, %sw.bb119, %sw.bb118, %sw.bb117, %sw.bb116, %sw.bb115, %sw.bb114, %sw.bb113, %sw.bb112, %sw.bb111, %sw.bb110, %sw.bb109, %sw.bb
  br label %for.inc131

for.inc131:                                       ; preds = %sw.epilog
  %65 = load i32, ptr %j, align 4
  %inc132 = add nsw i32 %65, 1
  store i32 %inc132, ptr %j, align 4
  br label %for.cond97, !llvm.loop !10

for.end133:                                       ; preds = %for.cond97
  br label %if.end134

if.end134:                                        ; preds = %for.end133, %land.lhs.true90, %if.end84
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %66 = load ptr, ptr %aa, align 8
  %link136 = getelementptr inbounds nuw %struct.zzzz, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %link136, align 8
  store ptr %67, ptr %aa, align 8
  br label %for.cond75, !llvm.loop !11

for.end137:                                       ; preds = %if.then83, %for.cond75
  %68 = load ptr, ptr %argList, align 8
  store ptr %68, ptr %aa, align 8
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc278, %for.end137
  %69 = load ptr, ptr %aa, align 8
  %cmp139 = icmp ne ptr %69, null
  br i1 %cmp139, label %for.body141, label %for.end280

for.body141:                                      ; preds = %for.cond138
  %70 = load ptr, ptr %aa, align 8
  %name142 = getelementptr inbounds nuw %struct.zzzz, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %name142, align 8
  %call143 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.21) #5
  %cmp144 = icmp eq i32 %call143, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %for.body141
  br label %for.end280

if.end147:                                        ; preds = %for.body141
  %72 = load ptr, ptr %aa, align 8
  %name148 = getelementptr inbounds nuw %struct.zzzz, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %name148, align 8
  %call149 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.29) #5
  %cmp150 = icmp eq i32 %call149, 0
  br i1 %cmp150, label %if.then152, label %if.else153

if.then152:                                       ; preds = %if.end147
  store i32 2, ptr @srcMode, align 4
  br label %if.end277

if.else153:                                       ; preds = %if.end147
  %74 = load ptr, ptr %aa, align 8
  %name154 = getelementptr inbounds nuw %struct.zzzz, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %name154, align 8
  %call155 = call i32 @strcmp(ptr noundef %75, ptr noundef @.str.30) #5
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.else153
  store i32 2, ptr @opMode, align 4
  br label %if.end276

if.else159:                                       ; preds = %if.else153
  %76 = load ptr, ptr %aa, align 8
  %name160 = getelementptr inbounds nuw %struct.zzzz, ptr %76, i32 0, i32 0
  %77 = load ptr, ptr %name160, align 8
  %call161 = call i32 @strcmp(ptr noundef %77, ptr noundef @.str.31) #5
  %cmp162 = icmp eq i32 %call161, 0
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %if.else159
  store i32 1, ptr @opMode, align 4
  br label %if.end275

if.else165:                                       ; preds = %if.else159
  %78 = load ptr, ptr %aa, align 8
  %name166 = getelementptr inbounds nuw %struct.zzzz, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %name166, align 8
  %call167 = call i32 @strcmp(ptr noundef %79, ptr noundef @.str.32) #5
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %if.else165
  store i8 1, ptr @forceOverwrite, align 1
  br label %if.end274

if.else171:                                       ; preds = %if.else165
  %80 = load ptr, ptr %aa, align 8
  %name172 = getelementptr inbounds nuw %struct.zzzz, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %name172, align 8
  %call173 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.33) #5
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then176, label %if.else177

if.then176:                                       ; preds = %if.else171
  store i32 3, ptr @opMode, align 4
  br label %if.end273

if.else177:                                       ; preds = %if.else171
  %82 = load ptr, ptr %aa, align 8
  %name178 = getelementptr inbounds nuw %struct.zzzz, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %name178, align 8
  %call179 = call i32 @strcmp(ptr noundef %83, ptr noundef @.str.34) #5
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then182, label %if.else183

if.then182:                                       ; preds = %if.else177
  store i8 1, ptr @keepInputFiles, align 1
  br label %if.end272

if.else183:                                       ; preds = %if.else177
  %84 = load ptr, ptr %aa, align 8
  %name184 = getelementptr inbounds nuw %struct.zzzz, ptr %84, i32 0, i32 0
  %85 = load ptr, ptr %name184, align 8
  %call185 = call i32 @strcmp(ptr noundef %85, ptr noundef @.str.35) #5
  %cmp186 = icmp eq i32 %call185, 0
  br i1 %cmp186, label %if.then188, label %if.else189

if.then188:                                       ; preds = %if.else183
  store i8 1, ptr @smallMode, align 1
  br label %if.end271

if.else189:                                       ; preds = %if.else183
  %86 = load ptr, ptr %aa, align 8
  %name190 = getelementptr inbounds nuw %struct.zzzz, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %name190, align 8
  %call191 = call i32 @strcmp(ptr noundef %87, ptr noundef @.str.36) #5
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then194, label %if.else195

if.then194:                                       ; preds = %if.else189
  store i8 0, ptr @noisy, align 1
  br label %if.end270

if.else195:                                       ; preds = %if.else189
  %88 = load ptr, ptr %aa, align 8
  %name196 = getelementptr inbounds nuw %struct.zzzz, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %name196, align 8
  %call197 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.37) #5
  %cmp198 = icmp eq i32 %call197, 0
  br i1 %cmp198, label %if.then200, label %if.else201

if.then200:                                       ; preds = %if.else195
  call void @license()
  br label %if.end269

if.else201:                                       ; preds = %if.else195
  %90 = load ptr, ptr %aa, align 8
  %name202 = getelementptr inbounds nuw %struct.zzzz, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %name202, align 8
  %call203 = call i32 @strcmp(ptr noundef %91, ptr noundef @.str.38) #5
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %if.else201
  call void @license()
  br label %if.end268

if.else207:                                       ; preds = %if.else201
  %92 = load ptr, ptr %aa, align 8
  %name208 = getelementptr inbounds nuw %struct.zzzz, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %name208, align 8
  %call209 = call i32 @strcmp(ptr noundef %93, ptr noundef @.str.39) #5
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then212, label %if.else213

if.then212:                                       ; preds = %if.else207
  store i32 1, ptr @workFactor, align 4
  br label %if.end267

if.else213:                                       ; preds = %if.else207
  %94 = load ptr, ptr %aa, align 8
  %name214 = getelementptr inbounds nuw %struct.zzzz, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %name214, align 8
  %call215 = call i32 @strcmp(ptr noundef %95, ptr noundef @.str.40) #5
  %cmp216 = icmp eq i32 %call215, 0
  br i1 %cmp216, label %if.then218, label %if.else220

if.then218:                                       ; preds = %if.else213
  %96 = load ptr, ptr %aa, align 8
  %name219 = getelementptr inbounds nuw %struct.zzzz, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %name219, align 8
  call void @redundant(ptr noundef %97)
  br label %if.end266

if.else220:                                       ; preds = %if.else213
  %98 = load ptr, ptr %aa, align 8
  %name221 = getelementptr inbounds nuw %struct.zzzz, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %name221, align 8
  %call222 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.41) #5
  %cmp223 = icmp eq i32 %call222, 0
  br i1 %cmp223, label %if.then225, label %if.else227

if.then225:                                       ; preds = %if.else220
  %100 = load ptr, ptr %aa, align 8
  %name226 = getelementptr inbounds nuw %struct.zzzz, ptr %100, i32 0, i32 0
  %101 = load ptr, ptr %name226, align 8
  call void @redundant(ptr noundef %101)
  br label %if.end265

if.else227:                                       ; preds = %if.else220
  %102 = load ptr, ptr %aa, align 8
  %name228 = getelementptr inbounds nuw %struct.zzzz, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %name228, align 8
  %call229 = call i32 @strcmp(ptr noundef %103, ptr noundef @.str.42) #5
  %cmp230 = icmp eq i32 %call229, 0
  br i1 %cmp230, label %if.then232, label %if.else233

if.then232:                                       ; preds = %if.else227
  store i32 1, ptr @blockSize100k, align 4
  br label %if.end264

if.else233:                                       ; preds = %if.else227
  %104 = load ptr, ptr %aa, align 8
  %name234 = getelementptr inbounds nuw %struct.zzzz, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %name234, align 8
  %call235 = call i32 @strcmp(ptr noundef %105, ptr noundef @.str.43) #5
  %cmp236 = icmp eq i32 %call235, 0
  br i1 %cmp236, label %if.then238, label %if.else239

if.then238:                                       ; preds = %if.else233
  store i32 9, ptr @blockSize100k, align 4
  br label %if.end263

if.else239:                                       ; preds = %if.else233
  %106 = load ptr, ptr %aa, align 8
  %name240 = getelementptr inbounds nuw %struct.zzzz, ptr %106, i32 0, i32 0
  %107 = load ptr, ptr %name240, align 8
  %call241 = call i32 @strcmp(ptr noundef %107, ptr noundef @.str.44) #5
  %cmp242 = icmp eq i32 %call241, 0
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.else239
  %108 = load i32, ptr @verbosity, align 4
  %inc245 = add nsw i32 %108, 1
  store i32 %inc245, ptr @verbosity, align 4
  br label %if.end262

if.else246:                                       ; preds = %if.else239
  %109 = load ptr, ptr %aa, align 8
  %name247 = getelementptr inbounds nuw %struct.zzzz, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %name247, align 8
  %call248 = call i32 @strcmp(ptr noundef %110, ptr noundef @.str.45) #5
  %cmp249 = icmp eq i32 %call248, 0
  br i1 %cmp249, label %if.then251, label %if.else252

if.then251:                                       ; preds = %if.else246
  %111 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %111)
  call void @exit(i32 noundef 0) #6
  unreachable

if.else252:                                       ; preds = %if.else246
  %112 = load ptr, ptr %aa, align 8
  %name253 = getelementptr inbounds nuw %struct.zzzz, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %name253, align 8
  %call254 = call i32 @strncmp(ptr noundef %113, ptr noundef @.str.21, i64 noundef 2) #5
  %cmp255 = icmp eq i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.end260

if.then257:                                       ; preds = %if.else252
  %114 = load ptr, ptr @stderr, align 8
  %115 = load ptr, ptr @progName, align 8
  %116 = load ptr, ptr %aa, align 8
  %name258 = getelementptr inbounds nuw %struct.zzzz, ptr %116, i32 0, i32 0
  %117 = load ptr, ptr %name258, align 8
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.28, ptr noundef %115, ptr noundef %117) #4
  %118 = load ptr, ptr @progName, align 8
  call void @usage(ptr noundef %118)
  call void @exit(i32 noundef 1) #6
  unreachable

if.end260:                                        ; preds = %if.else252
  br label %if.end261

if.end261:                                        ; preds = %if.end260
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then244
  br label %if.end263

if.end263:                                        ; preds = %if.end262, %if.then238
  br label %if.end264

if.end264:                                        ; preds = %if.end263, %if.then232
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.then225
  br label %if.end266

if.end266:                                        ; preds = %if.end265, %if.then218
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then212
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %if.then206
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.then200
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.then194
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.then188
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.then182
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %if.then176
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then170
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then164
  br label %if.end276

if.end276:                                        ; preds = %if.end275, %if.then158
  br label %if.end277

if.end277:                                        ; preds = %if.end276, %if.then152
  br label %for.inc278

for.inc278:                                       ; preds = %if.end277
  %119 = load ptr, ptr %aa, align 8
  %link279 = getelementptr inbounds nuw %struct.zzzz, ptr %119, i32 0, i32 1
  %120 = load ptr, ptr %link279, align 8
  store ptr %120, ptr %aa, align 8
  br label %for.cond138, !llvm.loop !12

for.end280:                                       ; preds = %if.then146, %for.cond138
  %121 = load i32, ptr @verbosity, align 4
  %cmp281 = icmp sgt i32 %121, 4
  br i1 %cmp281, label %if.then283, label %if.end284

if.then283:                                       ; preds = %for.end280
  store i32 4, ptr @verbosity, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then283, %for.end280
  %122 = load i32, ptr @opMode, align 4
  %cmp285 = icmp eq i32 %122, 1
  br i1 %cmp285, label %land.lhs.true287, label %if.end294

land.lhs.true287:                                 ; preds = %if.end284
  %123 = load i8, ptr @smallMode, align 1
  %conv288 = zext i8 %123 to i32
  %tobool289 = icmp ne i32 %conv288, 0
  br i1 %tobool289, label %land.lhs.true290, label %if.end294

land.lhs.true290:                                 ; preds = %land.lhs.true287
  %124 = load i32, ptr @blockSize100k, align 4
  %cmp291 = icmp sgt i32 %124, 2
  br i1 %cmp291, label %if.then293, label %if.end294

if.then293:                                       ; preds = %land.lhs.true290
  store i32 2, ptr @blockSize100k, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %land.lhs.true290, %land.lhs.true287, %if.end284
  %125 = load i32, ptr @opMode, align 4
  %cmp295 = icmp eq i32 %125, 3
  br i1 %cmp295, label %land.lhs.true297, label %if.end302

land.lhs.true297:                                 ; preds = %if.end294
  %126 = load i32, ptr @srcMode, align 4
  %cmp298 = icmp eq i32 %126, 2
  br i1 %cmp298, label %if.then300, label %if.end302

if.then300:                                       ; preds = %land.lhs.true297
  %127 = load ptr, ptr @stderr, align 8
  %128 = load ptr, ptr @progName, align 8
  %call301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.46, ptr noundef %128) #4
  call void @exit(i32 noundef 1) #6
  unreachable

if.end302:                                        ; preds = %land.lhs.true297, %if.end294
  %129 = load i32, ptr @srcMode, align 4
  %cmp303 = icmp eq i32 %129, 2
  br i1 %cmp303, label %land.lhs.true305, label %if.end309

land.lhs.true305:                                 ; preds = %if.end302
  %130 = load i32, ptr @numFileNames, align 4
  %cmp306 = icmp eq i32 %130, 0
  br i1 %cmp306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %land.lhs.true305
  store i32 1, ptr @srcMode, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then308, %land.lhs.true305, %if.end302
  %131 = load i32, ptr @opMode, align 4
  %cmp310 = icmp ne i32 %131, 1
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %if.end309
  store i32 0, ptr @blockSize100k, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then312, %if.end309
  %132 = load i32, ptr @srcMode, align 4
  %cmp314 = icmp eq i32 %132, 3
  br i1 %cmp314, label %if.then316, label %if.end320

if.then316:                                       ; preds = %if.end313
  %call317 = call ptr @signal(i32 noundef 2, ptr noundef @mySignalCatcher) #4
  %call318 = call ptr @signal(i32 noundef 15, ptr noundef @mySignalCatcher) #4
  %call319 = call ptr @signal(i32 noundef 1, ptr noundef @mySignalCatcher) #4
  br label %if.end320

if.end320:                                        ; preds = %if.then316, %if.end313
  %133 = load i32, ptr @opMode, align 4
  %cmp321 = icmp eq i32 %133, 1
  br i1 %cmp321, label %if.then323, label %if.else354

if.then323:                                       ; preds = %if.end320
  %134 = load i32, ptr @srcMode, align 4
  %cmp324 = icmp eq i32 %134, 1
  br i1 %cmp324, label %if.then326, label %if.else327

if.then326:                                       ; preds = %if.then323
  call void @compress(ptr noundef null)
  br label %if.end353

if.else327:                                       ; preds = %if.then323
  store i8 1, ptr %decode, align 1
  %135 = load ptr, ptr %argList, align 8
  store ptr %135, ptr %aa, align 8
  br label %for.cond328

for.cond328:                                      ; preds = %for.inc350, %if.else327
  %136 = load ptr, ptr %aa, align 8
  %cmp329 = icmp ne ptr %136, null
  br i1 %cmp329, label %for.body331, label %for.end352

for.body331:                                      ; preds = %for.cond328
  %137 = load ptr, ptr %aa, align 8
  %name332 = getelementptr inbounds nuw %struct.zzzz, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %name332, align 8
  %call333 = call i32 @strcmp(ptr noundef %138, ptr noundef @.str.21) #5
  %cmp334 = icmp eq i32 %call333, 0
  br i1 %cmp334, label %if.then336, label %if.end337

if.then336:                                       ; preds = %for.body331
  store i8 0, ptr %decode, align 1
  br label %for.inc350

if.end337:                                        ; preds = %for.body331
  %139 = load ptr, ptr %aa, align 8
  %name338 = getelementptr inbounds nuw %struct.zzzz, ptr %139, i32 0, i32 0
  %140 = load ptr, ptr %name338, align 8
  %arrayidx339 = getelementptr inbounds i8, ptr %140, i64 0
  %141 = load i8, ptr %arrayidx339, align 1
  %conv340 = sext i8 %141 to i32
  %cmp341 = icmp eq i32 %conv340, 45
  br i1 %cmp341, label %land.lhs.true343, label %if.end347

land.lhs.true343:                                 ; preds = %if.end337
  %142 = load i8, ptr %decode, align 1
  %conv344 = zext i8 %142 to i32
  %tobool345 = icmp ne i32 %conv344, 0
  br i1 %tobool345, label %if.then346, label %if.end347

if.then346:                                       ; preds = %land.lhs.true343
  br label %for.inc350

if.end347:                                        ; preds = %land.lhs.true343, %if.end337
  %143 = load i32, ptr @numFilesProcessed, align 4
  %inc348 = add nsw i32 %143, 1
  store i32 %inc348, ptr @numFilesProcessed, align 4
  %144 = load ptr, ptr %aa, align 8
  %name349 = getelementptr inbounds nuw %struct.zzzz, ptr %144, i32 0, i32 0
  %145 = load ptr, ptr %name349, align 8
  call void @compress(ptr noundef %145)
  br label %for.inc350

for.inc350:                                       ; preds = %if.end347, %if.then346, %if.then336
  %146 = load ptr, ptr %aa, align 8
  %link351 = getelementptr inbounds nuw %struct.zzzz, ptr %146, i32 0, i32 1
  %147 = load ptr, ptr %link351, align 8
  store ptr %147, ptr %aa, align 8
  br label %for.cond328, !llvm.loop !13

for.end352:                                       ; preds = %for.cond328
  br label %if.end353

if.end353:                                        ; preds = %for.end352, %if.then326
  br label %if.end431

if.else354:                                       ; preds = %if.end320
  %148 = load i32, ptr @opMode, align 4
  %cmp355 = icmp eq i32 %148, 2
  br i1 %cmp355, label %if.then357, label %if.else391

if.then357:                                       ; preds = %if.else354
  store i8 0, ptr @unzFailsExist, align 1
  %149 = load i32, ptr @srcMode, align 4
  %cmp358 = icmp eq i32 %149, 1
  br i1 %cmp358, label %if.then360, label %if.else361

if.then360:                                       ; preds = %if.then357
  call void @uncompress(ptr noundef null)
  br label %if.end387

if.else361:                                       ; preds = %if.then357
  store i8 1, ptr %decode, align 1
  %150 = load ptr, ptr %argList, align 8
  store ptr %150, ptr %aa, align 8
  br label %for.cond362

for.cond362:                                      ; preds = %for.inc384, %if.else361
  %151 = load ptr, ptr %aa, align 8
  %cmp363 = icmp ne ptr %151, null
  br i1 %cmp363, label %for.body365, label %for.end386

for.body365:                                      ; preds = %for.cond362
  %152 = load ptr, ptr %aa, align 8
  %name366 = getelementptr inbounds nuw %struct.zzzz, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %name366, align 8
  %call367 = call i32 @strcmp(ptr noundef %153, ptr noundef @.str.21) #5
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end371

if.then370:                                       ; preds = %for.body365
  store i8 0, ptr %decode, align 1
  br label %for.inc384

if.end371:                                        ; preds = %for.body365
  %154 = load ptr, ptr %aa, align 8
  %name372 = getelementptr inbounds nuw %struct.zzzz, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %name372, align 8
  %arrayidx373 = getelementptr inbounds i8, ptr %155, i64 0
  %156 = load i8, ptr %arrayidx373, align 1
  %conv374 = sext i8 %156 to i32
  %cmp375 = icmp eq i32 %conv374, 45
  br i1 %cmp375, label %land.lhs.true377, label %if.end381

land.lhs.true377:                                 ; preds = %if.end371
  %157 = load i8, ptr %decode, align 1
  %conv378 = zext i8 %157 to i32
  %tobool379 = icmp ne i32 %conv378, 0
  br i1 %tobool379, label %if.then380, label %if.end381

if.then380:                                       ; preds = %land.lhs.true377
  br label %for.inc384

if.end381:                                        ; preds = %land.lhs.true377, %if.end371
  %158 = load i32, ptr @numFilesProcessed, align 4
  %inc382 = add nsw i32 %158, 1
  store i32 %inc382, ptr @numFilesProcessed, align 4
  %159 = load ptr, ptr %aa, align 8
  %name383 = getelementptr inbounds nuw %struct.zzzz, ptr %159, i32 0, i32 0
  %160 = load ptr, ptr %name383, align 8
  call void @uncompress(ptr noundef %160)
  br label %for.inc384

for.inc384:                                       ; preds = %if.end381, %if.then380, %if.then370
  %161 = load ptr, ptr %aa, align 8
  %link385 = getelementptr inbounds nuw %struct.zzzz, ptr %161, i32 0, i32 1
  %162 = load ptr, ptr %link385, align 8
  store ptr %162, ptr %aa, align 8
  br label %for.cond362, !llvm.loop !14

for.end386:                                       ; preds = %for.cond362
  br label %if.end387

if.end387:                                        ; preds = %for.end386, %if.then360
  %163 = load i8, ptr @unzFailsExist, align 1
  %tobool388 = icmp ne i8 %163, 0
  br i1 %tobool388, label %if.then389, label %if.end390

if.then389:                                       ; preds = %if.end387
  call void @setExit(i32 noundef 2)
  %164 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %164) #6
  unreachable

if.end390:                                        ; preds = %if.end387
  br label %if.end430

if.else391:                                       ; preds = %if.else354
  store i8 0, ptr @testFailsExist, align 1
  %165 = load i32, ptr @srcMode, align 4
  %cmp392 = icmp eq i32 %165, 1
  br i1 %cmp392, label %if.then394, label %if.else395

if.then394:                                       ; preds = %if.else391
  call void @testf(ptr noundef null)
  br label %if.end421

if.else395:                                       ; preds = %if.else391
  store i8 1, ptr %decode, align 1
  %166 = load ptr, ptr %argList, align 8
  store ptr %166, ptr %aa, align 8
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc418, %if.else395
  %167 = load ptr, ptr %aa, align 8
  %cmp397 = icmp ne ptr %167, null
  br i1 %cmp397, label %for.body399, label %for.end420

for.body399:                                      ; preds = %for.cond396
  %168 = load ptr, ptr %aa, align 8
  %name400 = getelementptr inbounds nuw %struct.zzzz, ptr %168, i32 0, i32 0
  %169 = load ptr, ptr %name400, align 8
  %call401 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.21) #5
  %cmp402 = icmp eq i32 %call401, 0
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %for.body399
  store i8 0, ptr %decode, align 1
  br label %for.inc418

if.end405:                                        ; preds = %for.body399
  %170 = load ptr, ptr %aa, align 8
  %name406 = getelementptr inbounds nuw %struct.zzzz, ptr %170, i32 0, i32 0
  %171 = load ptr, ptr %name406, align 8
  %arrayidx407 = getelementptr inbounds i8, ptr %171, i64 0
  %172 = load i8, ptr %arrayidx407, align 1
  %conv408 = sext i8 %172 to i32
  %cmp409 = icmp eq i32 %conv408, 45
  br i1 %cmp409, label %land.lhs.true411, label %if.end415

land.lhs.true411:                                 ; preds = %if.end405
  %173 = load i8, ptr %decode, align 1
  %conv412 = zext i8 %173 to i32
  %tobool413 = icmp ne i32 %conv412, 0
  br i1 %tobool413, label %if.then414, label %if.end415

if.then414:                                       ; preds = %land.lhs.true411
  br label %for.inc418

if.end415:                                        ; preds = %land.lhs.true411, %if.end405
  %174 = load i32, ptr @numFilesProcessed, align 4
  %inc416 = add nsw i32 %174, 1
  store i32 %inc416, ptr @numFilesProcessed, align 4
  %175 = load ptr, ptr %aa, align 8
  %name417 = getelementptr inbounds nuw %struct.zzzz, ptr %175, i32 0, i32 0
  %176 = load ptr, ptr %name417, align 8
  call void @testf(ptr noundef %176)
  br label %for.inc418

for.inc418:                                       ; preds = %if.end415, %if.then414, %if.then404
  %177 = load ptr, ptr %aa, align 8
  %link419 = getelementptr inbounds nuw %struct.zzzz, ptr %177, i32 0, i32 1
  %178 = load ptr, ptr %link419, align 8
  store ptr %178, ptr %aa, align 8
  br label %for.cond396, !llvm.loop !15

for.end420:                                       ; preds = %for.cond396
  br label %if.end421

if.end421:                                        ; preds = %for.end420, %if.then394
  %179 = load i8, ptr @testFailsExist, align 1
  %conv422 = zext i8 %179 to i32
  %tobool423 = icmp ne i32 %conv422, 0
  br i1 %tobool423, label %land.lhs.true424, label %if.end429

land.lhs.true424:                                 ; preds = %if.end421
  %180 = load i8, ptr @noisy, align 1
  %conv425 = zext i8 %180 to i32
  %tobool426 = icmp ne i32 %conv425, 0
  br i1 %tobool426, label %if.then427, label %if.end429

if.then427:                                       ; preds = %land.lhs.true424
  %181 = load ptr, ptr @stderr, align 8
  %call428 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef @.str.47) #4
  call void @setExit(i32 noundef 2)
  %182 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %182) #6
  unreachable

if.end429:                                        ; preds = %land.lhs.true424, %if.end421
  br label %if.end430

if.end430:                                        ; preds = %if.end429, %if.end390
  br label %if.end431

if.end431:                                        ; preds = %if.end430, %if.end353
  %183 = load ptr, ptr %argList, align 8
  store ptr %183, ptr %aa, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end440, %if.end431
  %184 = load ptr, ptr %aa, align 8
  %cmp432 = icmp ne ptr %184, null
  br i1 %cmp432, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %185 = load ptr, ptr %aa, align 8
  %link434 = getelementptr inbounds nuw %struct.zzzz, ptr %185, i32 0, i32 1
  %186 = load ptr, ptr %link434, align 8
  store ptr %186, ptr %aa2, align 8
  %187 = load ptr, ptr %aa, align 8
  %name435 = getelementptr inbounds nuw %struct.zzzz, ptr %187, i32 0, i32 0
  %188 = load ptr, ptr %name435, align 8
  %cmp436 = icmp ne ptr %188, null
  br i1 %cmp436, label %if.then438, label %if.end440

if.then438:                                       ; preds = %while.body
  %189 = load ptr, ptr %aa, align 8
  %name439 = getelementptr inbounds nuw %struct.zzzz, ptr %189, i32 0, i32 0
  %190 = load ptr, ptr %name439, align 8
  call void @free(ptr noundef %190) #4
  br label %if.end440

if.end440:                                        ; preds = %if.then438, %while.body
  %191 = load ptr, ptr %aa, align 8
  call void @free(ptr noundef %191) #4
  %192 = load ptr, ptr %aa2, align 8
  store ptr %192, ptr %aa, align 8
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  %193 = load i32, ptr @exitValue, align 4
  ret i32 %193
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @mySIGSEGVorSIGBUScatcher(i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @copyFileName(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @addFlagsFromEnvVar(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @snocString(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare hidden void @license() #2

; Function Attrs: nounwind uwtable
declare hidden void @usage(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @redundant(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind uwtable
declare hidden void @mySignalCatcher(i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @compress(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @uncompress(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @setExit(i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @testf(ptr noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { noreturn nounwind }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
