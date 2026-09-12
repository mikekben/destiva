; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @walIndexHdr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walBeginShmUnreliable(ptr noundef %pWal, ptr noundef %pChanged) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %pChanged.addr = alloca ptr, align 8
  %szWal = alloca i64, align 8
  %iOffset = alloca i64, align 8
  %aBuf = alloca [32 x i8], align 16
  %aFrame = alloca ptr, align 8
  %szFrame = alloca i32, align 4
  %aData = alloca ptr, align 8
  %pDummy = alloca ptr, align 8
  %rc = alloca i32, align 4
  %aSaveCksum = alloca [2 x i32], align 4
  %pgno = alloca i32, align 4
  %nTruncate = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %pChanged, ptr %pChanged.addr, align 8
  store ptr null, ptr %aFrame, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @walLockShared(ptr noundef %0, i32 noundef 3)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %begin_unreliable_shm_out

if.end3:                                          ; preds = %entry
  %3 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 9
  store i16 0, ptr %readLock, align 4
  %4 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pDbFd, align 8
  %call4 = call i32 @sqlite3OsShmMap(ptr noundef %5, i32 noundef 0, i32 noundef 32768, i32 noundef 0, ptr noundef %pDummy)
  store i32 %call4, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %6, 1288
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %7 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %7, 8
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then6
  br label %cond.end

cond.false:                                       ; preds = %if.then6
  %8 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  br label %begin_unreliable_shm_out

if.end8:                                          ; preds = %if.end3
  %9 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 19
  %10 = load ptr, ptr %pWal.addr, align 8
  %call9 = call ptr @walIndexHdr(ptr noundef %10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %hdr, ptr align 1 %call9, i64 48, i1 false)
  %11 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pWalFd, align 8
  %call10 = call i32 @sqlite3OsFileSize(ptr noundef %12, ptr noundef %szWal)
  store i32 %call10, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %13, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end8
  br label %begin_unreliable_shm_out

if.end13:                                         ; preds = %if.end8
  %14 = load i64, ptr %szWal, align 8
  %cmp14 = icmp slt i64 %14, 32
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %15 = load ptr, ptr %pChanged.addr, align 8
  store i32 1, ptr %15, align 4
  %16 = load ptr, ptr %pWal.addr, align 8
  %hdr16 = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr16, i32 0, i32 6
  %17 = load i32, ptr %mxFrame, align 8
  %cmp17 = icmp eq i32 %17, 0
  %18 = zext i1 %cmp17 to i64
  %cond18 = select i1 %cmp17, i32 0, i32 -1
  store i32 %cond18, ptr %rc, align 4
  br label %begin_unreliable_shm_out

if.end19:                                         ; preds = %if.end13
  %19 = load ptr, ptr %pWal.addr, align 8
  %pWalFd20 = getelementptr inbounds nuw %struct.Wal, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pWalFd20, align 8
  %arraydecay = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 0
  %call21 = call i32 @sqlite3OsRead(ptr noundef %20, ptr noundef %arraydecay, i32 noundef 32, i64 noundef 0)
  store i32 %call21, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp22 = icmp ne i32 %21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %begin_unreliable_shm_out

if.end24:                                         ; preds = %if.end19
  %22 = load ptr, ptr %pWal.addr, align 8
  %hdr25 = getelementptr inbounds nuw %struct.Wal, ptr %22, i32 0, i32 19
  %aSalt = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr25, i32 0, i32 9
  %arrayidx = getelementptr inbounds [32 x i8], ptr %aBuf, i64 0, i64 16
  %call26 = call i32 @memcmp(ptr noundef %aSalt, ptr noundef %arrayidx, i64 noundef 8) #3
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i32 -1, ptr %rc, align 4
  br label %begin_unreliable_shm_out

if.end28:                                         ; preds = %if.end24
  %23 = load ptr, ptr %pWal.addr, align 8
  %hdr29 = getelementptr inbounds nuw %struct.Wal, ptr %23, i32 0, i32 19
  %szPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr29, i32 0, i32 5
  %24 = load i16, ptr %szPage, align 2
  %conv = zext i16 %24 to i32
  %add = add nsw i32 %conv, 24
  store i32 %add, ptr %szFrame, align 4
  %25 = load i32, ptr %szFrame, align 4
  %conv30 = sext i32 %25 to i64
  %call31 = call ptr @sqlite3_malloc64(i64 noundef %conv30)
  store ptr %call31, ptr %aFrame, align 8
  %26 = load ptr, ptr %aFrame, align 8
  %cmp32 = icmp eq ptr %26, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  store i32 7, ptr %rc, align 4
  br label %begin_unreliable_shm_out

if.end35:                                         ; preds = %if.end28
  %27 = load ptr, ptr %aFrame, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %27, i64 24
  store ptr %arrayidx36, ptr %aData, align 8
  %28 = load ptr, ptr %pWal.addr, align 8
  %hdr37 = getelementptr inbounds nuw %struct.Wal, ptr %28, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr37, i32 0, i32 8
  %arrayidx38 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  %29 = load i32, ptr %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds [2 x i32], ptr %aSaveCksum, i64 0, i64 0
  store i32 %29, ptr %arrayidx39, align 4
  %30 = load ptr, ptr %pWal.addr, align 8
  %hdr40 = getelementptr inbounds nuw %struct.Wal, ptr %30, i32 0, i32 19
  %aFrameCksum41 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr40, i32 0, i32 8
  %arrayidx42 = getelementptr inbounds [2 x i32], ptr %aFrameCksum41, i64 0, i64 1
  %31 = load i32, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr inbounds [2 x i32], ptr %aSaveCksum, i64 0, i64 1
  store i32 %31, ptr %arrayidx43, align 4
  %32 = load ptr, ptr %pWal.addr, align 8
  %hdr44 = getelementptr inbounds nuw %struct.Wal, ptr %32, i32 0, i32 19
  %mxFrame45 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr44, i32 0, i32 6
  %33 = load i32, ptr %mxFrame45, align 8
  %add46 = add i32 %33, 1
  %sub = sub i32 %add46, 1
  %conv47 = zext i32 %sub to i64
  %34 = load ptr, ptr %pWal.addr, align 8
  %hdr48 = getelementptr inbounds nuw %struct.Wal, ptr %34, i32 0, i32 19
  %szPage49 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr48, i32 0, i32 5
  %35 = load i16, ptr %szPage49, align 2
  %conv50 = zext i16 %35 to i32
  %add51 = add nsw i32 %conv50, 24
  %conv52 = sext i32 %add51 to i64
  %mul = mul nsw i64 %conv47, %conv52
  %add53 = add nsw i64 32, %mul
  store i64 %add53, ptr %iOffset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end35
  %36 = load i64, ptr %iOffset, align 8
  %37 = load i32, ptr %szFrame, align 4
  %conv54 = sext i32 %37 to i64
  %add55 = add nsw i64 %36, %conv54
  %38 = load i64, ptr %szWal, align 8
  %cmp56 = icmp sle i64 %add55, %38
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load ptr, ptr %pWal.addr, align 8
  %pWalFd58 = getelementptr inbounds nuw %struct.Wal, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %pWalFd58, align 8
  %41 = load ptr, ptr %aFrame, align 8
  %42 = load i32, ptr %szFrame, align 4
  %43 = load i64, ptr %iOffset, align 8
  %call59 = call i32 @sqlite3OsRead(ptr noundef %40, ptr noundef %41, i32 noundef %42, i64 noundef %43)
  store i32 %call59, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp60 = icmp ne i32 %44, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.body
  br label %for.end

if.end63:                                         ; preds = %for.body
  %45 = load ptr, ptr %pWal.addr, align 8
  %46 = load ptr, ptr %aData, align 8
  %47 = load ptr, ptr %aFrame, align 8
  %call64 = call i32 @walDecodeFrame(ptr noundef %45, ptr noundef %pgno, ptr noundef %nTruncate, ptr noundef %46, ptr noundef %47)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end67, label %if.then66

if.then66:                                        ; preds = %if.end63
  br label %for.end

if.end67:                                         ; preds = %if.end63
  %48 = load i32, ptr %nTruncate, align 4
  %tobool68 = icmp ne i32 %48, 0
  br i1 %tobool68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  store i32 -1, ptr %rc, align 4
  br label %for.end

if.end70:                                         ; preds = %if.end67
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %49 = load i32, ptr %szFrame, align 4
  %conv71 = sext i32 %49 to i64
  %50 = load i64, ptr %iOffset, align 8
  %add72 = add nsw i64 %50, %conv71
  store i64 %add72, ptr %iOffset, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then69, %if.then66, %if.then62, %for.cond
  %arrayidx73 = getelementptr inbounds [2 x i32], ptr %aSaveCksum, i64 0, i64 0
  %51 = load i32, ptr %arrayidx73, align 4
  %52 = load ptr, ptr %pWal.addr, align 8
  %hdr74 = getelementptr inbounds nuw %struct.Wal, ptr %52, i32 0, i32 19
  %aFrameCksum75 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr74, i32 0, i32 8
  %arrayidx76 = getelementptr inbounds [2 x i32], ptr %aFrameCksum75, i64 0, i64 0
  store i32 %51, ptr %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds [2 x i32], ptr %aSaveCksum, i64 0, i64 1
  %53 = load i32, ptr %arrayidx77, align 4
  %54 = load ptr, ptr %pWal.addr, align 8
  %hdr78 = getelementptr inbounds nuw %struct.Wal, ptr %54, i32 0, i32 19
  %aFrameCksum79 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr78, i32 0, i32 8
  %arrayidx80 = getelementptr inbounds [2 x i32], ptr %aFrameCksum79, i64 0, i64 1
  store i32 %53, ptr %arrayidx80, align 4
  br label %begin_unreliable_shm_out

begin_unreliable_shm_out:                         ; preds = %for.end, %if.then34, %if.then27, %if.then23, %if.then15, %if.then12, %cond.end, %if.end
  %55 = load ptr, ptr %aFrame, align 8
  call void @sqlite3_free(ptr noundef %55)
  %56 = load i32, ptr %rc, align 4
  %cmp81 = icmp ne i32 %56, 0
  br i1 %cmp81, label %if.then83, label %if.end94

if.then83:                                        ; preds = %begin_unreliable_shm_out
  store i32 0, ptr %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc92, %if.then83
  %57 = load i32, ptr %i, align 4
  %58 = load ptr, ptr %pWal.addr, align 8
  %nWiData = getelementptr inbounds nuw %struct.Wal, ptr %58, i32 0, i32 5
  %59 = load i32, ptr %nWiData, align 8
  %cmp85 = icmp slt i32 %57, %59
  br i1 %cmp85, label %for.body87, label %for.end93

for.body87:                                       ; preds = %for.cond84
  %60 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %60, i32 0, i32 7
  %61 = load ptr, ptr %apWiData, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom = sext i32 %62 to i64
  %arrayidx88 = getelementptr inbounds ptr, ptr %61, i64 %idxprom
  %63 = load ptr, ptr %arrayidx88, align 8
  call void @sqlite3_free(ptr noundef %63)
  %64 = load ptr, ptr %pWal.addr, align 8
  %apWiData89 = getelementptr inbounds nuw %struct.Wal, ptr %64, i32 0, i32 7
  %65 = load ptr, ptr %apWiData89, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %66 to i64
  %arrayidx91 = getelementptr inbounds ptr, ptr %65, i64 %idxprom90
  store ptr null, ptr %arrayidx91, align 8
  br label %for.inc92

for.inc92:                                        ; preds = %for.body87
  %67 = load i32, ptr %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond84, !llvm.loop !8

for.end93:                                        ; preds = %for.cond84
  %68 = load ptr, ptr %pWal.addr, align 8
  %bShmUnreliable = getelementptr inbounds nuw %struct.Wal, ptr %68, i32 0, i32 18
  store i8 0, ptr %bShmUnreliable, align 2
  %69 = load ptr, ptr %pWal.addr, align 8
  call void @sqlite3WalEndReadTransaction(ptr noundef %69)
  %70 = load ptr, ptr %pChanged.addr, align 8
  store i32 1, ptr %70, align 4
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %begin_unreliable_shm_out
  %71 = load i32, ptr %rc, align 4
  ret i32 %71
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsShmMap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @walDecodeFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WalEndReadTransaction(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
