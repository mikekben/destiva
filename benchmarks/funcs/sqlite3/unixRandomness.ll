; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@randomnessPid = external hidden global i32, align 4
@.str.90 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixRandomness(ptr noundef %NotUsed, i32 noundef %nBuf, ptr noundef %zBuf) #1 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %nBuf.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %got = alloca i32, align 4
  %t = alloca i64, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  %0 = load ptr, ptr %NotUsed.addr, align 8
  %1 = load ptr, ptr %zBuf.addr, align 8
  %2 = load i32, ptr %nBuf.addr, align 4
  %conv = sext i32 %2 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %conv, i1 false)
  %call = call i32 @getpid() #5
  store i32 %call, ptr @randomnessPid, align 4
  %call1 = call i32 @robust_open(ptr noundef @.str.90, i32 noundef 0, i32 noundef 0)
  store i32 %call1, ptr %fd, align 4
  %3 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call i64 @time(ptr noundef %t) #5
  %4 = load ptr, ptr %zBuf.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 8 %t, i64 8, i1 false)
  %5 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 4 @randomnessPid, i64 4, i1 false)
  store i32 12, ptr %nBuf.addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %land.end, %if.else
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 8), i32 0, i32 1), align 8
  %7 = load i32, ptr %fd, align 4
  %8 = load ptr, ptr %zBuf.addr, align 8
  %9 = load i32, ptr %nBuf.addr, align 4
  %conv4 = sext i32 %9 to i64
  %call5 = call i64 %6(i32 noundef %7, ptr noundef %8, i64 noundef %conv4)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr %got, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load i32, ptr %got, align 4
  %cmp7 = icmp slt i32 %10, 0
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call9 = call ptr @__errno_location() #6
  %11 = load i32, ptr %call9, align 4
  %cmp10 = icmp eq i32 %11, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %12 = phi i1 [ false, %do.cond ], [ %cmp10, %land.rhs ]
  br i1 %12, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  %13 = load i32, ptr %fd, align 4
  call void @robust_close(ptr noundef null, i32 noundef %13, i32 noundef 39171)
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %14 = load i32, ptr %nBuf.addr, align 4
  ret i32 %14
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_open(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @getpid() #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #4

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

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
