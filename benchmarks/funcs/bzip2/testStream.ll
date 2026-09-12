; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@stdin = external global ptr, align 8
@smallMode = external dso_local global i8, align 1
@noisy = external dso_local global i8, align 1
@verbosity = external dso_local global i32, align 4
@inName = external dso_local global [1034 x i8], align 16
@progName = external dso_local global ptr, align 8
@.str.130 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.139 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.140 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.141 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.142 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.143 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.144 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.145 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzReadClose(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @myfeof(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noreturn nounwind uwtable
declare hidden void @outOfMemory() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @panic(ptr noundef) #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #3

; Function Attrs: noreturn nounwind uwtable
declare hidden void @configError() #3

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @testStream(ptr noundef %zStream) #1 {
entry:
  %retval = alloca i8, align 1
  %zStream.addr = alloca ptr, align 8
  %bzf = alloca ptr, align 8
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %ret = alloca i32, align 4
  %nread = alloca i32, align 4
  %streamNo = alloca i32, align 4
  %i = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmp = alloca ptr, align 8
  store ptr %zStream, ptr %zStream.addr, align 8
  store ptr null, ptr %bzf, align 8
  store i32 0, ptr %nUnused, align 4
  store i32 0, ptr %streamNo, align 4
  %0 = load ptr, ptr %zStream.addr, align 8
  %call = call i32 @ferror(ptr noundef %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %errhandler_io

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end40, %if.end
  %1 = load ptr, ptr %zStream.addr, align 8
  %2 = load i32, ptr @verbosity, align 4
  %3 = load i8, ptr @smallMode, align 1
  %conv = zext i8 %3 to i32
  %arraydecay = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 0
  %4 = load i32, ptr %nUnused, align 4
  %call1 = call ptr @BZ2_bzReadOpen(ptr noundef %bzerr, ptr noundef %1, i32 noundef %2, i32 noundef %conv, ptr noundef %arraydecay, i32 noundef %4)
  store ptr %call1, ptr %bzf, align 8
  %5 = load ptr, ptr %bzf, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, ptr %bzerr, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %while.body
  br label %errhandler

if.end6:                                          ; preds = %lor.lhs.false
  %7 = load i32, ptr %streamNo, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %streamNo, align 4
  br label %while.cond7

while.cond7:                                      ; preds = %if.end16, %if.end6
  %8 = load i32, ptr %bzerr, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %while.body10, label %while.end

while.body10:                                     ; preds = %while.cond7
  %9 = load ptr, ptr %bzf, align 8
  %arraydecay11 = getelementptr inbounds [5000 x i8], ptr %obuf, i64 0, i64 0
  %call12 = call i32 @BZ2_bzRead(ptr noundef %bzerr, ptr noundef %9, ptr noundef %arraydecay11, i32 noundef 5000)
  store i32 %call12, ptr %nread, align 4
  %10 = load i32, ptr %bzerr, align 4
  %cmp13 = icmp eq i32 %10, -5
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body10
  br label %errhandler

if.end16:                                         ; preds = %while.body10
  br label %while.cond7, !llvm.loop !6

while.end:                                        ; preds = %while.cond7
  %11 = load i32, ptr %bzerr, align 4
  %cmp17 = icmp ne i32 %11, 4
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  br label %errhandler

if.end20:                                         ; preds = %while.end
  %12 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadGetUnused(ptr noundef %bzerr, ptr noundef %12, ptr noundef %unusedTmp, ptr noundef %nUnused)
  %13 = load i32, ptr %bzerr, align 4
  %cmp21 = icmp ne i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @panic(ptr noundef @.str.139) #5
  unreachable

if.end24:                                         ; preds = %if.end20
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end24
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %nUnused, align 4
  %cmp25 = icmp slt i32 %14, %15
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %unusedTmp, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  %18 = load i8, ptr %arrayidx, align 1
  %19 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 %idxprom27
  store i8 %18, ptr %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr, ptr noundef %21)
  %22 = load i32, ptr %bzerr, align 4
  %cmp30 = icmp ne i32 %22, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.end
  call void @panic(ptr noundef @.str.139) #5
  unreachable

if.end33:                                         ; preds = %for.end
  %23 = load i32, ptr %nUnused, align 4
  %cmp34 = icmp eq i32 %23, 0
  br i1 %cmp34, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.end33
  %24 = load ptr, ptr %zStream.addr, align 8
  %call36 = call zeroext i8 @myfeof(ptr noundef %24)
  %conv37 = zext i8 %call36 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  br label %while.end41

if.end40:                                         ; preds = %land.lhs.true, %if.end33
  br label %while.body

while.end41:                                      ; preds = %if.then39
  %25 = load ptr, ptr %zStream.addr, align 8
  %call42 = call i32 @ferror(ptr noundef %25) #4
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %while.end41
  br label %errhandler_io

if.end45:                                         ; preds = %while.end41
  %26 = load ptr, ptr %zStream.addr, align 8
  %call46 = call i32 @fclose(ptr noundef %26)
  store i32 %call46, ptr %ret, align 4
  %27 = load i32, ptr %ret, align 4
  %cmp47 = icmp eq i32 %27, -1
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end45
  br label %errhandler_io

if.end50:                                         ; preds = %if.end45
  %28 = load i32, ptr @verbosity, align 4
  %cmp51 = icmp sge i32 %28, 2
  br i1 %cmp51, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  %29 = load ptr, ptr @stderr, align 8
  %call54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef @.str.130) #4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50
  store i8 1, ptr %retval, align 1
  br label %return

errhandler:                                       ; preds = %if.then19, %if.then15, %if.then5
  %30 = load ptr, ptr %bzf, align 8
  call void @BZ2_bzReadClose(ptr noundef %bzerr_dummy, ptr noundef %30)
  %31 = load i32, ptr @verbosity, align 4
  %cmp56 = icmp eq i32 %31, 0
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %errhandler
  %32 = load ptr, ptr @stderr, align 8
  %33 = load ptr, ptr @progName, align 8
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.140, ptr noundef %33, ptr noundef @inName) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %errhandler
  %34 = load i32, ptr %bzerr, align 4
  switch i32 %34, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %sw.bb61
    i32 -4, label %sw.bb62
    i32 -3, label %sw.bb64
    i32 -7, label %sw.bb65
    i32 -5, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.end60
  call void @configError() #5
  unreachable

sw.bb61:                                          ; preds = %if.end60
  br label %errhandler_io

errhandler_io:                                    ; preds = %sw.bb61, %if.then49, %if.then44, %if.then
  call void @ioError() #5
  unreachable

sw.bb62:                                          ; preds = %if.end60
  %35 = load ptr, ptr @stderr, align 8
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.141) #4
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb64:                                          ; preds = %if.end60
  call void @outOfMemory() #5
  unreachable

sw.bb65:                                          ; preds = %if.end60
  %36 = load ptr, ptr @stderr, align 8
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.142) #4
  store i8 0, ptr %retval, align 1
  br label %return

sw.bb67:                                          ; preds = %if.end60
  %37 = load ptr, ptr %zStream.addr, align 8
  %38 = load ptr, ptr @stdin, align 8
  %cmp68 = icmp ne ptr %37, %38
  br i1 %cmp68, label %if.then70, label %if.end72

if.then70:                                        ; preds = %sw.bb67
  %39 = load ptr, ptr %zStream.addr, align 8
  %call71 = call i32 @fclose(ptr noundef %39)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %sw.bb67
  %40 = load i32, ptr %streamNo, align 4
  %cmp73 = icmp eq i32 %40, 1
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.end72
  %41 = load ptr, ptr @stderr, align 8
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.143) #4
  store i8 0, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %if.end72
  %42 = load i8, ptr @noisy, align 1
  %tobool77 = icmp ne i8 %42, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.else
  %43 = load ptr, ptr @stderr, align 8
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.144) #4
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.else
  store i8 1, ptr %retval, align 1
  br label %return

sw.default:                                       ; preds = %if.end60
  call void @panic(ptr noundef @.str.145) #5
  unreachable

return:                                           ; preds = %if.end80, %if.then75, %sw.bb65, %sw.bb62, %if.end55
  %44 = load i8, ptr %retval, align 1
  ret i8 %44
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
