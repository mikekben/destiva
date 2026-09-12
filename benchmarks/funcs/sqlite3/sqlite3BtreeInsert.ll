; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.BtreePayload = type { ptr, i64, ptr, ptr, i16, i32, i32 }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @getCellInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeMovetoUnpacked(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeInsert(ptr noundef %pCur, ptr noundef %pX, i32 noundef %flags, i32 noundef %seekResult) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %seekResult.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %loc = alloca i32, align 4
  %szNew = alloca i32, align 4
  %idx = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %oldCell = alloca ptr, align 8
  %newCell = alloca ptr, align 8
  %r = alloca %struct.UnpackedRecord, align 8
  %x2 = alloca %struct.BtreePayload, align 8
  %info108 = alloca %struct.CellInfo, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %seekResult, ptr %seekResult.addr, align 4
  %0 = load i32, ptr %seekResult.addr, align 4
  store i32 %0, ptr %loc, align 4
  store i32 0, ptr %szNew, align 4
  %1 = load ptr, ptr %pCur.addr, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %pBtree, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pBt1, align 8
  store ptr %4, ptr %pBt, align 8
  store ptr null, ptr %newCell, align 8
  %5 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %eState, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 4
  %8 = load i32, ptr %skipNext, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 1
  %10 = load i8, ptr %curFlags, align 1
  %conv3 = zext i8 %10 to i32
  %and = and i32 %conv3, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %pBt, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 12
  %13 = load i32, ptr %pgnoRoot, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @saveAllCursors(ptr noundef %11, i32 noundef %13, ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %17 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 17
  %18 = load ptr, ptr %pKeyInfo, align 8
  %cmp9 = icmp eq ptr %18, null
  br i1 %cmp9, label %if.then11, label %if.else46

if.then11:                                        ; preds = %if.end8
  %19 = load ptr, ptr %p, align 8
  %20 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot12 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 12
  %21 = load i32, ptr %pgnoRoot12, align 8
  %22 = load ptr, ptr %pX.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.BtreePayload, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %nKey, align 8
  call void @invalidateIncrblobCursors(ptr noundef %19, i32 noundef %21, i64 noundef %23, i32 noundef 0)
  %24 = load ptr, ptr %pCur.addr, align 8
  %curFlags13 = getelementptr inbounds nuw %struct.BtCursor, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %curFlags13, align 1
  %conv14 = zext i8 %25 to i32
  %and15 = and i32 %conv14, 2
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then11
  %26 = load ptr, ptr %pX.addr, align 8
  %nKey18 = getelementptr inbounds nuw %struct.BtreePayload, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %nKey18, align 8
  %28 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %28, i32 0, i32 10
  %nKey19 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %29 = load i64, ptr %nKey19, align 8
  %cmp20 = icmp eq i64 %27, %29
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %pCur.addr, align 8
  %info23 = getelementptr inbounds nuw %struct.BtCursor, ptr %30, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info23, i32 0, i32 4
  %31 = load i16, ptr %nSize, align 2
  %conv24 = zext i16 %31 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %land.lhs.true27, label %if.end33

land.lhs.true27:                                  ; preds = %if.then22
  %32 = load ptr, ptr %pCur.addr, align 8
  %info28 = getelementptr inbounds nuw %struct.BtCursor, ptr %32, i32 0, i32 10
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info28, i32 0, i32 2
  %33 = load i32, ptr %nPayload, align 8
  %34 = load ptr, ptr %pX.addr, align 8
  %nData = getelementptr inbounds nuw %struct.BtreePayload, ptr %34, i32 0, i32 5
  %35 = load i32, ptr %nData, align 4
  %36 = load ptr, ptr %pX.addr, align 8
  %nZero = getelementptr inbounds nuw %struct.BtreePayload, ptr %36, i32 0, i32 6
  %37 = load i32, ptr %nZero, align 8
  %add = add i32 %35, %37
  %cmp29 = icmp eq i32 %33, %add
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %land.lhs.true27
  %38 = load ptr, ptr %pCur.addr, align 8
  %39 = load ptr, ptr %pX.addr, align 8
  %call32 = call i32 @btreeOverwriteCell(ptr noundef %38, ptr noundef %39)
  store i32 %call32, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %land.lhs.true27, %if.then22
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true, %if.then11
  %40 = load i32, ptr %loc, align 4
  %cmp34 = icmp eq i32 %40, 0
  br i1 %cmp34, label %if.then36, label %if.end44

if.then36:                                        ; preds = %if.else
  %41 = load ptr, ptr %pCur.addr, align 8
  %42 = load ptr, ptr %pX.addr, align 8
  %nKey37 = getelementptr inbounds nuw %struct.BtreePayload, ptr %42, i32 0, i32 1
  %43 = load i64, ptr %nKey37, align 8
  %44 = load i32, ptr %flags.addr, align 4
  %cmp38 = icmp ne i32 %44, 0
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %41, ptr noundef null, i64 noundef %43, i32 noundef %conv39, ptr noundef %loc)
  store i32 %call40, ptr %rc, align 4
  %45 = load i32, ptr %rc, align 4
  %tobool41 = icmp ne i32 %45, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then36
  %46 = load i32, ptr %rc, align 4
  store i32 %46, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then36
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end33
  br label %if.end90

if.else46:                                        ; preds = %if.end8
  %47 = load i32, ptr %loc, align 4
  %cmp47 = icmp eq i32 %47, 0
  br i1 %cmp47, label %land.lhs.true49, label %if.end72

land.lhs.true49:                                  ; preds = %if.else46
  %48 = load i32, ptr %flags.addr, align 4
  %and50 = and i32 %48, 2
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %if.then53, label %if.end72

if.then53:                                        ; preds = %land.lhs.true49
  %49 = load ptr, ptr %pX.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.BtreePayload, ptr %49, i32 0, i32 4
  %50 = load i16, ptr %nMem, align 8
  %tobool54 = icmp ne i16 %50, 0
  br i1 %tobool54, label %if.then55, label %if.else63

if.then55:                                        ; preds = %if.then53
  %51 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo56 = getelementptr inbounds nuw %struct.BtCursor, ptr %51, i32 0, i32 17
  %52 = load ptr, ptr %pKeyInfo56, align 8
  %pKeyInfo57 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 0
  store ptr %52, ptr %pKeyInfo57, align 8
  %53 = load ptr, ptr %pX.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.BtreePayload, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %aMem, align 8
  %aMem58 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 1
  store ptr %54, ptr %aMem58, align 8
  %55 = load ptr, ptr %pX.addr, align 8
  %nMem59 = getelementptr inbounds nuw %struct.BtreePayload, ptr %55, i32 0, i32 4
  %56 = load i16, ptr %nMem59, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 2
  store i16 %56, ptr %nField, align 8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 3
  store i8 0, ptr %default_rc, align 2
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 4
  store i8 0, ptr %errCode, align 1
  %r1 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 5
  store i8 0, ptr %r1, align 4
  %r2 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 6
  store i8 0, ptr %r2, align 1
  %eqSeen = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 7
  store i8 0, ptr %eqSeen, align 2
  %57 = load ptr, ptr %pCur.addr, align 8
  %58 = load i32, ptr %flags.addr, align 4
  %cmp60 = icmp ne i32 %58, 0
  %conv61 = zext i1 %cmp60 to i32
  %call62 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %57, ptr noundef %r, i64 noundef 0, i32 noundef %conv61, ptr noundef %loc)
  store i32 %call62, ptr %rc, align 4
  br label %if.end68

if.else63:                                        ; preds = %if.then53
  %59 = load ptr, ptr %pCur.addr, align 8
  %60 = load ptr, ptr %pX.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.BtreePayload, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pKey, align 8
  %62 = load ptr, ptr %pX.addr, align 8
  %nKey64 = getelementptr inbounds nuw %struct.BtreePayload, ptr %62, i32 0, i32 1
  %63 = load i64, ptr %nKey64, align 8
  %64 = load i32, ptr %flags.addr, align 4
  %cmp65 = icmp ne i32 %64, 0
  %conv66 = zext i1 %cmp65 to i32
  %call67 = call i32 @btreeMoveto(ptr noundef %59, ptr noundef %61, i64 noundef %63, i32 noundef %conv66, ptr noundef %loc)
  store i32 %call67, ptr %rc, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then55
  %65 = load i32, ptr %rc, align 4
  %tobool69 = icmp ne i32 %65, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end68
  %66 = load i32, ptr %rc, align 4
  store i32 %66, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.end68
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %land.lhs.true49, %if.else46
  %67 = load i32, ptr %loc, align 4
  %cmp73 = icmp eq i32 %67, 0
  br i1 %cmp73, label %if.then75, label %if.end89

if.then75:                                        ; preds = %if.end72
  %68 = load ptr, ptr %pCur.addr, align 8
  call void @getCellInfo(ptr noundef %68)
  %69 = load ptr, ptr %pCur.addr, align 8
  %info76 = getelementptr inbounds nuw %struct.BtCursor, ptr %69, i32 0, i32 10
  %nKey77 = getelementptr inbounds nuw %struct.CellInfo, ptr %info76, i32 0, i32 0
  %70 = load i64, ptr %nKey77, align 8
  %71 = load ptr, ptr %pX.addr, align 8
  %nKey78 = getelementptr inbounds nuw %struct.BtreePayload, ptr %71, i32 0, i32 1
  %72 = load i64, ptr %nKey78, align 8
  %cmp79 = icmp eq i64 %70, %72
  br i1 %cmp79, label %if.then81, label %if.end88

if.then81:                                        ; preds = %if.then75
  %73 = load ptr, ptr %pX.addr, align 8
  %pKey82 = getelementptr inbounds nuw %struct.BtreePayload, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %pKey82, align 8
  %pData = getelementptr inbounds nuw %struct.BtreePayload, ptr %x2, i32 0, i32 2
  store ptr %74, ptr %pData, align 8
  %75 = load ptr, ptr %pX.addr, align 8
  %nKey83 = getelementptr inbounds nuw %struct.BtreePayload, ptr %75, i32 0, i32 1
  %76 = load i64, ptr %nKey83, align 8
  %conv84 = trunc i64 %76 to i32
  %nData85 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x2, i32 0, i32 5
  store i32 %conv84, ptr %nData85, align 4
  %nZero86 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x2, i32 0, i32 6
  store i32 0, ptr %nZero86, align 8
  %77 = load ptr, ptr %pCur.addr, align 8
  %call87 = call i32 @btreeOverwriteCell(ptr noundef %77, ptr noundef %x2)
  store i32 %call87, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then75
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end72
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.end45
  %78 = load ptr, ptr %pCur.addr, align 8
  %pPage91 = getelementptr inbounds nuw %struct.BtCursor, ptr %78, i32 0, i32 18
  %79 = load ptr, ptr %pPage91, align 8
  store ptr %79, ptr %pPage, align 8
  %80 = load ptr, ptr %pPage, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %80, i32 0, i32 13
  %81 = load i32, ptr %nFree, align 4
  %cmp92 = icmp slt i32 %81, 0
  br i1 %cmp92, label %if.then94, label %if.end99

if.then94:                                        ; preds = %if.end90
  %82 = load ptr, ptr %pPage, align 8
  %call95 = call i32 @btreeComputeFreeSpace(ptr noundef %82)
  store i32 %call95, ptr %rc, align 4
  %83 = load i32, ptr %rc, align 4
  %tobool96 = icmp ne i32 %83, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.then94
  %84 = load i32, ptr %rc, align 4
  store i32 %84, ptr %retval, align 4
  br label %return

if.end98:                                         ; preds = %if.then94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end90
  %85 = load ptr, ptr %pBt, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.BtShared, ptr %85, i32 0, i32 27
  %86 = load ptr, ptr %pTmpSpace, align 8
  store ptr %86, ptr %newCell, align 8
  %87 = load ptr, ptr %pPage, align 8
  %88 = load ptr, ptr %newCell, align 8
  %89 = load ptr, ptr %pX.addr, align 8
  %call100 = call i32 @fillInCell(ptr noundef %87, ptr noundef %88, ptr noundef %89, ptr noundef %szNew)
  store i32 %call100, ptr %rc, align 4
  %90 = load i32, ptr %rc, align 4
  %tobool101 = icmp ne i32 %90, 0
  br i1 %tobool101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end99
  br label %end_insert

if.end103:                                        ; preds = %if.end99
  %91 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %91, i32 0, i32 15
  %92 = load i16, ptr %ix, align 2
  %conv104 = zext i16 %92 to i32
  store i32 %conv104, ptr %idx, align 4
  %93 = load i32, ptr %loc, align 4
  %cmp105 = icmp eq i32 %93, 0
  br i1 %cmp105, label %if.then107, label %if.else170

if.then107:                                       ; preds = %if.end103
  %94 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %94, i32 0, i32 23
  %95 = load ptr, ptr %pDbPage, align 8
  %call109 = call i32 @sqlite3PagerWrite(ptr noundef %95)
  store i32 %call109, ptr %rc, align 4
  %96 = load i32, ptr %rc, align 4
  %tobool110 = icmp ne i32 %96, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.then107
  br label %end_insert

if.end112:                                        ; preds = %if.then107
  %97 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %97, i32 0, i32 19
  %98 = load ptr, ptr %aData, align 8
  %99 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %99, i32 0, i32 15
  %100 = load i16, ptr %maskPage, align 2
  %conv113 = zext i16 %100 to i32
  %101 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %101, i32 0, i32 21
  %102 = load ptr, ptr %aCellIdx, align 8
  %103 = load i32, ptr %idx, align 4
  %mul = mul nsw i32 2, %103
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %102, i64 %idxprom
  %arrayidx114 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %104 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %104 to i32
  %shl = shl i32 %conv115, 8
  %105 = load ptr, ptr %pPage, align 8
  %aCellIdx116 = getelementptr inbounds nuw %struct.MemPage, ptr %105, i32 0, i32 21
  %106 = load ptr, ptr %aCellIdx116, align 8
  %107 = load i32, ptr %idx, align 4
  %mul117 = mul nsw i32 2, %107
  %idxprom118 = sext i32 %mul117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %106, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds i8, ptr %arrayidx119, i64 1
  %108 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %108 to i32
  %or = or i32 %shl, %conv121
  %and122 = and i32 %conv113, %or
  %idx.ext = sext i32 %and122 to i64
  %add.ptr = getelementptr inbounds i8, ptr %98, i64 %idx.ext
  store ptr %add.ptr, ptr %oldCell, align 8
  %109 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %109, i32 0, i32 5
  %110 = load i8, ptr %leaf, align 8
  %tobool123 = icmp ne i8 %110, 0
  br i1 %tobool123, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end112
  %111 = load ptr, ptr %newCell, align 8
  %112 = load ptr, ptr %oldCell, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %111, ptr align 1 %112, i64 4, i1 false)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %if.end112
  %113 = load ptr, ptr %pPage, align 8
  %114 = load ptr, ptr %oldCell, align 8
  %call126 = call i32 @clearCell(ptr noundef %113, ptr noundef %114, ptr noundef %info108)
  store i32 %call126, ptr %rc, align 4
  %115 = load ptr, ptr %pCur.addr, align 8
  %curFlags127 = getelementptr inbounds nuw %struct.BtCursor, ptr %115, i32 0, i32 1
  %116 = load i8, ptr %curFlags127, align 1
  %conv128 = zext i8 %116 to i32
  %and129 = and i32 %conv128, -5
  %conv130 = trunc i32 %and129 to i8
  store i8 %conv130, ptr %curFlags127, align 1
  %nSize131 = getelementptr inbounds nuw %struct.CellInfo, ptr %info108, i32 0, i32 4
  %117 = load i16, ptr %nSize131, align 2
  %conv132 = zext i16 %117 to i32
  %118 = load i32, ptr %szNew, align 4
  %cmp133 = icmp eq i32 %conv132, %118
  br i1 %cmp133, label %land.lhs.true135, label %if.end164

land.lhs.true135:                                 ; preds = %if.end125
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info108, i32 0, i32 3
  %119 = load i16, ptr %nLocal, align 4
  %conv136 = zext i16 %119 to i32
  %nPayload137 = getelementptr inbounds nuw %struct.CellInfo, ptr %info108, i32 0, i32 2
  %120 = load i32, ptr %nPayload137, align 8
  %cmp138 = icmp eq i32 %conv136, %120
  br i1 %cmp138, label %land.lhs.true140, label %if.end164

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %121 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %121, i32 0, i32 5
  %122 = load i8, ptr %autoVacuum, align 1
  %tobool141 = icmp ne i8 %122, 0
  br i1 %tobool141, label %lor.lhs.false, label %if.then145

lor.lhs.false:                                    ; preds = %land.lhs.true140
  %123 = load i32, ptr %szNew, align 4
  %124 = load ptr, ptr %pPage, align 8
  %minLocal = getelementptr inbounds nuw %struct.MemPage, ptr %124, i32 0, i32 11
  %125 = load i16, ptr %minLocal, align 8
  %conv142 = zext i16 %125 to i32
  %cmp143 = icmp slt i32 %123, %conv142
  br i1 %cmp143, label %if.then145, label %if.end164

if.then145:                                       ; preds = %lor.lhs.false, %land.lhs.true140
  %126 = load ptr, ptr %oldCell, align 8
  %127 = load ptr, ptr %pPage, align 8
  %aData146 = getelementptr inbounds nuw %struct.MemPage, ptr %127, i32 0, i32 19
  %128 = load ptr, ptr %aData146, align 8
  %129 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %129, i32 0, i32 6
  %130 = load i8, ptr %hdrOffset, align 1
  %conv147 = zext i8 %130 to i32
  %idx.ext148 = sext i32 %conv147 to i64
  %add.ptr149 = getelementptr inbounds i8, ptr %128, i64 %idx.ext148
  %add.ptr150 = getelementptr inbounds i8, ptr %add.ptr149, i64 10
  %cmp151 = icmp ult ptr %126, %add.ptr150
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.then145
  %call154 = call i32 @sqlite3CorruptError(i32 noundef 72140)
  store i32 %call154, ptr %retval, align 4
  br label %return

if.end155:                                        ; preds = %if.then145
  %131 = load ptr, ptr %oldCell, align 8
  %132 = load i32, ptr %szNew, align 4
  %idx.ext156 = sext i32 %132 to i64
  %add.ptr157 = getelementptr inbounds i8, ptr %131, i64 %idx.ext156
  %133 = load ptr, ptr %pPage, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %133, i32 0, i32 20
  %134 = load ptr, ptr %aDataEnd, align 8
  %cmp158 = icmp ugt ptr %add.ptr157, %134
  br i1 %cmp158, label %if.then160, label %if.end162

if.then160:                                       ; preds = %if.end155
  %call161 = call i32 @sqlite3CorruptError(i32 noundef 72143)
  store i32 %call161, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.end155
  %135 = load ptr, ptr %oldCell, align 8
  %136 = load ptr, ptr %newCell, align 8
  %137 = load i32, ptr %szNew, align 4
  %conv163 = sext i32 %137 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %135, ptr align 1 %136, i64 %conv163, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end164:                                        ; preds = %lor.lhs.false, %land.lhs.true135, %if.end125
  %138 = load ptr, ptr %pPage, align 8
  %139 = load i32, ptr %idx, align 4
  %nSize165 = getelementptr inbounds nuw %struct.CellInfo, ptr %info108, i32 0, i32 4
  %140 = load i16, ptr %nSize165, align 2
  %conv166 = zext i16 %140 to i32
  call void @dropCell(ptr noundef %138, i32 noundef %139, i32 noundef %conv166, ptr noundef %rc)
  %141 = load i32, ptr %rc, align 4
  %tobool167 = icmp ne i32 %141, 0
  br i1 %tobool167, label %if.then168, label %if.end169

if.then168:                                       ; preds = %if.end164
  br label %end_insert

if.end169:                                        ; preds = %if.end164
  br label %if.end186

if.else170:                                       ; preds = %if.end103
  %142 = load i32, ptr %loc, align 4
  %cmp171 = icmp slt i32 %142, 0
  br i1 %cmp171, label %land.lhs.true173, label %if.else184

land.lhs.true173:                                 ; preds = %if.else170
  %143 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %143, i32 0, i32 14
  %144 = load i16, ptr %nCell, align 8
  %conv174 = zext i16 %144 to i32
  %cmp175 = icmp sgt i32 %conv174, 0
  br i1 %cmp175, label %if.then177, label %if.else184

if.then177:                                       ; preds = %land.lhs.true173
  %145 = load ptr, ptr %pCur.addr, align 8
  %ix178 = getelementptr inbounds nuw %struct.BtCursor, ptr %145, i32 0, i32 15
  %146 = load i16, ptr %ix178, align 2
  %inc = add i16 %146, 1
  store i16 %inc, ptr %ix178, align 2
  %conv179 = zext i16 %inc to i32
  store i32 %conv179, ptr %idx, align 4
  %147 = load ptr, ptr %pCur.addr, align 8
  %curFlags180 = getelementptr inbounds nuw %struct.BtCursor, ptr %147, i32 0, i32 1
  %148 = load i8, ptr %curFlags180, align 1
  %conv181 = zext i8 %148 to i32
  %and182 = and i32 %conv181, -3
  %conv183 = trunc i32 %and182 to i8
  store i8 %conv183, ptr %curFlags180, align 1
  br label %if.end185

if.else184:                                       ; preds = %land.lhs.true173, %if.else170
  br label %if.end185

if.end185:                                        ; preds = %if.else184, %if.then177
  br label %if.end186

if.end186:                                        ; preds = %if.end185, %if.end169
  %149 = load ptr, ptr %pPage, align 8
  %150 = load i32, ptr %idx, align 4
  %151 = load ptr, ptr %newCell, align 8
  %152 = load i32, ptr %szNew, align 4
  call void @insertCell(ptr noundef %149, i32 noundef %150, ptr noundef %151, i32 noundef %152, ptr noundef null, i32 noundef 0, ptr noundef %rc)
  %153 = load ptr, ptr %pCur.addr, align 8
  %info187 = getelementptr inbounds nuw %struct.BtCursor, ptr %153, i32 0, i32 10
  %nSize188 = getelementptr inbounds nuw %struct.CellInfo, ptr %info187, i32 0, i32 4
  store i16 0, ptr %nSize188, align 2
  %154 = load ptr, ptr %pPage, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %154, i32 0, i32 9
  %155 = load i8, ptr %nOverflow, align 4
  %tobool189 = icmp ne i8 %155, 0
  br i1 %tobool189, label %if.then190, label %if.end225

if.then190:                                       ; preds = %if.end186
  %156 = load ptr, ptr %pCur.addr, align 8
  %curFlags191 = getelementptr inbounds nuw %struct.BtCursor, ptr %156, i32 0, i32 1
  %157 = load i8, ptr %curFlags191, align 1
  %conv192 = zext i8 %157 to i32
  %and193 = and i32 %conv192, -3
  %conv194 = trunc i32 %and193 to i8
  store i8 %conv194, ptr %curFlags191, align 1
  %158 = load ptr, ptr %pCur.addr, align 8
  %call195 = call i32 @balance(ptr noundef %158)
  store i32 %call195, ptr %rc, align 4
  %159 = load ptr, ptr %pCur.addr, align 8
  %pPage196 = getelementptr inbounds nuw %struct.BtCursor, ptr %159, i32 0, i32 18
  %160 = load ptr, ptr %pPage196, align 8
  %nOverflow197 = getelementptr inbounds nuw %struct.MemPage, ptr %160, i32 0, i32 9
  store i8 0, ptr %nOverflow197, align 4
  %161 = load ptr, ptr %pCur.addr, align 8
  %eState198 = getelementptr inbounds nuw %struct.BtCursor, ptr %161, i32 0, i32 0
  store i8 1, ptr %eState198, align 8
  %162 = load i32, ptr %flags.addr, align 4
  %and199 = and i32 %162, 2
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %land.lhs.true201, label %if.end224

land.lhs.true201:                                 ; preds = %if.then190
  %163 = load i32, ptr %rc, align 4
  %cmp202 = icmp eq i32 %163, 0
  br i1 %cmp202, label %if.then204, label %if.end224

if.then204:                                       ; preds = %land.lhs.true201
  %164 = load ptr, ptr %pCur.addr, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %164)
  %165 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo205 = getelementptr inbounds nuw %struct.BtCursor, ptr %165, i32 0, i32 17
  %166 = load ptr, ptr %pKeyInfo205, align 8
  %tobool206 = icmp ne ptr %166, null
  br i1 %tobool206, label %if.then207, label %if.end220

if.then207:                                       ; preds = %if.then204
  %167 = load ptr, ptr %pX.addr, align 8
  %nKey208 = getelementptr inbounds nuw %struct.BtreePayload, ptr %167, i32 0, i32 1
  %168 = load i64, ptr %nKey208, align 8
  %call209 = call ptr @sqlite3Malloc(i64 noundef %168)
  %169 = load ptr, ptr %pCur.addr, align 8
  %pKey210 = getelementptr inbounds nuw %struct.BtCursor, ptr %169, i32 0, i32 7
  store ptr %call209, ptr %pKey210, align 8
  %170 = load ptr, ptr %pCur.addr, align 8
  %pKey211 = getelementptr inbounds nuw %struct.BtCursor, ptr %170, i32 0, i32 7
  %171 = load ptr, ptr %pKey211, align 8
  %cmp212 = icmp eq ptr %171, null
  br i1 %cmp212, label %if.then214, label %if.else215

if.then214:                                       ; preds = %if.then207
  store i32 7, ptr %rc, align 4
  br label %if.end219

if.else215:                                       ; preds = %if.then207
  %172 = load ptr, ptr %pCur.addr, align 8
  %pKey216 = getelementptr inbounds nuw %struct.BtCursor, ptr %172, i32 0, i32 7
  %173 = load ptr, ptr %pKey216, align 8
  %174 = load ptr, ptr %pX.addr, align 8
  %pKey217 = getelementptr inbounds nuw %struct.BtreePayload, ptr %174, i32 0, i32 0
  %175 = load ptr, ptr %pKey217, align 8
  %176 = load ptr, ptr %pX.addr, align 8
  %nKey218 = getelementptr inbounds nuw %struct.BtreePayload, ptr %176, i32 0, i32 1
  %177 = load i64, ptr %nKey218, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %175, i64 %177, i1 false)
  br label %if.end219

if.end219:                                        ; preds = %if.else215, %if.then214
  br label %if.end220

if.end220:                                        ; preds = %if.end219, %if.then204
  %178 = load ptr, ptr %pCur.addr, align 8
  %eState221 = getelementptr inbounds nuw %struct.BtCursor, ptr %178, i32 0, i32 0
  store i8 3, ptr %eState221, align 8
  %179 = load ptr, ptr %pX.addr, align 8
  %nKey222 = getelementptr inbounds nuw %struct.BtreePayload, ptr %179, i32 0, i32 1
  %180 = load i64, ptr %nKey222, align 8
  %181 = load ptr, ptr %pCur.addr, align 8
  %nKey223 = getelementptr inbounds nuw %struct.BtCursor, ptr %181, i32 0, i32 11
  store i64 %180, ptr %nKey223, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.end220, %land.lhs.true201, %if.then190
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.end186
  br label %end_insert

end_insert:                                       ; preds = %if.end225, %if.then168, %if.then111, %if.then102
  %182 = load i32, ptr %rc, align 4
  store i32 %182, ptr %retval, align 4
  br label %return

return:                                           ; preds = %end_insert, %if.end162, %if.then160, %if.then153, %if.then97, %if.then81, %if.then70, %if.then42, %if.then31, %if.then6, %if.then
  %183 = load i32, ptr %retval, align 4
  ret i32 %183
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeMoveto(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @invalidateIncrblobCursors(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @clearCell(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeOverwriteCell(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fillInCell(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dropCell(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @insertCell(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @balance(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
