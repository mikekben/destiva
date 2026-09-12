; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WalWriter = type { ptr, ptr, i64, i32, i32 }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SectorSize(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalFrames(ptr noundef %pWal, i32 noundef %szPage, ptr noundef %pList, i32 noundef %nTruncate, i32 noundef %isCommit, i32 noundef %sync_flags) #1 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %szPage.addr = alloca i32, align 4
  %pList.addr = alloca ptr, align 8
  %nTruncate.addr = alloca i32, align 4
  %isCommit.addr = alloca i32, align 4
  %sync_flags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %iFrame = alloca i32, align 4
  %p = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  %szFrame = alloca i32, align 4
  %iOffset = alloca i64, align 8
  %w = alloca %struct.WalWriter, align 8
  %iFirst = alloca i32, align 4
  %pLive = alloca ptr, align 8
  %aWalHdr = alloca [32 x i8], align 16
  %aCksum = alloca [2 x i32], align 4
  %nDbSize = alloca i32, align 4
  %iWrite = alloca i32, align 4
  %iOff = alloca i64, align 8
  %pData = alloca ptr, align 8
  %bSync = alloca i32, align 4
  %sectorSize = alloca i32, align 4
  %sz = alloca i64, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %szPage, ptr %szPage.addr, align 4
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %nTruncate, ptr %nTruncate.addr, align 4
  store i32 %isCommit, ptr %isCommit.addr, align 4
  store i32 %sync_flags, ptr %sync_flags.addr, align 4
  store ptr null, ptr %pLast, align 8
  store i32 0, ptr %nExtra, align 4
  store i32 0, ptr %iFirst, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call ptr @walIndexHdr(ptr noundef %0)
  store ptr %call, ptr %pLive, align 8
  %1 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 19
  %2 = load ptr, ptr %pLive, align 8
  %call1 = call i32 @memcmp(ptr noundef %hdr, ptr noundef %2, i64 noundef 48) #3
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pLive, align 8
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %mxFrame, align 4
  %add = add i32 %4, 1
  store i32 %add, ptr %iFirst, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pWal.addr, align 8
  %call2 = call i32 @walRestartLog(ptr noundef %5)
  store i32 %call2, ptr %rc, align 4
  %cmp3 = icmp ne i32 0, %call2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pWal.addr, align 8
  %hdr6 = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 19
  %mxFrame7 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr6, i32 0, i32 6
  %8 = load i32, ptr %mxFrame7, align 8
  store i32 %8, ptr %iFrame, align 4
  %9 = load i32, ptr %iFrame, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end49

if.then9:                                         ; preds = %if.end5
  %arrayidx = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 0
  call void @sqlite3Put4byte(ptr noundef %arrayidx, i32 noundef 931071618)
  %arrayidx10 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx10, i32 noundef 3007000)
  %arrayidx11 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 8
  %10 = load i32, ptr %szPage.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx11, i32 noundef %10)
  %arrayidx12 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 12
  %11 = load ptr, ptr %pWal.addr, align 8
  %nCkpt = getelementptr inbounds nuw %struct.Wal, ptr %11, i32 0, i32 23
  %12 = load i32, ptr %nCkpt, align 8
  call void @sqlite3Put4byte(ptr noundef %arrayidx12, i32 noundef %12)
  %13 = load ptr, ptr %pWal.addr, align 8
  %nCkpt13 = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 23
  %14 = load i32, ptr %nCkpt13, align 8
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then9
  %15 = load ptr, ptr %pWal.addr, align 8
  %hdr16 = getelementptr inbounds nuw %struct.Wal, ptr %15, i32 0, i32 19
  %aSalt = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr16, i32 0, i32 9
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aSalt, i64 0, i64 0
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef %arraydecay)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then9
  %arrayidx18 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 16
  %16 = load ptr, ptr %pWal.addr, align 8
  %hdr19 = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 19
  %aSalt20 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr19, i32 0, i32 9
  %arraydecay21 = getelementptr inbounds [2 x i32], ptr %aSalt20, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arrayidx18, ptr align 8 %arraydecay21, i64 8, i1 false)
  %arraydecay22 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 0
  %arraydecay23 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  call void @walChecksumBytes(i32 noundef 1, ptr noundef %arraydecay22, i32 noundef 24, ptr noundef null, ptr noundef %arraydecay23)
  %arrayidx24 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 24
  %arrayidx25 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  %17 = load i32, ptr %arrayidx25, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx24, i32 noundef %17)
  %arrayidx26 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 28
  %arrayidx27 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 1
  %18 = load i32, ptr %arrayidx27, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx26, i32 noundef %18)
  %19 = load i32, ptr %szPage.addr, align 4
  %20 = load ptr, ptr %pWal.addr, align 8
  %szPage28 = getelementptr inbounds nuw %struct.Wal, ptr %20, i32 0, i32 8
  store i32 %19, ptr %szPage28, align 8
  %21 = load ptr, ptr %pWal.addr, align 8
  %hdr29 = getelementptr inbounds nuw %struct.Wal, ptr %21, i32 0, i32 19
  %bigEndCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr29, i32 0, i32 4
  store i8 0, ptr %bigEndCksum, align 1
  %arrayidx30 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 0
  %22 = load i32, ptr %arrayidx30, align 4
  %23 = load ptr, ptr %pWal.addr, align 8
  %hdr31 = getelementptr inbounds nuw %struct.Wal, ptr %23, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr31, i32 0, i32 8
  %arrayidx32 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store i32 %22, ptr %arrayidx32, align 8
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %aCksum, i64 0, i64 1
  %24 = load i32, ptr %arrayidx33, align 4
  %25 = load ptr, ptr %pWal.addr, align 8
  %hdr34 = getelementptr inbounds nuw %struct.Wal, ptr %25, i32 0, i32 19
  %aFrameCksum35 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr34, i32 0, i32 8
  %arrayidx36 = getelementptr inbounds [2 x i32], ptr %aFrameCksum35, i64 0, i64 1
  store i32 %24, ptr %arrayidx36, align 4
  %26 = load ptr, ptr %pWal.addr, align 8
  %truncateOnCommit = getelementptr inbounds nuw %struct.Wal, ptr %26, i32 0, i32 15
  store i8 1, ptr %truncateOnCommit, align 1
  %27 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pWalFd, align 8
  %arraydecay37 = getelementptr inbounds [32 x i8], ptr %aWalHdr, i64 0, i64 0
  %call38 = call i32 @sqlite3OsWrite(ptr noundef %28, ptr noundef %arraydecay37, i32 noundef 32, i64 noundef 0)
  store i32 %call38, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp39 = icmp ne i32 %29, 0
  br i1 %cmp39, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.end17
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end17
  %31 = load ptr, ptr %pWal.addr, align 8
  %syncHeader = getelementptr inbounds nuw %struct.Wal, ptr %31, i32 0, i32 16
  %32 = load i8, ptr %syncHeader, align 4
  %tobool = icmp ne i8 %32, 0
  br i1 %tobool, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.end41
  %33 = load ptr, ptr %pWal.addr, align 8
  %pWalFd43 = getelementptr inbounds nuw %struct.Wal, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %pWalFd43, align 8
  %35 = load i32, ptr %sync_flags.addr, align 4
  %shr = ashr i32 %35, 2
  %and = and i32 %shr, 3
  %call44 = call i32 @sqlite3OsSync(ptr noundef %34, i32 noundef %and)
  store i32 %call44, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %tobool45 = icmp ne i32 %36, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.then42
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.then42
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end5
  %38 = load ptr, ptr %pWal.addr, align 8
  %pWal50 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 0
  store ptr %38, ptr %pWal50, align 8
  %39 = load ptr, ptr %pWal.addr, align 8
  %pWalFd51 = getelementptr inbounds nuw %struct.Wal, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %pWalFd51, align 8
  %pFd = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 1
  store ptr %40, ptr %pFd, align 8
  %iSyncPoint = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 2
  store i64 0, ptr %iSyncPoint, align 8
  %41 = load i32, ptr %sync_flags.addr, align 4
  %syncFlags = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 3
  store i32 %41, ptr %syncFlags, align 8
  %42 = load i32, ptr %szPage.addr, align 4
  %szPage52 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 4
  store i32 %42, ptr %szPage52, align 4
  %43 = load i32, ptr %iFrame, align 4
  %add53 = add i32 %43, 1
  %sub = sub i32 %add53, 1
  %conv = zext i32 %sub to i64
  %44 = load i32, ptr %szPage.addr, align 4
  %add54 = add nsw i32 %44, 24
  %conv55 = sext i32 %add54 to i64
  %mul = mul nsw i64 %conv, %conv55
  %add56 = add nsw i64 32, %mul
  store i64 %add56, ptr %iOffset, align 8
  %45 = load i32, ptr %szPage.addr, align 4
  %add57 = add nsw i32 %45, 24
  store i32 %add57, ptr %szFrame, align 4
  %46 = load ptr, ptr %pList.addr, align 8
  store ptr %46, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end49
  %47 = load ptr, ptr %p, align 8
  %tobool58 = icmp ne ptr %47, null
  br i1 %tobool58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, ptr %iFirst, align 4
  %tobool59 = icmp ne i32 %48, 0
  br i1 %tobool59, label %land.lhs.true, label %if.end94

land.lhs.true:                                    ; preds = %for.body
  %49 = load ptr, ptr %p, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %pDirty, align 8
  %tobool60 = icmp ne ptr %50, null
  br i1 %tobool60, label %if.then63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %51 = load i32, ptr %isCommit.addr, align 4
  %cmp61 = icmp eq i32 %51, 0
  br i1 %cmp61, label %if.then63, label %if.end94

if.then63:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %iWrite, align 4
  %52 = load ptr, ptr %pWal.addr, align 8
  %53 = load ptr, ptr %p, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %53, i32 0, i32 6
  %54 = load i32, ptr %pgno, align 8
  %call64 = call i32 @sqlite3WalFindFrame(ptr noundef %52, i32 noundef %54, ptr noundef %iWrite)
  %55 = load i32, ptr %iWrite, align 4
  %56 = load i32, ptr %iFirst, align 4
  %cmp65 = icmp uge i32 %55, %56
  br i1 %cmp65, label %if.then67, label %if.end93

if.then67:                                        ; preds = %if.then63
  %57 = load i32, ptr %iWrite, align 4
  %sub68 = sub i32 %57, 1
  %conv69 = zext i32 %sub68 to i64
  %58 = load i32, ptr %szPage.addr, align 4
  %add70 = add nsw i32 %58, 24
  %conv71 = sext i32 %add70 to i64
  %mul72 = mul nsw i64 %conv69, %conv71
  %add73 = add nsw i64 32, %mul72
  %add74 = add nsw i64 %add73, 24
  store i64 %add74, ptr %iOff, align 8
  %59 = load ptr, ptr %pWal.addr, align 8
  %iReCksum = getelementptr inbounds nuw %struct.Wal, ptr %59, i32 0, i32 21
  %60 = load i32, ptr %iReCksum, align 4
  %cmp75 = icmp eq i32 %60, 0
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %if.then67
  %61 = load i32, ptr %iWrite, align 4
  %62 = load ptr, ptr %pWal.addr, align 8
  %iReCksum78 = getelementptr inbounds nuw %struct.Wal, ptr %62, i32 0, i32 21
  %63 = load i32, ptr %iReCksum78, align 4
  %cmp79 = icmp ult i32 %61, %63
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %lor.lhs.false77, %if.then67
  %64 = load i32, ptr %iWrite, align 4
  %65 = load ptr, ptr %pWal.addr, align 8
  %iReCksum82 = getelementptr inbounds nuw %struct.Wal, ptr %65, i32 0, i32 21
  store i32 %64, ptr %iReCksum82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %lor.lhs.false77
  %66 = load ptr, ptr %p, align 8
  %pData84 = getelementptr inbounds nuw %struct.PgHdr, ptr %66, i32 0, i32 1
  %67 = load ptr, ptr %pData84, align 8
  store ptr %67, ptr %pData, align 8
  %68 = load ptr, ptr %pWal.addr, align 8
  %pWalFd85 = getelementptr inbounds nuw %struct.Wal, ptr %68, i32 0, i32 2
  %69 = load ptr, ptr %pWalFd85, align 8
  %70 = load ptr, ptr %pData, align 8
  %71 = load i32, ptr %szPage.addr, align 4
  %72 = load i64, ptr %iOff, align 8
  %call86 = call i32 @sqlite3OsWrite(ptr noundef %69, ptr noundef %70, i32 noundef %71, i64 noundef %72)
  store i32 %call86, ptr %rc, align 4
  %73 = load i32, ptr %rc, align 4
  %tobool87 = icmp ne i32 %73, 0
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end83
  %74 = load i32, ptr %rc, align 4
  store i32 %74, ptr %retval, align 4
  br label %return

if.end89:                                         ; preds = %if.end83
  %75 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %75, i32 0, i32 7
  %76 = load i16, ptr %flags, align 4
  %conv90 = zext i16 %76 to i32
  %and91 = and i32 %conv90, -65
  %conv92 = trunc i32 %and91 to i16
  store i16 %conv92, ptr %flags, align 4
  br label %for.inc

if.end93:                                         ; preds = %if.then63
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %lor.lhs.false, %for.body
  %77 = load i32, ptr %iFrame, align 4
  %inc = add i32 %77, 1
  store i32 %inc, ptr %iFrame, align 4
  %78 = load i32, ptr %isCommit.addr, align 4
  %tobool95 = icmp ne i32 %78, 0
  br i1 %tobool95, label %land.lhs.true96, label %cond.false

land.lhs.true96:                                  ; preds = %if.end94
  %79 = load ptr, ptr %p, align 8
  %pDirty97 = getelementptr inbounds nuw %struct.PgHdr, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %pDirty97, align 8
  %cmp98 = icmp eq ptr %80, null
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true96
  %81 = load i32, ptr %nTruncate.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true96, %if.end94
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %81, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nDbSize, align 4
  %82 = load ptr, ptr %p, align 8
  %83 = load i32, ptr %nDbSize, align 4
  %84 = load i64, ptr %iOffset, align 8
  %call100 = call i32 @walWriteOneFrame(ptr noundef %w, ptr noundef %82, i32 noundef %83, i64 noundef %84)
  store i32 %call100, ptr %rc, align 4
  %85 = load i32, ptr %rc, align 4
  %tobool101 = icmp ne i32 %85, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %cond.end
  %86 = load i32, ptr %rc, align 4
  store i32 %86, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %cond.end
  %87 = load ptr, ptr %p, align 8
  store ptr %87, ptr %pLast, align 8
  %88 = load i32, ptr %szFrame, align 4
  %conv104 = sext i32 %88 to i64
  %89 = load i64, ptr %iOffset, align 8
  %add105 = add nsw i64 %89, %conv104
  store i64 %add105, ptr %iOffset, align 8
  %90 = load ptr, ptr %p, align 8
  %flags106 = getelementptr inbounds nuw %struct.PgHdr, ptr %90, i32 0, i32 7
  %91 = load i16, ptr %flags106, align 4
  %conv107 = zext i16 %91 to i32
  %or = or i32 %conv107, 64
  %conv108 = trunc i32 %or to i16
  store i16 %conv108, ptr %flags106, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end103, %if.end89
  %92 = load ptr, ptr %p, align 8
  %pDirty109 = getelementptr inbounds nuw %struct.PgHdr, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %pDirty109, align 8
  store ptr %93, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %94 = load i32, ptr %isCommit.addr, align 4
  %tobool110 = icmp ne i32 %94, 0
  br i1 %tobool110, label %land.lhs.true111, label %if.end119

land.lhs.true111:                                 ; preds = %for.end
  %95 = load ptr, ptr %pWal.addr, align 8
  %iReCksum112 = getelementptr inbounds nuw %struct.Wal, ptr %95, i32 0, i32 21
  %96 = load i32, ptr %iReCksum112, align 4
  %tobool113 = icmp ne i32 %96, 0
  br i1 %tobool113, label %if.then114, label %if.end119

if.then114:                                       ; preds = %land.lhs.true111
  %97 = load ptr, ptr %pWal.addr, align 8
  %98 = load i32, ptr %iFrame, align 4
  %call115 = call i32 @walRewriteChecksums(ptr noundef %97, i32 noundef %98)
  store i32 %call115, ptr %rc, align 4
  %99 = load i32, ptr %rc, align 4
  %tobool116 = icmp ne i32 %99, 0
  br i1 %tobool116, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.then114
  %100 = load i32, ptr %rc, align 4
  store i32 %100, ptr %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.then114
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %land.lhs.true111, %for.end
  %101 = load i32, ptr %isCommit.addr, align 4
  %tobool120 = icmp ne i32 %101, 0
  br i1 %tobool120, label %land.lhs.true121, label %if.end157

land.lhs.true121:                                 ; preds = %if.end119
  %102 = load i32, ptr %sync_flags.addr, align 4
  %and122 = and i32 %102, 3
  %cmp123 = icmp ne i32 %and122, 0
  br i1 %cmp123, label %if.then125, label %if.end157

if.then125:                                       ; preds = %land.lhs.true121
  store i32 1, ptr %bSync, align 4
  %103 = load ptr, ptr %pWal.addr, align 8
  %padToSectorBoundary = getelementptr inbounds nuw %struct.Wal, ptr %103, i32 0, i32 17
  %104 = load i8, ptr %padToSectorBoundary, align 1
  %tobool126 = icmp ne i8 %104, 0
  br i1 %tobool126, label %if.then127, label %if.end150

if.then127:                                       ; preds = %if.then125
  %105 = load ptr, ptr %pWal.addr, align 8
  %pWalFd128 = getelementptr inbounds nuw %struct.Wal, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %pWalFd128, align 8
  %call129 = call i32 @sqlite3SectorSize(ptr noundef %106)
  store i32 %call129, ptr %sectorSize, align 4
  %107 = load i64, ptr %iOffset, align 8
  %108 = load i32, ptr %sectorSize, align 4
  %conv130 = sext i32 %108 to i64
  %add131 = add nsw i64 %107, %conv130
  %sub132 = sub nsw i64 %add131, 1
  %109 = load i32, ptr %sectorSize, align 4
  %conv133 = sext i32 %109 to i64
  %div = sdiv i64 %sub132, %conv133
  %110 = load i32, ptr %sectorSize, align 4
  %conv134 = sext i32 %110 to i64
  %mul135 = mul nsw i64 %div, %conv134
  %iSyncPoint136 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 2
  store i64 %mul135, ptr %iSyncPoint136, align 8
  %iSyncPoint137 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 2
  %111 = load i64, ptr %iSyncPoint137, align 8
  %112 = load i64, ptr %iOffset, align 8
  %cmp138 = icmp eq i64 %111, %112
  %conv139 = zext i1 %cmp138 to i32
  store i32 %conv139, ptr %bSync, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end146, %if.then127
  %113 = load i64, ptr %iOffset, align 8
  %iSyncPoint140 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 2
  %114 = load i64, ptr %iSyncPoint140, align 8
  %cmp141 = icmp slt i64 %113, %114
  br i1 %cmp141, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %115 = load ptr, ptr %pLast, align 8
  %116 = load i32, ptr %nTruncate.addr, align 4
  %117 = load i64, ptr %iOffset, align 8
  %call143 = call i32 @walWriteOneFrame(ptr noundef %w, ptr noundef %115, i32 noundef %116, i64 noundef %117)
  store i32 %call143, ptr %rc, align 4
  %118 = load i32, ptr %rc, align 4
  %tobool144 = icmp ne i32 %118, 0
  br i1 %tobool144, label %if.then145, label %if.end146

if.then145:                                       ; preds = %while.body
  %119 = load i32, ptr %rc, align 4
  store i32 %119, ptr %retval, align 4
  br label %return

if.end146:                                        ; preds = %while.body
  %120 = load i32, ptr %szFrame, align 4
  %conv147 = sext i32 %120 to i64
  %121 = load i64, ptr %iOffset, align 8
  %add148 = add nsw i64 %121, %conv147
  store i64 %add148, ptr %iOffset, align 8
  %122 = load i32, ptr %nExtra, align 4
  %inc149 = add nsw i32 %122, 1
  store i32 %inc149, ptr %nExtra, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %if.end150

if.end150:                                        ; preds = %while.end, %if.then125
  %123 = load i32, ptr %bSync, align 4
  %tobool151 = icmp ne i32 %123, 0
  br i1 %tobool151, label %if.then152, label %if.end156

if.then152:                                       ; preds = %if.end150
  %pFd153 = getelementptr inbounds nuw %struct.WalWriter, ptr %w, i32 0, i32 1
  %124 = load ptr, ptr %pFd153, align 8
  %125 = load i32, ptr %sync_flags.addr, align 4
  %and154 = and i32 %125, 3
  %call155 = call i32 @sqlite3OsSync(ptr noundef %124, i32 noundef %and154)
  store i32 %call155, ptr %rc, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then152, %if.end150
  br label %if.end157

if.end157:                                        ; preds = %if.end156, %land.lhs.true121, %if.end119
  %126 = load i32, ptr %isCommit.addr, align 4
  %tobool158 = icmp ne i32 %126, 0
  br i1 %tobool158, label %land.lhs.true159, label %if.end190

land.lhs.true159:                                 ; preds = %if.end157
  %127 = load ptr, ptr %pWal.addr, align 8
  %truncateOnCommit160 = getelementptr inbounds nuw %struct.Wal, ptr %127, i32 0, i32 15
  %128 = load i8, ptr %truncateOnCommit160, align 1
  %conv161 = zext i8 %128 to i32
  %tobool162 = icmp ne i32 %conv161, 0
  br i1 %tobool162, label %land.lhs.true163, label %if.end190

land.lhs.true163:                                 ; preds = %land.lhs.true159
  %129 = load ptr, ptr %pWal.addr, align 8
  %mxWalSize = getelementptr inbounds nuw %struct.Wal, ptr %129, i32 0, i32 4
  %130 = load i64, ptr %mxWalSize, align 8
  %cmp164 = icmp sge i64 %130, 0
  br i1 %cmp164, label %if.then166, label %if.end190

if.then166:                                       ; preds = %land.lhs.true163
  %131 = load ptr, ptr %pWal.addr, align 8
  %mxWalSize167 = getelementptr inbounds nuw %struct.Wal, ptr %131, i32 0, i32 4
  %132 = load i64, ptr %mxWalSize167, align 8
  store i64 %132, ptr %sz, align 8
  %133 = load i32, ptr %iFrame, align 4
  %134 = load i32, ptr %nExtra, align 4
  %add168 = add i32 %133, %134
  %add169 = add i32 %add168, 1
  %sub170 = sub i32 %add169, 1
  %conv171 = zext i32 %sub170 to i64
  %135 = load i32, ptr %szPage.addr, align 4
  %add172 = add nsw i32 %135, 24
  %conv173 = sext i32 %add172 to i64
  %mul174 = mul nsw i64 %conv171, %conv173
  %add175 = add nsw i64 32, %mul174
  %136 = load ptr, ptr %pWal.addr, align 8
  %mxWalSize176 = getelementptr inbounds nuw %struct.Wal, ptr %136, i32 0, i32 4
  %137 = load i64, ptr %mxWalSize176, align 8
  %cmp177 = icmp sgt i64 %add175, %137
  br i1 %cmp177, label %if.then179, label %if.end188

if.then179:                                       ; preds = %if.then166
  %138 = load i32, ptr %iFrame, align 4
  %139 = load i32, ptr %nExtra, align 4
  %add180 = add i32 %138, %139
  %add181 = add i32 %add180, 1
  %sub182 = sub i32 %add181, 1
  %conv183 = zext i32 %sub182 to i64
  %140 = load i32, ptr %szPage.addr, align 4
  %add184 = add nsw i32 %140, 24
  %conv185 = sext i32 %add184 to i64
  %mul186 = mul nsw i64 %conv183, %conv185
  %add187 = add nsw i64 32, %mul186
  store i64 %add187, ptr %sz, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then179, %if.then166
  %141 = load ptr, ptr %pWal.addr, align 8
  %142 = load i64, ptr %sz, align 8
  call void @walLimitSize(ptr noundef %141, i64 noundef %142)
  %143 = load ptr, ptr %pWal.addr, align 8
  %truncateOnCommit189 = getelementptr inbounds nuw %struct.Wal, ptr %143, i32 0, i32 15
  store i8 0, ptr %truncateOnCommit189, align 1
  br label %if.end190

if.end190:                                        ; preds = %if.end188, %land.lhs.true163, %land.lhs.true159, %if.end157
  %144 = load ptr, ptr %pWal.addr, align 8
  %hdr191 = getelementptr inbounds nuw %struct.Wal, ptr %144, i32 0, i32 19
  %mxFrame192 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr191, i32 0, i32 6
  %145 = load i32, ptr %mxFrame192, align 8
  store i32 %145, ptr %iFrame, align 4
  %146 = load ptr, ptr %pList.addr, align 8
  store ptr %146, ptr %p, align 8
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc208, %if.end190
  %147 = load ptr, ptr %p, align 8
  %tobool194 = icmp ne ptr %147, null
  br i1 %tobool194, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond193
  %148 = load i32, ptr %rc, align 4
  %cmp195 = icmp eq i32 %148, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond193
  %149 = phi i1 [ false, %for.cond193 ], [ %cmp195, %land.rhs ]
  br i1 %149, label %for.body197, label %for.end210

for.body197:                                      ; preds = %land.end
  %150 = load ptr, ptr %p, align 8
  %flags198 = getelementptr inbounds nuw %struct.PgHdr, ptr %150, i32 0, i32 7
  %151 = load i16, ptr %flags198, align 4
  %conv199 = zext i16 %151 to i32
  %and200 = and i32 %conv199, 64
  %cmp201 = icmp eq i32 %and200, 0
  br i1 %cmp201, label %if.then203, label %if.end204

if.then203:                                       ; preds = %for.body197
  br label %for.inc208

if.end204:                                        ; preds = %for.body197
  %152 = load i32, ptr %iFrame, align 4
  %inc205 = add i32 %152, 1
  store i32 %inc205, ptr %iFrame, align 4
  %153 = load ptr, ptr %pWal.addr, align 8
  %154 = load i32, ptr %iFrame, align 4
  %155 = load ptr, ptr %p, align 8
  %pgno206 = getelementptr inbounds nuw %struct.PgHdr, ptr %155, i32 0, i32 6
  %156 = load i32, ptr %pgno206, align 8
  %call207 = call i32 @walIndexAppend(ptr noundef %153, i32 noundef %154, i32 noundef %156)
  store i32 %call207, ptr %rc, align 4
  br label %for.inc208

for.inc208:                                       ; preds = %if.end204, %if.then203
  %157 = load ptr, ptr %p, align 8
  %pDirty209 = getelementptr inbounds nuw %struct.PgHdr, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %pDirty209, align 8
  store ptr %158, ptr %p, align 8
  br label %for.cond193, !llvm.loop !9

for.end210:                                       ; preds = %land.end
  br label %while.cond211

while.cond211:                                    ; preds = %while.body218, %for.end210
  %159 = load i32, ptr %rc, align 4
  %cmp212 = icmp eq i32 %159, 0
  br i1 %cmp212, label %land.rhs214, label %land.end217

land.rhs214:                                      ; preds = %while.cond211
  %160 = load i32, ptr %nExtra, align 4
  %cmp215 = icmp sgt i32 %160, 0
  br label %land.end217

land.end217:                                      ; preds = %land.rhs214, %while.cond211
  %161 = phi i1 [ false, %while.cond211 ], [ %cmp215, %land.rhs214 ]
  br i1 %161, label %while.body218, label %while.end222

while.body218:                                    ; preds = %land.end217
  %162 = load i32, ptr %iFrame, align 4
  %inc219 = add i32 %162, 1
  store i32 %inc219, ptr %iFrame, align 4
  %163 = load i32, ptr %nExtra, align 4
  %dec = add nsw i32 %163, -1
  store i32 %dec, ptr %nExtra, align 4
  %164 = load ptr, ptr %pWal.addr, align 8
  %165 = load i32, ptr %iFrame, align 4
  %166 = load ptr, ptr %pLast, align 8
  %pgno220 = getelementptr inbounds nuw %struct.PgHdr, ptr %166, i32 0, i32 6
  %167 = load i32, ptr %pgno220, align 8
  %call221 = call i32 @walIndexAppend(ptr noundef %164, i32 noundef %165, i32 noundef %167)
  store i32 %call221, ptr %rc, align 4
  br label %while.cond211, !llvm.loop !10

while.end222:                                     ; preds = %land.end217
  %168 = load i32, ptr %rc, align 4
  %cmp223 = icmp eq i32 %168, 0
  br i1 %cmp223, label %if.then225, label %if.end243

if.then225:                                       ; preds = %while.end222
  %169 = load i32, ptr %szPage.addr, align 4
  %and226 = and i32 %169, 65280
  %170 = load i32, ptr %szPage.addr, align 4
  %shr227 = ashr i32 %170, 16
  %or228 = or i32 %and226, %shr227
  %conv229 = trunc i32 %or228 to i16
  %171 = load ptr, ptr %pWal.addr, align 8
  %hdr230 = getelementptr inbounds nuw %struct.Wal, ptr %171, i32 0, i32 19
  %szPage231 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr230, i32 0, i32 5
  store i16 %conv229, ptr %szPage231, align 2
  %172 = load i32, ptr %iFrame, align 4
  %173 = load ptr, ptr %pWal.addr, align 8
  %hdr232 = getelementptr inbounds nuw %struct.Wal, ptr %173, i32 0, i32 19
  %mxFrame233 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr232, i32 0, i32 6
  store i32 %172, ptr %mxFrame233, align 8
  %174 = load i32, ptr %isCommit.addr, align 4
  %tobool234 = icmp ne i32 %174, 0
  br i1 %tobool234, label %if.then235, label %if.end239

if.then235:                                       ; preds = %if.then225
  %175 = load ptr, ptr %pWal.addr, align 8
  %hdr236 = getelementptr inbounds nuw %struct.Wal, ptr %175, i32 0, i32 19
  %iChange = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr236, i32 0, i32 2
  %176 = load i32, ptr %iChange, align 8
  %inc237 = add i32 %176, 1
  store i32 %inc237, ptr %iChange, align 8
  %177 = load i32, ptr %nTruncate.addr, align 4
  %178 = load ptr, ptr %pWal.addr, align 8
  %hdr238 = getelementptr inbounds nuw %struct.Wal, ptr %178, i32 0, i32 19
  %nPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr238, i32 0, i32 7
  store i32 %177, ptr %nPage, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then235, %if.then225
  %179 = load i32, ptr %isCommit.addr, align 4
  %tobool240 = icmp ne i32 %179, 0
  br i1 %tobool240, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.end239
  %180 = load ptr, ptr %pWal.addr, align 8
  call void @walIndexWriteHdr(ptr noundef %180)
  %181 = load i32, ptr %iFrame, align 4
  %182 = load ptr, ptr %pWal.addr, align 8
  %iCallback = getelementptr inbounds nuw %struct.Wal, ptr %182, i32 0, i32 3
  store i32 %181, ptr %iCallback, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.end239
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %while.end222
  %183 = load i32, ptr %rc, align 4
  store i32 %183, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end243, %if.then145, %if.then117, %if.then102, %if.then88, %if.then46, %if.then40, %if.then4
  %184 = load i32, ptr %retval, align 4
  ret i32 %184
}

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walRestartLog(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalFindFrame(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walWriteOneFrame(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walRewriteChecksums(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walLimitSize(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexAppend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walIndexWriteHdr(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
