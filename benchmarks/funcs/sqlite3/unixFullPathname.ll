; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.67 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixFullPathname(ptr noundef %pVfs, ptr noundef %zPath, i32 noundef %nOut, ptr noundef %zOut) #0 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %nOut.addr = alloca i32, align 4
  %zOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nByte = alloca i32, align 4
  %nLink = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %zDel = alloca ptr, align 8
  %bLink = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %n = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nOut, ptr %nOut.addr, align 4
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %nLink, align 4
  %0 = load ptr, ptr %zPath.addr, align 8
  store ptr %0, ptr %zIn, align 8
  store ptr null, ptr %zDel, align 8
  %1 = load ptr, ptr %pVfs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, ptr %bLink, align 4
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 27), i32 0, i32 1), align 8
  %3 = load ptr, ptr %zIn, align 8
  %call = call i32 %2(ptr noundef %3, ptr noundef %buf)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %call1 = call ptr @__errno_location() #3
  %4 = load i32, ptr %call1, align 4
  %cmp2 = icmp ne i32 %4, 2
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call4 = call i32 @sqlite3CantopenError(i32 noundef 39024)
  %5 = load ptr, ptr %zIn, align 8
  %call5 = call i32 @unixLogErrorAtLine(i32 noundef %call4, ptr noundef @.str.68, ptr noundef %5, i32 noundef 39024)
  store i32 %call5, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end7

if.else:                                          ; preds = %do.body
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 3
  %6 = load i32, ptr %st_mode, align 8
  %and = and i32 %6, 61440
  %cmp6 = icmp eq i32 %and, 40960
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, ptr %bLink, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %7 = load i32, ptr %bLink, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then8, label %if.end66

if.then8:                                         ; preds = %if.end7
  %8 = load ptr, ptr %zDel, align 8
  %cmp9 = icmp eq ptr %8, null
  br i1 %cmp9, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.then8
  %9 = load i32, ptr %nOut.addr, align 4
  %call12 = call ptr @sqlite3_malloc(i32 noundef %9)
  store ptr %call12, ptr %zDel, align 8
  %10 = load ptr, ptr %zDel, align 8
  %cmp13 = icmp eq ptr %10, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then11
  store i32 7, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then11
  br label %if.end23

if.else17:                                        ; preds = %if.then8
  %11 = load i32, ptr %nLink, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nLink, align 4
  %cmp18 = icmp sgt i32 %inc, 100
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else17
  %call21 = call i32 @sqlite3CantopenError(i32 noundef 39035)
  store i32 %call21, ptr %rc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end16
  %12 = load i32, ptr %rc, align 4
  %cmp24 = icmp eq i32 %12, 0
  br i1 %cmp24, label %if.then26, label %if.end65

if.then26:                                        ; preds = %if.end23
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 26), i32 0, i32 1), align 8
  %14 = load ptr, ptr %zIn, align 8
  %15 = load ptr, ptr %zDel, align 8
  %16 = load i32, ptr %nOut.addr, align 4
  %sub = sub nsw i32 %16, 1
  %conv27 = sext i32 %sub to i64
  %call28 = call i64 %13(ptr noundef %14, ptr noundef %15, i64 noundef %conv27)
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, ptr %nByte, align 4
  %17 = load i32, ptr %nByte, align 4
  %cmp30 = icmp slt i32 %17, 0
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then26
  %call33 = call i32 @sqlite3CantopenError(i32 noundef 39041)
  %18 = load ptr, ptr %zIn, align 8
  %call34 = call i32 @unixLogErrorAtLine(i32 noundef %call33, ptr noundef @.str.67, ptr noundef %18, i32 noundef 39041)
  store i32 %call34, ptr %rc, align 4
  br label %if.end64

if.else35:                                        ; preds = %if.then26
  %19 = load ptr, ptr %zDel, align 8
  %arrayidx = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx, align 1
  %conv36 = sext i8 %20 to i32
  %cmp37 = icmp ne i32 %conv36, 47
  br i1 %cmp37, label %if.then39, label %if.end61

if.then39:                                        ; preds = %if.else35
  %21 = load ptr, ptr %zIn, align 8
  %call40 = call i32 @sqlite3Strlen30(ptr noundef %21)
  store i32 %call40, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %22 = load i32, ptr %n, align 4
  %cmp41 = icmp sgt i32 %22, 0
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %23 = load ptr, ptr %zIn, align 8
  %24 = load i32, ptr %n, align 4
  %sub43 = sub nsw i32 %24, 1
  %idxprom = sext i32 %sub43 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %23, i64 %idxprom
  %25 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %25 to i32
  %cmp46 = icmp ne i32 %conv45, 47
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp46, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %n, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %28 = load i32, ptr %nByte, align 4
  %29 = load i32, ptr %n, align 4
  %add = add nsw i32 %28, %29
  %add48 = add nsw i32 %add, 1
  %30 = load i32, ptr %nOut.addr, align 4
  %cmp49 = icmp sgt i32 %add48, %30
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %for.end
  %call52 = call i32 @sqlite3CantopenError(i32 noundef 39047)
  store i32 %call52, ptr %rc, align 4
  br label %if.end60

if.else53:                                        ; preds = %for.end
  %31 = load ptr, ptr %zDel, align 8
  %32 = load i32, ptr %n, align 4
  %idxprom54 = sext i32 %32 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %31, i64 %idxprom54
  %33 = load ptr, ptr %zDel, align 8
  %34 = load i32, ptr %nByte, align 4
  %add56 = add nsw i32 %34, 1
  %conv57 = sext i32 %add56 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx55, ptr align 1 %33, i64 %conv57, i1 false)
  %35 = load ptr, ptr %zDel, align 8
  %36 = load ptr, ptr %zIn, align 8
  %37 = load i32, ptr %n, align 4
  %conv58 = sext i32 %37 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %36, i64 %conv58, i1 false)
  %38 = load i32, ptr %n, align 4
  %39 = load i32, ptr %nByte, align 4
  %add59 = add nsw i32 %39, %38
  store i32 %add59, ptr %nByte, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.then51
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.else35
  %40 = load ptr, ptr %zDel, align 8
  %41 = load i32, ptr %nByte, align 4
  %idxprom62 = sext i32 %41 to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %40, i64 %idxprom62
  store i8 0, ptr %arrayidx63, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.end61, %if.then32
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end23
  %42 = load ptr, ptr %zDel, align 8
  store ptr %42, ptr %zIn, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end7
  %43 = load i32, ptr %rc, align 4
  %cmp67 = icmp eq i32 %43, 0
  br i1 %cmp67, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %if.end66
  %44 = load ptr, ptr %zIn, align 8
  %45 = load ptr, ptr %zOut.addr, align 8
  %cmp69 = icmp ne ptr %44, %45
  br i1 %cmp69, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true
  %46 = load ptr, ptr %zIn, align 8
  %47 = load ptr, ptr %zOut.addr, align 8
  %48 = load i32, ptr %nOut.addr, align 4
  %call72 = call i32 @mkFullPathname(ptr noundef %46, ptr noundef %47, i32 noundef %48)
  store i32 %call72, ptr %rc, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true, %if.end66
  %49 = load i32, ptr %bLink, align 4
  %cmp74 = icmp eq i32 %49, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  br label %do.end

if.end77:                                         ; preds = %if.end73
  %50 = load ptr, ptr %zOut.addr, align 8
  store ptr %50, ptr %zIn, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end77
  %51 = load i32, ptr %rc, align 4
  %cmp78 = icmp eq i32 %51, 0
  br i1 %cmp78, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond, %if.then76
  %52 = load ptr, ptr %zDel, align 8
  call void @sqlite3_free(ptr noundef %52)
  %53 = load i32, ptr %rc, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @mkFullPathname(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }

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
