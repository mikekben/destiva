; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }

@.str.99 = external hidden unnamed_addr constant [37 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexAppend(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walIndexWriteHdr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexRecover(ptr noundef %pWal) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nSize = alloca i64, align 8
  %aFrameCksum = alloca [2 x i32], align 4
  %iLock = alloca i32, align 4
  %aBuf = alloca [32 x i8], align 16
  %aFrame = alloca ptr, align 8
  %szFrame = alloca i32, align 4
  %aData = alloca ptr, align 8
  %iFrame = alloca i32, align 4
  %iOffset = alloca i64, align 8
  %szPage = alloca i32, align 4
  %magic = alloca i32, align 4
  %version = alloca i32, align 4
  %isValid = alloca i32, align 4
  %pgno = alloca i32, align 4
  %nTruncate = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %aFrameCksum, i8 0, i64 8, i1 false)
  %0 = load ptr, ptr %pWal.addr, align 8
  %ckptLock = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %ckptLock, align 1
  %conv = zext i8 %1 to i32
  %add = add nsw i32 1, %conv
  store i32 %add, ptr %iLock, align 4
  %2 = load ptr, ptr %pWal.addr, align 8
  %3 = load i32, ptr %iLock, align 4
  %4 = load i32, ptr %iLock, align 4
  %sub = sub nsw i32 3, %4
  %call = call i32 @walLockExclusive(ptr noundef %2, i32 noundef %3, i32 noundef %sub)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pWal.addr, align 8
  %call2 = call i32 @walLockExclusive(ptr noundef %6, i32 noundef 4, i32 noundef 4)
  store i32 %call2, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %7, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %pWal.addr, align 8
  %9 = load i32, ptr %iLock, align 4
  %10 = load i32, ptr %iLock, align 4
  %sub6 = sub nsw i32 3, %10
  call void @walUnlockExclusive(ptr noundef %8, i32 noundef %9, i32 noundef %sub6)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end7
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end7
  %13 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr align 8 %hdr, i8 0, i64 48, i1 false)
  %14 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pWalFd, align 8
  %call10 = call i32 @sqlite3OsFileSize(ptr noundef %15, ptr noundef %nSize)
  store i32 %call10, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %16, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %recovery_error

if.end14:                                         ; preds = %if.end9
  %17 = load i64, ptr %nSize, align 8
  %cmp15 = icmp sgt i64 %17, 32
  br i1 %cmp15, label %if.then17, label %if.end126

if.then17:                                        ; preds = %if.end14
  store ptr null, ptr %aFrame, align 8
  %18 = load ptr, ptr %pWal.addr, align 8
  %pWalFd18 = getelementptr inbounds nuw %struct.Wal, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pWalFd18, align 8
  %arraydecay = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 0
  %call19 = call i32 @sqlite3OsRead(ptr noundef %19, ptr noundef %arraydecay, i32 noundef 32, i64 noundef 0)
  store i32 %call19, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp20 = icmp ne i32 %20, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then17
  br label %recovery_error

if.end23:                                         ; preds = %if.then17
  %arrayidx = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 0
  %call24 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call24, ptr %magic, align 4
  %arrayidx25 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 8
  %call26 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx25)
  store i32 %call26, ptr %szPage, align 4
  %21 = load i32, ptr %magic, align 4
  %and = and i32 %21, -2
  %cmp27 = icmp ne i32 %and, 931071618
  br i1 %cmp27, label %if.then38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %22 = load i32, ptr %szPage, align 4
  %23 = load i32, ptr %szPage, align 4
  %sub29 = sub nsw i32 %23, 1
  %and30 = and i32 %22, %sub29
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then38, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %24 = load i32, ptr %szPage, align 4
  %cmp33 = icmp sgt i32 %24, 65536
  br i1 %cmp33, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false32
  %25 = load i32, ptr %szPage, align 4
  %cmp36 = icmp slt i32 %25, 512
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false35, %lor.lhs.false32, %lor.lhs.false, %if.end23
  br label %finished

if.end39:                                         ; preds = %lor.lhs.false35
  %26 = load i32, ptr %magic, align 4
  %and40 = and i32 %26, 1
  %conv41 = trunc i32 %and40 to i8
  %27 = load ptr, ptr %pWal.addr, align 8
  %hdr42 = getelementptr inbounds nuw %struct.Wal, ptr %27, i32 0, i32 19
  %bigEndCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr42, i32 0, i32 4
  store i8 %conv41, ptr %bigEndCksum, align 1
  %28 = load i32, ptr %szPage, align 4
  %29 = load ptr, ptr %pWal.addr, align 8
  %szPage43 = getelementptr inbounds nuw %struct.Wal, ptr %29, i32 0, i32 8
  store i32 %28, ptr %szPage43, align 8
  %arrayidx44 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 12
  %call45 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx44)
  %30 = load ptr, ptr %pWal.addr, align 8
  %nCkpt = getelementptr inbounds nuw %struct.Wal, ptr %30, i32 0, i32 23
  store i32 %call45, ptr %nCkpt, align 8
  %31 = load ptr, ptr %pWal.addr, align 8
  %hdr46 = getelementptr inbounds nuw %struct.Wal, ptr %31, i32 0, i32 19
  %aSalt = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr46, i32 0, i32 9
  %arrayidx47 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aSalt, ptr align 16 %arrayidx47, i64 8, i1 false)
  %32 = load ptr, ptr %pWal.addr, align 8
  %hdr48 = getelementptr inbounds nuw %struct.Wal, ptr %32, i32 0, i32 19
  %bigEndCksum49 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr48, i32 0, i32 4
  %33 = load i8, ptr %bigEndCksum49, align 1
  %conv50 = zext i8 %33 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  %conv52 = zext i1 %cmp51 to i32
  %arraydecay53 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 0
  %34 = load ptr, ptr %pWal.addr, align 8
  %hdr54 = getelementptr inbounds nuw %struct.Wal, ptr %34, i32 0, i32 19
  %aFrameCksum55 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr54, i32 0, i32 8
  %arraydecay56 = getelementptr inbounds [2 x i32], ptr %aFrameCksum55, i64 0, i64 0
  call void @walChecksumBytes(i32 noundef %conv52, ptr noundef %arraydecay53, i32 noundef 24, ptr noundef null, ptr noundef %arraydecay56)
  %35 = load ptr, ptr %pWal.addr, align 8
  %hdr57 = getelementptr inbounds nuw %struct.Wal, ptr %35, i32 0, i32 19
  %aFrameCksum58 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr57, i32 0, i32 8
  %arrayidx59 = getelementptr inbounds [2 x i32], ptr %aFrameCksum58, i64 0, i64 0
  %36 = load i32, ptr %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 24
  %call61 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx60)
  %cmp62 = icmp ne i32 %36, %call61
  br i1 %cmp62, label %if.then72, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end39
  %37 = load ptr, ptr %pWal.addr, align 8
  %hdr65 = getelementptr inbounds nuw %struct.Wal, ptr %37, i32 0, i32 19
  %aFrameCksum66 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr65, i32 0, i32 8
  %arrayidx67 = getelementptr inbounds [2 x i32], ptr %aFrameCksum66, i64 0, i64 1
  %38 = load i32, ptr %arrayidx67, align 4
  %arrayidx68 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 28
  %call69 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx68)
  %cmp70 = icmp ne i32 %38, %call69
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %lor.lhs.false64, %if.end39
  br label %finished

if.end73:                                         ; preds = %lor.lhs.false64
  %arrayidx74 = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 4
  %call75 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx74)
  store i32 %call75, ptr %version, align 4
  %39 = load i32, ptr %version, align 4
  %cmp76 = icmp ne i32 %39, 3007000
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end73
  %call79 = call i32 @sqlite3CantopenError(i32 noundef 59749)
  store i32 %call79, ptr %rc, align 4
  br label %finished

if.end80:                                         ; preds = %if.end73
  %40 = load i32, ptr %szPage, align 4
  %add81 = add nsw i32 %40, 24
  store i32 %add81, ptr %szFrame, align 4
  %41 = load i32, ptr %szFrame, align 4
  %conv82 = sext i32 %41 to i64
  %call83 = call ptr @sqlite3_malloc64(i64 noundef %conv82)
  store ptr %call83, ptr %aFrame, align 8
  %42 = load ptr, ptr %aFrame, align 8
  %tobool84 = icmp ne ptr %42, null
  br i1 %tobool84, label %if.end86, label %if.then85

if.then85:                                        ; preds = %if.end80
  store i32 7, ptr %rc, align 4
  br label %recovery_error

if.end86:                                         ; preds = %if.end80
  %43 = load ptr, ptr %aFrame, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %43, i64 24
  store ptr %arrayidx87, ptr %aData, align 8
  store i32 0, ptr %iFrame, align 4
  store i64 32, ptr %iOffset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end86
  %44 = load i64, ptr %iOffset, align 8
  %45 = load i32, ptr %szFrame, align 4
  %conv88 = sext i32 %45 to i64
  %add89 = add nsw i64 %44, %conv88
  %46 = load i64, ptr %nSize, align 8
  %cmp90 = icmp sle i64 %add89, %46
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load i32, ptr %iFrame, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %iFrame, align 4
  %48 = load ptr, ptr %pWal.addr, align 8
  %pWalFd92 = getelementptr inbounds nuw %struct.Wal, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %pWalFd92, align 8
  %50 = load ptr, ptr %aFrame, align 8
  %51 = load i32, ptr %szFrame, align 4
  %52 = load i64, ptr %iOffset, align 8
  %call93 = call i32 @sqlite3OsRead(ptr noundef %49, ptr noundef %50, i32 noundef %51, i64 noundef %52)
  store i32 %call93, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp94 = icmp ne i32 %53, 0
  br i1 %cmp94, label %if.then96, label %if.end97

if.then96:                                        ; preds = %for.body
  br label %for.end

if.end97:                                         ; preds = %for.body
  %54 = load ptr, ptr %pWal.addr, align 8
  %55 = load ptr, ptr %aData, align 8
  %56 = load ptr, ptr %aFrame, align 8
  %call98 = call i32 @walDecodeFrame(ptr noundef %54, ptr noundef %pgno, ptr noundef %nTruncate, ptr noundef %55, ptr noundef %56)
  store i32 %call98, ptr %isValid, align 4
  %57 = load i32, ptr %isValid, align 4
  %tobool99 = icmp ne i32 %57, 0
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %if.end97
  br label %for.end

if.end101:                                        ; preds = %if.end97
  %58 = load ptr, ptr %pWal.addr, align 8
  %59 = load i32, ptr %iFrame, align 4
  %60 = load i32, ptr %pgno, align 4
  %call102 = call i32 @walIndexAppend(ptr noundef %58, i32 noundef %59, i32 noundef %60)
  store i32 %call102, ptr %rc, align 4
  %61 = load i32, ptr %rc, align 4
  %cmp103 = icmp ne i32 %61, 0
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.end101
  br label %for.end

if.end106:                                        ; preds = %if.end101
  %62 = load i32, ptr %nTruncate, align 4
  %tobool107 = icmp ne i32 %62, 0
  br i1 %tobool107, label %if.then108, label %if.end123

if.then108:                                       ; preds = %if.end106
  %63 = load i32, ptr %iFrame, align 4
  %64 = load ptr, ptr %pWal.addr, align 8
  %hdr109 = getelementptr inbounds nuw %struct.Wal, ptr %64, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr109, i32 0, i32 6
  store i32 %63, ptr %mxFrame, align 8
  %65 = load i32, ptr %nTruncate, align 4
  %66 = load ptr, ptr %pWal.addr, align 8
  %hdr110 = getelementptr inbounds nuw %struct.Wal, ptr %66, i32 0, i32 19
  %nPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr110, i32 0, i32 7
  store i32 %65, ptr %nPage, align 4
  %67 = load i32, ptr %szPage, align 4
  %and111 = and i32 %67, 65280
  %68 = load i32, ptr %szPage, align 4
  %shr = ashr i32 %68, 16
  %or = or i32 %and111, %shr
  %conv112 = trunc i32 %or to i16
  %69 = load ptr, ptr %pWal.addr, align 8
  %hdr113 = getelementptr inbounds nuw %struct.Wal, ptr %69, i32 0, i32 19
  %szPage114 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr113, i32 0, i32 5
  store i16 %conv112, ptr %szPage114, align 2
  %70 = load ptr, ptr %pWal.addr, align 8
  %hdr115 = getelementptr inbounds nuw %struct.Wal, ptr %70, i32 0, i32 19
  %aFrameCksum116 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr115, i32 0, i32 8
  %arrayidx117 = getelementptr inbounds [2 x i32], ptr %aFrameCksum116, i64 0, i64 0
  %71 = load i32, ptr %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store i32 %71, ptr %arrayidx118, align 4
  %72 = load ptr, ptr %pWal.addr, align 8
  %hdr119 = getelementptr inbounds nuw %struct.Wal, ptr %72, i32 0, i32 19
  %aFrameCksum120 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr119, i32 0, i32 8
  %arrayidx121 = getelementptr inbounds [2 x i32], ptr %aFrameCksum120, i64 0, i64 1
  %73 = load i32, ptr %arrayidx121, align 4
  %arrayidx122 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 1
  store i32 %73, ptr %arrayidx122, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then108, %if.end106
  br label %for.inc

for.inc:                                          ; preds = %if.end123
  %74 = load i32, ptr %szFrame, align 4
  %conv124 = sext i32 %74 to i64
  %75 = load i64, ptr %iOffset, align 8
  %add125 = add nsw i64 %75, %conv124
  store i64 %add125, ptr %iOffset, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then105, %if.then100, %if.then96, %for.cond
  %76 = load ptr, ptr %aFrame, align 8
  call void @sqlite3_free(ptr noundef %76)
  br label %if.end126

if.end126:                                        ; preds = %for.end, %if.end14
  br label %finished

finished:                                         ; preds = %if.end126, %if.then78, %if.then72, %if.then38
  %77 = load i32, ptr %rc, align 4
  %cmp127 = icmp eq i32 %77, 0
  br i1 %cmp127, label %if.then129, label %if.end167

if.then129:                                       ; preds = %finished
  %arrayidx130 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  %78 = load i32, ptr %arrayidx130, align 4
  %79 = load ptr, ptr %pWal.addr, align 8
  %hdr131 = getelementptr inbounds nuw %struct.Wal, ptr %79, i32 0, i32 19
  %aFrameCksum132 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr131, i32 0, i32 8
  %arrayidx133 = getelementptr inbounds [2 x i32], ptr %aFrameCksum132, i64 0, i64 0
  store i32 %78, ptr %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 1
  %80 = load i32, ptr %arrayidx134, align 4
  %81 = load ptr, ptr %pWal.addr, align 8
  %hdr135 = getelementptr inbounds nuw %struct.Wal, ptr %81, i32 0, i32 19
  %aFrameCksum136 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr135, i32 0, i32 8
  %arrayidx137 = getelementptr inbounds [2 x i32], ptr %aFrameCksum136, i64 0, i64 1
  store i32 %80, ptr %arrayidx137, align 4
  %82 = load ptr, ptr %pWal.addr, align 8
  call void @walIndexWriteHdr(ptr noundef %82)
  %83 = load ptr, ptr %pWal.addr, align 8
  %call138 = call ptr @walCkptInfo(ptr noundef %83)
  store ptr %call138, ptr %pInfo, align 8
  %84 = load ptr, ptr %pInfo, align 8
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %84, i32 0, i32 0
  store volatile i32 0, ptr %nBackfill, align 4
  %85 = load ptr, ptr %pWal.addr, align 8
  %hdr139 = getelementptr inbounds nuw %struct.Wal, ptr %85, i32 0, i32 19
  %mxFrame140 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr139, i32 0, i32 6
  %86 = load i32, ptr %mxFrame140, align 8
  %87 = load ptr, ptr %pInfo, align 8
  %nBackfillAttempted = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %87, i32 0, i32 3
  store volatile i32 %86, ptr %nBackfillAttempted, align 4
  %88 = load ptr, ptr %pInfo, align 8
  %aReadMark = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %88, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [5 x i32], ptr %aReadMark, i64 0, i64 0
  store volatile i32 0, ptr %arrayidx141, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc148, %if.then129
  %89 = load i32, ptr %i, align 4
  %cmp143 = icmp slt i32 %89, 5
  br i1 %cmp143, label %for.body145, label %for.end150

for.body145:                                      ; preds = %for.cond142
  %90 = load ptr, ptr %pInfo, align 8
  %aReadMark146 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %90, i32 0, i32 1
  %91 = load i32, ptr %i, align 4
  %idxprom = sext i32 %91 to i64
  %arrayidx147 = getelementptr inbounds [5 x i32], ptr %aReadMark146, i64 0, i64 %idxprom
  store volatile i32 -1, ptr %arrayidx147, align 4
  br label %for.inc148

for.inc148:                                       ; preds = %for.body145
  %92 = load i32, ptr %i, align 4
  %inc149 = add nsw i32 %92, 1
  store i32 %inc149, ptr %i, align 4
  br label %for.cond142, !llvm.loop !8

for.end150:                                       ; preds = %for.cond142
  %93 = load ptr, ptr %pWal.addr, align 8
  %hdr151 = getelementptr inbounds nuw %struct.Wal, ptr %93, i32 0, i32 19
  %mxFrame152 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr151, i32 0, i32 6
  %94 = load i32, ptr %mxFrame152, align 8
  %tobool153 = icmp ne i32 %94, 0
  br i1 %tobool153, label %if.then154, label %if.end159

if.then154:                                       ; preds = %for.end150
  %95 = load ptr, ptr %pWal.addr, align 8
  %hdr155 = getelementptr inbounds nuw %struct.Wal, ptr %95, i32 0, i32 19
  %mxFrame156 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr155, i32 0, i32 6
  %96 = load i32, ptr %mxFrame156, align 8
  %97 = load ptr, ptr %pInfo, align 8
  %aReadMark157 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %97, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [5 x i32], ptr %aReadMark157, i64 0, i64 1
  store volatile i32 %96, ptr %arrayidx158, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.then154, %for.end150
  %98 = load ptr, ptr %pWal.addr, align 8
  %hdr160 = getelementptr inbounds nuw %struct.Wal, ptr %98, i32 0, i32 19
  %nPage161 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr160, i32 0, i32 7
  %99 = load i32, ptr %nPage161, align 4
  %tobool162 = icmp ne i32 %99, 0
  br i1 %tobool162, label %if.then163, label %if.end166

if.then163:                                       ; preds = %if.end159
  %100 = load ptr, ptr %pWal.addr, align 8
  %hdr164 = getelementptr inbounds nuw %struct.Wal, ptr %100, i32 0, i32 19
  %mxFrame165 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr164, i32 0, i32 6
  %101 = load i32, ptr %mxFrame165, align 8
  %102 = load ptr, ptr %pWal.addr, align 8
  %zWalName = getelementptr inbounds nuw %struct.Wal, ptr %102, i32 0, i32 22
  %103 = load ptr, ptr %zWalName, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 283, ptr noundef @.str.99, i32 noundef %101, ptr noundef %103)
  br label %if.end166

if.end166:                                        ; preds = %if.then163, %if.end159
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %finished
  br label %recovery_error

recovery_error:                                   ; preds = %if.end167, %if.then85, %if.then22, %if.then13
  %104 = load ptr, ptr %pWal.addr, align 8
  %105 = load i32, ptr %iLock, align 4
  %106 = load i32, ptr %iLock, align 4
  %sub168 = sub nsw i32 3, %106
  call void @walUnlockExclusive(ptr noundef %104, i32 noundef %105, i32 noundef %sub168)
  %107 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockExclusive(ptr noundef %107, i32 noundef 4, i32 noundef 4)
  %108 = load i32, ptr %rc, align 4
  store i32 %108, ptr %retval, align 4
  br label %return

return:                                           ; preds = %recovery_error, %if.then8
  %109 = load i32, ptr %retval, align 4
  ret i32 %109
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walDecodeFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
