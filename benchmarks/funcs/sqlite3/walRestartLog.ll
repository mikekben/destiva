; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walRestartLog(ptr noundef %pWal) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cnt = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %salt1 = alloca i32, align 4
  %notUsed = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 9
  %1 = load i16, ptr %readLock, align 4
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walCkptInfo(ptr noundef %2)
  store ptr %call, ptr %pInfo, align 8
  %3 = load ptr, ptr %pInfo, align 8
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %3, i32 0, i32 0
  %4 = load volatile i32, ptr %nBackfill, align 4
  %cmp2 = icmp ugt i32 %4, 0
  br i1 %cmp2, label %if.then4, label %if.end13

if.then4:                                         ; preds = %if.then
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %salt1)
  %5 = load ptr, ptr %pWal.addr, align 8
  %call5 = call i32 @walLockExclusive(ptr noundef %5, i32 noundef 4, i32 noundef 4)
  store i32 %call5, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %7 = load ptr, ptr %pWal.addr, align 8
  %8 = load i32, ptr %salt1, align 4
  call void @walRestartHdr(ptr noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %9, i32 noundef 4, i32 noundef 4)
  br label %if.end12

if.else:                                          ; preds = %if.then4
  %10 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %10, 5
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.else
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then8
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then
  %12 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockShared(ptr noundef %12, i32 noundef 3)
  %13 = load ptr, ptr %pWal.addr, align 8
  %readLock14 = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 9
  store i16 -1, ptr %readLock14, align 4
  store i32 0, ptr %cnt, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end13
  %14 = load ptr, ptr %pWal.addr, align 8
  %15 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %cnt, align 4
  %call15 = call i32 @walTryBeginRead(ptr noundef %14, ptr noundef %notUsed, i32 noundef 1, i32 noundef %inc)
  store i32 %call15, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %16 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %16, -1
  br i1 %cmp16, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end18

if.end18:                                         ; preds = %do.end, %entry
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then11
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walRestartHdr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walTryBeginRead(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
