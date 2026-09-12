; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@outputHandleJustInCase = external dso_local global ptr, align 8
@noisy = external dso_local global i8, align 1
@numFileNames = external dso_local global i32, align 4
@numFilesProcessed = external dso_local global i32, align 4
@deleteOutputOnInterrupt = external dso_local global i8, align 1
@exitValue = external dso_local global i32, align 4
@inName = external dso_local global [1034 x i8], align 16
@outName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@srcMode = external dso_local global i32, align 4
@opMode = external dso_local global i32, align 4
@.str.81 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.82 = external hidden unnamed_addr constant [59 x i8], align 1
@.str.83 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.84 = external hidden unnamed_addr constant [56 x i8], align 1
@.str.85 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.86 = external hidden unnamed_addr constant [61 x i8], align 1
@.str.87 = external hidden unnamed_addr constant [110 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #1

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @setExit(i32 noundef) #3

; Function Attrs: noreturn nounwind uwtable
define hidden void @cleanUpAndFail(i32 noundef %ec) #4 {
entry:
  %ec.addr = alloca i32, align 4
  %retVal = alloca i32, align 4
  %statBuf = alloca %struct.stat, align 8
  store i32 %ec, ptr %ec.addr, align 4
  %0 = load i32, ptr @srcMode, align 4
  %cmp = icmp eq i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @opMode, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %land.lhs.true2, label %if.end25

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i8, ptr @deleteOutputOnInterrupt, align 1
  %conv = zext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %land.lhs.true2
  %call = call i32 @stat(ptr noundef @inName, ptr noundef %statBuf) #5
  store i32 %call, ptr %retVal, align 4
  %3 = load i32, ptr %retVal, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %4 = load i8, ptr @noisy, align 1
  %tobool6 = icmp ne i8 %4, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %5 = load ptr, ptr @stderr, align 8
  %6 = load ptr, ptr @progName, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.81, ptr noundef %6, ptr noundef @outName) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  %7 = load ptr, ptr @outputHandleJustInCase, align 8
  %cmp9 = icmp ne ptr %7, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %8 = load ptr, ptr @outputHandleJustInCase, align 8
  %call12 = call i32 @fclose(ptr noundef %8)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end
  %call14 = call i32 @remove(ptr noundef @outName) #5
  store i32 %call14, ptr %retVal, align 4
  %9 = load i32, ptr %retVal, align 4
  %cmp15 = icmp ne i32 %9, 0
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %10 = load ptr, ptr @stderr, align 8
  %11 = load ptr, ptr @progName, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.82, ptr noundef %11) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end13
  br label %if.end24

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr @stderr, align 8
  %13 = load ptr, ptr @progName, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.83, ptr noundef %13) #5
  %14 = load ptr, ptr @stderr, align 8
  %15 = load ptr, ptr @progName, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.84, ptr noundef %15) #5
  %16 = load ptr, ptr @stderr, align 8
  %17 = load ptr, ptr @progName, align 8
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.85, ptr noundef %17, ptr noundef @outName) #5
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr @progName, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.86, ptr noundef %19) #5
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end19
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true2, %land.lhs.true, %entry
  %20 = load i8, ptr @noisy, align 1
  %conv26 = zext i8 %20 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end25
  %21 = load i32, ptr @numFileNames, align 4
  %cmp29 = icmp sgt i32 %21, 0
  br i1 %cmp29, label %land.lhs.true31, label %if.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %22 = load i32, ptr @numFilesProcessed, align 4
  %23 = load i32, ptr @numFileNames, align 4
  %cmp32 = icmp slt i32 %22, %23
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true31
  %24 = load ptr, ptr @stderr, align 8
  %25 = load ptr, ptr @progName, align 8
  %26 = load ptr, ptr @progName, align 8
  %27 = load i32, ptr @numFileNames, align 4
  %28 = load i32, ptr @numFileNames, align 4
  %29 = load i32, ptr @numFilesProcessed, align 4
  %sub = sub nsw i32 %28, %29
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.87, ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %sub) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true31, %land.lhs.true28, %if.end25
  %30 = load i32, ptr %ec.addr, align 4
  call void @setExit(i32 noundef %30)
  %31 = load i32, ptr @exitValue, align 4
  call void @exit(i32 noundef %31) #6
  unreachable
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #0

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
