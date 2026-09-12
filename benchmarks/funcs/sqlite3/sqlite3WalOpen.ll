; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walIndexClose(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalOpen(ptr noundef %pVfs, ptr noundef %pDbFd, ptr noundef %zWalName, i32 noundef %bNoShm, i64 noundef %mxWalSize, ptr noundef %ppWal) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %pDbFd.addr = alloca ptr, align 8
  %zWalName.addr = alloca ptr, align 8
  %bNoShm.addr = alloca i32, align 4
  %mxWalSize.addr = alloca i64, align 8
  %ppWal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pRet = alloca ptr, align 8
  %flags = alloca i32, align 4
  %iDC = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %pDbFd, ptr %pDbFd.addr, align 8
  store ptr %zWalName, ptr %zWalName.addr, align 8
  store i32 %bNoShm, ptr %bNoShm.addr, align 4
  store i64 %mxWalSize, ptr %mxWalSize.addr, align 8
  store ptr %ppWal, ptr %ppWal.addr, align 8
  %0 = load ptr, ptr %ppWal.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %pVfs.addr, align 8
  %szOsFile = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %szOsFile, align 4
  %conv = sext i32 %2 to i64
  %add = add i64 144, %conv
  %call = call ptr @sqlite3MallocZero(i64 noundef %add)
  store ptr %call, ptr %pRet, align 8
  %3 = load ptr, ptr %pRet, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pVfs.addr, align 8
  %5 = load ptr, ptr %pRet, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 0
  store ptr %4, ptr %pVfs1, align 8
  %6 = load ptr, ptr %pRet, align 8
  %arrayidx = getelementptr inbounds %struct.Wal, ptr %6, i64 1
  %7 = load ptr, ptr %pRet, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 2
  store ptr %arrayidx, ptr %pWalFd, align 8
  %8 = load ptr, ptr %pDbFd.addr, align 8
  %9 = load ptr, ptr %pRet, align 8
  %pDbFd2 = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 1
  store ptr %8, ptr %pDbFd2, align 8
  %10 = load ptr, ptr %pRet, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %10, i32 0, i32 9
  store i16 -1, ptr %readLock, align 4
  %11 = load i64, ptr %mxWalSize.addr, align 8
  %12 = load ptr, ptr %pRet, align 8
  %mxWalSize3 = getelementptr inbounds nuw %struct.Wal, ptr %12, i32 0, i32 4
  store i64 %11, ptr %mxWalSize3, align 8
  %13 = load ptr, ptr %zWalName.addr, align 8
  %14 = load ptr, ptr %pRet, align 8
  %zWalName4 = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 22
  store ptr %13, ptr %zWalName4, align 8
  %15 = load ptr, ptr %pRet, align 8
  %syncHeader = getelementptr inbounds nuw %struct.Wal, ptr %15, i32 0, i32 16
  store i8 1, ptr %syncHeader, align 4
  %16 = load ptr, ptr %pRet, align 8
  %padToSectorBoundary = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 17
  store i8 1, ptr %padToSectorBoundary, align 1
  %17 = load i32, ptr %bNoShm.addr, align 4
  %tobool5 = icmp ne i32 %17, 0
  %18 = zext i1 %tobool5 to i64
  %cond = select i1 %tobool5, i32 2, i32 0
  %conv6 = trunc i32 %cond to i8
  %19 = load ptr, ptr %pRet, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %19, i32 0, i32 11
  store i8 %conv6, ptr %exclusiveMode, align 1
  store i32 524294, ptr %flags, align 4
  %20 = load ptr, ptr %pVfs.addr, align 8
  %21 = load ptr, ptr %zWalName.addr, align 8
  %22 = load ptr, ptr %pRet, align 8
  %pWalFd7 = getelementptr inbounds nuw %struct.Wal, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pWalFd7, align 8
  %24 = load i32, ptr %flags, align 4
  %call8 = call i32 @sqlite3OsOpen(ptr noundef %20, ptr noundef %21, ptr noundef %23, i32 noundef %24, ptr noundef %flags)
  store i32 %call8, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 1
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %pRet, align 8
  %readOnly = getelementptr inbounds nuw %struct.Wal, ptr %27, i32 0, i32 14
  store i8 1, ptr %readOnly, align 2
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %28 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %28, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %29 = load ptr, ptr %pRet, align 8
  call void @walIndexClose(ptr noundef %29, i32 noundef 0)
  %30 = load ptr, ptr %pRet, align 8
  %pWalFd16 = getelementptr inbounds nuw %struct.Wal, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %pWalFd16, align 8
  call void @sqlite3OsClose(ptr noundef %31)
  %32 = load ptr, ptr %pRet, align 8
  call void @sqlite3_free(ptr noundef %32)
  br label %if.end28

if.else:                                          ; preds = %if.end12
  %33 = load ptr, ptr %pDbFd.addr, align 8
  %call17 = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %33)
  store i32 %call17, ptr %iDC, align 4
  %34 = load i32, ptr %iDC, align 4
  %and18 = and i32 %34, 1024
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else
  %35 = load ptr, ptr %pRet, align 8
  %syncHeader21 = getelementptr inbounds nuw %struct.Wal, ptr %35, i32 0, i32 16
  store i8 0, ptr %syncHeader21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.else
  %36 = load i32, ptr %iDC, align 4
  %and23 = and i32 %36, 4096
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  %37 = load ptr, ptr %pRet, align 8
  %padToSectorBoundary26 = getelementptr inbounds nuw %struct.Wal, ptr %37, i32 0, i32 17
  store i8 0, ptr %padToSectorBoundary26, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end22
  %38 = load ptr, ptr %pRet, align 8
  %39 = load ptr, ptr %ppWal.addr, align 8
  store ptr %38, ptr %39, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  %40 = load i32, ptr %rc, align 4
  store i32 %40, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
