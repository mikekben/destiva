; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walRestartHdr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walBusyLock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walPagesize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walCheckpoint(ptr noundef %pWal, ptr noundef %db, i32 noundef %eMode, ptr noundef %xBusy, ptr noundef %pBusyArg, i32 noundef %sync_flags, ptr noundef %zBuf) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %xBusy.addr = alloca ptr, align 8
  %pBusyArg.addr = alloca ptr, align 8
  %sync_flags.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %szPage = alloca i32, align 4
  %pIter = alloca ptr, align 8
  %iDbpage = alloca i32, align 4
  %iFrame = alloca i32, align 4
  %mxSafeFrame = alloca i32, align 4
  %mxPage = alloca i32, align 4
  %i = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %y = alloca i32, align 4
  %nBackfill30 = alloca i32, align 4
  %nReq = alloca i64, align 8
  %nSize = alloca i64, align 8
  %iOffset = alloca i64, align 8
  %szDb = alloca i64, align 8
  %salt1 = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store ptr %xBusy, ptr %xBusy.addr, align 8
  store ptr %pBusyArg, ptr %pBusyArg.addr, align 8
  store i32 %sync_flags, ptr %sync_flags.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pIter, align 8
  store i32 0, ptr %iDbpage, align 4
  store i32 0, ptr %iFrame, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @walPagesize(ptr noundef %0)
  store i32 %call, ptr %szPage, align 4
  %1 = load ptr, ptr %pWal.addr, align 8
  %call1 = call ptr @walCkptInfo(ptr noundef %1)
  store ptr %call1, ptr %pInfo, align 8
  %2 = load ptr, ptr %pInfo, align 8
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %2, i32 0, i32 0
  %3 = load volatile i32, ptr %nBackfill, align 4
  %4 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %5 = load i32, ptr %mxFrame, align 8
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end123

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr2 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  %mxFrame3 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr2, i32 0, i32 6
  %7 = load i32, ptr %mxFrame3, align 8
  store i32 %7, ptr %mxSafeFrame, align 4
  %8 = load ptr, ptr %pWal.addr, align 8
  %hdr4 = getelementptr inbounds nuw %struct.Wal, ptr %8, i32 0, i32 19
  %nPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr4, i32 0, i32 7
  %9 = load i32, ptr %nPage, align 4
  store i32 %9, ptr %mxPage, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %10, 5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pInfo, align 8
  %aReadMark = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %aReadMark, i64 0, i64 %idxprom
  %13 = load volatile i32, ptr %arrayidx, align 4
  store i32 %13, ptr %y, align 4
  %14 = load i32, ptr %mxSafeFrame, align 4
  %15 = load i32, ptr %y, align 4
  %cmp6 = icmp ugt i32 %14, %15
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %for.body
  %16 = load ptr, ptr %pWal.addr, align 8
  %17 = load ptr, ptr %xBusy.addr, align 8
  %18 = load ptr, ptr %pBusyArg.addr, align 8
  %19 = load i32, ptr %i, align 4
  %add = add nsw i32 3, %19
  %call8 = call i32 @walBusyLock(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %add, i32 noundef 1)
  store i32 %call8, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %20, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  %21 = load i32, ptr %i, align 4
  %cmp11 = icmp eq i32 %21, 1
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then10
  %22 = load i32, ptr %mxSafeFrame, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ -1, %cond.false ]
  %23 = load ptr, ptr %pInfo, align 8
  %aReadMark12 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr %aReadMark12, i64 0, i64 %idxprom13
  store volatile i32 %cond, ptr %arrayidx14, align 4
  %25 = load ptr, ptr %pWal.addr, align 8
  %26 = load i32, ptr %i, align 4
  %add15 = add nsw i32 3, %26
  call void @walUnlockExclusive(ptr noundef %25, i32 noundef %add15, i32 noundef 1)
  br label %if.end19

if.else:                                          ; preds = %if.then7
  %27 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %27, 5
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %28 = load i32, ptr %y, align 4
  store i32 %28, ptr %mxSafeFrame, align 4
  store ptr null, ptr %xBusy.addr, align 8
  br label %if.end

if.else18:                                        ; preds = %if.else
  br label %walcheckpoint_out

if.end:                                           ; preds = %if.then17
  br label %if.end19

if.end19:                                         ; preds = %if.end, %cond.end
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %29 = load i32, ptr %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %pInfo, align 8
  %nBackfill21 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %30, i32 0, i32 0
  %31 = load volatile i32, ptr %nBackfill21, align 4
  %32 = load i32, ptr %mxSafeFrame, align 4
  %cmp22 = icmp ult i32 %31, %32
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %for.end
  %33 = load ptr, ptr %pWal.addr, align 8
  %34 = load ptr, ptr %pInfo, align 8
  %nBackfill24 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %34, i32 0, i32 0
  %35 = load volatile i32, ptr %nBackfill24, align 4
  %call25 = call i32 @walIteratorInit(ptr noundef %33, i32 noundef %35, ptr noundef %pIter)
  store i32 %call25, ptr %rc, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.end
  %36 = load ptr, ptr %pIter, align 8
  %tobool = icmp ne ptr %36, null
  br i1 %tobool, label %land.lhs.true, label %if.end118

land.lhs.true:                                    ; preds = %if.end26
  %37 = load ptr, ptr %pWal.addr, align 8
  %38 = load ptr, ptr %xBusy.addr, align 8
  %39 = load ptr, ptr %pBusyArg.addr, align 8
  %call27 = call i32 @walBusyLock(ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef 3, i32 noundef 1)
  store i32 %call27, ptr %rc, align 4
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %if.end118

if.then29:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %pInfo, align 8
  %nBackfill31 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %40, i32 0, i32 0
  %41 = load volatile i32, ptr %nBackfill31, align 4
  store i32 %41, ptr %nBackfill30, align 4
  %42 = load i32, ptr %mxSafeFrame, align 4
  %43 = load ptr, ptr %pInfo, align 8
  %nBackfillAttempted = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %43, i32 0, i32 3
  store volatile i32 %42, ptr %nBackfillAttempted, align 4
  %44 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %pWalFd, align 8
  %46 = load i32, ptr %sync_flags.addr, align 4
  %shr = ashr i32 %46, 2
  %and = and i32 %shr, 3
  %call32 = call i32 @sqlite3OsSync(ptr noundef %45, i32 noundef %and)
  store i32 %call32, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %47, 0
  br i1 %cmp33, label %if.then34, label %if.end45

if.then34:                                        ; preds = %if.then29
  %48 = load i32, ptr %mxPage, align 4
  %conv = zext i32 %48 to i64
  %49 = load i32, ptr %szPage, align 4
  %conv35 = sext i32 %49 to i64
  %mul = mul nsw i64 %conv, %conv35
  store i64 %mul, ptr %nReq, align 8
  %50 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %pDbFd, align 8
  %call36 = call i32 @sqlite3OsFileSize(ptr noundef %51, ptr noundef %nSize)
  store i32 %call36, ptr %rc, align 4
  %52 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %52, 0
  br i1 %cmp37, label %land.lhs.true39, label %if.end44

land.lhs.true39:                                  ; preds = %if.then34
  %53 = load i64, ptr %nSize, align 8
  %54 = load i64, ptr %nReq, align 8
  %cmp40 = icmp slt i64 %53, %54
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %land.lhs.true39
  %55 = load ptr, ptr %pWal.addr, align 8
  %pDbFd43 = getelementptr inbounds nuw %struct.Wal, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %pDbFd43, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %56, i32 noundef 5, ptr noundef %nReq)
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true39, %if.then34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then29
  br label %while.cond

while.cond:                                       ; preds = %if.end87, %if.then64, %if.end45
  %57 = load i32, ptr %rc, align 4
  %cmp46 = icmp eq i32 %57, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %58 = load ptr, ptr %pIter, align 8
  %call48 = call i32 @walIteratorNext(ptr noundef %58, ptr noundef %iDbpage, ptr noundef %iFrame)
  %cmp49 = icmp eq i32 0, %call48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %59 = phi i1 [ false, %while.cond ], [ %cmp49, %land.rhs ]
  br i1 %59, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %60 = load ptr, ptr %db.addr, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %60, i32 0, i32 60
  %61 = load volatile i32, ptr %u1, align 8
  %tobool51 = icmp ne i32 %61, 0
  br i1 %tobool51, label %if.then52, label %if.end56

if.then52:                                        ; preds = %while.body
  %62 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %62, i32 0, i32 19
  %63 = load i8, ptr %mallocFailed, align 1
  %conv53 = zext i8 %63 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  %64 = zext i1 %tobool54 to i64
  %cond55 = select i1 %tobool54, i32 7, i32 9
  store i32 %cond55, ptr %rc, align 4
  br label %while.end

if.end56:                                         ; preds = %while.body
  %65 = load i32, ptr %iFrame, align 4
  %66 = load i32, ptr %nBackfill30, align 4
  %cmp57 = icmp ule i32 %65, %66
  br i1 %cmp57, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end56
  %67 = load i32, ptr %iFrame, align 4
  %68 = load i32, ptr %mxSafeFrame, align 4
  %cmp59 = icmp ugt i32 %67, %68
  br i1 %cmp59, label %if.then64, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %lor.lhs.false
  %69 = load i32, ptr %iDbpage, align 4
  %70 = load i32, ptr %mxPage, align 4
  %cmp62 = icmp ugt i32 %69, %70
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %lor.lhs.false61, %lor.lhs.false, %if.end56
  br label %while.cond, !llvm.loop !8

if.end65:                                         ; preds = %lor.lhs.false61
  %71 = load i32, ptr %iFrame, align 4
  %sub = sub i32 %71, 1
  %conv66 = zext i32 %sub to i64
  %72 = load i32, ptr %szPage, align 4
  %add67 = add nsw i32 %72, 24
  %conv68 = sext i32 %add67 to i64
  %mul69 = mul nsw i64 %conv66, %conv68
  %add70 = add nsw i64 32, %mul69
  %add71 = add nsw i64 %add70, 24
  store i64 %add71, ptr %iOffset, align 8
  %73 = load ptr, ptr %pWal.addr, align 8
  %pWalFd72 = getelementptr inbounds nuw %struct.Wal, ptr %73, i32 0, i32 2
  %74 = load ptr, ptr %pWalFd72, align 8
  %75 = load ptr, ptr %zBuf.addr, align 8
  %76 = load i32, ptr %szPage, align 4
  %77 = load i64, ptr %iOffset, align 8
  %call73 = call i32 @sqlite3OsRead(ptr noundef %74, ptr noundef %75, i32 noundef %76, i64 noundef %77)
  store i32 %call73, ptr %rc, align 4
  %78 = load i32, ptr %rc, align 4
  %cmp74 = icmp ne i32 %78, 0
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end65
  br label %while.end

if.end77:                                         ; preds = %if.end65
  %79 = load i32, ptr %iDbpage, align 4
  %sub78 = sub i32 %79, 1
  %conv79 = zext i32 %sub78 to i64
  %80 = load i32, ptr %szPage, align 4
  %conv80 = sext i32 %80 to i64
  %mul81 = mul nsw i64 %conv79, %conv80
  store i64 %mul81, ptr %iOffset, align 8
  %81 = load ptr, ptr %pWal.addr, align 8
  %pDbFd82 = getelementptr inbounds nuw %struct.Wal, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %pDbFd82, align 8
  %83 = load ptr, ptr %zBuf.addr, align 8
  %84 = load i32, ptr %szPage, align 4
  %85 = load i64, ptr %iOffset, align 8
  %call83 = call i32 @sqlite3OsWrite(ptr noundef %82, ptr noundef %83, i32 noundef %84, i64 noundef %85)
  store i32 %call83, ptr %rc, align 4
  %86 = load i32, ptr %rc, align 4
  %cmp84 = icmp ne i32 %86, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end77
  br label %while.end

if.end87:                                         ; preds = %if.end77
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then86, %if.then76, %if.then52, %land.end
  %87 = load i32, ptr %rc, align 4
  %cmp88 = icmp eq i32 %87, 0
  br i1 %cmp88, label %if.then90, label %if.end117

if.then90:                                        ; preds = %while.end
  %88 = load i32, ptr %mxSafeFrame, align 4
  %89 = load ptr, ptr %pWal.addr, align 8
  %call91 = call ptr @walIndexHdr(ptr noundef %89)
  %mxFrame92 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %call91, i32 0, i32 6
  %90 = load volatile i32, ptr %mxFrame92, align 4
  %cmp93 = icmp eq i32 %88, %90
  br i1 %cmp93, label %if.then95, label %if.end111

if.then95:                                        ; preds = %if.then90
  %91 = load ptr, ptr %pWal.addr, align 8
  %hdr96 = getelementptr inbounds nuw %struct.Wal, ptr %91, i32 0, i32 19
  %nPage97 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr96, i32 0, i32 7
  %92 = load i32, ptr %nPage97, align 4
  %conv98 = zext i32 %92 to i64
  %93 = load i32, ptr %szPage, align 4
  %conv99 = sext i32 %93 to i64
  %mul100 = mul nsw i64 %conv98, %conv99
  store i64 %mul100, ptr %szDb, align 8
  %94 = load ptr, ptr %pWal.addr, align 8
  %pDbFd101 = getelementptr inbounds nuw %struct.Wal, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %pDbFd101, align 8
  %96 = load i64, ptr %szDb, align 8
  %call102 = call i32 @sqlite3OsTruncate(ptr noundef %95, i64 noundef %96)
  store i32 %call102, ptr %rc, align 4
  %97 = load i32, ptr %rc, align 4
  %cmp103 = icmp eq i32 %97, 0
  br i1 %cmp103, label %if.then105, label %if.end110

if.then105:                                       ; preds = %if.then95
  %98 = load ptr, ptr %pWal.addr, align 8
  %pDbFd106 = getelementptr inbounds nuw %struct.Wal, ptr %98, i32 0, i32 1
  %99 = load ptr, ptr %pDbFd106, align 8
  %100 = load i32, ptr %sync_flags.addr, align 4
  %shr107 = ashr i32 %100, 2
  %and108 = and i32 %shr107, 3
  %call109 = call i32 @sqlite3OsSync(ptr noundef %99, i32 noundef %and108)
  store i32 %call109, ptr %rc, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %if.then95
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then90
  %101 = load i32, ptr %rc, align 4
  %cmp112 = icmp eq i32 %101, 0
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end111
  %102 = load i32, ptr %mxSafeFrame, align 4
  %103 = load ptr, ptr %pInfo, align 8
  %nBackfill115 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %103, i32 0, i32 0
  store volatile i32 %102, ptr %nBackfill115, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end111
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %while.end
  %104 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %104, i32 noundef 3, i32 noundef 1)
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %land.lhs.true, %if.end26
  %105 = load i32, ptr %rc, align 4
  %cmp119 = icmp eq i32 %105, 5
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end118
  store i32 0, ptr %rc, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end118
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %entry
  %106 = load i32, ptr %rc, align 4
  %cmp124 = icmp eq i32 %106, 0
  br i1 %cmp124, label %land.lhs.true126, label %if.end153

land.lhs.true126:                                 ; preds = %if.end123
  %107 = load i32, ptr %eMode.addr, align 4
  %cmp127 = icmp ne i32 %107, 0
  br i1 %cmp127, label %if.then129, label %if.end153

if.then129:                                       ; preds = %land.lhs.true126
  %108 = load ptr, ptr %pInfo, align 8
  %nBackfill130 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %108, i32 0, i32 0
  %109 = load volatile i32, ptr %nBackfill130, align 4
  %110 = load ptr, ptr %pWal.addr, align 8
  %hdr131 = getelementptr inbounds nuw %struct.Wal, ptr %110, i32 0, i32 19
  %mxFrame132 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr131, i32 0, i32 6
  %111 = load i32, ptr %mxFrame132, align 8
  %cmp133 = icmp ult i32 %109, %111
  br i1 %cmp133, label %if.then135, label %if.else136

if.then135:                                       ; preds = %if.then129
  store i32 5, ptr %rc, align 4
  br label %if.end152

if.else136:                                       ; preds = %if.then129
  %112 = load i32, ptr %eMode.addr, align 4
  %cmp137 = icmp sge i32 %112, 2
  br i1 %cmp137, label %if.then139, label %if.end151

if.then139:                                       ; preds = %if.else136
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %salt1)
  %113 = load ptr, ptr %pWal.addr, align 8
  %114 = load ptr, ptr %xBusy.addr, align 8
  %115 = load ptr, ptr %pBusyArg.addr, align 8
  %call140 = call i32 @walBusyLock(ptr noundef %113, ptr noundef %114, ptr noundef %115, i32 noundef 4, i32 noundef 4)
  store i32 %call140, ptr %rc, align 4
  %116 = load i32, ptr %rc, align 4
  %cmp141 = icmp eq i32 %116, 0
  br i1 %cmp141, label %if.then143, label %if.end150

if.then143:                                       ; preds = %if.then139
  %117 = load i32, ptr %eMode.addr, align 4
  %cmp144 = icmp eq i32 %117, 3
  br i1 %cmp144, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.then143
  %118 = load ptr, ptr %pWal.addr, align 8
  %119 = load i32, ptr %salt1, align 4
  call void @walRestartHdr(ptr noundef %118, i32 noundef %119)
  %120 = load ptr, ptr %pWal.addr, align 8
  %pWalFd147 = getelementptr inbounds nuw %struct.Wal, ptr %120, i32 0, i32 2
  %121 = load ptr, ptr %pWalFd147, align 8
  %call148 = call i32 @sqlite3OsTruncate(ptr noundef %121, i64 noundef 0)
  store i32 %call148, ptr %rc, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.then143
  %122 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %122, i32 noundef 4, i32 noundef 4)
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then139
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.else136
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then135
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %land.lhs.true126, %if.end123
  br label %walcheckpoint_out

walcheckpoint_out:                                ; preds = %if.end153, %if.else18
  %123 = load ptr, ptr %pIter, align 8
  call void @walIteratorFree(ptr noundef %123)
  %124 = load i32, ptr %rc, align 4
  ret i32 %124
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walIteratorInit(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walIteratorNext(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walIteratorFree(ptr noundef) #0

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
