; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.363 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.364 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.365 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.366 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.367 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.368 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.369 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.370 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.371 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.372 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.373 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.374 = external hidden unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkList(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkAppendMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkPtrmap(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @checkTreePage(ptr noundef %pCheck, i32 noundef %iPage, ptr noundef %piMinKey, i64 noundef %maxKey) #0 {
entry:
  %retval = alloca i32, align 4
  %pCheck.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %piMinKey.addr = alloca ptr, align 8
  %maxKey.addr = alloca i64, align 8
  %pPage = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %depth = alloca i32, align 4
  %d2 = alloca i32, align 4
  %pgno = alloca i32, align 4
  %nFrag = alloca i32, align 4
  %hdr = alloca i32, align 4
  %cellStart = alloca i32, align 4
  %nCell = alloca i32, align 4
  %doCoverageCheck = alloca i32, align 4
  %keyCanBeEqual = alloca i32, align 4
  %data = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  %pCellIdx = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pc = alloca i32, align 4
  %usableSize = alloca i32, align 4
  %contentOffset = alloca i32, align 4
  %heap = alloca ptr, align 8
  %x = alloca i32, align 4
  %prev = alloca i32, align 4
  %saved_zPfx = alloca ptr, align 8
  %saved_v1 = alloca i32, align 4
  %saved_v2 = alloca i32, align 4
  %savedIsInit = alloca i8, align 1
  %info = alloca %struct.CellInfo, align 8
  %nPage = alloca i32, align 4
  %pgnoOvfl = alloca i32, align 4
  %size = alloca i32, align 4
  %size203 = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store ptr %piMinKey, ptr %piMinKey.addr, align 8
  store i64 %maxKey, ptr %maxKey.addr, align 8
  store ptr null, ptr %pPage, align 8
  store i32 -1, ptr %depth, align 4
  store i32 1, ptr %doCoverageCheck, align 4
  store i32 1, ptr %keyCanBeEqual, align 4
  store ptr null, ptr %heap, align 8
  store i32 0, ptr %prev, align 4
  %0 = load ptr, ptr %pCheck.addr, align 8
  %zPfx = getelementptr inbounds nuw %struct.IntegrityCk, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %zPfx, align 8
  store ptr %1, ptr %saved_zPfx, align 8
  %2 = load ptr, ptr %pCheck.addr, align 8
  %v1 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %v1, align 8
  store i32 %3, ptr %saved_v1, align 4
  %4 = load ptr, ptr %pCheck.addr, align 8
  %v2 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %v2, align 4
  store i32 %5, ptr %saved_v2, align 4
  store i8 0, ptr %savedIsInit, align 1
  %6 = load ptr, ptr %pCheck.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pBt1, align 8
  store ptr %7, ptr %pBt, align 8
  %8 = load ptr, ptr %pBt, align 8
  %usableSize2 = getelementptr inbounds nuw %struct.BtShared, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %usableSize2, align 4
  store i32 %9, ptr %usableSize, align 4
  %10 = load i32, ptr %iPage.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %pCheck.addr, align 8
  %12 = load i32, ptr %iPage.addr, align 4
  %call = call i32 @checkRef(ptr noundef %11, i32 noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %13 = load ptr, ptr %pCheck.addr, align 8
  %zPfx5 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %13, i32 0, i32 7
  store ptr @.str.363, ptr %zPfx5, align 8
  %14 = load i32, ptr %iPage.addr, align 4
  %15 = load ptr, ptr %pCheck.addr, align 8
  %v16 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %15, i32 0, i32 8
  store i32 %14, ptr %v16, align 8
  %16 = load ptr, ptr %pBt, align 8
  %17 = load i32, ptr %iPage.addr, align 4
  %call7 = call i32 @btreeGetPage(ptr noundef %16, i32 noundef %17, ptr noundef %pPage, i32 noundef 0)
  store i32 %call7, ptr %rc, align 4
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  %18 = load ptr, ptr %pCheck.addr, align 8
  %19 = load i32, ptr %rc, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %18, ptr noundef @.str.364, i32 noundef %19)
  br label %end_of_check

if.end10:                                         ; preds = %if.end4
  %20 = load ptr, ptr %pPage, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 0
  %21 = load i8, ptr %isInit, align 8
  store i8 %21, ptr %savedIsInit, align 1
  %22 = load ptr, ptr %pPage, align 8
  %isInit11 = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 0
  store i8 0, ptr %isInit11, align 8
  %23 = load ptr, ptr %pPage, align 8
  %call12 = call i32 @btreeInitPage(ptr noundef %23)
  store i32 %call12, ptr %rc, align 4
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %24 = load ptr, ptr %pCheck.addr, align 8
  %25 = load i32, ptr %rc, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %24, ptr noundef @.str.365, i32 noundef %25)
  br label %end_of_check

if.end15:                                         ; preds = %if.end10
  %26 = load ptr, ptr %pPage, align 8
  %call16 = call i32 @btreeComputeFreeSpace(ptr noundef %26)
  store i32 %call16, ptr %rc, align 4
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  %27 = load ptr, ptr %pCheck.addr, align 8
  %28 = load i32, ptr %rc, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %27, ptr noundef @.str.366, i32 noundef %28)
  br label %end_of_check

if.end19:                                         ; preds = %if.end15
  %29 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %29, i32 0, i32 19
  %30 = load ptr, ptr %aData, align 8
  store ptr %30, ptr %data, align 8
  %31 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %31, i32 0, i32 6
  %32 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %32 to i32
  store i32 %conv, ptr %hdr, align 4
  %33 = load ptr, ptr %pCheck.addr, align 8
  %zPfx20 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %33, i32 0, i32 7
  store ptr @.str.367, ptr %zPfx20, align 8
  %34 = load ptr, ptr %data, align 8
  %35 = load i32, ptr %hdr, align 4
  %add = add nsw i32 %35, 5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %34, i64 %idxprom
  %arrayidx21 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %36 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %36 to i32
  %shl = shl i32 %conv22, 8
  %37 = load ptr, ptr %data, align 8
  %38 = load i32, ptr %hdr, align 4
  %add23 = add nsw i32 %38, 5
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %37, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds i8, ptr %arrayidx25, i64 1
  %39 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %39 to i32
  %or = or i32 %shl, %conv27
  %sub = sub nsw i32 %or, 1
  %and = and i32 %sub, 65535
  %add28 = add nsw i32 %and, 1
  store i32 %add28, ptr %contentOffset, align 4
  %40 = load ptr, ptr %data, align 8
  %41 = load i32, ptr %hdr, align 4
  %add29 = add nsw i32 %41, 3
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %40, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds i8, ptr %arrayidx31, i64 0
  %42 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %42 to i32
  %shl34 = shl i32 %conv33, 8
  %43 = load ptr, ptr %data, align 8
  %44 = load i32, ptr %hdr, align 4
  %add35 = add nsw i32 %44, 3
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %43, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds i8, ptr %arrayidx37, i64 1
  %45 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %45 to i32
  %or40 = or i32 %shl34, %conv39
  store i32 %or40, ptr %nCell, align 4
  %46 = load i32, ptr %hdr, align 4
  %add41 = add nsw i32 %46, 12
  %47 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %47, i32 0, i32 5
  %48 = load i8, ptr %leaf, align 8
  %conv42 = zext i8 %48 to i32
  %mul = mul nsw i32 4, %conv42
  %sub43 = sub nsw i32 %add41, %mul
  store i32 %sub43, ptr %cellStart, align 4
  %49 = load ptr, ptr %data, align 8
  %50 = load i32, ptr %cellStart, align 4
  %51 = load i32, ptr %nCell, align 4
  %sub44 = sub nsw i32 %51, 1
  %mul45 = mul nsw i32 2, %sub44
  %add46 = add nsw i32 %50, %mul45
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %49, i64 %idxprom47
  store ptr %arrayidx48, ptr %pCellIdx, align 8
  %52 = load ptr, ptr %pPage, align 8
  %leaf49 = getelementptr inbounds nuw %struct.MemPage, ptr %52, i32 0, i32 5
  %53 = load i8, ptr %leaf49, align 8
  %tobool50 = icmp ne i8 %53, 0
  br i1 %tobool50, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end19
  %54 = load ptr, ptr %data, align 8
  %55 = load i32, ptr %hdr, align 4
  %add52 = add nsw i32 %55, 8
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %54, i64 %idxprom53
  %call55 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx54)
  store i32 %call55, ptr %pgno, align 4
  %56 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %56, i32 0, i32 5
  %57 = load i8, ptr %autoVacuum, align 1
  %tobool56 = icmp ne i8 %57, 0
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then51
  %58 = load ptr, ptr %pCheck.addr, align 8
  %zPfx58 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %58, i32 0, i32 7
  store ptr @.str.368, ptr %zPfx58, align 8
  %59 = load ptr, ptr %pCheck.addr, align 8
  %60 = load i32, ptr %pgno, align 4
  %61 = load i32, ptr %iPage.addr, align 4
  call void @checkPtrmap(ptr noundef %59, i32 noundef %60, i8 noundef zeroext 5, i32 noundef %61)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then51
  %62 = load ptr, ptr %pCheck.addr, align 8
  %63 = load i32, ptr %pgno, align 4
  %64 = load i64, ptr %maxKey.addr, align 8
  %call60 = call i32 @checkTreePage(ptr noundef %62, i32 noundef %63, ptr noundef %maxKey.addr, i64 noundef %64)
  store i32 %call60, ptr %depth, align 4
  store i32 0, ptr %keyCanBeEqual, align 4
  br label %if.end63

if.else:                                          ; preds = %if.end19
  %65 = load ptr, ptr %pCheck.addr, align 8
  %heap61 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %65, i32 0, i32 11
  %66 = load ptr, ptr %heap61, align 8
  store ptr %66, ptr %heap, align 8
  %67 = load ptr, ptr %heap, align 8
  %arrayidx62 = getelementptr inbounds i32, ptr %67, i64 0
  store i32 0, ptr %arrayidx62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.end59
  %68 = load i32, ptr %nCell, align 4
  %sub64 = sub nsw i32 %68, 1
  store i32 %sub64, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %69 = load i32, ptr %i, align 4
  %cmp65 = icmp sge i32 %69, 0
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %70 = load ptr, ptr %pCheck.addr, align 8
  %mxErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %70, i32 0, i32 4
  %71 = load i32, ptr %mxErr, align 4
  %tobool67 = icmp ne i32 %71, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %72 = phi i1 [ false, %for.cond ], [ %tobool67, %land.rhs ]
  br i1 %72, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %73 = load i32, ptr %i, align 4
  %74 = load ptr, ptr %pCheck.addr, align 8
  %v268 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %74, i32 0, i32 9
  store i32 %73, ptr %v268, align 4
  %75 = load ptr, ptr %pCellIdx, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %76 to i32
  %shl71 = shl i32 %conv70, 8
  %77 = load ptr, ptr %pCellIdx, align 8
  %arrayidx72 = getelementptr inbounds i8, ptr %77, i64 1
  %78 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %78 to i32
  %or74 = or i32 %shl71, %conv73
  store i32 %or74, ptr %pc, align 4
  %79 = load ptr, ptr %pCellIdx, align 8
  %add.ptr = getelementptr inbounds i8, ptr %79, i64 -2
  store ptr %add.ptr, ptr %pCellIdx, align 8
  %80 = load i32, ptr %pc, align 4
  %81 = load i32, ptr %contentOffset, align 4
  %cmp75 = icmp ult i32 %80, %81
  br i1 %cmp75, label %if.then80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %82 = load i32, ptr %pc, align 4
  %83 = load i32, ptr %usableSize, align 4
  %sub77 = sub i32 %83, 4
  %cmp78 = icmp ugt i32 %82, %sub77
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %lor.lhs.false, %for.body
  %84 = load ptr, ptr %pCheck.addr, align 8
  %85 = load i32, ptr %pc, align 4
  %86 = load i32, ptr %contentOffset, align 4
  %87 = load i32, ptr %usableSize, align 4
  %sub81 = sub i32 %87, 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %84, ptr noundef @.str.369, i32 noundef %85, i32 noundef %86, i32 noundef %sub81)
  store i32 0, ptr %doCoverageCheck, align 4
  br label %for.inc

if.end82:                                         ; preds = %lor.lhs.false
  %88 = load ptr, ptr %data, align 8
  %89 = load i32, ptr %pc, align 4
  %idxprom83 = zext i32 %89 to i64
  %arrayidx84 = getelementptr inbounds nuw i8, ptr %88, i64 %idxprom83
  store ptr %arrayidx84, ptr %pCell, align 8
  %90 = load ptr, ptr %pPage, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %90, i32 0, i32 25
  %91 = load ptr, ptr %xParseCell, align 8
  %92 = load ptr, ptr %pPage, align 8
  %93 = load ptr, ptr %pCell, align 8
  call void %91(ptr noundef %92, ptr noundef %93, ptr noundef %info)
  %94 = load i32, ptr %pc, align 4
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %95 = load i16, ptr %nSize, align 2
  %conv85 = zext i16 %95 to i32
  %add86 = add i32 %94, %conv85
  %96 = load i32, ptr %usableSize, align 4
  %cmp87 = icmp ugt i32 %add86, %96
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.end82
  %97 = load ptr, ptr %pCheck.addr, align 8
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %97, ptr noundef @.str.370)
  store i32 0, ptr %doCoverageCheck, align 4
  br label %for.inc

if.end90:                                         ; preds = %if.end82
  %98 = load ptr, ptr %pPage, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %98, i32 0, i32 2
  %99 = load i8, ptr %intKey, align 2
  %tobool91 = icmp ne i8 %99, 0
  br i1 %tobool91, label %if.then92, label %if.end103

if.then92:                                        ; preds = %if.end90
  %100 = load i32, ptr %keyCanBeEqual, align 4
  %tobool93 = icmp ne i32 %100, 0
  br i1 %tobool93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then92
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %101 = load i64, ptr %nKey, align 8
  %102 = load i64, ptr %maxKey.addr, align 8
  %cmp94 = icmp sgt i64 %101, %102
  br i1 %cmp94, label %if.then99, label %if.end101

cond.false:                                       ; preds = %if.then92
  %nKey96 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %103 = load i64, ptr %nKey96, align 8
  %104 = load i64, ptr %maxKey.addr, align 8
  %cmp97 = icmp sge i64 %103, %104
  br i1 %cmp97, label %if.then99, label %if.end101

if.then99:                                        ; preds = %cond.false, %cond.true
  %105 = load ptr, ptr %pCheck.addr, align 8
  %nKey100 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %106 = load i64, ptr %nKey100, align 8
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %105, ptr noundef @.str.371, i64 noundef %106)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %cond.false, %cond.true
  %nKey102 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %107 = load i64, ptr %nKey102, align 8
  store i64 %107, ptr %maxKey.addr, align 8
  store i32 0, ptr %keyCanBeEqual, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.end90
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 2
  %108 = load i32, ptr %nPayload, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %109 = load i16, ptr %nLocal, align 4
  %conv104 = zext i16 %109 to i32
  %cmp105 = icmp ugt i32 %108, %conv104
  br i1 %cmp105, label %if.then107, label %if.end125

if.then107:                                       ; preds = %if.end103
  %nPayload108 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 2
  %110 = load i32, ptr %nPayload108, align 8
  %nLocal109 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 3
  %111 = load i16, ptr %nLocal109, align 4
  %conv110 = zext i16 %111 to i32
  %sub111 = sub i32 %110, %conv110
  %112 = load i32, ptr %usableSize, align 4
  %add112 = add i32 %sub111, %112
  %sub113 = sub i32 %add112, 5
  %113 = load i32, ptr %usableSize, align 4
  %sub114 = sub i32 %113, 4
  %div = udiv i32 %sub113, %sub114
  store i32 %div, ptr %nPage, align 4
  %114 = load ptr, ptr %pCell, align 8
  %nSize115 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %115 = load i16, ptr %nSize115, align 2
  %conv116 = zext i16 %115 to i32
  %sub117 = sub nsw i32 %conv116, 4
  %idxprom118 = sext i32 %sub117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %114, i64 %idxprom118
  %call120 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx119)
  store i32 %call120, ptr %pgnoOvfl, align 4
  %116 = load ptr, ptr %pBt, align 8
  %autoVacuum121 = getelementptr inbounds nuw %struct.BtShared, ptr %116, i32 0, i32 5
  %117 = load i8, ptr %autoVacuum121, align 1
  %tobool122 = icmp ne i8 %117, 0
  br i1 %tobool122, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then107
  %118 = load ptr, ptr %pCheck.addr, align 8
  %119 = load i32, ptr %pgnoOvfl, align 4
  %120 = load i32, ptr %iPage.addr, align 4
  call void @checkPtrmap(ptr noundef %118, i32 noundef %119, i8 noundef zeroext 3, i32 noundef %120)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.then107
  %121 = load ptr, ptr %pCheck.addr, align 8
  %122 = load i32, ptr %pgnoOvfl, align 4
  %123 = load i32, ptr %nPage, align 4
  call void @checkList(ptr noundef %121, i32 noundef 0, i32 noundef %122, i32 noundef %123)
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end103
  %124 = load ptr, ptr %pPage, align 8
  %leaf126 = getelementptr inbounds nuw %struct.MemPage, ptr %124, i32 0, i32 5
  %125 = load i8, ptr %leaf126, align 8
  %tobool127 = icmp ne i8 %125, 0
  br i1 %tobool127, label %if.else139, label %if.then128

if.then128:                                       ; preds = %if.end125
  %126 = load ptr, ptr %pCell, align 8
  %call129 = call i32 @sqlite3Get4byte(ptr noundef %126)
  store i32 %call129, ptr %pgno, align 4
  %127 = load ptr, ptr %pBt, align 8
  %autoVacuum130 = getelementptr inbounds nuw %struct.BtShared, ptr %127, i32 0, i32 5
  %128 = load i8, ptr %autoVacuum130, align 1
  %tobool131 = icmp ne i8 %128, 0
  br i1 %tobool131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then128
  %129 = load ptr, ptr %pCheck.addr, align 8
  %130 = load i32, ptr %pgno, align 4
  %131 = load i32, ptr %iPage.addr, align 4
  call void @checkPtrmap(ptr noundef %129, i32 noundef %130, i8 noundef zeroext 5, i32 noundef %131)
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.then128
  %132 = load ptr, ptr %pCheck.addr, align 8
  %133 = load i32, ptr %pgno, align 4
  %134 = load i64, ptr %maxKey.addr, align 8
  %call134 = call i32 @checkTreePage(ptr noundef %132, i32 noundef %133, ptr noundef %maxKey.addr, i64 noundef %134)
  store i32 %call134, ptr %d2, align 4
  store i32 0, ptr %keyCanBeEqual, align 4
  %135 = load i32, ptr %d2, align 4
  %136 = load i32, ptr %depth, align 4
  %cmp135 = icmp ne i32 %135, %136
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end133
  %137 = load ptr, ptr %pCheck.addr, align 8
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %137, ptr noundef @.str.372)
  %138 = load i32, ptr %d2, align 4
  store i32 %138, ptr %depth, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end133
  br label %if.end146

if.else139:                                       ; preds = %if.end125
  %139 = load ptr, ptr %heap, align 8
  %140 = load i32, ptr %pc, align 4
  %shl140 = shl i32 %140, 16
  %141 = load i32, ptr %pc, align 4
  %nSize141 = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  %142 = load i16, ptr %nSize141, align 2
  %conv142 = zext i16 %142 to i32
  %add143 = add i32 %141, %conv142
  %sub144 = sub i32 %add143, 1
  %or145 = or i32 %shl140, %sub144
  call void @btreeHeapInsert(ptr noundef %139, i32 noundef %or145)
  br label %if.end146

if.end146:                                        ; preds = %if.else139, %if.end138
  br label %for.inc

for.inc:                                          ; preds = %if.end146, %if.then89, %if.then80
  %143 = load i32, ptr %i, align 4
  %dec = add nsw i32 %143, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %144 = load i64, ptr %maxKey.addr, align 8
  %145 = load ptr, ptr %piMinKey.addr, align 8
  store i64 %144, ptr %145, align 8
  %146 = load ptr, ptr %pCheck.addr, align 8
  %zPfx147 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %146, i32 0, i32 7
  store ptr null, ptr %zPfx147, align 8
  %147 = load i32, ptr %doCoverageCheck, align 4
  %tobool148 = icmp ne i32 %147, 0
  br i1 %tobool148, label %land.lhs.true, label %if.end268

land.lhs.true:                                    ; preds = %for.end
  %148 = load ptr, ptr %pCheck.addr, align 8
  %mxErr149 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %148, i32 0, i32 4
  %149 = load i32, ptr %mxErr149, align 4
  %cmp150 = icmp sgt i32 %149, 0
  br i1 %cmp150, label %if.then152, label %if.end268

if.then152:                                       ; preds = %land.lhs.true
  %150 = load ptr, ptr %pPage, align 8
  %leaf153 = getelementptr inbounds nuw %struct.MemPage, ptr %150, i32 0, i32 5
  %151 = load i8, ptr %leaf153, align 8
  %tobool154 = icmp ne i8 %151, 0
  br i1 %tobool154, label %if.end188, label %if.then155

if.then155:                                       ; preds = %if.then152
  %152 = load ptr, ptr %pCheck.addr, align 8
  %heap156 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %152, i32 0, i32 11
  %153 = load ptr, ptr %heap156, align 8
  store ptr %153, ptr %heap, align 8
  %154 = load ptr, ptr %heap, align 8
  %arrayidx157 = getelementptr inbounds i32, ptr %154, i64 0
  store i32 0, ptr %arrayidx157, align 4
  %155 = load i32, ptr %nCell, align 4
  %sub158 = sub nsw i32 %155, 1
  store i32 %sub158, ptr %i, align 4
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc185, %if.then155
  %156 = load i32, ptr %i, align 4
  %cmp160 = icmp sge i32 %156, 0
  br i1 %cmp160, label %for.body162, label %for.end187

for.body162:                                      ; preds = %for.cond159
  %157 = load ptr, ptr %data, align 8
  %158 = load i32, ptr %cellStart, align 4
  %159 = load i32, ptr %i, align 4
  %mul163 = mul nsw i32 %159, 2
  %add164 = add nsw i32 %158, %mul163
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds i8, ptr %157, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds i8, ptr %arrayidx166, i64 0
  %160 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %160 to i32
  %shl169 = shl i32 %conv168, 8
  %161 = load ptr, ptr %data, align 8
  %162 = load i32, ptr %cellStart, align 4
  %163 = load i32, ptr %i, align 4
  %mul170 = mul nsw i32 %163, 2
  %add171 = add nsw i32 %162, %mul170
  %idxprom172 = sext i32 %add171 to i64
  %arrayidx173 = getelementptr inbounds i8, ptr %161, i64 %idxprom172
  %arrayidx174 = getelementptr inbounds i8, ptr %arrayidx173, i64 1
  %164 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %164 to i32
  %or176 = or i32 %shl169, %conv175
  store i32 %or176, ptr %pc, align 4
  %165 = load ptr, ptr %pPage, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %165, i32 0, i32 24
  %166 = load ptr, ptr %xCellSize, align 8
  %167 = load ptr, ptr %pPage, align 8
  %168 = load ptr, ptr %data, align 8
  %169 = load i32, ptr %pc, align 4
  %idxprom177 = zext i32 %169 to i64
  %arrayidx178 = getelementptr inbounds nuw i8, ptr %168, i64 %idxprom177
  %call179 = call zeroext i16 %166(ptr noundef %167, ptr noundef %arrayidx178)
  %conv180 = zext i16 %call179 to i32
  store i32 %conv180, ptr %size, align 4
  %170 = load ptr, ptr %heap, align 8
  %171 = load i32, ptr %pc, align 4
  %shl181 = shl i32 %171, 16
  %172 = load i32, ptr %pc, align 4
  %173 = load i32, ptr %size, align 4
  %add182 = add i32 %172, %173
  %sub183 = sub i32 %add182, 1
  %or184 = or i32 %shl181, %sub183
  call void @btreeHeapInsert(ptr noundef %170, i32 noundef %or184)
  br label %for.inc185

for.inc185:                                       ; preds = %for.body162
  %174 = load i32, ptr %i, align 4
  %dec186 = add nsw i32 %174, -1
  store i32 %dec186, ptr %i, align 4
  br label %for.cond159, !llvm.loop !8

for.end187:                                       ; preds = %for.cond159
  br label %if.end188

if.end188:                                        ; preds = %for.end187, %if.then152
  %175 = load ptr, ptr %data, align 8
  %176 = load i32, ptr %hdr, align 4
  %add189 = add nsw i32 %176, 1
  %idxprom190 = sext i32 %add189 to i64
  %arrayidx191 = getelementptr inbounds i8, ptr %175, i64 %idxprom190
  %arrayidx192 = getelementptr inbounds i8, ptr %arrayidx191, i64 0
  %177 = load i8, ptr %arrayidx192, align 1
  %conv193 = zext i8 %177 to i32
  %shl194 = shl i32 %conv193, 8
  %178 = load ptr, ptr %data, align 8
  %179 = load i32, ptr %hdr, align 4
  %add195 = add nsw i32 %179, 1
  %idxprom196 = sext i32 %add195 to i64
  %arrayidx197 = getelementptr inbounds i8, ptr %178, i64 %idxprom196
  %arrayidx198 = getelementptr inbounds i8, ptr %arrayidx197, i64 1
  %180 = load i8, ptr %arrayidx198, align 1
  %conv199 = zext i8 %180 to i32
  %or200 = or i32 %shl194, %conv199
  store i32 %or200, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end188
  %181 = load i32, ptr %i, align 4
  %cmp201 = icmp sgt i32 %181, 0
  br i1 %cmp201, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %182 = load ptr, ptr %data, align 8
  %183 = load i32, ptr %i, align 4
  %add204 = add nsw i32 %183, 2
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %182, i64 %idxprom205
  %arrayidx207 = getelementptr inbounds i8, ptr %arrayidx206, i64 0
  %184 = load i8, ptr %arrayidx207, align 1
  %conv208 = zext i8 %184 to i32
  %shl209 = shl i32 %conv208, 8
  %185 = load ptr, ptr %data, align 8
  %186 = load i32, ptr %i, align 4
  %add210 = add nsw i32 %186, 2
  %idxprom211 = sext i32 %add210 to i64
  %arrayidx212 = getelementptr inbounds i8, ptr %185, i64 %idxprom211
  %arrayidx213 = getelementptr inbounds i8, ptr %arrayidx212, i64 1
  %187 = load i8, ptr %arrayidx213, align 1
  %conv214 = zext i8 %187 to i32
  %or215 = or i32 %shl209, %conv214
  store i32 %or215, ptr %size203, align 4
  %188 = load ptr, ptr %heap, align 8
  %189 = load i32, ptr %i, align 4
  %shl216 = shl i32 %189, 16
  %190 = load i32, ptr %i, align 4
  %191 = load i32, ptr %size203, align 4
  %add217 = add nsw i32 %190, %191
  %sub218 = sub nsw i32 %add217, 1
  %or219 = or i32 %shl216, %sub218
  call void @btreeHeapInsert(ptr noundef %188, i32 noundef %or219)
  %192 = load ptr, ptr %data, align 8
  %193 = load i32, ptr %i, align 4
  %idxprom220 = sext i32 %193 to i64
  %arrayidx221 = getelementptr inbounds i8, ptr %192, i64 %idxprom220
  %arrayidx222 = getelementptr inbounds i8, ptr %arrayidx221, i64 0
  %194 = load i8, ptr %arrayidx222, align 1
  %conv223 = zext i8 %194 to i32
  %shl224 = shl i32 %conv223, 8
  %195 = load ptr, ptr %data, align 8
  %196 = load i32, ptr %i, align 4
  %idxprom225 = sext i32 %196 to i64
  %arrayidx226 = getelementptr inbounds i8, ptr %195, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds i8, ptr %arrayidx226, i64 1
  %197 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %197 to i32
  %or229 = or i32 %shl224, %conv228
  store i32 %or229, ptr %j, align 4
  %198 = load i32, ptr %j, align 4
  store i32 %198, ptr %i, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %nFrag, align 4
  %199 = load i32, ptr %contentOffset, align 4
  %sub230 = sub i32 %199, 1
  store i32 %sub230, ptr %prev, align 4
  br label %while.cond231

while.cond231:                                    ; preds = %if.end246, %while.end
  %200 = load ptr, ptr %heap, align 8
  %call232 = call i32 @btreeHeapPull(ptr noundef %200, ptr noundef %x)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %while.body234, label %while.end247

while.body234:                                    ; preds = %while.cond231
  %201 = load i32, ptr %prev, align 4
  %and235 = and i32 %201, 65535
  %202 = load i32, ptr %x, align 4
  %shr = lshr i32 %202, 16
  %cmp236 = icmp uge i32 %and235, %shr
  br i1 %cmp236, label %if.then238, label %if.else240

if.then238:                                       ; preds = %while.body234
  %203 = load ptr, ptr %pCheck.addr, align 8
  %204 = load i32, ptr %x, align 4
  %shr239 = lshr i32 %204, 16
  %205 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %203, ptr noundef @.str.373, i32 noundef %shr239, i32 noundef %205)
  br label %while.end247

if.else240:                                       ; preds = %while.body234
  %206 = load i32, ptr %x, align 4
  %shr241 = lshr i32 %206, 16
  %207 = load i32, ptr %prev, align 4
  %and242 = and i32 %207, 65535
  %sub243 = sub i32 %shr241, %and242
  %sub244 = sub i32 %sub243, 1
  %208 = load i32, ptr %nFrag, align 4
  %add245 = add i32 %208, %sub244
  store i32 %add245, ptr %nFrag, align 4
  %209 = load i32, ptr %x, align 4
  store i32 %209, ptr %prev, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.else240
  br label %while.cond231, !llvm.loop !10

while.end247:                                     ; preds = %if.then238, %while.cond231
  %210 = load i32, ptr %usableSize, align 4
  %211 = load i32, ptr %prev, align 4
  %and248 = and i32 %211, 65535
  %sub249 = sub i32 %210, %and248
  %sub250 = sub i32 %sub249, 1
  %212 = load i32, ptr %nFrag, align 4
  %add251 = add i32 %212, %sub250
  store i32 %add251, ptr %nFrag, align 4
  %213 = load ptr, ptr %heap, align 8
  %arrayidx252 = getelementptr inbounds i32, ptr %213, i64 0
  %214 = load i32, ptr %arrayidx252, align 4
  %cmp253 = icmp eq i32 %214, 0
  br i1 %cmp253, label %land.lhs.true255, label %if.end267

land.lhs.true255:                                 ; preds = %while.end247
  %215 = load i32, ptr %nFrag, align 4
  %216 = load ptr, ptr %data, align 8
  %217 = load i32, ptr %hdr, align 4
  %add256 = add nsw i32 %217, 7
  %idxprom257 = sext i32 %add256 to i64
  %arrayidx258 = getelementptr inbounds i8, ptr %216, i64 %idxprom257
  %218 = load i8, ptr %arrayidx258, align 1
  %conv259 = zext i8 %218 to i32
  %cmp260 = icmp ne i32 %215, %conv259
  br i1 %cmp260, label %if.then262, label %if.end267

if.then262:                                       ; preds = %land.lhs.true255
  %219 = load ptr, ptr %pCheck.addr, align 8
  %220 = load i32, ptr %nFrag, align 4
  %221 = load ptr, ptr %data, align 8
  %222 = load i32, ptr %hdr, align 4
  %add263 = add nsw i32 %222, 7
  %idxprom264 = sext i32 %add263 to i64
  %arrayidx265 = getelementptr inbounds i8, ptr %221, i64 %idxprom264
  %223 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %223 to i32
  %224 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %219, ptr noundef @.str.374, i32 noundef %220, i32 noundef %conv266, i32 noundef %224)
  br label %if.end267

if.end267:                                        ; preds = %if.then262, %land.lhs.true255, %while.end247
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %land.lhs.true, %for.end
  br label %end_of_check

end_of_check:                                     ; preds = %if.end268, %if.then18, %if.then14, %if.then9
  %225 = load i32, ptr %doCoverageCheck, align 4
  %tobool269 = icmp ne i32 %225, 0
  br i1 %tobool269, label %if.end272, label %if.then270

if.then270:                                       ; preds = %end_of_check
  %226 = load i8, ptr %savedIsInit, align 1
  %227 = load ptr, ptr %pPage, align 8
  %isInit271 = getelementptr inbounds nuw %struct.MemPage, ptr %227, i32 0, i32 0
  store i8 %226, ptr %isInit271, align 8
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %end_of_check
  %228 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %228)
  %229 = load ptr, ptr %saved_zPfx, align 8
  %230 = load ptr, ptr %pCheck.addr, align 8
  %zPfx273 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %230, i32 0, i32 7
  store ptr %229, ptr %zPfx273, align 8
  %231 = load i32, ptr %saved_v1, align 4
  %232 = load ptr, ptr %pCheck.addr, align 8
  %v1274 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %232, i32 0, i32 8
  store i32 %231, ptr %v1274, align 8
  %233 = load i32, ptr %saved_v2, align 4
  %234 = load ptr, ptr %pCheck.addr, align 8
  %v2275 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %234, i32 0, i32 9
  store i32 %233, ptr %v2275, align 4
  %235 = load i32, ptr %depth, align 4
  %add276 = add nsw i32 %235, 1
  store i32 %add276, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end272, %if.then3, %if.then
  %236 = load i32, ptr %retval, align 4
  ret i32 %236
}

; Function Attrs: nounwind uwtable
declare hidden i32 @checkRef(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeHeapInsert(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeHeapPull(ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
