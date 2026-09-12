; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walRewriteChecksums(ptr noundef %pWal, i32 noundef %iLast) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %iLast.addr = alloca i32, align 4
  %szPage = alloca i32, align 4
  %rc = alloca i32, align 4
  %aBuf = alloca ptr, align 8
  %aFrame = alloca [24 x i8], align 16
  %iRead = alloca i32, align 4
  %iCksumOff = alloca i64, align 8
  %iOff = alloca i64, align 8
  %iPgno = alloca i32, align 4
  %nDbSize = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iLast, ptr %iLast.addr, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %szPage1 = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %szPage1, align 8
  store i32 %1, ptr %szPage, align 4
  store i32 0, ptr %rc, align 4
  %2 = load i32, ptr %szPage, align 4
  %add = add nsw i32 %2, 24
  %call = call ptr @sqlite3_malloc(i32 noundef %add)
  store ptr %call, ptr %aBuf, align 8
  %3 = load ptr, ptr %aBuf, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pWal.addr, align 8
  %iReCksum = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 21
  %5 = load i32, ptr %iReCksum, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i64 24, ptr %iCksumOff, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %pWal.addr, align 8
  %iReCksum4 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 21
  %7 = load i32, ptr %iReCksum4, align 4
  %sub = sub i32 %7, 1
  %sub5 = sub i32 %sub, 1
  %conv = zext i32 %sub5 to i64
  %8 = load i32, ptr %szPage, align 4
  %add6 = add nsw i32 %8, 24
  %conv7 = sext i32 %add6 to i64
  %mul = mul nsw i64 %conv, %conv7
  %add8 = add nsw i64 32, %mul
  %add9 = add nsw i64 %add8, 16
  store i64 %add9, ptr %iCksumOff, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %9 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pWalFd, align 8
  %11 = load ptr, ptr %aBuf, align 8
  %12 = load i64, ptr %iCksumOff, align 8
  %call11 = call i32 @sqlite3OsRead(ptr noundef %10, ptr noundef %11, i32 noundef 8, i64 noundef %12)
  store i32 %call11, ptr %rc, align 4
  %13 = load ptr, ptr %aBuf, align 8
  %call12 = call i32 @sqlite3Get4byte(ptr noundef %13)
  %14 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 8
  %arrayidx = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store i32 %call12, ptr %arrayidx, align 8
  %15 = load ptr, ptr %aBuf, align 8
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %call14 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx13)
  %16 = load ptr, ptr %pWal.addr, align 8
  %hdr15 = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 19
  %aFrameCksum16 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr15, i32 0, i32 8
  %arrayidx17 = getelementptr inbounds [2 x i32], ptr %aFrameCksum16, i64 0, i64 1
  store i32 %call14, ptr %arrayidx17, align 4
  %17 = load ptr, ptr %pWal.addr, align 8
  %iReCksum18 = getelementptr inbounds nuw %struct.Wal, ptr %17, i32 0, i32 21
  %18 = load i32, ptr %iReCksum18, align 4
  store i32 %18, ptr %iRead, align 4
  %19 = load ptr, ptr %pWal.addr, align 8
  %iReCksum19 = getelementptr inbounds nuw %struct.Wal, ptr %19, i32 0, i32 21
  store i32 0, ptr %iReCksum19, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %20 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %20, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load i32, ptr %iRead, align 4
  %22 = load i32, ptr %iLast.addr, align 4
  %cmp22 = icmp ule i32 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %24 = load i32, ptr %iRead, align 4
  %sub24 = sub i32 %24, 1
  %conv25 = zext i32 %sub24 to i64
  %25 = load i32, ptr %szPage, align 4
  %add26 = add nsw i32 %25, 24
  %conv27 = sext i32 %add26 to i64
  %mul28 = mul nsw i64 %conv25, %conv27
  %add29 = add nsw i64 32, %mul28
  store i64 %add29, ptr %iOff, align 8
  %26 = load ptr, ptr %pWal.addr, align 8
  %pWalFd30 = getelementptr inbounds nuw %struct.Wal, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pWalFd30, align 8
  %28 = load ptr, ptr %aBuf, align 8
  %29 = load i32, ptr %szPage, align 4
  %add31 = add nsw i32 %29, 24
  %30 = load i64, ptr %iOff, align 8
  %call32 = call i32 @sqlite3OsRead(ptr noundef %27, ptr noundef %28, i32 noundef %add31, i64 noundef %30)
  store i32 %call32, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %31, 0
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %for.body
  %32 = load ptr, ptr %aBuf, align 8
  %call36 = call i32 @sqlite3Get4byte(ptr noundef %32)
  store i32 %call36, ptr %iPgno, align 4
  %33 = load ptr, ptr %aBuf, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %33, i64 4
  %call38 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx37)
  store i32 %call38, ptr %nDbSize, align 4
  %34 = load ptr, ptr %pWal.addr, align 8
  %35 = load i32, ptr %iPgno, align 4
  %36 = load i32, ptr %nDbSize, align 4
  %37 = load ptr, ptr %aBuf, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %37, i64 24
  %arraydecay = getelementptr inbounds [24 x i8], ptr %aFrame, i64 0, i64 0
  call void @walEncodeFrame(ptr noundef %34, i32 noundef %35, i32 noundef %36, ptr noundef %arrayidx39, ptr noundef %arraydecay)
  %38 = load ptr, ptr %pWal.addr, align 8
  %pWalFd40 = getelementptr inbounds nuw %struct.Wal, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pWalFd40, align 8
  %arraydecay41 = getelementptr inbounds [24 x i8], ptr %aFrame, i64 0, i64 0
  %40 = load i64, ptr %iOff, align 8
  %call42 = call i32 @sqlite3OsWrite(ptr noundef %39, ptr noundef %arraydecay41, i32 noundef 24, i64 noundef %40)
  store i32 %call42, ptr %rc, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %41 = load i32, ptr %iRead, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %iRead, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %42 = load ptr, ptr %aBuf, align 8
  call void @sqlite3_free(ptr noundef %42)
  %43 = load i32, ptr %rc, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walEncodeFrame(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
