; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.47 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @seekAndWrite(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_ftruncate(i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @fcntlSizeHint(ptr noundef %pFile, i64 noundef %nByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %nByte.addr = alloca i64, align 8
  %nSize = alloca i64, align 8
  %buf = alloca %struct.stat, align 8
  %nBlk = alloca i32, align 4
  %nWrite = alloca i32, align 4
  %iWrite = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i64 %nByte, ptr %nByte.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %szChunk = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 11
  %1 = load i32, ptr %szChunk, align 8
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %3 = load ptr, ptr %pFile.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %h, align 8
  %call = call i32 %2(i32 noundef %4, ptr noundef %buf)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 1802, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i64, ptr %nByte.addr, align 8
  %6 = load ptr, ptr %pFile.addr, align 8
  %szChunk2 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 11
  %7 = load i32, ptr %szChunk2, align 8
  %conv = sext i32 %7 to i64
  %add = add nsw i64 %5, %conv
  %sub = sub nsw i64 %add, 1
  %8 = load ptr, ptr %pFile.addr, align 8
  %szChunk3 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %szChunk3, align 8
  %conv4 = sext i32 %9 to i64
  %div = sdiv i64 %sub, %conv4
  %10 = load ptr, ptr %pFile.addr, align 8
  %szChunk5 = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 11
  %11 = load i32, ptr %szChunk5, align 8
  %conv6 = sext i32 %11 to i64
  %mul = mul nsw i64 %div, %conv6
  store i64 %mul, ptr %nSize, align 8
  %12 = load i64, ptr %nSize, align 8
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 8
  %13 = load i64, ptr %st_size, align 8
  %cmp7 = icmp sgt i64 %12, %13
  br i1 %cmp7, label %if.then9, label %if.end36

if.then9:                                         ; preds = %if.end
  %st_blksize = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 9
  %14 = load i64, ptr %st_blksize, align 8
  %conv10 = trunc i64 %14 to i32
  store i32 %conv10, ptr %nBlk, align 4
  store i32 0, ptr %nWrite, align 4
  %st_size11 = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 8
  %15 = load i64, ptr %st_size11, align 8
  %16 = load i32, ptr %nBlk, align 4
  %conv12 = sext i32 %16 to i64
  %div13 = sdiv i64 %15, %conv12
  %17 = load i32, ptr %nBlk, align 4
  %conv14 = sext i32 %17 to i64
  %mul15 = mul nsw i64 %div13, %conv14
  %18 = load i32, ptr %nBlk, align 4
  %conv16 = sext i32 %18 to i64
  %add17 = add nsw i64 %mul15, %conv16
  %sub18 = sub nsw i64 %add17, 1
  store i64 %sub18, ptr %iWrite, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then9
  %19 = load i64, ptr %iWrite, align 8
  %20 = load i64, ptr %nSize, align 8
  %21 = load i32, ptr %nBlk, align 4
  %conv19 = sext i32 %21 to i64
  %add20 = add nsw i64 %20, %conv19
  %sub21 = sub nsw i64 %add20, 1
  %cmp22 = icmp slt i64 %19, %sub21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, ptr %iWrite, align 8
  %23 = load i64, ptr %nSize, align 8
  %cmp24 = icmp sge i64 %22, %23
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body
  %24 = load i64, ptr %nSize, align 8
  %sub27 = sub nsw i64 %24, 1
  store i64 %sub27, ptr %iWrite, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body
  %25 = load ptr, ptr %pFile.addr, align 8
  %26 = load i64, ptr %iWrite, align 8
  %call29 = call i32 @seekAndWrite(ptr noundef %25, i64 noundef %26, ptr noundef @.str.3, i32 noundef 1)
  store i32 %call29, ptr %nWrite, align 4
  %27 = load i32, ptr %nWrite, align 4
  %cmp30 = icmp ne i32 %27, 1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 778, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end28
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %28 = load i32, ptr %nBlk, align 4
  %conv34 = sext i32 %28 to i64
  %29 = load i64, ptr %iWrite, align 8
  %add35 = add nsw i64 %29, %conv34
  store i64 %add35, ptr %iWrite, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end36

if.end36:                                         ; preds = %for.end, %if.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %entry
  %30 = load ptr, ptr %pFile.addr, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %30, i32 0, i32 15
  %31 = load i64, ptr %mmapSizeMax, align 8
  %cmp38 = icmp sgt i64 %31, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end37
  %32 = load i64, ptr %nByte.addr, align 8
  %33 = load ptr, ptr %pFile.addr, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %33, i32 0, i32 13
  %34 = load i64, ptr %mmapSize, align 8
  %cmp40 = icmp sgt i64 %32, %34
  br i1 %cmp40, label %if.then42, label %if.end56

if.then42:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %pFile.addr, align 8
  %szChunk43 = getelementptr inbounds nuw %struct.unixFile, ptr %35, i32 0, i32 11
  %36 = load i32, ptr %szChunk43, align 8
  %cmp44 = icmp sle i32 %36, 0
  br i1 %cmp44, label %if.then46, label %if.end54

if.then46:                                        ; preds = %if.then42
  %37 = load ptr, ptr %pFile.addr, align 8
  %h47 = getelementptr inbounds nuw %struct.unixFile, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %h47, align 8
  %39 = load i64, ptr %nByte.addr, align 8
  %call48 = call i32 @robust_ftruncate(i32 noundef %38, i64 noundef %39)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.then46
  %40 = load ptr, ptr %pFile.addr, align 8
  %call51 = call ptr @__errno_location() #2
  %41 = load i32, ptr %call51, align 4
  call void @storeLastErrno(ptr noundef %40, i32 noundef %41)
  %42 = load ptr, ptr %pFile.addr, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %42, i32 0, i32 9
  %43 = load ptr, ptr %zPath, align 8
  %call52 = call i32 @unixLogErrorAtLine(i32 noundef 1546, ptr noundef @.str.47, ptr noundef %43, i32 noundef 36589)
  store i32 %call52, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then46
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then42
  %44 = load ptr, ptr %pFile.addr, align 8
  %45 = load i64, ptr %nByte.addr, align 8
  %call55 = call i32 @unixMapfile(ptr noundef %44, i64 noundef %45)
  store i32 %call55, ptr %rc, align 4
  %46 = load i32, ptr %rc, align 4
  store i32 %46, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %land.lhs.true, %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.end54, %if.then50, %if.then32, %if.then1
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixMapfile(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
