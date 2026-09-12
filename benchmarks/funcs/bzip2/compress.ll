; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.12 = external hidden unnamed_addr constant [5 x i8], align 1
@zSuffix = external dso_local global [4 x ptr], align 16
@.str.16 = external hidden unnamed_addr constant [1 x i8], align 1
@outputHandleJustInCase = external dso_local global ptr, align 8
@keepInputFiles = external dso_local global i8, align 1
@forceOverwrite = external dso_local global i8, align 1
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@deleteOutputOnInterrupt = external dso_local global i8, align 1
@inName = external dso_local global [1034 x i8], align 16
@outName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@srcMode = external dso_local global i32, align 4
@.str.95 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.96 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.97 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.98 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.99 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.100 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.101 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.102 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.103 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.104 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.105 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.106 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.109 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.110 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.111 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i32 @fflush(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @fopen_output_safely(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @copyFileName(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @compress(ptr noundef %name) #2 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %outStr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  %retVal = alloca i32, align 4
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
  call void @panic(ptr noundef @.str.95) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
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
  %call = call ptr @strcat(ptr noundef @outName, ptr noundef @.str.12) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %5 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %5)
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.97)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end
  %6 = load i32, ptr @srcMode, align 4
  %cmp4 = icmp ne i32 %6, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %sw.epilog
  %call6 = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true5
  %7 = load i8, ptr @noisy, align 1
  %tobool8 = icmp ne i8 %7, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %8 = load ptr, ptr @stderr, align 8
  %9 = load ptr, ptr @progName, align 8
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.98, ptr noundef %9, ptr noundef @inName) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  call void @setExit(i32 noundef 1)
  br label %return

if.end12:                                         ; preds = %land.lhs.true5, %sw.epilog
  %10 = load i32, ptr @srcMode, align 4
  %cmp13 = icmp ne i32 %10, 1
  br i1 %cmp13, label %land.lhs.true15, label %if.end22

land.lhs.true15:                                  ; preds = %if.end12
  %call16 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool17 = icmp ne i8 %call16, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  %11 = load ptr, ptr @stderr, align 8
  %12 = load ptr, ptr @progName, align 8
  %call19 = call ptr @__errno_location() #7
  %13 = load i32, ptr %call19, align 4
  %call20 = call ptr @strerror(i32 noundef %13) #6
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.99, ptr noundef %12, ptr noundef @inName, ptr noundef %call20) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end22:                                         ; preds = %land.lhs.true15, %if.end12
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %14 = load i32, ptr %i, align 4
  %cmp23 = icmp slt i32 %14, 4
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %call25 = call zeroext i8 @hasSuffix(ptr noundef @inName, ptr noundef %16)
  %tobool26 = icmp ne i8 %call25, 0
  br i1 %tobool26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %for.body
  %17 = load i8, ptr @noisy, align 1
  %tobool28 = icmp ne i8 %17, 0
  br i1 %tobool28, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.then27
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr @progName, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %idxprom30
  %21 = load ptr, ptr %arrayidx31, align 8
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.100, ptr noundef %19, ptr noundef @inName, ptr noundef %21) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.then27
  call void @setExit(i32 noundef 1)
  br label %return

if.end34:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr @srcMode, align 4
  %cmp35 = icmp eq i32 %23, 3
  br i1 %cmp35, label %if.then39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %24 = load i32, ptr @srcMode, align 4
  %cmp37 = icmp eq i32 %24, 2
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %lor.lhs.false, %for.end
  %call40 = call i32 @stat(ptr noundef @inName, ptr noundef %statBuf) #6
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %statBuf, i32 0, i32 3
  %25 = load i32, ptr %st_mode, align 8
  %and = and i32 %25, 61440
  %cmp41 = icmp eq i32 %and, 16384
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  %26 = load ptr, ptr @stderr, align 8
  %27 = load ptr, ptr @progName, align 8
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.101, ptr noundef %27, ptr noundef @inName) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end45:                                         ; preds = %if.then39
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %lor.lhs.false
  %28 = load i32, ptr @srcMode, align 4
  %cmp47 = icmp eq i32 %28, 3
  br i1 %cmp47, label %land.lhs.true49, label %if.end60

land.lhs.true49:                                  ; preds = %if.end46
  %29 = load i8, ptr @forceOverwrite, align 1
  %tobool50 = icmp ne i8 %29, 0
  br i1 %tobool50, label %if.end60, label %land.lhs.true51

land.lhs.true51:                                  ; preds = %land.lhs.true49
  %call52 = call zeroext i8 @notAStandardFile(ptr noundef @inName)
  %conv53 = zext i8 %call52 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %land.lhs.true51
  %30 = load i8, ptr @noisy, align 1
  %tobool56 = icmp ne i8 %30, 0
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then55
  %31 = load ptr, ptr @stderr, align 8
  %32 = load ptr, ptr @progName, align 8
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.102, ptr noundef %32, ptr noundef @inName) #6
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then55
  call void @setExit(i32 noundef 1)
  br label %return

if.end60:                                         ; preds = %land.lhs.true51, %land.lhs.true49, %if.end46
  %33 = load i32, ptr @srcMode, align 4
  %cmp61 = icmp eq i32 %33, 3
  br i1 %cmp61, label %land.lhs.true63, label %if.end73

land.lhs.true63:                                  ; preds = %if.end60
  %call64 = call zeroext i8 @fileExists(ptr noundef @outName)
  %conv65 = zext i8 %call64 to i32
  %tobool66 = icmp ne i32 %conv65, 0
  br i1 %tobool66, label %if.then67, label %if.end73

if.then67:                                        ; preds = %land.lhs.true63
  %34 = load i8, ptr @forceOverwrite, align 1
  %tobool68 = icmp ne i8 %34, 0
  br i1 %tobool68, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.then67
  %call70 = call i32 @remove(ptr noundef @outName) #6
  br label %if.end72

if.else:                                          ; preds = %if.then67
  %35 = load ptr, ptr @stderr, align 8
  %36 = load ptr, ptr @progName, align 8
  %call71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.103, ptr noundef %36, ptr noundef @outName) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end72:                                         ; preds = %if.then69
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %land.lhs.true63, %if.end60
  %37 = load i32, ptr @srcMode, align 4
  %cmp74 = icmp eq i32 %37, 3
  br i1 %cmp74, label %land.lhs.true76, label %if.end86

land.lhs.true76:                                  ; preds = %if.end73
  %38 = load i8, ptr @forceOverwrite, align 1
  %tobool77 = icmp ne i8 %38, 0
  br i1 %tobool77, label %if.end86, label %land.lhs.true78

land.lhs.true78:                                  ; preds = %land.lhs.true76
  %call79 = call i32 @countHardLinks(ptr noundef @inName)
  store i32 %call79, ptr %n, align 4
  %cmp80 = icmp sgt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end86

if.then82:                                        ; preds = %land.lhs.true78
  %39 = load ptr, ptr @stderr, align 8
  %40 = load ptr, ptr @progName, align 8
  %41 = load i32, ptr %n, align 4
  %42 = load i32, ptr %n, align 4
  %cmp83 = icmp sgt i32 %42, 1
  %43 = zext i1 %cmp83 to i64
  %cond = select i1 %cmp83, ptr @.str.105, ptr @.str.16
  %call85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.104, ptr noundef %40, ptr noundef @inName, i32 noundef %41, ptr noundef %cond) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end86:                                         ; preds = %land.lhs.true78, %land.lhs.true76, %if.end73
  %44 = load i32, ptr @srcMode, align 4
  %cmp87 = icmp eq i32 %44, 3
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end86
  call void @saveInputFileMetaInfo(ptr noundef @inName)
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end86
  %45 = load i32, ptr @srcMode, align 4
  switch i32 %45, label %sw.default [
    i32 1, label %sw.bb91
    i32 2, label %sw.bb99
    i32 3, label %sw.bb120
  ]

sw.bb91:                                          ; preds = %if.end90
  %46 = load ptr, ptr @stdin, align 8
  store ptr %46, ptr %inStr, align 8
  %47 = load ptr, ptr @stdout, align 8
  store ptr %47, ptr %outStr, align 8
  %48 = load ptr, ptr @stdout, align 8
  %call92 = call i32 @fileno(ptr noundef %48) #6
  %call93 = call i32 @isatty(i32 noundef %call92) #6
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %sw.bb91
  %49 = load ptr, ptr @stderr, align 8
  %50 = load ptr, ptr @progName, align 8
  %call96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.106, ptr noundef %50) #6
  %51 = load ptr, ptr @stderr, align 8
  %52 = load ptr, ptr @progName, align 8
  %53 = load ptr, ptr @progName, align 8
  %call97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef @.str.107, ptr noundef %52, ptr noundef %53) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end98:                                         ; preds = %sw.bb91
  br label %sw.epilog147

sw.bb99:                                          ; preds = %if.end90
  %call100 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.108)
  store ptr %call100, ptr %inStr, align 8
  %54 = load ptr, ptr @stdout, align 8
  store ptr %54, ptr %outStr, align 8
  %55 = load ptr, ptr @stdout, align 8
  %call101 = call i32 @fileno(ptr noundef %55) #6
  %call102 = call i32 @isatty(i32 noundef %call101) #6
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.then104, label %if.end112

if.then104:                                       ; preds = %sw.bb99
  %56 = load ptr, ptr @stderr, align 8
  %57 = load ptr, ptr @progName, align 8
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str.106, ptr noundef %57) #6
  %58 = load ptr, ptr @stderr, align 8
  %59 = load ptr, ptr @progName, align 8
  %60 = load ptr, ptr @progName, align 8
  %call106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.107, ptr noundef %59, ptr noundef %60) #6
  %61 = load ptr, ptr %inStr, align 8
  %cmp107 = icmp ne ptr %61, null
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.then104
  %62 = load ptr, ptr %inStr, align 8
  %call110 = call i32 @fclose(ptr noundef %62)
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.then104
  call void @setExit(i32 noundef 1)
  br label %return

if.end112:                                        ; preds = %sw.bb99
  %63 = load ptr, ptr %inStr, align 8
  %cmp113 = icmp eq ptr %63, null
  br i1 %cmp113, label %if.then115, label %if.end119

if.then115:                                       ; preds = %if.end112
  %64 = load ptr, ptr @stderr, align 8
  %65 = load ptr, ptr @progName, align 8
  %call116 = call ptr @__errno_location() #7
  %66 = load i32, ptr %call116, align 4
  %call117 = call ptr @strerror(i32 noundef %66) #6
  %call118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.99, ptr noundef %65, ptr noundef @inName, ptr noundef %call117) #6
  call void @setExit(i32 noundef 1)
  br label %return

if.end119:                                        ; preds = %if.end112
  br label %sw.epilog147

sw.bb120:                                         ; preds = %if.end90
  %call121 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.108)
  store ptr %call121, ptr %inStr, align 8
  %call122 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.109)
  store ptr %call122, ptr %outStr, align 8
  %67 = load ptr, ptr %outStr, align 8
  %cmp123 = icmp eq ptr %67, null
  br i1 %cmp123, label %if.then125, label %if.end134

if.then125:                                       ; preds = %sw.bb120
  %68 = load ptr, ptr @stderr, align 8
  %69 = load ptr, ptr @progName, align 8
  %call126 = call ptr @__errno_location() #7
  %70 = load i32, ptr %call126, align 4
  %call127 = call ptr @strerror(i32 noundef %70) #6
  %call128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.110, ptr noundef %69, ptr noundef @outName, ptr noundef %call127) #6
  %71 = load ptr, ptr %inStr, align 8
  %cmp129 = icmp ne ptr %71, null
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %if.then125
  %72 = load ptr, ptr %inStr, align 8
  %call132 = call i32 @fclose(ptr noundef %72)
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.then125
  call void @setExit(i32 noundef 1)
  br label %return

if.end134:                                        ; preds = %sw.bb120
  %73 = load ptr, ptr %inStr, align 8
  %cmp135 = icmp eq ptr %73, null
  br i1 %cmp135, label %if.then137, label %if.end146

if.then137:                                       ; preds = %if.end134
  %74 = load ptr, ptr @stderr, align 8
  %75 = load ptr, ptr @progName, align 8
  %call138 = call ptr @__errno_location() #7
  %76 = load i32, ptr %call138, align 4
  %call139 = call ptr @strerror(i32 noundef %76) #6
  %call140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.99, ptr noundef %75, ptr noundef @inName, ptr noundef %call139) #6
  %77 = load ptr, ptr %outStr, align 8
  %cmp141 = icmp ne ptr %77, null
  br i1 %cmp141, label %if.then143, label %if.end145

if.then143:                                       ; preds = %if.then137
  %78 = load ptr, ptr %outStr, align 8
  %call144 = call i32 @fclose(ptr noundef %78)
  br label %if.end145

if.end145:                                        ; preds = %if.then143, %if.then137
  call void @setExit(i32 noundef 1)
  br label %return

if.end146:                                        ; preds = %if.end134
  br label %sw.epilog147

sw.default:                                       ; preds = %if.end90
  call void @panic(ptr noundef @.str.111) #5
  unreachable

sw.epilog147:                                     ; preds = %if.end146, %if.end119, %if.end98
  %79 = load i32, ptr @verbosity, align 4
  %cmp148 = icmp sge i32 %79, 1
  br i1 %cmp148, label %if.then150, label %if.end153

if.then150:                                       ; preds = %sw.epilog147
  %80 = load ptr, ptr @stderr, align 8
  %call151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.112, ptr noundef @inName) #6
  call void @pad(ptr noundef @inName)
  %81 = load ptr, ptr @stderr, align 8
  %call152 = call i32 @fflush(ptr noundef %81)
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %sw.epilog147
  %82 = load ptr, ptr %outStr, align 8
  store ptr %82, ptr @outputHandleJustInCase, align 8
  store i8 1, ptr @deleteOutputOnInterrupt, align 1
  %83 = load ptr, ptr %inStr, align 8
  %84 = load ptr, ptr %outStr, align 8
  call void @compressStream(ptr noundef %83, ptr noundef %84)
  store ptr null, ptr @outputHandleJustInCase, align 8
  %85 = load i32, ptr @srcMode, align 4
  %cmp154 = icmp eq i32 %85, 3
  br i1 %cmp154, label %if.then156, label %if.end165

if.then156:                                       ; preds = %if.end153
  call void @applySavedMetaInfoToOutputFile(ptr noundef @outName)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  %86 = load i8, ptr @keepInputFiles, align 1
  %tobool157 = icmp ne i8 %86, 0
  br i1 %tobool157, label %if.end164, label %if.then158

if.then158:                                       ; preds = %if.then156
  %call159 = call i32 @remove(ptr noundef @inName) #6
  store i32 %call159, ptr %retVal, align 4
  %87 = load i32, ptr %retVal, align 4
  %cmp160 = icmp ne i32 %87, 0
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then158
  call void @ioError() #5
  unreachable

if.end163:                                        ; preds = %if.then158
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then156
  br label %if.end165

if.end165:                                        ; preds = %if.end164, %if.end153
  store i8 0, ptr @deleteOutputOnInterrupt, align 1
  br label %return

return:                                           ; preds = %if.end165, %if.end145, %if.end133, %if.then115, %if.end111, %if.then95, %if.then82, %if.else, %if.end59, %if.then43, %if.end33, %if.then18, %if.end11
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
declare hidden zeroext i8 @hasSuffix(ptr noundef, ptr noundef) #2

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
declare hidden void @compressStream(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @applySavedMetaInfoToOutputFile(ptr noundef) #2

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #3

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
