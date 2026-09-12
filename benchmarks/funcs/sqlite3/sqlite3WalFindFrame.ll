; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalHashLoc = type { ptr, ptr, i32 }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalFindFrame(ptr noundef %pWal, i32 noundef %pgno, ptr noundef %piRead) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %piRead.addr = alloca ptr, align 8
  %iRead = alloca i32, align 4
  %iLast = alloca i32, align 4
  %iHash = alloca i32, align 4
  %iMinHash = alloca i32, align 4
  %sLoc = alloca %struct.WalHashLoc, align 8
  %iKey = alloca i32, align 4
  %nCollide = alloca i32, align 4
  %rc = alloca i32, align 4
  %iH = alloca i32, align 4
  %iFrame = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %piRead, ptr %piRead.addr, align 8
  store i32 0, ptr %iRead, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %1 = load i32, ptr %mxFrame, align 8
  store i32 %1, ptr %iLast, align 4
  %2 = load i32, ptr %iLast, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 9
  %4 = load i16, ptr %readLock, align 4
  %conv = sext i16 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 18
  %6 = load i8, ptr %bShmUnreliable, align 2
  %conv3 = zext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %piRead.addr, align 8
  store i32 0, ptr %7, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load ptr, ptr %pWal.addr, align 8
  %minFrame = getelementptr inbounds nuw %struct.Wal, ptr %8, i32 0, i32 20
  %9 = load i32, ptr %minFrame, align 8
  %call = call i32 @walFramePage(i32 noundef %9)
  store i32 %call, ptr %iMinHash, align 4
  %10 = load i32, ptr %iLast, align 4
  %call6 = call i32 @walFramePage(i32 noundef %10)
  store i32 %call6, ptr %iHash, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end
  %11 = load i32, ptr %iHash, align 4
  %12 = load i32, ptr %iMinHash, align 4
  %cmp7 = icmp sge i32 %11, %12
  br i1 %cmp7, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pWal.addr, align 8
  %14 = load i32, ptr %iHash, align 4
  %call9 = call i32 @walHashGet(ptr noundef %13, i32 noundef %14, ptr noundef %sLoc)
  store i32 %call9, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  store i32 8192, ptr %nCollide, align 4
  %17 = load i32, ptr %pgno.addr, align 4
  %call14 = call i32 @walHash(i32 noundef %17)
  store i32 %call14, ptr %iKey, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.end13
  %aHash = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %18 = load ptr, ptr %aHash, align 8
  %19 = load i32, ptr %iKey, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i16, ptr %18, i64 %idxprom
  %20 = load volatile i16, ptr %arrayidx, align 2
  %tobool = icmp ne i16 %20, 0
  br i1 %tobool, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond15
  %aHash17 = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 0
  %21 = load ptr, ptr %aHash17, align 8
  %22 = load i32, ptr %iKey, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds i16, ptr %21, i64 %idxprom18
  %23 = load volatile i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %23 to i32
  store i32 %conv20, ptr %iH, align 4
  %24 = load i32, ptr %iH, align 4
  %iZero = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 2
  %25 = load i32, ptr %iZero, align 8
  %add = add i32 %24, %25
  store i32 %add, ptr %iFrame, align 4
  %26 = load i32, ptr %iFrame, align 4
  %27 = load i32, ptr %iLast, align 4
  %cmp21 = icmp ule i32 %26, %27
  br i1 %cmp21, label %land.lhs.true23, label %if.end33

land.lhs.true23:                                  ; preds = %for.body16
  %28 = load i32, ptr %iFrame, align 4
  %29 = load ptr, ptr %pWal.addr, align 8
  %minFrame24 = getelementptr inbounds nuw %struct.Wal, ptr %29, i32 0, i32 20
  %30 = load i32, ptr %minFrame24, align 8
  %cmp25 = icmp uge i32 %28, %30
  br i1 %cmp25, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %land.lhs.true23
  %aPgno = getelementptr inbounds nuw %struct.WalHashLoc, ptr %sLoc, i32 0, i32 1
  %31 = load ptr, ptr %aPgno, align 8
  %32 = load i32, ptr %iH, align 4
  %idxprom28 = zext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %31, i64 %idxprom28
  %33 = load volatile i32, ptr %arrayidx29, align 4
  %34 = load i32, ptr %pgno.addr, align 4
  %cmp30 = icmp eq i32 %33, %34
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %land.lhs.true27
  %35 = load i32, ptr %iFrame, align 4
  store i32 %35, ptr %iRead, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %land.lhs.true27, %land.lhs.true23, %for.body16
  %36 = load i32, ptr %nCollide, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %nCollide, align 4
  %cmp34 = icmp eq i32 %36, 0
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  %call37 = call i32 @sqlite3CorruptError(i32 noundef 61442)
  store i32 %call37, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end33
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %37 = load i32, ptr %iKey, align 4
  %call39 = call i32 @walNextHash(i32 noundef %37)
  store i32 %call39, ptr %iKey, align 4
  br label %for.cond15, !llvm.loop !6

for.end:                                          ; preds = %for.cond15
  %38 = load i32, ptr %iRead, align 4
  %tobool40 = icmp ne i32 %38, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.end
  br label %for.end45

if.end42:                                         ; preds = %for.end
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %39 = load i32, ptr %iHash, align 4
  %dec44 = add nsw i32 %39, -1
  store i32 %dec44, ptr %iHash, align 4
  br label %for.cond, !llvm.loop !8

for.end45:                                        ; preds = %if.then41, %for.cond
  %40 = load i32, ptr %iRead, align 4
  %41 = load ptr, ptr %piRead.addr, align 8
  store i32 %40, ptr %41, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end45, %if.then36, %if.then12, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePage(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walHashGet(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walHash(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walNextHash(i32 noundef) #0

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
!8 = distinct !{!8, !7}
