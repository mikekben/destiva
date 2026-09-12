; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.sqlite3_file = type { ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BackupUpdate(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pager_playback_one_page(ptr noundef %pPager, ptr noundef %pOffset, ptr noundef %pDone, i32 noundef %isMainJrnl, i32 noundef %isSavepnt) #1 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pOffset.addr = alloca ptr, align 8
  %pDone.addr = alloca ptr, align 8
  %isMainJrnl.addr = alloca i32, align 4
  %isSavepnt.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPg = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %cksum = alloca i32, align 4
  %aData = alloca ptr, align 8
  %jfd = alloca ptr, align 8
  %isSynced = alloca i32, align 4
  %ofst = alloca i64, align 8
  %pData = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pOffset, ptr %pOffset.addr, align 8
  store ptr %pDone, ptr %pDone.addr, align 8
  store i32 %isMainJrnl, ptr %isMainJrnl.addr, align 4
  store i32 %isSavepnt, ptr %isSavepnt.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 57
  %1 = load ptr, ptr %pTmpSpace, align 8
  store ptr %1, ptr %aData, align 8
  %2 = load i32, ptr %isMainJrnl.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %jfd1 = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 31
  %4 = load ptr, ptr %jfd1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %pPager.addr, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 32
  %6 = load ptr, ptr %sjfd, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %6, %cond.false ]
  store ptr %cond, ptr %jfd, align 8
  %7 = load ptr, ptr %jfd, align 8
  %8 = load ptr, ptr %pOffset.addr, align 8
  %9 = load i64, ptr %8, align 8
  %call = call i32 @read32bits(ptr noundef %7, i64 noundef %9, ptr noundef %pgno)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %12 = load ptr, ptr %jfd, align 8
  %13 = load ptr, ptr %aData, align 8
  %14 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 47
  %15 = load i32, ptr %pageSize, align 4
  %16 = load ptr, ptr %pOffset.addr, align 8
  %17 = load i64, ptr %16, align 8
  %add = add nsw i64 %17, 4
  %call2 = call i32 @sqlite3OsRead(ptr noundef %12, ptr noundef %13, i32 noundef %15, i64 noundef %add)
  store i32 %call2, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %18, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %20 = load ptr, ptr %pPager.addr, align 8
  %pageSize6 = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 47
  %21 = load i32, ptr %pageSize6, align 4
  %add7 = add nsw i32 %21, 4
  %22 = load i32, ptr %isMainJrnl.addr, align 4
  %mul = mul nsw i32 %22, 4
  %add8 = add nsw i32 %add7, %mul
  %conv = sext i32 %add8 to i64
  %23 = load ptr, ptr %pOffset.addr, align 8
  %24 = load i64, ptr %23, align 8
  %add9 = add nsw i64 %24, %conv
  store i64 %add9, ptr %23, align 8
  %25 = load i32, ptr %pgno, align 4
  %cmp10 = icmp eq i32 %25, 0
  br i1 %cmp10, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %26 = load i32, ptr %pgno, align 4
  %27 = load i32, ptr @sqlite3PendingByte, align 4
  %28 = load ptr, ptr %pPager.addr, align 8
  %pageSize12 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 47
  %29 = load i32, ptr %pageSize12, align 4
  %div = sdiv i32 %27, %29
  %add13 = add nsw i32 %div, 1
  %cmp14 = icmp eq i32 %26, %add13
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %if.end5
  store i32 101, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %30 = load i32, ptr %pgno, align 4
  %31 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 21
  %32 = load i32, ptr %dbSize, align 4
  %cmp18 = icmp ugt i32 %30, %32
  br i1 %cmp18, label %if.then23, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.end17
  %33 = load ptr, ptr %pDone.addr, align 8
  %34 = load i32, ptr %pgno, align 4
  %call21 = call i32 @sqlite3BitvecTest(ptr noundef %33, i32 noundef %34)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %lor.lhs.false20, %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %lor.lhs.false20
  %35 = load i32, ptr %isMainJrnl.addr, align 4
  %tobool25 = icmp ne i32 %35, 0
  br i1 %tobool25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end24
  %36 = load ptr, ptr %jfd, align 8
  %37 = load ptr, ptr %pOffset.addr, align 8
  %38 = load i64, ptr %37, align 8
  %sub = sub nsw i64 %38, 4
  %call27 = call i32 @read32bits(ptr noundef %36, i64 noundef %sub, ptr noundef %cksum)
  store i32 %call27, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  %40 = load i32, ptr %rc, align 4
  store i32 %40, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then26
  %41 = load i32, ptr %isSavepnt.addr, align 4
  %tobool31 = icmp ne i32 %41, 0
  br i1 %tobool31, label %if.end36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %42 = load ptr, ptr %pPager.addr, align 8
  %43 = load ptr, ptr %aData, align 8
  %call32 = call i32 @pager_cksum(ptr noundef %42, ptr noundef %43)
  %44 = load i32, ptr %cksum, align 4
  %cmp33 = icmp ne i32 %call32, %44
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.lhs.true
  store i32 101, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %land.lhs.true, %if.end30
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end24
  %45 = load ptr, ptr %pDone.addr, align 8
  %tobool38 = icmp ne ptr %45, null
  br i1 %tobool38, label %land.lhs.true39, label %if.end44

land.lhs.true39:                                  ; preds = %if.end37
  %46 = load ptr, ptr %pDone.addr, align 8
  %47 = load i32, ptr %pgno, align 4
  %call40 = call i32 @sqlite3BitvecSet(ptr noundef %46, i32 noundef %47)
  store i32 %call40, ptr %rc, align 4
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true39
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %land.lhs.true39, %if.end37
  %49 = load i32, ptr %pgno, align 4
  %cmp45 = icmp eq i32 %49, 1
  br i1 %cmp45, label %land.lhs.true47, label %if.end56

land.lhs.true47:                                  ; preds = %if.end44
  %50 = load ptr, ptr %pPager.addr, align 8
  %nReserve = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 44
  %51 = load i16, ptr %nReserve, align 2
  %conv48 = sext i16 %51 to i32
  %52 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %52, i64 20
  %53 = load i8, ptr %arrayidx, align 1
  %conv49 = zext i8 %53 to i32
  %cmp50 = icmp ne i32 %conv48, %conv49
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true47
  %54 = load ptr, ptr %aData, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %54, i64 20
  %55 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %55 to i16
  %56 = load ptr, ptr %pPager.addr, align 8
  %nReserve55 = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 44
  store i16 %conv54, ptr %nReserve55, align 2
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true47, %if.end44
  %57 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %57, i32 0, i32 59
  %58 = load ptr, ptr %pWal, align 8
  %cmp57 = icmp ne ptr %58, null
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end56
  store ptr null, ptr %pPg, align 8
  br label %if.end61

if.else:                                          ; preds = %if.end56
  %59 = load ptr, ptr %pPager.addr, align 8
  %60 = load i32, ptr %pgno, align 4
  %call60 = call ptr @sqlite3PagerLookup(ptr noundef %59, i32 noundef %60)
  store ptr %call60, ptr %pPg, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then59
  %61 = load i32, ptr %isMainJrnl.addr, align 4
  %tobool62 = icmp ne i32 %61, 0
  br i1 %tobool62, label %if.then63, label %if.else68

if.then63:                                        ; preds = %if.end61
  %62 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 4
  %63 = load i8, ptr %noSync, align 1
  %conv64 = zext i8 %63 to i32
  %tobool65 = icmp ne i32 %conv64, 0
  br i1 %tobool65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then63
  %64 = load ptr, ptr %pOffset.addr, align 8
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %66, i32 0, i32 34
  %67 = load i64, ptr %journalHdr, align 8
  %cmp66 = icmp sle i64 %65, %67
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then63
  %68 = phi i1 [ true, %if.then63 ], [ %cmp66, %lor.rhs ]
  %lor.ext = zext i1 %68 to i32
  store i32 %lor.ext, ptr %isSynced, align 4
  br label %if.end77

if.else68:                                        ; preds = %if.end61
  %69 = load ptr, ptr %pPg, align 8
  %cmp69 = icmp eq ptr %69, null
  br i1 %cmp69, label %lor.end75, label %lor.rhs71

lor.rhs71:                                        ; preds = %if.else68
  %70 = load ptr, ptr %pPg, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %70, i32 0, i32 7
  %71 = load i16, ptr %flags, align 4
  %conv72 = zext i16 %71 to i32
  %and = and i32 %conv72, 8
  %cmp73 = icmp eq i32 0, %and
  br label %lor.end75

lor.end75:                                        ; preds = %lor.rhs71, %if.else68
  %72 = phi i1 [ true, %if.else68 ], [ %cmp73, %lor.rhs71 ]
  %lor.ext76 = zext i1 %72 to i32
  store i32 %lor.ext76, ptr %isSynced, align 4
  br label %if.end77

if.end77:                                         ; preds = %lor.end75, %lor.end
  %73 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %73, i32 0, i32 30
  %74 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %pMethods, align 8
  %cmp78 = icmp ne ptr %75, null
  br i1 %cmp78, label %land.lhs.true80, label %if.else109

land.lhs.true80:                                  ; preds = %if.end77
  %76 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %76, i32 0, i32 13
  %77 = load i8, ptr %eState, align 4
  %conv81 = zext i8 %77 to i32
  %cmp82 = icmp sge i32 %conv81, 4
  br i1 %cmp82, label %land.lhs.true89, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %land.lhs.true80
  %78 = load ptr, ptr %pPager.addr, align 8
  %eState85 = getelementptr inbounds nuw %struct.Pager, ptr %78, i32 0, i32 13
  %79 = load i8, ptr %eState85, align 4
  %conv86 = zext i8 %79 to i32
  %cmp87 = icmp eq i32 %conv86, 0
  br i1 %cmp87, label %land.lhs.true89, label %if.else109

land.lhs.true89:                                  ; preds = %lor.lhs.false84, %land.lhs.true80
  %80 = load i32, ptr %isSynced, align 4
  %tobool90 = icmp ne i32 %80, 0
  br i1 %tobool90, label %if.then91, label %if.else109

if.then91:                                        ; preds = %land.lhs.true89
  %81 = load i32, ptr %pgno, align 4
  %sub92 = sub i32 %81, 1
  %conv93 = zext i32 %sub92 to i64
  %82 = load ptr, ptr %pPager.addr, align 8
  %pageSize94 = getelementptr inbounds nuw %struct.Pager, ptr %82, i32 0, i32 47
  %83 = load i32, ptr %pageSize94, align 4
  %conv95 = sext i32 %83 to i64
  %mul96 = mul nsw i64 %conv93, %conv95
  store i64 %mul96, ptr %ofst, align 8
  %84 = load ptr, ptr %pPager.addr, align 8
  %fd97 = getelementptr inbounds nuw %struct.Pager, ptr %84, i32 0, i32 30
  %85 = load ptr, ptr %fd97, align 8
  %86 = load ptr, ptr %aData, align 8
  %87 = load ptr, ptr %pPager.addr, align 8
  %pageSize98 = getelementptr inbounds nuw %struct.Pager, ptr %87, i32 0, i32 47
  %88 = load i32, ptr %pageSize98, align 4
  %89 = load i64, ptr %ofst, align 8
  %call99 = call i32 @sqlite3OsWrite(ptr noundef %85, ptr noundef %86, i32 noundef %88, i64 noundef %89)
  store i32 %call99, ptr %rc, align 4
  %90 = load i32, ptr %pgno, align 4
  %91 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %91, i32 0, i32 23
  %92 = load i32, ptr %dbFileSize, align 4
  %cmp100 = icmp ugt i32 %90, %92
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.then91
  %93 = load i32, ptr %pgno, align 4
  %94 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize103 = getelementptr inbounds nuw %struct.Pager, ptr %94, i32 0, i32 23
  store i32 %93, ptr %dbFileSize103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.then91
  %95 = load ptr, ptr %pPager.addr, align 8
  %pBackup = getelementptr inbounds nuw %struct.Pager, ptr %95, i32 0, i32 35
  %96 = load ptr, ptr %pBackup, align 8
  %tobool105 = icmp ne ptr %96, null
  br i1 %tobool105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end104
  %97 = load ptr, ptr %pPager.addr, align 8
  %pBackup107 = getelementptr inbounds nuw %struct.Pager, ptr %97, i32 0, i32 35
  %98 = load ptr, ptr %pBackup107, align 8
  %99 = load i32, ptr %pgno, align 4
  %100 = load ptr, ptr %aData, align 8
  call void @sqlite3BackupUpdate(ptr noundef %98, i32 noundef %99, ptr noundef %100)
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end104
  br label %if.end127

if.else109:                                       ; preds = %land.lhs.true89, %lor.lhs.false84, %if.end77
  %101 = load i32, ptr %isMainJrnl.addr, align 4
  %tobool110 = icmp ne i32 %101, 0
  br i1 %tobool110, label %if.end126, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.else109
  %102 = load ptr, ptr %pPg, align 8
  %cmp112 = icmp eq ptr %102, null
  br i1 %cmp112, label %if.then114, label %if.end126

if.then114:                                       ; preds = %land.lhs.true111
  %103 = load ptr, ptr %pPager.addr, align 8
  %doNotSpill = getelementptr inbounds nuw %struct.Pager, ptr %103, i32 0, i32 17
  %104 = load i8, ptr %doNotSpill, align 8
  %conv115 = zext i8 %104 to i32
  %or = or i32 %conv115, 2
  %conv116 = trunc i32 %or to i8
  store i8 %conv116, ptr %doNotSpill, align 8
  %105 = load ptr, ptr %pPager.addr, align 8
  %106 = load i32, ptr %pgno, align 4
  %call117 = call i32 @sqlite3PagerGet(ptr noundef %105, i32 noundef %106, ptr noundef %pPg, i32 noundef 1)
  store i32 %call117, ptr %rc, align 4
  %107 = load ptr, ptr %pPager.addr, align 8
  %doNotSpill118 = getelementptr inbounds nuw %struct.Pager, ptr %107, i32 0, i32 17
  %108 = load i8, ptr %doNotSpill118, align 8
  %conv119 = zext i8 %108 to i32
  %and120 = and i32 %conv119, -3
  %conv121 = trunc i32 %and120 to i8
  store i8 %conv121, ptr %doNotSpill118, align 8
  %109 = load i32, ptr %rc, align 4
  %cmp122 = icmp ne i32 %109, 0
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then114
  %110 = load i32, ptr %rc, align 4
  store i32 %110, ptr %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.then114
  %111 = load ptr, ptr %pPg, align 8
  call void @sqlite3PcacheMakeDirty(ptr noundef %111)
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %land.lhs.true111, %if.else109
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end108
  %112 = load ptr, ptr %pPg, align 8
  %tobool128 = icmp ne ptr %112, null
  br i1 %tobool128, label %if.then129, label %if.end138

if.then129:                                       ; preds = %if.end127
  %113 = load ptr, ptr %pPg, align 8
  %pData130 = getelementptr inbounds nuw %struct.PgHdr, ptr %113, i32 0, i32 1
  %114 = load ptr, ptr %pData130, align 8
  store ptr %114, ptr %pData, align 8
  %115 = load ptr, ptr %pData, align 8
  %116 = load ptr, ptr %aData, align 8
  %117 = load ptr, ptr %pPager.addr, align 8
  %pageSize131 = getelementptr inbounds nuw %struct.Pager, ptr %117, i32 0, i32 47
  %118 = load i32, ptr %pageSize131, align 4
  %conv132 = sext i32 %118 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %116, i64 %conv132, i1 false)
  %119 = load ptr, ptr %pPager.addr, align 8
  %xReiniter = getelementptr inbounds nuw %struct.Pager, ptr %119, i32 0, i32 55
  %120 = load ptr, ptr %xReiniter, align 8
  %121 = load ptr, ptr %pPg, align 8
  call void %120(ptr noundef %121)
  %122 = load i32, ptr %pgno, align 4
  %cmp133 = icmp eq i32 %122, 1
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.then129
  %123 = load ptr, ptr %pPager.addr, align 8
  %dbFileVers = getelementptr inbounds nuw %struct.Pager, ptr %123, i32 0, i32 39
  %124 = load ptr, ptr %pData, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %124, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dbFileVers, ptr align 1 %arrayidx136, i64 16, i1 false)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then129
  %125 = load ptr, ptr %pPg, align 8
  call void @sqlite3PcacheRelease(ptr noundef %125)
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end127
  %126 = load i32, ptr %rc, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end138, %if.then124, %if.then43, %if.then35, %if.then29, %if.then23, %if.then16, %if.then4, %if.then
  %127 = load i32, ptr %retval, align 4
  ret i32 %127
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheRelease(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @read32bits(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTest(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_cksum(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMakeDirty(ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
