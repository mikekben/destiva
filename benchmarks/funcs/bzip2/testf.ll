; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@outputHandleJustInCase = external dso_local global ptr, align 8
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@testFailsExist = external dso_local global i8, align 1
@deleteOutputOnInterrupt = external dso_local global i8, align 1
@inName = external dso_local global [1034 x i8], align 16
@.str.18 = external hidden unnamed_addr constant [7 x i8], align 1
@outName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@srcMode = external dso_local global i32, align 4
@.str.96 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.98 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.101 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.123 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.124 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.135 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.136 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.137 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.138 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @copyFileName(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @setExit(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @testf(ptr noundef %name) #2 {
entry:
  %name.addr = alloca ptr, align 8
  %inStr = alloca ptr, align 8
  %allOK = alloca i8, align 1
  %statBuf = alloca %struct.stat, align 8
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
  call void @panic(ptr noundef @.str.135) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.18)
  %2 = load i32, ptr @srcMode, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.96)
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  %3 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %4 = load ptr, ptr %name.addr, align 8
  call void @copyFileName(ptr noundef @inName, ptr noundef %4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %if.end
  %5 = load i32, ptr @srcMode, align 4
  %cmp4 = icmp ne i32 %5, 1
  br i1 %cmp4, label %land.lhs.true5, label %if.end11

land.lhs.true5:                                   ; preds = %sw.epilog
  %call = call zeroext i8 @containsDubiousChars(ptr noundef @inName)
  %conv = zext i8 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then6, label %if.end11

if.then6:                                         ; preds = %land.lhs.true5
  %6 = load i8, ptr @noisy, align 1
  %tobool7 = icmp ne i8 %6, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.then6
  %7 = load ptr, ptr @stderr, align 8
  %8 = load ptr, ptr @progName, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.98, ptr noundef %8, ptr noundef @inName) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then6
  call void @setExit(i32 noundef 1)
  br label %if.end67

if.end11:                                         ; preds = %land.lhs.true5, %sw.epilog
  %9 = load i32, ptr @srcMode, align 4
  %cmp12 = icmp ne i32 %9, 1
  br i1 %cmp12, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %if.end11
  %call15 = call zeroext i8 @fileExists(ptr noundef @inName)
  %tobool16 = icmp ne i8 %call15, 0
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %land.lhs.true14
  %10 = load ptr, ptr @stderr, align 8
  %11 = load ptr, ptr @progName, align 8
  %call18 = call ptr @__errno_location() #7
  %12 = load i32, ptr %call18, align 4
  %call19 = call ptr @strerror(i32 noundef %12) #6
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.136, ptr noundef %11, ptr noundef @inName, ptr noundef %call19) #6
  call void @setExit(i32 noundef 1)
  br label %if.end67

if.end21:                                         ; preds = %land.lhs.true14, %if.end11
  %13 = load i32, ptr @srcMode, align 4
  %cmp22 = icmp ne i32 %13, 1
  br i1 %cmp22, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end21
  %call25 = call i32 @stat(ptr noundef @inName, ptr noundef %statBuf) #6
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %statBuf, i32 0, i32 3
  %14 = load i32, ptr %st_mode, align 8
  %and = and i32 %14, 61440
  %cmp26 = icmp eq i32 %and, 16384
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then24
  %15 = load ptr, ptr @stderr, align 8
  %16 = load ptr, ptr @progName, align 8
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.101, ptr noundef %16, ptr noundef @inName) #6
  call void @setExit(i32 noundef 1)
  br label %if.end67

if.end30:                                         ; preds = %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end21
  %17 = load i32, ptr @srcMode, align 4
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb32
    i32 2, label %sw.bb40
    i32 3, label %sw.bb40
  ]

sw.bb32:                                          ; preds = %if.end31
  %18 = load ptr, ptr @stdin, align 8
  %call33 = call i32 @fileno(ptr noundef %18) #6
  %call34 = call i32 @isatty(i32 noundef %call33) #6
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %sw.bb32
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr @progName, align 8
  %call37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.123, ptr noundef %20) #6
  %21 = load ptr, ptr @stderr, align 8
  %22 = load ptr, ptr @progName, align 8
  %23 = load ptr, ptr @progName, align 8
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.107, ptr noundef %22, ptr noundef %23) #6
  call void @setExit(i32 noundef 1)
  br label %if.end67

if.end39:                                         ; preds = %sw.bb32
  %24 = load ptr, ptr @stdin, align 8
  store ptr %24, ptr %inStr, align 8
  br label %sw.epilog49

sw.bb40:                                          ; preds = %if.end31, %if.end31
  %call41 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.108)
  store ptr %call41, ptr %inStr, align 8
  %25 = load ptr, ptr %inStr, align 8
  %cmp42 = icmp eq ptr %25, null
  br i1 %cmp42, label %if.then44, label %if.end48

if.then44:                                        ; preds = %sw.bb40
  %26 = load ptr, ptr @stderr, align 8
  %27 = load ptr, ptr @progName, align 8
  %call45 = call ptr @__errno_location() #7
  %28 = load i32, ptr %call45, align 4
  %call46 = call ptr @strerror(i32 noundef %28) #6
  %call47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.124, ptr noundef %27, ptr noundef @inName, ptr noundef %call46) #6
  call void @setExit(i32 noundef 1)
  br label %if.end67

if.end48:                                         ; preds = %sw.bb40
  br label %sw.epilog49

sw.default:                                       ; preds = %if.end31
  call void @panic(ptr noundef @.str.137) #5
  unreachable

sw.epilog49:                                      ; preds = %if.end48, %if.end39
  %29 = load i32, ptr @verbosity, align 4
  %cmp50 = icmp sge i32 %29, 1
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %sw.epilog49
  %30 = load ptr, ptr @stderr, align 8
  %call53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.112, ptr noundef @inName) #6
  call void @pad(ptr noundef @inName)
  %31 = load ptr, ptr @stderr, align 8
  %call54 = call i32 @fflush(ptr noundef %31)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %sw.epilog49
  store ptr null, ptr @outputHandleJustInCase, align 8
  %32 = load ptr, ptr %inStr, align 8
  %call56 = call zeroext i8 @testStream(ptr noundef %32)
  store i8 %call56, ptr %allOK, align 1
  %33 = load i8, ptr %allOK, align 1
  %conv57 = zext i8 %33 to i32
  %tobool58 = icmp ne i32 %conv57, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end64

land.lhs.true59:                                  ; preds = %if.end55
  %34 = load i32, ptr @verbosity, align 4
  %cmp60 = icmp sge i32 %34, 1
  br i1 %cmp60, label %if.then62, label %if.end64

if.then62:                                        ; preds = %land.lhs.true59
  %35 = load ptr, ptr @stderr, align 8
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.138) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %land.lhs.true59, %if.end55
  %36 = load i8, ptr %allOK, align 1
  %tobool65 = icmp ne i8 %36, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end64
  store i8 1, ptr @testFailsExist, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end64, %if.then44, %if.then36, %if.then28, %if.then17, %if.end10
  ret void
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #0

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

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #0

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pad(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @testStream(ptr noundef) #2

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
