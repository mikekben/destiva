; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }
%struct.WalCkptInfo = type { i32, [5 x i32], [8 x i8], i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSleep(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @walCkptInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walTryBeginRead(ptr noundef %pWal, ptr noundef %pChanged, i32 noundef %useWal, i32 noundef %cnt) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %pChanged.addr = alloca ptr, align 8
  %useWal.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %mxReadMark = alloca i32, align 4
  %mxI = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %mxFrame = alloca i32, align 4
  %nDelay = alloca i32, align 4
  %thisMark = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %pChanged, ptr %pChanged.addr, align 8
  store i32 %useWal, ptr %useWal.addr, align 4
  store i32 %cnt, ptr %cnt.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %cnt.addr, align 4
  %cmp = icmp sgt i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  store i32 1, ptr %nDelay, align 4
  %1 = load i32, ptr %cnt.addr, align 4
  %cmp1 = icmp sgt i32 %1, 100
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 15, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load i32, ptr %cnt.addr, align 4
  %cmp3 = icmp sge i32 %2, 10
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %3 = load i32, ptr %cnt.addr, align 4
  %sub = sub nsw i32 %3, 9
  %4 = load i32, ptr %cnt.addr, align 4
  %sub5 = sub nsw i32 %4, 9
  %mul = mul nsw i32 %sub, %sub5
  %mul6 = mul nsw i32 %mul, 39
  store i32 %mul6, ptr %nDelay, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %5 = load ptr, ptr %pWal.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVfs, align 8
  %7 = load i32, ptr %nDelay, align 4
  %call = call i32 @sqlite3OsSleep(ptr noundef %6, i32 noundef %7)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %8 = load i32, ptr %useWal.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end43, label %if.then9

if.then9:                                         ; preds = %if.end8
  %9 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 18
  %10 = load i8, ptr %bShmUnreliable, align 2
  %conv = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv, 0
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then9
  %11 = load ptr, ptr %pWal.addr, align 8
  %12 = load ptr, ptr %pChanged.addr, align 8
  %call13 = call i32 @walIndexReadHdr(ptr noundef %11, ptr noundef %12)
  store i32 %call13, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then9
  %13 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %13, 5
  br i1 %cmp15, label %if.then17, label %if.end32

if.then17:                                        ; preds = %if.end14
  %14 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %apWiData, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx, align 8
  %cmp18 = icmp eq ptr %16, null
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then17
  store i32 -1, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %if.then17
  %17 = load ptr, ptr %pWal.addr, align 8
  %call21 = call i32 @walLockShared(ptr noundef %17, i32 noundef 2)
  store i32 %call21, ptr %rc, align 4
  %cmp22 = icmp eq i32 0, %call21
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else
  %18 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockShared(ptr noundef %18, i32 noundef 2)
  store i32 -1, ptr %rc, align 4
  br label %if.end30

if.else25:                                        ; preds = %if.else
  %19 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %19, 5
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else25
  store i32 261, ptr %rc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then20
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end14
  %20 = load i32, ptr %rc, align 4
  %cmp33 = icmp ne i32 %20, 0
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.end32
  %21 = load i32, ptr %rc, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

if.else36:                                        ; preds = %if.end32
  %22 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable37 = getelementptr inbounds nuw %struct.Wal, ptr %22, i32 0, i32 18
  %23 = load i8, ptr %bShmUnreliable37, align 2
  %tobool38 = icmp ne i8 %23, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.else36
  %24 = load ptr, ptr %pWal.addr, align 8
  %25 = load ptr, ptr %pChanged.addr, align 8
  %call40 = call i32 @walBeginShmUnreliable(ptr noundef %24, ptr noundef %25)
  store i32 %call40, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.else36
  br label %if.end42

if.end42:                                         ; preds = %if.end41
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end8
  %26 = load ptr, ptr %pWal.addr, align 8
  %call44 = call ptr @walCkptInfo(ptr noundef %26)
  store ptr %call44, ptr %pInfo, align 8
  %27 = load i32, ptr %useWal.addr, align 4
  %tobool45 = icmp ne i32 %27, 0
  br i1 %tobool45, label %if.end66, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end43
  %28 = load ptr, ptr %pInfo, align 8
  %nBackfill = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %28, i32 0, i32 0
  %29 = load volatile i32, ptr %nBackfill, align 4
  %30 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %30, i32 0, i32 19
  %mxFrame46 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %31 = load i32, ptr %mxFrame46, align 8
  %cmp47 = icmp eq i32 %29, %31
  br i1 %cmp47, label %if.then49, label %if.end66

if.then49:                                        ; preds = %land.lhs.true
  %32 = load ptr, ptr %pWal.addr, align 8
  %call50 = call i32 @walLockShared(ptr noundef %32, i32 noundef 3)
  store i32 %call50, ptr %rc, align 4
  %33 = load ptr, ptr %pWal.addr, align 8
  call void @walShmBarrier(ptr noundef %33)
  %34 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %34, 0
  br i1 %cmp51, label %if.then53, label %if.else60

if.then53:                                        ; preds = %if.then49
  %35 = load ptr, ptr %pWal.addr, align 8
  %call54 = call ptr @walIndexHdr(ptr noundef %35)
  %36 = load ptr, ptr %pWal.addr, align 8
  %hdr55 = getelementptr inbounds nuw %struct.Wal, ptr %36, i32 0, i32 19
  %call56 = call i32 @memcmp(ptr noundef %call54, ptr noundef %hdr55, i64 noundef 48) #2
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then53
  %37 = load ptr, ptr %pWal.addr, align 8
  call void @walUnlockShared(ptr noundef %37, i32 noundef 3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then53
  %38 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %38, i32 0, i32 9
  store i16 0, ptr %readLock, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.else60:                                        ; preds = %if.then49
  %39 = load i32, ptr %rc, align 4
  %cmp61 = icmp ne i32 %39, 5
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else60
  %40 = load i32, ptr %rc, align 4
  store i32 %40, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %if.else60
  br label %if.end65

if.end65:                                         ; preds = %if.end64
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %land.lhs.true, %if.end43
  store i32 0, ptr %mxReadMark, align 4
  store i32 0, ptr %mxI, align 4
  %41 = load ptr, ptr %pWal.addr, align 8
  %hdr67 = getelementptr inbounds nuw %struct.Wal, ptr %41, i32 0, i32 19
  %mxFrame68 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr67, i32 0, i32 6
  %42 = load i32, ptr %mxFrame68, align 8
  store i32 %42, ptr %mxFrame, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end66
  %43 = load i32, ptr %i, align 4
  %cmp69 = icmp slt i32 %43, 5
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %pInfo, align 8
  %aReadMark = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %44, i32 0, i32 1
  %arraydecay = getelementptr inbounds [5 x i32], ptr %aReadMark, i64 0, i64 0
  %45 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %45 to i64
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext
  %46 = load volatile i32, ptr %add.ptr, align 4
  store i32 %46, ptr %thisMark, align 4
  %47 = load i32, ptr %mxReadMark, align 4
  %48 = load i32, ptr %thisMark, align 4
  %cmp71 = icmp ule i32 %47, %48
  br i1 %cmp71, label %land.lhs.true73, label %if.end77

land.lhs.true73:                                  ; preds = %for.body
  %49 = load i32, ptr %thisMark, align 4
  %50 = load i32, ptr %mxFrame, align 4
  %cmp74 = icmp ule i32 %49, %50
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %land.lhs.true73
  %51 = load i32, ptr %thisMark, align 4
  store i32 %51, ptr %mxReadMark, align 4
  %52 = load i32, ptr %i, align 4
  store i32 %52, ptr %mxI, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %land.lhs.true73, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end77
  %53 = load i32, ptr %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %54 = load ptr, ptr %pWal.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %54, i32 0, i32 14
  %55 = load i8, ptr %readOnly, align 2
  %conv78 = zext i8 %55 to i32
  %and = and i32 %conv78, 2
  %cmp79 = icmp eq i32 %and, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end109

land.lhs.true81:                                  ; preds = %for.end
  %56 = load i32, ptr %mxReadMark, align 4
  %57 = load i32, ptr %mxFrame, align 4
  %cmp82 = icmp ult i32 %56, %57
  br i1 %cmp82, label %if.then86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true81
  %58 = load i32, ptr %mxI, align 4
  %cmp84 = icmp eq i32 %58, 0
  br i1 %cmp84, label %if.then86, label %if.end109

if.then86:                                        ; preds = %lor.lhs.false, %land.lhs.true81
  store i32 1, ptr %i, align 4
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc106, %if.then86
  %59 = load i32, ptr %i, align 4
  %cmp88 = icmp slt i32 %59, 5
  br i1 %cmp88, label %for.body90, label %for.end108

for.body90:                                       ; preds = %for.cond87
  %60 = load ptr, ptr %pWal.addr, align 8
  %61 = load i32, ptr %i, align 4
  %add = add nsw i32 3, %61
  %call91 = call i32 @walLockExclusive(ptr noundef %60, i32 noundef %add, i32 noundef 1)
  store i32 %call91, ptr %rc, align 4
  %62 = load i32, ptr %rc, align 4
  %cmp92 = icmp eq i32 %62, 0
  br i1 %cmp92, label %if.then94, label %if.else100

if.then94:                                        ; preds = %for.body90
  %63 = load i32, ptr %mxFrame, align 4
  %64 = load ptr, ptr %pInfo, align 8
  %aReadMark95 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %64, i32 0, i32 1
  %arraydecay96 = getelementptr inbounds [5 x i32], ptr %aReadMark95, i64 0, i64 0
  %65 = load i32, ptr %i, align 4
  %idx.ext97 = sext i32 %65 to i64
  %add.ptr98 = getelementptr inbounds i32, ptr %arraydecay96, i64 %idx.ext97
  store volatile i32 %63, ptr %add.ptr98, align 4
  store i32 %63, ptr %mxReadMark, align 4
  %66 = load i32, ptr %i, align 4
  store i32 %66, ptr %mxI, align 4
  %67 = load ptr, ptr %pWal.addr, align 8
  %68 = load i32, ptr %i, align 4
  %add99 = add nsw i32 3, %68
  call void @walUnlockExclusive(ptr noundef %67, i32 noundef %add99, i32 noundef 1)
  br label %for.end108

if.else100:                                       ; preds = %for.body90
  %69 = load i32, ptr %rc, align 4
  %cmp101 = icmp ne i32 %69, 5
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.else100
  %70 = load i32, ptr %rc, align 4
  store i32 %70, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.else100
  br label %if.end105

if.end105:                                        ; preds = %if.end104
  br label %for.inc106

for.inc106:                                       ; preds = %if.end105
  %71 = load i32, ptr %i, align 4
  %inc107 = add nsw i32 %71, 1
  store i32 %inc107, ptr %i, align 4
  br label %for.cond87, !llvm.loop !8

for.end108:                                       ; preds = %if.then94, %for.cond87
  br label %if.end109

if.end109:                                        ; preds = %for.end108, %lor.lhs.false, %for.end
  %72 = load i32, ptr %mxI, align 4
  %cmp110 = icmp eq i32 %72, 0
  br i1 %cmp110, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.end109
  %73 = load i32, ptr %rc, align 4
  %cmp113 = icmp eq i32 %73, 5
  %74 = zext i1 %cmp113 to i64
  %cond = select i1 %cmp113, i32 -1, i32 1288
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.end109
  %75 = load ptr, ptr %pWal.addr, align 8
  %76 = load i32, ptr %mxI, align 4
  %add116 = add nsw i32 3, %76
  %call117 = call i32 @walLockShared(ptr noundef %75, i32 noundef %add116)
  store i32 %call117, ptr %rc, align 4
  %77 = load i32, ptr %rc, align 4
  %tobool118 = icmp ne i32 %77, 0
  br i1 %tobool118, label %if.then119, label %if.end123

if.then119:                                       ; preds = %if.end115
  %78 = load i32, ptr %rc, align 4
  %cmp120 = icmp eq i32 %78, 5
  br i1 %cmp120, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then119
  br label %cond.end

cond.false:                                       ; preds = %if.then119
  %79 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond122 = phi i32 [ -1, %cond.true ], [ %79, %cond.false ]
  store i32 %cond122, ptr %retval, align 4
  br label %return

if.end123:                                        ; preds = %if.end115
  %80 = load ptr, ptr %pInfo, align 8
  %nBackfill124 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %80, i32 0, i32 0
  %81 = load volatile i32, ptr %nBackfill124, align 4
  %add125 = add i32 %81, 1
  %82 = load ptr, ptr %pWal.addr, align 8
  %minFrame = getelementptr inbounds nuw %struct.Wal, ptr %82, i32 0, i32 20
  store i32 %add125, ptr %minFrame, align 8
  %83 = load ptr, ptr %pWal.addr, align 8
  call void @walShmBarrier(ptr noundef %83)
  %84 = load ptr, ptr %pInfo, align 8
  %aReadMark126 = getelementptr inbounds nuw %struct.WalCkptInfo, ptr %84, i32 0, i32 1
  %arraydecay127 = getelementptr inbounds [5 x i32], ptr %aReadMark126, i64 0, i64 0
  %85 = load i32, ptr %mxI, align 4
  %idx.ext128 = sext i32 %85 to i64
  %add.ptr129 = getelementptr inbounds i32, ptr %arraydecay127, i64 %idx.ext128
  %86 = load volatile i32, ptr %add.ptr129, align 4
  %87 = load i32, ptr %mxReadMark, align 4
  %cmp130 = icmp ne i32 %86, %87
  br i1 %cmp130, label %if.then137, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end123
  %88 = load ptr, ptr %pWal.addr, align 8
  %call133 = call ptr @walIndexHdr(ptr noundef %88)
  %89 = load ptr, ptr %pWal.addr, align 8
  %hdr134 = getelementptr inbounds nuw %struct.Wal, ptr %89, i32 0, i32 19
  %call135 = call i32 @memcmp(ptr noundef %call133, ptr noundef %hdr134, i64 noundef 48) #2
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then137, label %if.else139

if.then137:                                       ; preds = %lor.lhs.false132, %if.end123
  %90 = load ptr, ptr %pWal.addr, align 8
  %91 = load i32, ptr %mxI, align 4
  %add138 = add nsw i32 3, %91
  call void @walUnlockShared(ptr noundef %90, i32 noundef %add138)
  store i32 -1, ptr %retval, align 4
  br label %return

if.else139:                                       ; preds = %lor.lhs.false132
  %92 = load i32, ptr %mxI, align 4
  %conv140 = trunc i32 %92 to i16
  %93 = load ptr, ptr %pWal.addr, align 8
  %readLock141 = getelementptr inbounds nuw %struct.Wal, ptr %93, i32 0, i32 9
  store i16 %conv140, ptr %readLock141, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.else139
  %94 = load i32, ptr %rc, align 4
  store i32 %94, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end142, %if.then137, %cond.end, %if.then112, %if.then103, %if.then63, %if.end59, %if.then58, %if.then39, %if.then35, %if.then2
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexReadHdr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walBeginShmUnreliable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walShmBarrier(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

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
