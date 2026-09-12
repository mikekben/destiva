; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixFileControl(ptr noundef %id, i32 noundef %op, ptr noundef %pArg) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %pArg.addr = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zTFile = alloca ptr, align 8
  %newLimit = alloca i64, align 8
  %rc18 = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load i32, ptr %op.addr, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 6, label %sw.bb2
    i32 5, label %sw.bb3
    i32 10, label %sw.bb4
    i32 13, label %sw.bb5
    i32 12, label %sw.bb6
    i32 16, label %sw.bb8
    i32 20, label %sw.bb15
    i32 18, label %sw.bb17
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %pFile, align 8
  %eFileLock = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 4
  %3 = load i8, ptr %eFileLock, align 4
  %conv = zext i8 %3 to i32
  %4 = load ptr, ptr %pArg.addr, align 8
  store i32 %conv, ptr %4, align 4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %pFile, align 8
  %lastErrno = getelementptr inbounds nuw %struct.unixFile, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %lastErrno, align 8
  %7 = load ptr, ptr %pArg.addr, align 8
  store i32 %6, ptr %7, align 4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  %8 = load ptr, ptr %pArg.addr, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %pFile, align 8
  %szChunk = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 11
  store i32 %9, ptr %szChunk, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %11 = load ptr, ptr %pFile, align 8
  %12 = load ptr, ptr %pArg.addr, align 8
  %13 = load i64, ptr %12, align 8
  %call = call i32 @fcntlSizeHint(ptr noundef %11, i64 noundef %13)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %15 = load ptr, ptr %pFile, align 8
  %16 = load ptr, ptr %pArg.addr, align 8
  call void @unixModeBit(ptr noundef %15, i8 noundef zeroext 4, ptr noundef %16)
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %17 = load ptr, ptr %pFile, align 8
  %18 = load ptr, ptr %pArg.addr, align 8
  call void @unixModeBit(ptr noundef %17, i8 noundef zeroext 16, ptr noundef %18)
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  %19 = load ptr, ptr %pFile, align 8
  %pVfs = getelementptr inbounds nuw %struct.unixFile, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pVfs, align 8
  %zName = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %zName, align 8
  %call7 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %21)
  %22 = load ptr, ptr %pArg.addr, align 8
  store ptr %call7, ptr %22, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  %23 = load ptr, ptr %pFile, align 8
  %pVfs9 = getelementptr inbounds nuw %struct.unixFile, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pVfs9, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %mxPathname, align 8
  %conv10 = sext i32 %25 to i64
  %call11 = call ptr @sqlite3_malloc64(i64 noundef %conv10)
  store ptr %call11, ptr %zTFile, align 8
  %26 = load ptr, ptr %zTFile, align 8
  %tobool = icmp ne ptr %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb8
  %27 = load ptr, ptr %pFile, align 8
  %pVfs12 = getelementptr inbounds nuw %struct.unixFile, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %pVfs12, align 8
  %mxPathname13 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %mxPathname13, align 8
  %30 = load ptr, ptr %zTFile, align 8
  %call14 = call i32 @unixGetTempname(i32 noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %zTFile, align 8
  %32 = load ptr, ptr %pArg.addr, align 8
  store ptr %31, ptr %32, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb15:                                          ; preds = %entry
  %33 = load ptr, ptr %pFile, align 8
  %call16 = call i32 @fileHasMoved(ptr noundef %33)
  %34 = load ptr, ptr %pArg.addr, align 8
  store i32 %call16, ptr %34, align 4
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb17:                                          ; preds = %entry
  %35 = load ptr, ptr %pArg.addr, align 8
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %newLimit, align 8
  store i32 0, ptr %rc18, align 4
  %37 = load i64, ptr %newLimit, align 8
  %38 = load i64, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 20), align 8
  %cmp = icmp sgt i64 %37, %38
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %sw.bb17
  %39 = load i64, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 20), align 8
  store i64 %39, ptr %newLimit, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %sw.bb17
  %40 = load i64, ptr %newLimit, align 8
  %cmp22 = icmp sgt i64 %40, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end21
  br i1 false, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  %41 = load i64, ptr %newLimit, align 8
  %and = and i64 %41, 2147483647
  store i64 %and, ptr %newLimit, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true, %if.end21
  %42 = load ptr, ptr %pFile, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %42, i32 0, i32 15
  %43 = load i64, ptr %mmapSizeMax, align 8
  %44 = load ptr, ptr %pArg.addr, align 8
  store i64 %43, ptr %44, align 8
  %45 = load i64, ptr %newLimit, align 8
  %cmp26 = icmp sge i64 %45, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end42

land.lhs.true28:                                  ; preds = %if.end25
  %46 = load i64, ptr %newLimit, align 8
  %47 = load ptr, ptr %pFile, align 8
  %mmapSizeMax29 = getelementptr inbounds nuw %struct.unixFile, ptr %47, i32 0, i32 15
  %48 = load i64, ptr %mmapSizeMax29, align 8
  %cmp30 = icmp ne i64 %46, %48
  br i1 %cmp30, label %land.lhs.true32, label %if.end42

land.lhs.true32:                                  ; preds = %land.lhs.true28
  %49 = load ptr, ptr %pFile, align 8
  %nFetchOut = getelementptr inbounds nuw %struct.unixFile, ptr %49, i32 0, i32 12
  %50 = load i32, ptr %nFetchOut, align 4
  %cmp33 = icmp eq i32 %50, 0
  br i1 %cmp33, label %if.then35, label %if.end42

if.then35:                                        ; preds = %land.lhs.true32
  %51 = load i64, ptr %newLimit, align 8
  %52 = load ptr, ptr %pFile, align 8
  %mmapSizeMax36 = getelementptr inbounds nuw %struct.unixFile, ptr %52, i32 0, i32 15
  store i64 %51, ptr %mmapSizeMax36, align 8
  %53 = load ptr, ptr %pFile, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %53, i32 0, i32 13
  %54 = load i64, ptr %mmapSize, align 8
  %cmp37 = icmp sgt i64 %54, 0
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.then35
  %55 = load ptr, ptr %pFile, align 8
  call void @unixUnmapfile(ptr noundef %55)
  %56 = load ptr, ptr %pFile, align 8
  %call40 = call i32 @unixMapfile(ptr noundef %56, i64 noundef -1)
  store i32 %call40, ptr %rc18, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %land.lhs.true32, %land.lhs.true28, %if.end25
  %57 = load i32, ptr %rc18, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  store i32 12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.end42, %sw.bb15, %if.end, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @fileHasMoved(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixUnmapfile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fcntlSizeHint(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixModeBit(ptr noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixGetTempname(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixMapfile(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
