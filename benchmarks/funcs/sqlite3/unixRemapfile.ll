; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.63 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @unixRemapfile(ptr noundef %pFd, i64 noundef %nNew) #0 {
entry:
  %pFd.addr = alloca ptr, align 8
  %nNew.addr = alloca i64, align 8
  %zErr = alloca ptr, align 8
  %h = alloca i32, align 4
  %pOrig = alloca ptr, align 8
  %nOrig = alloca i64, align 8
  %pNew = alloca ptr, align 8
  %flags = alloca i32, align 4
  %nReuse = alloca i64, align 8
  %pReq = alloca ptr, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  store i64 %nNew, ptr %nNew.addr, align 8
  store ptr @.str.63, ptr %zErr, align 8
  %0 = load ptr, ptr %pFd.addr, align 8
  %h1 = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %h1, align 8
  store i32 %1, ptr %h, align 4
  %2 = load ptr, ptr %pFd.addr, align 8
  %pMapRegion = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 16
  %3 = load ptr, ptr %pMapRegion, align 8
  store ptr %3, ptr %pOrig, align 8
  %4 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeActual = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 14
  %5 = load i64, ptr %mmapSizeActual, align 8
  store i64 %5, ptr %nOrig, align 8
  store ptr null, ptr %pNew, align 8
  store i32 1, ptr %flags, align 4
  %6 = load ptr, ptr %pOrig, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pFd.addr, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 13
  %8 = load i64, ptr %mmapSize, align 8
  store i64 %8, ptr %nReuse, align 8
  %9 = load ptr, ptr %pOrig, align 8
  %10 = load i64, ptr %nReuse, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %10
  store ptr %arrayidx, ptr %pReq, align 8
  %11 = load i64, ptr %nReuse, align 8
  %12 = load i64, ptr %nOrig, align 8
  %cmp = icmp ne i64 %11, %12
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 23), i32 0, i32 1), align 8
  %14 = load ptr, ptr %pReq, align 8
  %15 = load i64, ptr %nOrig, align 8
  %16 = load i64, ptr %nReuse, align 8
  %sub = sub nsw i64 %15, %16
  %call = call i32 %13(ptr noundef %14, i64 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %17 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 24), i32 0, i32 1), align 8
  %18 = load ptr, ptr %pOrig, align 8
  %19 = load i64, ptr %nReuse, align 8
  %20 = load i64, ptr %nNew.addr, align 8
  %call3 = call ptr (ptr, i64, i64, i32, ...) %17(ptr noundef %18, i64 noundef %19, i64 noundef %20, i32 noundef 1)
  store ptr %call3, ptr %pNew, align 8
  store ptr @.str.65, ptr %zErr, align 8
  %21 = load ptr, ptr %pNew, align 8
  %cmp4 = icmp eq ptr %21, inttoptr (i64 -1 to ptr)
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load ptr, ptr %pNew, align 8
  %cmp5 = icmp eq ptr %22, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %23 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 23), i32 0, i32 1), align 8
  %24 = load ptr, ptr %pOrig, align 8
  %25 = load i64, ptr %nReuse, align 8
  %call7 = call i32 %23(ptr noundef %24, i64 noundef %25)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  %26 = load ptr, ptr %pNew, align 8
  %cmp10 = icmp eq ptr %26, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %27 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 22), i32 0, i32 1), align 8
  %28 = load i64, ptr %nNew.addr, align 8
  %29 = load i32, ptr %flags, align 4
  %30 = load i32, ptr %h, align 4
  %call12 = call ptr %27(ptr noundef null, i64 noundef %28, i32 noundef %29, i32 noundef 1, i32 noundef %30, i64 noundef 0)
  store ptr %call12, ptr %pNew, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9
  %31 = load ptr, ptr %pNew, align 8
  %cmp14 = icmp eq ptr %31, inttoptr (i64 -1 to ptr)
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  store ptr null, ptr %pNew, align 8
  store i64 0, ptr %nNew.addr, align 8
  %32 = load ptr, ptr %zErr, align 8
  %33 = load ptr, ptr %pFd.addr, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %zPath, align 8
  %call16 = call i32 @unixLogErrorAtLine(i32 noundef 0, ptr noundef %32, ptr noundef %34, i32 noundef 37759)
  %35 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %35, i32 0, i32 15
  store i64 0, ptr %mmapSizeMax, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13
  %36 = load ptr, ptr %pNew, align 8
  %37 = load ptr, ptr %pFd.addr, align 8
  %pMapRegion18 = getelementptr inbounds nuw %struct.unixFile, ptr %37, i32 0, i32 16
  store ptr %36, ptr %pMapRegion18, align 8
  %38 = load i64, ptr %nNew.addr, align 8
  %39 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeActual19 = getelementptr inbounds nuw %struct.unixFile, ptr %39, i32 0, i32 14
  store i64 %38, ptr %mmapSizeActual19, align 8
  %40 = load ptr, ptr %pFd.addr, align 8
  %mmapSize20 = getelementptr inbounds nuw %struct.unixFile, ptr %40, i32 0, i32 13
  store i64 %38, ptr %mmapSize20, align 8
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
