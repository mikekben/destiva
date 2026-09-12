; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walLimitSize(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @walIndexClose(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsLock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalClose(ptr noundef %pWal, ptr noundef %db, i32 noundef %sync_flags, i32 noundef %nBuf, ptr noundef %zBuf) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %sync_flags.addr = alloca i32, align 4
  %nBuf.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %isDelete = alloca i32, align 4
  %bPersist = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %sync_flags, ptr %sync_flags.addr, align 4
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  store i32 0, ptr %isDelete, align 4
  %1 = load ptr, ptr %zBuf.addr, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %2 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pDbFd, align 8
  %call = call i32 @sqlite3OsLock(ptr noundef %3, i32 noundef 4)
  store i32 %call, ptr %rc, align 4
  %cmp1 = icmp eq i32 0, %call
  br i1 %cmp1, label %if.then2, label %if.end21

if.then2:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 11
  %5 = load i8, ptr %exclusiveMode, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %6 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode6 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 11
  store i8 1, ptr %exclusiveMode6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %7 = load ptr, ptr %pWal.addr, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load i32, ptr %sync_flags.addr, align 4
  %10 = load i32, ptr %nBuf.addr, align 4
  %11 = load ptr, ptr %zBuf.addr, align 8
  %call7 = call i32 @sqlite3WalCheckpoint(ptr noundef %7, ptr noundef %8, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef null, ptr noundef null)
  store i32 %call7, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %if.then10, label %if.end20

if.then10:                                        ; preds = %if.end
  store i32 -1, ptr %bPersist, align 4
  %13 = load ptr, ptr %pWal.addr, align 8
  %pDbFd11 = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pDbFd11, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %14, i32 noundef 10, ptr noundef %bPersist)
  %15 = load i32, ptr %bPersist, align 4
  %cmp12 = icmp ne i32 %15, 1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  store i32 1, ptr %isDelete, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then10
  %16 = load ptr, ptr %pWal.addr, align 8
  %mxWalSize = getelementptr inbounds nuw %struct.Wal, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %mxWalSize, align 8
  %cmp15 = icmp sge i64 %17, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  %18 = load ptr, ptr %pWal.addr, align 8
  call void @walLimitSize(ptr noundef %18, i64 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.then
  %19 = load ptr, ptr %pWal.addr, align 8
  %20 = load i32, ptr %isDelete, align 4
  call void @walIndexClose(ptr noundef %19, i32 noundef %20)
  %21 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pWalFd, align 8
  call void @sqlite3OsClose(ptr noundef %22)
  %23 = load i32, ptr %isDelete, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @sqlite3BeginBenignMalloc()
  %24 = load ptr, ptr %pWal.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Wal, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pVfs, align 8
  %26 = load ptr, ptr %pWal.addr, align 8
  %zWalName = getelementptr inbounds nuw %struct.Wal, ptr %26, i32 0, i32 22
  %27 = load ptr, ptr %zWalName, align 8
  %call24 = call i32 @sqlite3OsDelete(ptr noundef %25, ptr noundef %27, i32 noundef 0)
  call void @sqlite3EndBenignMalloc()
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %28 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %apWiData, align 8
  call void @sqlite3_free(ptr noundef %29)
  %30 = load ptr, ptr %pWal.addr, align 8
  call void @sqlite3_free(ptr noundef %30)
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalCheckpoint(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
