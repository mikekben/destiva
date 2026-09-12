; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexReadHdr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalEndWriteTransaction(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalCheckpoint(ptr noundef %pWal, ptr noundef %db, i32 noundef %eMode, ptr noundef %xBusy, ptr noundef %pBusyArg, i32 noundef %sync_flags, i32 noundef %nBuf, ptr noundef %zBuf, ptr noundef %pnLog, ptr noundef %pnCkpt) #1 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %xBusy.addr = alloca ptr, align 8
  %pBusyArg.addr = alloca ptr, align 8
  %sync_flags.addr = alloca i32, align 4
  %nBuf.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %pnLog.addr = alloca ptr, align 8
  %pnCkpt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %isChanged = alloca i32, align 4
  %eMode2 = alloca i32, align 4
  %xBusy2 = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store ptr %xBusy, ptr %xBusy.addr, align 8
  store ptr %pBusyArg, ptr %pBusyArg.addr, align 8
  store i32 %sync_flags, ptr %sync_flags.addr, align 4
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store ptr %pnLog, ptr %pnLog.addr, align 8
  store ptr %pnCkpt, ptr %pnCkpt.addr, align 8
  store i32 0, ptr %isChanged, align 4
  %0 = load i32, ptr %eMode.addr, align 4
  store i32 %0, ptr %eMode2, align 4
  %1 = load ptr, ptr %xBusy.addr, align 8
  store ptr %1, ptr %xBusy2, align 8
  %2 = load ptr, ptr %pWal.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 14
  %3 = load i8, ptr %readOnly, align 2
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @walLockExclusive(ptr noundef %4, i32 noundef 1, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %pWal.addr, align 8
  %ckptLock = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 13
  store i8 1, ptr %ckptLock, align 1
  %8 = load i32, ptr %eMode.addr, align 4
  %cmp = icmp ne i32 %8, 0
  br i1 %cmp, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end3
  %9 = load ptr, ptr %pWal.addr, align 8
  %10 = load ptr, ptr %xBusy.addr, align 8
  %11 = load ptr, ptr %pBusyArg.addr, align 8
  %call5 = call i32 @walBusyLock(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef 1)
  store i32 %call5, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %13 = load ptr, ptr %pWal.addr, align 8
  %writeLock = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 12
  store i8 1, ptr %writeLock, align 8
  br label %if.end11

if.else:                                          ; preds = %if.then4
  %14 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %14, 5
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  store i32 0, ptr %eMode2, align 4
  store ptr null, ptr %xBusy2, align 8
  store i32 0, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end3
  %15 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %15, 0
  br i1 %cmp13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %if.end12
  %16 = load ptr, ptr %pWal.addr, align 8
  %call15 = call i32 @walIndexReadHdr(ptr noundef %16, ptr noundef %isChanged)
  store i32 %call15, ptr %rc, align 4
  %17 = load i32, ptr %isChanged, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then14
  %18 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pDbFd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %20, i32 0, i32 0
  %21 = load i32, ptr %iVersion, align 8
  %cmp17 = icmp sge i32 %21, 3
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %pWal.addr, align 8
  %pDbFd19 = getelementptr inbounds nuw %struct.Wal, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pDbFd19, align 8
  %call20 = call i32 @sqlite3OsUnfetch(ptr noundef %23, i64 noundef 0, ptr noundef null)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true, %if.then14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end12
  %24 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %24, 0
  br i1 %cmp23, label %if.then24, label %if.end47

if.then24:                                        ; preds = %if.end22
  %25 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %25, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %26 = load i32, ptr %mxFrame, align 8
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %land.lhs.true26, label %if.else31

land.lhs.true26:                                  ; preds = %if.then24
  %27 = load ptr, ptr %pWal.addr, align 8
  %call27 = call i32 @walPagesize(ptr noundef %27)
  %28 = load i32, ptr %nBuf.addr, align 4
  %cmp28 = icmp ne i32 %call27, %28
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = call i32 @sqlite3CorruptError(i32 noundef 62151)
  store i32 %call30, ptr %rc, align 4
  br label %if.end33

if.else31:                                        ; preds = %land.lhs.true26, %if.then24
  %29 = load ptr, ptr %pWal.addr, align 8
  %30 = load ptr, ptr %db.addr, align 8
  %31 = load i32, ptr %eMode2, align 4
  %32 = load ptr, ptr %xBusy2, align 8
  %33 = load ptr, ptr %pBusyArg.addr, align 8
  %34 = load i32, ptr %sync_flags.addr, align 4
  %35 = load ptr, ptr %zBuf.addr, align 8
  %call32 = call i32 @walCheckpoint(ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef %33, i32 noundef %34, ptr noundef %35)
  store i32 %call32, ptr %rc, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %36 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %36, 0
  br i1 %cmp34, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end33
  %37 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %37, 5
  br i1 %cmp35, label %if.then36, label %if.end46

if.then36:                                        ; preds = %lor.lhs.false, %if.end33
  %38 = load ptr, ptr %pnLog.addr, align 8
  %tobool37 = icmp ne ptr %38, null
  br i1 %tobool37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then36
  %39 = load ptr, ptr %pWal.addr, align 8
  %hdr39 = getelementptr inbounds nuw %struct.Wal, ptr %39, i32 0, i32 19
  %mxFrame40 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr39, i32 0, i32 6
  %40 = load i32, ptr %mxFrame40, align 8
  %41 = load ptr, ptr %pnLog.addr, align 8
  store i32 %40, ptr %41, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then36
  %42 = load ptr, ptr %pnCkpt.addr, align 8
  %tobool42 = icmp ne ptr %42, null
  br i1 %tobool42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %43 = load ptr, ptr %pWal.addr, align 8
  %call44 = call ptr @walCkptInfo(ptr noundef %43)
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %call44, i32 0, i32 0
  %44 = load volatile i32, ptr %nBackfill, align 4
  %45 = load ptr, ptr %pnCkpt.addr, align 8
  store i32 %44, ptr %45, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %lor.lhs.false
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end22
  %46 = load i32, ptr %isChanged, align 4
  %tobool48 = icmp ne i32 %46, 0
  br i1 %tobool48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %47 = load ptr, ptr %pWal.addr, align 8
  %hdr50 = getelementptr inbounds nuw %struct.Wal, ptr %47, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr align 8 %hdr50, i8 0, i64 48, i1 false)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  %48 = load ptr, ptr %pWal.addr, align 8
  %call52 = call i32 @sqlite3WalEndWriteTransaction(ptr noundef %48)
  %49 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %49, i32 noundef 1, i32 noundef 1)
  %50 = load ptr, ptr %pWal.addr, align 8
  %ckptLock53 = getelementptr inbounds nuw %struct.Wal, ptr %50, i32 0, i32 13
  store i8 0, ptr %ckptLock53, align 1
  %51 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %51, 0
  br i1 %cmp54, label %land.lhs.true55, label %cond.false

land.lhs.true55:                                  ; preds = %if.end51
  %52 = load i32, ptr %eMode.addr, align 4
  %53 = load i32, ptr %eMode2, align 4
  %cmp56 = icmp ne i32 %52, %53
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true55
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true55, %if.end51
  %54 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %54, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walBusyLock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walPagesize(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walCheckpoint(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
