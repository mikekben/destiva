; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@zSuffix = external dso_local global [4 x ptr], align 16
@.str.16 = external hidden unnamed_addr constant [1 x i8], align 1
@unzSuffix = external dso_local global [4 x ptr], align 16
@outputHandleJustInCase = external dso_local global ptr, align 8
@keepInputFiles = external dso_local global i8, align 1
@forceOverwrite = external dso_local global i8, align 1
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@unzFailsExist = external dso_local global i8, align 1
@deleteOutputOnInterrupt = external dso_local global i8, align 1
@inName = external dso_local global [1034 x i8], align 16
@outName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@srcMode = external dso_local global i32, align 4
@.str.96 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.97 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.98 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.99 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.101 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.102 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.103 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.104 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.105 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.109 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.110 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.120 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.121 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.122 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.123 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.124 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.125 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.126 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.127 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [29 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i32 @fflush(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @fopen_output_safely(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @copyFileName(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @uncompress(ptr noundef %name) #2 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %magicNumberOK = alloca i8, align 1
  %cantGuess = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
  %retVal168 = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %0 = load ptr, ptr %name.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @srcMode, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @panic(ptr noundef @.str.120) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  store i8 0, ptr %cantGuess, align 1
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.96)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.97)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %3)
  %4 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @outName, ptr noundef %4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb2
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %5, 4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %idxprom4
  %9 = load ptr, ptr %arrayidx5, align 8
  %call = call zeroext i8 @mapSuffix(ptr noundef @outName, ptr noundef %7, ptr noundef %9)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %zzz

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %cantGuess, align 1
  %call8 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str.121) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %11 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %11)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.97)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %for.end, %sw.bb, %if.end
  br label %zzz

zzz:                                              ; preds = %sw.epilog, %if.then6
  %12 = load i32, ptr @srcMode, align 4
  %cmp10 = icmp ne i32 %12, 1
  br i1 %cmp10, label %land.lhs.true11, label %if.end19

land.lhs.true11:                                  ; preds = %zzz
  %call12 = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call12 to i32
  %tobool13 = icmp ne i32 %conv, 0
  br i1 %tobool13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %land.lhs.true11
  %13 = load i8, ptr @noisy, align 1
  %tobool15 = icmp ne i8 %13, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then14
  %14 = load ptr, ptr @stderr, align 8
  %15 = load ptr, ptr @progName, align 8
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.98, ptr noundef %15, ptr noundef @inName) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then14
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end19:                                         ; preds = %land.lhs.true11, %zzz
  %16 = load i32, ptr @srcMode, align 4
  %cmp20 = icmp ne i32 %16, 1
  br i1 %cmp20, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %if.end19
  %call23 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool24 = icmp ne i8 %call23, 0
  br i1 %tobool24, label %if.end29, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %17 = load ptr, ptr @stderr, align 8
  %18 = load ptr, ptr @progName, align 8
  %call26 = call ptr @__errno_location() #7
  %19 = load i32, ptr %call26, align 4
  %call27 = call ptr @strerror(i32 noundef %19) #6
  %call28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.99, ptr noundef %18, ptr noundef @inName, ptr noundef %call27) #6
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end29:                                         ; preds = %land.lhs.true22, %if.end19
  %20 = load i32, ptr @srcMode, align 4
  %cmp30 = icmp eq i32 %20, 3
  br i1 %cmp30, label %if.then34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end29
  %21 = load i32, ptr @srcMode, align 4
  %cmp32 = icmp eq i32 %21, 2
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %lor.lhs.false, %if.end29
  %call35 = call i32 @stat(ptr noundef @inName, ptr noundef %statBuf) #6
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %statBuf, i32 0, i32 3
  %22 = load i32, ptr %st_mode, align 8
  %and = and i32 %22, 61440
  %cmp36 = icmp eq i32 %and, 16384
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %23 = load ptr, ptr @stderr, align 8
  %24 = load ptr, ptr @progName, align 8
  %call39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.101, ptr noundef %24, ptr noundef @inName) #6
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end40:                                         ; preds = %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %lor.lhs.false
  %25 = load i32, ptr @srcMode, align 4
  %cmp42 = icmp eq i32 %25, 3
  br i1 %cmp42, label %land.lhs.true44, label %if.end55

land.lhs.true44:                                  ; preds = %if.end41
  %26 = load i8, ptr @forceOverwrite, align 1
  %tobool45 = icmp ne i8 %26, 0
  br i1 %tobool45, label %if.end55, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %land.lhs.true44
  %call47 = call zeroext i8 @notAStandardFile(ptr noundef @inName)
  %conv48 = zext i8 %call47 to i32
  %tobool49 = icmp ne i32 %conv48, 0
  br i1 %tobool49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %land.lhs.true46
  %27 = load i8, ptr @noisy, align 1
  %tobool51 = icmp ne i8 %27, 0
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  %28 = load ptr, ptr @stderr, align 8
  %29 = load ptr, ptr @progName, align 8
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.102, ptr noundef %29, ptr noundef @inName) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then50
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end55:                                         ; preds = %land.lhs.true46, %land.lhs.true44, %if.end41
  %30 = load i8, ptr %cantGuess, align 1
  %tobool56 = icmp ne i8 %30, 0
  br i1 %tobool56, label %if.then57, label %if.end62

if.then57:                                        ; preds = %if.end55
  %31 = load i8, ptr @noisy, align 1
  %tobool58 = icmp ne i8 %31, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then57
  %32 = load ptr, ptr @stderr, align 8
  %33 = load ptr, ptr @progName, align 8
  %call60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.122, ptr noundef %33, ptr noundef @inName, ptr noundef @outName) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then57
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end55
  %34 = load i32, ptr @srcMode, align 4
  %cmp63 = icmp eq i32 %34, 3
  br i1 %cmp63, label %land.lhs.true65, label %if.end75

land.lhs.true65:                                  ; preds = %if.end62
  %call66 = call zeroext i8 @fileExists(ptr noundef @outName)
  %conv67 = zext i8 %call66 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %land.lhs.true65
  %35 = load i8, ptr @forceOverwrite, align 1
  %tobool70 = icmp ne i8 %35, 0
  br i1 %tobool70, label %if.then71, label %if.else

if.then71:                                        ; preds = %if.then69
  %call72 = call i32 @remove(ptr noundef @outName) #6
  br label %if.end74

if.else:                                          ; preds = %if.then69
  %36 = load ptr, ptr @stderr, align 8
  %37 = load ptr, ptr @progName, align 8
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.103, ptr noundef %37, ptr noundef @outName) #6
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end74:                                         ; preds = %if.then71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %land.lhs.true65, %if.end62
  %38 = load i32, ptr @srcMode, align 4
  %cmp76 = icmp eq i32 %38, 3
  br i1 %cmp76, label %land.lhs.true78, label %if.end88

land.lhs.true78:                                  ; preds = %if.end75
  %39 = load i8, ptr @forceOverwrite, align 1
  %tobool79 = icmp ne i8 %39, 0
  br i1 %tobool79, label %if.end88, label %land.lhs.true80

land.lhs.true80:                                  ; preds = %land.lhs.true78
  %call81 = call i32 @countHardLinks(ptr noundef @inName)
  store i32 %call81, ptr %n, align 4
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.end88

if.then84:                                        ; preds = %land.lhs.true80
  %40 = load ptr, ptr @stderr, align 8
  %41 = load ptr, ptr @progName, align 8
  %42 = load i32, ptr %n, align 4
  %43 = load i32, ptr %n, align 4
  %cmp85 = icmp sgt i32 %43, 1
  %44 = zext i1 %cmp85 to i64
  %cond = select i1 %cmp85, ptr @.str.105, ptr @.str.16
  %call87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.104, ptr noundef %41, ptr noundef @inName, i32 noundef %42, ptr noundef %cond) #6
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end88:                                         ; preds = %land.lhs.true80, %land.lhs.true78, %if.end75
  %45 = load i32, ptr @srcMode, align 4
  %cmp89 = icmp eq i32 %45, 3
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end88
  call void @saveInputFileMetaInfo(ptr noundef @inName)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  %46 = load i32, ptr @srcMode, align 4
  switch i32 %46, label %sw.default [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb101
    i32 3, label %sw.bb115
  ]

sw.bb93:                                          ; preds = %if.end92
  %47 = load ptr, ptr @stdin, align 8
  store ptr %47, ptr %inStr, align 8
  %48 = load ptr, ptr @stdout, align 8
  store ptr %48, ptr %outStr, align 8
  %49 = load ptr, ptr @stdin, align 8
  %call94 = call i32 @fileno(ptr noundef %49) #6
  %call95 = call i32 @isatty(i32 noundef %call94) #6
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end100

if.then97:                                        ; preds = %sw.bb93
  %50 = load ptr, ptr @stderr, align 8
  %51 = load ptr, ptr @progName, align 8
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.123, ptr noundef %51) #6
  %52 = load ptr, ptr @stderr, align 8
  %53 = load ptr, ptr @progName, align 8
  %54 = load ptr, ptr @progName, align 8
  %call99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.107, ptr noundef %53, ptr noundef %54) #6
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end100:                                        ; preds = %sw.bb93
  br label %sw.epilog142

sw.bb101:                                         ; preds = %if.end92
  %call102 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.108)
  store ptr %call102, ptr %inStr, align 8
  %55 = load ptr, ptr @stdout, align 8
  store ptr %55, ptr %outStr, align 8
  %56 = load ptr, ptr %inStr, align 8
  %cmp103 = icmp eq ptr %56, null
  br i1 %cmp103, label %if.then105, label %if.end114

if.then105:                                       ; preds = %sw.bb101
  %57 = load ptr, ptr @stderr, align 8
  %58 = load ptr, ptr @progName, align 8
  %call106 = call ptr @__errno_location() #7
  %59 = load i32, ptr %call106, align 4
  %call107 = call ptr @strerror(i32 noundef %59) #6
  %call108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.124, ptr noundef %58, ptr noundef @inName, ptr noundef %call107) #6
  %60 = load ptr, ptr %inStr, align 8
  %cmp109 = icmp ne ptr %60, null
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %if.then105
  %61 = load ptr, ptr %inStr, align 8
  %call112 = call i32 @fclose(ptr noundef %61)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.then105
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end114:                                        ; preds = %sw.bb101
  br label %sw.epilog142

sw.bb115:                                         ; preds = %if.end92
  %call116 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.108)
  store ptr %call116, ptr %inStr, align 8
  %call117 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.109)
  store ptr %call117, ptr %outStr, align 8
  %62 = load ptr, ptr %outStr, align 8
  %cmp118 = icmp eq ptr %62, null
  br i1 %cmp118, label %if.then120, label %if.end129

if.then120:                                       ; preds = %sw.bb115
  %63 = load ptr, ptr @stderr, align 8
  %64 = load ptr, ptr @progName, align 8
  %call121 = call ptr @__errno_location() #7
  %65 = load i32, ptr %call121, align 4
  %call122 = call ptr @strerror(i32 noundef %65) #6
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.110, ptr noundef %64, ptr noundef @outName, ptr noundef %call122) #6
  %66 = load ptr, ptr %inStr, align 8
  %cmp124 = icmp ne ptr %66, null
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.then120
  %67 = load ptr, ptr %inStr, align 8
  %call127 = call i32 @fclose(ptr noundef %67)
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then120
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end129:                                        ; preds = %sw.bb115
  %68 = load ptr, ptr %inStr, align 8
  %cmp130 = icmp eq ptr %68, null
  br i1 %cmp130, label %if.then132, label %if.end141

if.then132:                                       ; preds = %if.end129
  %69 = load ptr, ptr @stderr, align 8
  %70 = load ptr, ptr @progName, align 8
  %call133 = call ptr @__errno_location() #7
  %71 = load i32, ptr %call133, align 4
  %call134 = call ptr @strerror(i32 noundef %71) #6
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.99, ptr noundef %70, ptr noundef @inName, ptr noundef %call134) #6
  %72 = load ptr, ptr %outStr, align 8
  %cmp136 = icmp ne ptr %72, null
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %if.then132
  %73 = load ptr, ptr %outStr, align 8
  %call139 = call i32 @fclose(ptr noundef %73)
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %if.then132
  call void @setExit(i32 noundef 1)
  br label %if.end191

if.end141:                                        ; preds = %if.end129
  br label %sw.epilog142

sw.default:                                       ; preds = %if.end92
  call void @panic(ptr noundef @.str.125) #5
  unreachable

sw.epilog142:                                     ; preds = %if.end141, %if.end114, %if.end100
  %74 = load i32, ptr @verbosity, align 4
  %cmp143 = icmp sge i32 %74, 1
  br i1 %cmp143, label %if.then145, label %if.end148

if.then145:                                       ; preds = %sw.epilog142
  %75 = load ptr, ptr @stderr, align 8
  %call146 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.112, ptr noundef @inName) #6
  call void @pad(ptr noundef @inName)
  %76 = load ptr, ptr @stderr, align 8
  %call147 = call i32 @fflush(ptr noundef %76)
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %sw.epilog142
  %77 = load ptr, ptr %outStr, align 8
  store ptr %77, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %78 = load ptr, ptr %inStr, align 8
  %79 = load ptr, ptr %outStr, align 8
  %call149 = call zeroext i8 @uncompressStream(ptr noundef %78, ptr noundef %79)
  store i8 %call149, ptr %magicNumberOK, align 1
  store ptr null, ptr @outputHandleJustInCase, align 8
  %80 = load i8, ptr %magicNumberOK, align 1
  %tobool150 = icmp ne i8 %80, 0
  br i1 %tobool150, label %if.then151, label %if.else164

if.then151:                                       ; preds = %if.end148
  %81 = load i32, ptr @srcMode, align 4
  %cmp152 = icmp eq i32 %81, 3
  br i1 %cmp152, label %if.then154, label %if.end163

if.then154:                                       ; preds = %if.then151
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %82 = load i8, ptr @keepInputFiles, align 1
  %tobool155 = icmp ne i8 %82, 0
  br i1 %tobool155, label %if.end162, label %if.then156

if.then156:                                       ; preds = %if.then154
  %call157 = call i32 @remove(ptr noundef @inName) #6
  store i32 %call157, ptr %retVal, align 4
  %83 = load i32, ptr %retVal, align 4
  %cmp158 = icmp ne i32 %83, 0
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.then156
  call void @ioError() #5
  unreachable

if.end161:                                        ; preds = %if.then156
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then154
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then151
  br label %if.end175

if.else164:                                       ; preds = %if.end148
  store i8 1, ptr @unzFailsExist, align 1
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %84 = load i32, ptr @srcMode, align 4
  %cmp165 = icmp eq i32 %84, 3
  br i1 %cmp165, label %if.then167, label %if.end174

if.then167:                                       ; preds = %if.else164
  %call169 = call i32 @remove(ptr noundef @outName) #6
  store i32 %call169, ptr %retVal168, align 4
  %85 = load i32, ptr %retVal168, align 4
  %cmp170 = icmp ne i32 %85, 0
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then167
  call void @ioError() #5
  unreachable

if.end173:                                        ; preds = %if.then167
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.else164
  br label %if.end175

if.end175:                                        ; preds = %if.end174, %if.end163
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %86 = load i8, ptr %magicNumberOK, align 1
  %tobool176 = icmp ne i8 %86, 0
  br i1 %tobool176, label %if.then177, label %if.else183

if.then177:                                       ; preds = %if.end175
  %87 = load i32, ptr @verbosity, align 4
  %cmp178 = icmp sge i32 %87, 1
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.then177
  %88 = load ptr, ptr @stderr, align 8
  %call181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.126) #6
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %if.then177
  br label %if.end191

if.else183:                                       ; preds = %if.end175
  call void @setExit(i32 noundef 2)
  %89 = load i32, ptr @verbosity, align 4
  %cmp184 = icmp sge i32 %89, 1
  br i1 %cmp184, label %if.then186, label %if.else188

if.then186:                                       ; preds = %if.else183
  %90 = load ptr, ptr @stderr, align 8
  %call187 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.127) #6
  br label %if.end190

if.else188:                                       ; preds = %if.else183
  %91 = load ptr, ptr @stderr, align 8
  %92 = load ptr, ptr @progName, align 8
  %call189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.128, ptr noundef %92, ptr noundef @inName) #6
  br label %if.end190

if.end190:                                        ; preds = %if.else188, %if.then186
  br label %if.end191

if.end191:                                        ; preds = %if.end190, %if.end182, %if.end140, %if.end128, %if.end113, %if.then97, %if.then84, %if.else, %if.end54, %if.then38, %if.then25, %if.end18
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @setExit(i32 noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #0

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #0

; Function Attrs: noreturn nounwind uwtable
declare hidden void @panic(ptr noundef) #3

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @containsDubiousChars(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @fileExists(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @notAStandardFile(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @countHardLinks(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @saveInputFileMetaInfo(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #0

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pad(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @applySavedMetaInfoToOutputFile(ptr noundef) #2

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #3

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @mapSuffix(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @uncompressStream(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

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
