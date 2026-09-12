; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #0

; Function Attrs: nounwind uwtable
define hidden i32 @seekAndRead(ptr noundef %id, i64 noundef %offset, ptr noundef %pBuf, i32 noundef %cnt) #1 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %pBuf.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %got = alloca i32, align 4
  %prior = alloca i32, align 4
  %newOffset = alloca i64, align 8
  store ptr %id, ptr %id.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %cnt, ptr %cnt.addr, align 4
  store i32 0, ptr %prior, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %id.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %h, align 8
  %2 = load i64, ptr %offset.addr, align 8
  %call = call i64 @lseek64(i32 noundef %1, i64 noundef %2, i32 noundef 0) #3
  store i64 %call, ptr %newOffset, align 8
  %3 = load i64, ptr %newOffset, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @__errno_location() #4
  %5 = load i32, ptr %call1, align 4
  call void @storeLastErrno(ptr noundef %4, i32 noundef %5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %do.body
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 8), i32 0, i32 1), align 8
  %7 = load ptr, ptr %id.addr, align 8
  %h2 = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %h2, align 8
  %9 = load ptr, ptr %pBuf.addr, align 8
  %10 = load i32, ptr %cnt.addr, align 4
  %conv = sext i32 %10 to i64
  %call3 = call i64 %6(i32 noundef %8, ptr noundef %9, i64 noundef %conv)
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, ptr %got, align 4
  %11 = load i32, ptr %got, align 4
  %12 = load i32, ptr %cnt.addr, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  br label %do.end

if.end8:                                          ; preds = %if.end
  %13 = load i32, ptr %got, align 4
  %cmp9 = icmp slt i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  %call12 = call ptr @__errno_location() #4
  %14 = load i32, ptr %call12, align 4
  %cmp13 = icmp eq i32 %14, 4
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  store i32 1, ptr %got, align 4
  br label %do.cond

if.end16:                                         ; preds = %if.then11
  store i32 0, ptr %prior, align 4
  %15 = load ptr, ptr %id.addr, align 8
  %call17 = call ptr @__errno_location() #4
  %16 = load i32, ptr %call17, align 4
  call void @storeLastErrno(ptr noundef %15, i32 noundef %16)
  br label %do.end

if.else:                                          ; preds = %if.end8
  %17 = load i32, ptr %got, align 4
  %cmp18 = icmp sgt i32 %17, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.else
  %18 = load i32, ptr %got, align 4
  %19 = load i32, ptr %cnt.addr, align 4
  %sub = sub nsw i32 %19, %18
  store i32 %sub, ptr %cnt.addr, align 4
  %20 = load i32, ptr %got, align 4
  %conv21 = sext i32 %20 to i64
  %21 = load i64, ptr %offset.addr, align 8
  %add = add nsw i64 %21, %conv21
  store i64 %add, ptr %offset.addr, align 8
  %22 = load i32, ptr %got, align 4
  %23 = load i32, ptr %prior, align 4
  %add22 = add nsw i32 %23, %22
  store i32 %add22, ptr %prior, align 4
  %24 = load i32, ptr %got, align 4
  %25 = load ptr, ptr %pBuf.addr, align 8
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 %idx.ext
  store ptr %add.ptr, ptr %pBuf.addr, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  br label %do.cond

do.cond:                                          ; preds = %if.end24, %if.then15
  %26 = load i32, ptr %got, align 4
  %cmp25 = icmp sgt i32 %26, 0
  br i1 %cmp25, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond, %if.end16, %if.then7
  %27 = load i32, ptr %got, align 4
  %28 = load i32, ptr %prior, align 4
  %add27 = add nsw i32 %27, %28
  store i32 %add27, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #2

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

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
