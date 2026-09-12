; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @cellSizePtr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveCursorKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePageNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePrevious(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeDelete(ptr noundef %pCur, i8 noundef zeroext %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %flags.addr = alloca i8, align 1
  %p = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  %iCellIdx = alloca i32, align 4
  %iCellDepth = alloca i32, align 4
  %info = alloca %struct.CellInfo, align 8
  %bSkipnext = alloca i32, align 4
  %bPreserve = alloca i8, align 1
  %pLeaf = alloca ptr, align 8
  %nCell83 = alloca i32, align 4
  %n = alloca i32, align 4
  %pTmp = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i8 %flags, ptr %flags.addr, align 1
  %0 = load ptr, ptr %pCur.addr, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pBtree, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pBt1, align 8
  store ptr %3, ptr %pBt, align 8
  store i32 0, ptr %bSkipnext, align 4
  %4 = load i8, ptr %flags.addr, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 2
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, ptr %bPreserve, align 1
  %5 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %eState, align 8
  %conv3 = zext i8 %6 to i32
  %cmp = icmp eq i32 %conv3, 3
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @btreeRestoreCursorPosition(ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 13
  %11 = load i8, ptr %iPage, align 4
  %conv7 = sext i8 %11 to i32
  store i32 %conv7, ptr %iCellDepth, align 4
  %12 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 15
  %13 = load i16, ptr %ix, align 2
  %conv8 = zext i16 %13 to i32
  store i32 %conv8, ptr %iCellIdx, align 4
  %14 = load ptr, ptr %pCur.addr, align 8
  %pPage9 = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %pPage9, align 8
  store ptr %15, ptr %pPage, align 8
  %16 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %16, i32 0, i32 19
  %17 = load ptr, ptr %aData, align 8
  %18 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %18, i32 0, i32 15
  %19 = load i16, ptr %maskPage, align 2
  %conv10 = zext i16 %19 to i32
  %20 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 21
  %21 = load ptr, ptr %aCellIdx, align 8
  %22 = load i32, ptr %iCellIdx, align 4
  %mul = mul nsw i32 2, %22
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %21, i64 %idxprom
  %arrayidx11 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %23 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %23 to i32
  %shl = shl i32 %conv12, 8
  %24 = load ptr, ptr %pPage, align 8
  %aCellIdx13 = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 21
  %25 = load ptr, ptr %aCellIdx13, align 8
  %26 = load i32, ptr %iCellIdx, align 4
  %mul14 = mul nsw i32 2, %26
  %idxprom15 = sext i32 %mul14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %25, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds i8, ptr %arrayidx16, i64 1
  %27 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  %or = or i32 %shl, %conv18
  %and19 = and i32 %conv10, %or
  %idx.ext = sext i32 %and19 to i64
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %28 = load ptr, ptr %pPage, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 13
  %29 = load i32, ptr %nFree, align 4
  %cmp20 = icmp slt i32 %29, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end6
  %30 = load ptr, ptr %pPage, align 8
  %call22 = call i32 @btreeComputeFreeSpace(ptr noundef %30)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  store i32 11, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %land.lhs.true, %if.end6
  %31 = load i8, ptr %bPreserve, align 1
  %tobool26 = icmp ne i8 %31, 0
  br i1 %tobool26, label %if.then27, label %if.end46

if.then27:                                        ; preds = %if.end25
  %32 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %32, i32 0, i32 5
  %33 = load i8, ptr %leaf, align 8
  %tobool28 = icmp ne i8 %33, 0
  br i1 %tobool28, label %lor.lhs.false, label %if.then40

lor.lhs.false:                                    ; preds = %if.then27
  %34 = load ptr, ptr %pPage, align 8
  %nFree29 = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 13
  %35 = load i32, ptr %nFree29, align 4
  %36 = load ptr, ptr %pPage, align 8
  %37 = load ptr, ptr %pCell, align 8
  %call30 = call zeroext i16 @cellSizePtr(ptr noundef %36, ptr noundef %37)
  %conv31 = zext i16 %call30 to i32
  %add = add nsw i32 %35, %conv31
  %add32 = add nsw i32 %add, 2
  %38 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %38, i32 0, i32 16
  %39 = load i32, ptr %usableSize, align 4
  %mul33 = mul i32 %39, 2
  %div = udiv i32 %mul33, 3
  %cmp34 = icmp sgt i32 %add32, %div
  br i1 %cmp34, label %if.then40, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false
  %40 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %40, i32 0, i32 14
  %41 = load i16, ptr %nCell, align 8
  %conv37 = zext i16 %41 to i32
  %cmp38 = icmp eq i32 %conv37, 1
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %lor.lhs.false36, %lor.lhs.false, %if.then27
  %42 = load ptr, ptr %pCur.addr, align 8
  %call41 = call i32 @saveCursorKey(ptr noundef %42)
  store i32 %call41, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %tobool42 = icmp ne i32 %43, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then40
  %44 = load i32, ptr %rc, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.then40
  br label %if.end45

if.else:                                          ; preds = %lor.lhs.false36
  store i32 1, ptr %bSkipnext, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end25
  %45 = load ptr, ptr %pPage, align 8
  %leaf47 = getelementptr inbounds nuw %struct.MemPage, ptr %45, i32 0, i32 5
  %46 = load i8, ptr %leaf47, align 8
  %tobool48 = icmp ne i8 %46, 0
  br i1 %tobool48, label %if.end54, label %if.then49

if.then49:                                        ; preds = %if.end46
  %47 = load ptr, ptr %pCur.addr, align 8
  %call50 = call i32 @sqlite3BtreePrevious(ptr noundef %47, i32 noundef 0)
  store i32 %call50, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %tobool51 = icmp ne i32 %48, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then49
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end46
  %50 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %50, i32 0, i32 1
  %51 = load i8, ptr %curFlags, align 1
  %conv55 = zext i8 %51 to i32
  %and56 = and i32 %conv55, 32
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.end54
  %52 = load ptr, ptr %pBt, align 8
  %53 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %53, i32 0, i32 12
  %54 = load i32, ptr %pgnoRoot, align 8
  %55 = load ptr, ptr %pCur.addr, align 8
  %call59 = call i32 @saveAllCursors(ptr noundef %52, i32 noundef %54, ptr noundef %55)
  store i32 %call59, ptr %rc, align 4
  %56 = load i32, ptr %rc, align 4
  %tobool60 = icmp ne i32 %56, 0
  br i1 %tobool60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then58
  %57 = load i32, ptr %rc, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end54
  %58 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.BtCursor, ptr %58, i32 0, i32 17
  %59 = load ptr, ptr %pKeyInfo, align 8
  %cmp64 = icmp eq ptr %59, null
  br i1 %cmp64, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end63
  %60 = load ptr, ptr %p, align 8
  %61 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot67 = getelementptr inbounds nuw %struct.BtCursor, ptr %61, i32 0, i32 12
  %62 = load i32, ptr %pgnoRoot67, align 8
  %63 = load ptr, ptr %pCur.addr, align 8
  %info68 = getelementptr inbounds nuw %struct.BtCursor, ptr %63, i32 0, i32 10
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %info68, i32 0, i32 0
  %64 = load i64, ptr %nKey, align 8
  call void @invalidateIncrblobCursors(ptr noundef %60, i32 noundef %62, i64 noundef %64, i32 noundef 0)
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63
  %65 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %65, i32 0, i32 23
  %66 = load ptr, ptr %pDbPage, align 8
  %call70 = call i32 @sqlite3PagerWrite(ptr noundef %66)
  store i32 %call70, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  %tobool71 = icmp ne i32 %67, 0
  br i1 %tobool71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end69
  %68 = load i32, ptr %rc, align 4
  store i32 %68, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end69
  %69 = load ptr, ptr %pPage, align 8
  %70 = load ptr, ptr %pCell, align 8
  %call74 = call i32 @clearCell(ptr noundef %69, ptr noundef %70, ptr noundef %info)
  store i32 %call74, ptr %rc, align 4
  %71 = load ptr, ptr %pPage, align 8
  %72 = load i32, ptr %iCellIdx, align 4
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %73 = load i16, ptr %nSize, align 2
  %conv75 = zext i16 %73 to i32
  call void @dropCell(ptr noundef %71, i32 noundef %72, i32 noundef %conv75, ptr noundef %rc)
  %74 = load i32, ptr %rc, align 4
  %tobool76 = icmp ne i32 %74, 0
  br i1 %tobool76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  %75 = load i32, ptr %rc, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.end73
  %76 = load ptr, ptr %pPage, align 8
  %leaf79 = getelementptr inbounds nuw %struct.MemPage, ptr %76, i32 0, i32 5
  %77 = load i8, ptr %leaf79, align 8
  %tobool80 = icmp ne i8 %77, 0
  br i1 %tobool80, label %if.end154, label %if.then81

if.then81:                                        ; preds = %if.end78
  %78 = load ptr, ptr %pCur.addr, align 8
  %pPage82 = getelementptr inbounds nuw %struct.BtCursor, ptr %78, i32 0, i32 18
  %79 = load ptr, ptr %pPage82, align 8
  store ptr %79, ptr %pLeaf, align 8
  %80 = load ptr, ptr %pLeaf, align 8
  %nFree84 = getelementptr inbounds nuw %struct.MemPage, ptr %80, i32 0, i32 13
  %81 = load i32, ptr %nFree84, align 4
  %cmp85 = icmp slt i32 %81, 0
  br i1 %cmp85, label %if.then87, label %if.end92

if.then87:                                        ; preds = %if.then81
  %82 = load ptr, ptr %pLeaf, align 8
  %call88 = call i32 @btreeComputeFreeSpace(ptr noundef %82)
  store i32 %call88, ptr %rc, align 4
  %83 = load i32, ptr %rc, align 4
  %tobool89 = icmp ne i32 %83, 0
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then87
  %84 = load i32, ptr %rc, align 4
  store i32 %84, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.then87
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then81
  %85 = load i32, ptr %iCellDepth, align 4
  %86 = load ptr, ptr %pCur.addr, align 8
  %iPage93 = getelementptr inbounds nuw %struct.BtCursor, ptr %86, i32 0, i32 13
  %87 = load i8, ptr %iPage93, align 4
  %conv94 = sext i8 %87 to i32
  %sub = sub nsw i32 %conv94, 1
  %cmp95 = icmp slt i32 %85, %sub
  br i1 %cmp95, label %if.then97, label %if.else101

if.then97:                                        ; preds = %if.end92
  %88 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %88, i32 0, i32 19
  %89 = load i32, ptr %iCellDepth, align 4
  %add98 = add nsw i32 %89, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 %idxprom99
  %90 = load ptr, ptr %arrayidx100, align 8
  %pgno = getelementptr inbounds nuw %struct.MemPage, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %pgno, align 4
  store i32 %91, ptr %n, align 4
  br label %if.end104

if.else101:                                       ; preds = %if.end92
  %92 = load ptr, ptr %pCur.addr, align 8
  %pPage102 = getelementptr inbounds nuw %struct.BtCursor, ptr %92, i32 0, i32 18
  %93 = load ptr, ptr %pPage102, align 8
  %pgno103 = getelementptr inbounds nuw %struct.MemPage, ptr %93, i32 0, i32 4
  %94 = load i32, ptr %pgno103, align 4
  store i32 %94, ptr %n, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.then97
  %95 = load ptr, ptr %pLeaf, align 8
  %aData105 = getelementptr inbounds nuw %struct.MemPage, ptr %95, i32 0, i32 19
  %96 = load ptr, ptr %aData105, align 8
  %97 = load ptr, ptr %pLeaf, align 8
  %maskPage106 = getelementptr inbounds nuw %struct.MemPage, ptr %97, i32 0, i32 15
  %98 = load i16, ptr %maskPage106, align 2
  %conv107 = zext i16 %98 to i32
  %99 = load ptr, ptr %pLeaf, align 8
  %aCellIdx108 = getelementptr inbounds nuw %struct.MemPage, ptr %99, i32 0, i32 21
  %100 = load ptr, ptr %aCellIdx108, align 8
  %101 = load ptr, ptr %pLeaf, align 8
  %nCell109 = getelementptr inbounds nuw %struct.MemPage, ptr %101, i32 0, i32 14
  %102 = load i16, ptr %nCell109, align 8
  %conv110 = zext i16 %102 to i32
  %sub111 = sub nsw i32 %conv110, 1
  %mul112 = mul nsw i32 2, %sub111
  %idxprom113 = sext i32 %mul112 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %100, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds i8, ptr %arrayidx114, i64 0
  %103 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %103 to i32
  %shl117 = shl i32 %conv116, 8
  %104 = load ptr, ptr %pLeaf, align 8
  %aCellIdx118 = getelementptr inbounds nuw %struct.MemPage, ptr %104, i32 0, i32 21
  %105 = load ptr, ptr %aCellIdx118, align 8
  %106 = load ptr, ptr %pLeaf, align 8
  %nCell119 = getelementptr inbounds nuw %struct.MemPage, ptr %106, i32 0, i32 14
  %107 = load i16, ptr %nCell119, align 8
  %conv120 = zext i16 %107 to i32
  %sub121 = sub nsw i32 %conv120, 1
  %mul122 = mul nsw i32 2, %sub121
  %idxprom123 = sext i32 %mul122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %105, i64 %idxprom123
  %arrayidx125 = getelementptr inbounds i8, ptr %arrayidx124, i64 1
  %108 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %108 to i32
  %or127 = or i32 %shl117, %conv126
  %and128 = and i32 %conv107, %or127
  %idx.ext129 = sext i32 %and128 to i64
  %add.ptr130 = getelementptr inbounds i8, ptr %96, i64 %idx.ext129
  store ptr %add.ptr130, ptr %pCell, align 8
  %109 = load ptr, ptr %pCell, align 8
  %110 = load ptr, ptr %pLeaf, align 8
  %aData131 = getelementptr inbounds nuw %struct.MemPage, ptr %110, i32 0, i32 19
  %111 = load ptr, ptr %aData131, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %111, i64 4
  %cmp133 = icmp ult ptr %109, %arrayidx132
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end104
  %call136 = call i32 @sqlite3CorruptError(i32 noundef 72341)
  store i32 %call136, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end104
  %112 = load ptr, ptr %pLeaf, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %112, i32 0, i32 24
  %113 = load ptr, ptr %xCellSize, align 8
  %114 = load ptr, ptr %pLeaf, align 8
  %115 = load ptr, ptr %pCell, align 8
  %call138 = call zeroext i16 %113(ptr noundef %114, ptr noundef %115)
  %conv139 = zext i16 %call138 to i32
  store i32 %conv139, ptr %nCell83, align 4
  %116 = load ptr, ptr %pBt, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.BtShared, ptr %116, i32 0, i32 27
  %117 = load ptr, ptr %pTmpSpace, align 8
  store ptr %117, ptr %pTmp, align 8
  %118 = load ptr, ptr %pLeaf, align 8
  %pDbPage140 = getelementptr inbounds nuw %struct.MemPage, ptr %118, i32 0, i32 23
  %119 = load ptr, ptr %pDbPage140, align 8
  %call141 = call i32 @sqlite3PagerWrite(ptr noundef %119)
  store i32 %call141, ptr %rc, align 4
  %120 = load i32, ptr %rc, align 4
  %cmp142 = icmp eq i32 %120, 0
  br i1 %cmp142, label %if.then144, label %if.end147

if.then144:                                       ; preds = %if.end137
  %121 = load ptr, ptr %pPage, align 8
  %122 = load i32, ptr %iCellIdx, align 4
  %123 = load ptr, ptr %pCell, align 8
  %add.ptr145 = getelementptr inbounds i8, ptr %123, i64 -4
  %124 = load i32, ptr %nCell83, align 4
  %add146 = add nsw i32 %124, 4
  %125 = load ptr, ptr %pTmp, align 8
  %126 = load i32, ptr %n, align 4
  call void @insertCell(ptr noundef %121, i32 noundef %122, ptr noundef %add.ptr145, i32 noundef %add146, ptr noundef %125, i32 noundef %126, ptr noundef %rc)
  br label %if.end147

if.end147:                                        ; preds = %if.then144, %if.end137
  %127 = load ptr, ptr %pLeaf, align 8
  %128 = load ptr, ptr %pLeaf, align 8
  %nCell148 = getelementptr inbounds nuw %struct.MemPage, ptr %128, i32 0, i32 14
  %129 = load i16, ptr %nCell148, align 8
  %conv149 = zext i16 %129 to i32
  %sub150 = sub nsw i32 %conv149, 1
  %130 = load i32, ptr %nCell83, align 4
  call void @dropCell(ptr noundef %127, i32 noundef %sub150, i32 noundef %130, ptr noundef %rc)
  %131 = load i32, ptr %rc, align 4
  %tobool151 = icmp ne i32 %131, 0
  br i1 %tobool151, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.end147
  %132 = load i32, ptr %rc, align 4
  store i32 %132, ptr %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.end147
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.end78
  %133 = load ptr, ptr %pCur.addr, align 8
  %call155 = call i32 @balance(ptr noundef %133)
  store i32 %call155, ptr %rc, align 4
  %134 = load i32, ptr %rc, align 4
  %cmp156 = icmp eq i32 %134, 0
  br i1 %cmp156, label %land.lhs.true158, label %if.end181

land.lhs.true158:                                 ; preds = %if.end154
  %135 = load ptr, ptr %pCur.addr, align 8
  %iPage159 = getelementptr inbounds nuw %struct.BtCursor, ptr %135, i32 0, i32 13
  %136 = load i8, ptr %iPage159, align 4
  %conv160 = sext i8 %136 to i32
  %137 = load i32, ptr %iCellDepth, align 4
  %cmp161 = icmp sgt i32 %conv160, %137
  br i1 %cmp161, label %if.then163, label %if.end181

if.then163:                                       ; preds = %land.lhs.true158
  %138 = load ptr, ptr %pCur.addr, align 8
  %pPage164 = getelementptr inbounds nuw %struct.BtCursor, ptr %138, i32 0, i32 18
  %139 = load ptr, ptr %pPage164, align 8
  call void @releasePageNotNull(ptr noundef %139)
  %140 = load ptr, ptr %pCur.addr, align 8
  %iPage165 = getelementptr inbounds nuw %struct.BtCursor, ptr %140, i32 0, i32 13
  %141 = load i8, ptr %iPage165, align 4
  %dec = add i8 %141, -1
  store i8 %dec, ptr %iPage165, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then163
  %142 = load ptr, ptr %pCur.addr, align 8
  %iPage166 = getelementptr inbounds nuw %struct.BtCursor, ptr %142, i32 0, i32 13
  %143 = load i8, ptr %iPage166, align 4
  %conv167 = sext i8 %143 to i32
  %144 = load i32, ptr %iCellDepth, align 4
  %cmp168 = icmp sgt i32 %conv167, %144
  br i1 %cmp168, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %145 = load ptr, ptr %pCur.addr, align 8
  %apPage170 = getelementptr inbounds nuw %struct.BtCursor, ptr %145, i32 0, i32 19
  %146 = load ptr, ptr %pCur.addr, align 8
  %iPage171 = getelementptr inbounds nuw %struct.BtCursor, ptr %146, i32 0, i32 13
  %147 = load i8, ptr %iPage171, align 4
  %dec172 = add i8 %147, -1
  store i8 %dec172, ptr %iPage171, align 4
  %idxprom173 = sext i8 %147 to i64
  %arrayidx174 = getelementptr inbounds [19 x ptr], ptr %apPage170, i64 0, i64 %idxprom173
  %148 = load ptr, ptr %arrayidx174, align 8
  call void @releasePage(ptr noundef %148)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %149 = load ptr, ptr %pCur.addr, align 8
  %apPage175 = getelementptr inbounds nuw %struct.BtCursor, ptr %149, i32 0, i32 19
  %150 = load ptr, ptr %pCur.addr, align 8
  %iPage176 = getelementptr inbounds nuw %struct.BtCursor, ptr %150, i32 0, i32 13
  %151 = load i8, ptr %iPage176, align 4
  %idxprom177 = sext i8 %151 to i64
  %arrayidx178 = getelementptr inbounds [19 x ptr], ptr %apPage175, i64 0, i64 %idxprom177
  %152 = load ptr, ptr %arrayidx178, align 8
  %153 = load ptr, ptr %pCur.addr, align 8
  %pPage179 = getelementptr inbounds nuw %struct.BtCursor, ptr %153, i32 0, i32 18
  store ptr %152, ptr %pPage179, align 8
  %154 = load ptr, ptr %pCur.addr, align 8
  %call180 = call i32 @balance(ptr noundef %154)
  store i32 %call180, ptr %rc, align 4
  br label %if.end181

if.end181:                                        ; preds = %while.end, %land.lhs.true158, %if.end154
  %155 = load i32, ptr %rc, align 4
  %cmp182 = icmp eq i32 %155, 0
  br i1 %cmp182, label %if.then184, label %if.end212

if.then184:                                       ; preds = %if.end181
  %156 = load i32, ptr %bSkipnext, align 4
  %tobool185 = icmp ne i32 %156, 0
  br i1 %tobool185, label %if.then186, label %if.else201

if.then186:                                       ; preds = %if.then184
  %157 = load ptr, ptr %pCur.addr, align 8
  %eState187 = getelementptr inbounds nuw %struct.BtCursor, ptr %157, i32 0, i32 0
  store i8 2, ptr %eState187, align 8
  %158 = load i32, ptr %iCellIdx, align 4
  %159 = load ptr, ptr %pPage, align 8
  %nCell188 = getelementptr inbounds nuw %struct.MemPage, ptr %159, i32 0, i32 14
  %160 = load i16, ptr %nCell188, align 8
  %conv189 = zext i16 %160 to i32
  %cmp190 = icmp sge i32 %158, %conv189
  br i1 %cmp190, label %if.then192, label %if.else198

if.then192:                                       ; preds = %if.then186
  %161 = load ptr, ptr %pCur.addr, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %161, i32 0, i32 4
  store i32 -1, ptr %skipNext, align 4
  %162 = load ptr, ptr %pPage, align 8
  %nCell193 = getelementptr inbounds nuw %struct.MemPage, ptr %162, i32 0, i32 14
  %163 = load i16, ptr %nCell193, align 8
  %conv194 = zext i16 %163 to i32
  %sub195 = sub nsw i32 %conv194, 1
  %conv196 = trunc i32 %sub195 to i16
  %164 = load ptr, ptr %pCur.addr, align 8
  %ix197 = getelementptr inbounds nuw %struct.BtCursor, ptr %164, i32 0, i32 15
  store i16 %conv196, ptr %ix197, align 2
  br label %if.end200

if.else198:                                       ; preds = %if.then186
  %165 = load ptr, ptr %pCur.addr, align 8
  %skipNext199 = getelementptr inbounds nuw %struct.BtCursor, ptr %165, i32 0, i32 4
  store i32 1, ptr %skipNext199, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.else198, %if.then192
  br label %if.end211

if.else201:                                       ; preds = %if.then184
  %166 = load ptr, ptr %pCur.addr, align 8
  %call202 = call i32 @moveToRoot(ptr noundef %166)
  store i32 %call202, ptr %rc, align 4
  %167 = load i8, ptr %bPreserve, align 1
  %tobool203 = icmp ne i8 %167, 0
  br i1 %tobool203, label %if.then204, label %if.end206

if.then204:                                       ; preds = %if.else201
  %168 = load ptr, ptr %pCur.addr, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %168)
  %169 = load ptr, ptr %pCur.addr, align 8
  %eState205 = getelementptr inbounds nuw %struct.BtCursor, ptr %169, i32 0, i32 0
  store i8 3, ptr %eState205, align 8
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.else201
  %170 = load i32, ptr %rc, align 4
  %cmp207 = icmp eq i32 %170, 16
  br i1 %cmp207, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end206
  store i32 0, ptr %rc, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then209, %if.end206
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.end200
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end181
  %171 = load i32, ptr %rc, align 4
  store i32 %171, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end212, %if.then152, %if.then135, %if.then90, %if.then77, %if.then72, %if.then61, %if.then52, %if.then43, %if.then24, %if.then5
  %172 = load i32, ptr %retval, align 4
  ret i32 %172
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeRestoreCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRoot(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @invalidateIncrblobCursors(ptr noundef, i32 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @clearCell(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dropCell(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @insertCell(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @balance(ptr noundef) #0

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
