; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @zeroPage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPutOvflPtr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PutVarint(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getAndInitPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freePage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeComputeFreeSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @dropCell(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @insertCell(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @defragmentPage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @balance_nonroot(ptr noundef %pParent, i32 noundef %iParentIdx, ptr noundef %aOvflSpace, i32 noundef %isRoot, i32 noundef %bBulk) #0 {
entry:
  %retval = alloca i32, align 4
  %pParent.addr = alloca ptr, align 8
  %iParentIdx.addr = alloca i32, align 4
  %aOvflSpace.addr = alloca ptr, align 8
  %isRoot.addr = alloca i32, align 4
  %bBulk.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %nMaxCells = alloca i32, align 4
  %nNew = alloca i32, align 4
  %nOld = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nxDiv = alloca i32, align 4
  %rc = alloca i32, align 4
  %leafCorrection = alloca i16, align 2
  %leafData = alloca i32, align 4
  %usableSpace = alloca i32, align 4
  %pageFlags = alloca i32, align 4
  %iSpace1 = alloca i32, align 4
  %iOvflSpace = alloca i32, align 4
  %szScratch = alloca i32, align 4
  %apOld = alloca [3 x ptr], align 16
  %apNew = alloca [5 x ptr], align 16
  %pRight = alloca ptr, align 8
  %apDiv = alloca [2 x ptr], align 16
  %cntNew = alloca [5 x i32], align 16
  %cntOld = alloca [5 x i32], align 16
  %szNew = alloca [5 x i32], align 16
  %aSpace1 = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %abDone = alloca [5 x i8], align 1
  %aPgno = alloca [5 x i32], align 16
  %aPgOrder = alloca [5 x i32], align 16
  %aPgFlags = alloca [5 x i16], align 2
  %b = alloca %struct.CellArray, align 8
  %iOff = alloca i32, align 4
  %pOld = alloca ptr, align 8
  %limit = alloca i32, align 4
  %aData231 = alloca ptr, align 8
  %maskPage233 = alloca i16, align 2
  %piCell = alloca ptr, align 8
  %piEnd = alloca ptr, align 8
  %sz = alloca i16, align 2
  %pTemp = alloca ptr, align 8
  %p = alloca ptr, align 8
  %sz501 = alloca i32, align 4
  %szRight = alloca i32, align 4
  %szLeft = alloca i32, align 4
  %r = alloca i32, align 4
  %d = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %iBest = alloca i32, align 4
  %pOld859 = alloca ptr, align 8
  %pOld882 = alloca ptr, align 8
  %pNew883 = alloca ptr, align 8
  %cntOldNext = alloca i32, align 4
  %iNew = alloca i32, align 4
  %iOld = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %pCell976 = alloca ptr, align 8
  %pTemp977 = alloca ptr, align 8
  %sz978 = alloca i32, align 4
  %pNew979 = alloca ptr, align 8
  %info = alloca %struct.CellInfo, align 8
  %iPg = alloca i32, align 4
  %iNew1064 = alloca i32, align 4
  %iOld1065 = alloca i32, align 4
  %nNewCell = alloca i32, align 4
  %key = alloca i32, align 4
  store ptr %pParent, ptr %pParent.addr, align 8
  store i32 %iParentIdx, ptr %iParentIdx.addr, align 4
  store ptr %aOvflSpace, ptr %aOvflSpace.addr, align 8
  store i32 %isRoot, ptr %isRoot.addr, align 4
  store i32 %bBulk, ptr %bBulk.addr, align 4
  store i32 0, ptr %nMaxCells, align 4
  store i32 0, ptr %nNew, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %iSpace1, align 4
  store i32 0, ptr %iOvflSpace, align 4
  %arraydecay = getelementptr inbounds [5 x i8], ptr %abDone, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 5, i1 false)
  %nCell = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  store i32 0, ptr %nCell, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  store ptr null, ptr %apCell, align 8
  %0 = load ptr, ptr %pParent.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %aOvflSpace.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pParent.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 9
  %4 = load i8, ptr %nOverflow, align 4
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %pParent.addr, align 8
  %nCell2 = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 14
  %6 = load i16, ptr %nCell2, align 8
  %conv3 = zext i16 %6 to i32
  %add = add nsw i32 %conv, %conv3
  store i32 %add, ptr %i, align 4
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %nxDiv, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %iParentIdx.addr, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  store i32 0, ptr %nxDiv, align 4
  br label %if.end17

if.else9:                                         ; preds = %if.else
  %9 = load i32, ptr %iParentIdx.addr, align 4
  %10 = load i32, ptr %i, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else9
  %11 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %11, 2
  %12 = load i32, ptr %bBulk.addr, align 4
  %add13 = add nsw i32 %sub, %12
  store i32 %add13, ptr %nxDiv, align 4
  br label %if.end16

if.else14:                                        ; preds = %if.else9
  %13 = load i32, ptr %iParentIdx.addr, align 4
  %sub15 = sub nsw i32 %13, 1
  store i32 %sub15, ptr %nxDiv, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  %14 = load i32, ptr %bBulk.addr, align 4
  %sub18 = sub nsw i32 2, %14
  store i32 %sub18, ptr %i, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then5
  %15 = load i32, ptr %i, align 4
  %add20 = add nsw i32 %15, 1
  store i32 %add20, ptr %nOld, align 4
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %nxDiv, align 4
  %add21 = add nsw i32 %16, %17
  %18 = load ptr, ptr %pParent.addr, align 8
  %nOverflow22 = getelementptr inbounds nuw %struct.MemPage, ptr %18, i32 0, i32 9
  %19 = load i8, ptr %nOverflow22, align 4
  %conv23 = zext i8 %19 to i32
  %sub24 = sub nsw i32 %add21, %conv23
  %20 = load ptr, ptr %pParent.addr, align 8
  %nCell25 = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 14
  %21 = load i16, ptr %nCell25, align 8
  %conv26 = zext i16 %21 to i32
  %cmp27 = icmp eq i32 %sub24, %conv26
  br i1 %cmp27, label %if.then29, label %if.else32

if.then29:                                        ; preds = %if.end19
  %22 = load ptr, ptr %pParent.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %aData, align 8
  %24 = load ptr, ptr %pParent.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 6
  %25 = load i8, ptr %hdrOffset, align 1
  %conv30 = zext i8 %25 to i32
  %add31 = add nsw i32 %conv30, 8
  %idxprom = sext i32 %add31 to i64
  %arrayidx = getelementptr inbounds i8, ptr %23, i64 %idxprom
  store ptr %arrayidx, ptr %pRight, align 8
  br label %if.end53

if.else32:                                        ; preds = %if.end19
  %26 = load ptr, ptr %pParent.addr, align 8
  %aData33 = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %aData33, align 8
  %28 = load ptr, ptr %pParent.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 15
  %29 = load i16, ptr %maskPage, align 2
  %conv34 = zext i16 %29 to i32
  %30 = load ptr, ptr %pParent.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 21
  %31 = load ptr, ptr %aCellIdx, align 8
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %nxDiv, align 4
  %add35 = add nsw i32 %32, %33
  %34 = load ptr, ptr %pParent.addr, align 8
  %nOverflow36 = getelementptr inbounds nuw %struct.MemPage, ptr %34, i32 0, i32 9
  %35 = load i8, ptr %nOverflow36, align 4
  %conv37 = zext i8 %35 to i32
  %sub38 = sub nsw i32 %add35, %conv37
  %mul = mul nsw i32 2, %sub38
  %idxprom39 = sext i32 %mul to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %31, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds i8, ptr %arrayidx40, i64 0
  %36 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %36 to i32
  %shl = shl i32 %conv42, 8
  %37 = load ptr, ptr %pParent.addr, align 8
  %aCellIdx43 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 21
  %38 = load ptr, ptr %aCellIdx43, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %nxDiv, align 4
  %add44 = add nsw i32 %39, %40
  %41 = load ptr, ptr %pParent.addr, align 8
  %nOverflow45 = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 9
  %42 = load i8, ptr %nOverflow45, align 4
  %conv46 = zext i8 %42 to i32
  %sub47 = sub nsw i32 %add44, %conv46
  %mul48 = mul nsw i32 2, %sub47
  %idxprom49 = sext i32 %mul48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %38, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds i8, ptr %arrayidx50, i64 1
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i32
  %or = or i32 %shl, %conv52
  %and = and i32 %conv34, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  store ptr %add.ptr, ptr %pRight, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else32, %if.then29
  %44 = load ptr, ptr %pRight, align 8
  %call = call i32 @sqlite3Get4byte(ptr noundef %44)
  store i32 %call, ptr %pgno, align 4
  br label %while.body

while.body:                                       ; preds = %if.end189, %if.end53
  %45 = load ptr, ptr %pBt, align 8
  %46 = load i32, ptr %pgno, align 4
  %47 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %arrayidx55 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom54
  %call56 = call i32 @getAndInitPage(ptr noundef %45, i32 noundef %46, ptr noundef %arrayidx55, ptr noundef null, i32 noundef 0)
  store i32 %call56, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %tobool57 = icmp ne i32 %48, 0
  br i1 %tobool57, label %if.then58, label %if.end63

if.then58:                                        ; preds = %while.body
  %arraydecay59 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %49 = load i32, ptr %i, align 4
  %add60 = add nsw i32 %49, 1
  %conv61 = sext i32 %add60 to i64
  %mul62 = mul i64 %conv61, 8
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay59, i8 0, i64 %mul62, i1 false)
  br label %balance_cleanup

if.end63:                                         ; preds = %while.body
  %50 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom64
  %51 = load ptr, ptr %arrayidx65, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %51, i32 0, i32 13
  %52 = load i32, ptr %nFree, align 4
  %cmp66 = icmp slt i32 %52, 0
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %if.end63
  %53 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %53 to i64
  %arrayidx70 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom69
  %54 = load ptr, ptr %arrayidx70, align 8
  %call71 = call i32 @btreeComputeFreeSpace(ptr noundef %54)
  store i32 %call71, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %tobool72 = icmp ne i32 %55, 0
  br i1 %tobool72, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.then68
  %arraydecay74 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %56 = load i32, ptr %i, align 4
  %conv75 = sext i32 %56 to i64
  %mul76 = mul i64 %conv75, 8
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay74, i8 0, i64 %mul76, i1 false)
  br label %balance_cleanup

if.end77:                                         ; preds = %if.then68
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end63
  %57 = load i32, ptr %i, align 4
  %dec = add nsw i32 %57, -1
  store i32 %dec, ptr %i, align 4
  %cmp79 = icmp eq i32 %57, 0
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end78
  br label %while.end

if.end82:                                         ; preds = %if.end78
  %58 = load ptr, ptr %pParent.addr, align 8
  %nOverflow83 = getelementptr inbounds nuw %struct.MemPage, ptr %58, i32 0, i32 9
  %59 = load i8, ptr %nOverflow83, align 4
  %conv84 = zext i8 %59 to i32
  %tobool85 = icmp ne i32 %conv84, 0
  br i1 %tobool85, label %land.lhs.true, label %if.else105

land.lhs.true:                                    ; preds = %if.end82
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %nxDiv, align 4
  %add86 = add nsw i32 %60, %61
  %62 = load ptr, ptr %pParent.addr, align 8
  %aiOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %62, i32 0, i32 16
  %arrayidx87 = getelementptr inbounds [4 x i16], ptr %aiOvfl, i64 0, i64 0
  %63 = load i16, ptr %arrayidx87, align 4
  %conv88 = zext i16 %63 to i32
  %cmp89 = icmp eq i32 %add86, %conv88
  br i1 %cmp89, label %if.then91, label %if.else105

if.then91:                                        ; preds = %land.lhs.true
  %64 = load ptr, ptr %pParent.addr, align 8
  %apOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %64, i32 0, i32 17
  %arrayidx92 = getelementptr inbounds [4 x ptr], ptr %apOvfl, i64 0, i64 0
  %65 = load ptr, ptr %arrayidx92, align 8
  %66 = load i32, ptr %i, align 4
  %idxprom93 = sext i32 %66 to i64
  %arrayidx94 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom93
  store ptr %65, ptr %arrayidx94, align 8
  %67 = load i32, ptr %i, align 4
  %idxprom95 = sext i32 %67 to i64
  %arrayidx96 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom95
  %68 = load ptr, ptr %arrayidx96, align 8
  %call97 = call i32 @sqlite3Get4byte(ptr noundef %68)
  store i32 %call97, ptr %pgno, align 4
  %69 = load ptr, ptr %pParent.addr, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %69, i32 0, i32 24
  %70 = load ptr, ptr %xCellSize, align 8
  %71 = load ptr, ptr %pParent.addr, align 8
  %72 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %72 to i64
  %arrayidx99 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom98
  %73 = load ptr, ptr %arrayidx99, align 8
  %call100 = call zeroext i16 %70(ptr noundef %71, ptr noundef %73)
  %conv101 = zext i16 %call100 to i32
  %74 = load i32, ptr %i, align 4
  %idxprom102 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom102
  store i32 %conv101, ptr %arrayidx103, align 4
  %75 = load ptr, ptr %pParent.addr, align 8
  %nOverflow104 = getelementptr inbounds nuw %struct.MemPage, ptr %75, i32 0, i32 9
  store i8 0, ptr %nOverflow104, align 4
  br label %if.end189

if.else105:                                       ; preds = %land.lhs.true, %if.end82
  %76 = load ptr, ptr %pParent.addr, align 8
  %aData106 = getelementptr inbounds nuw %struct.MemPage, ptr %76, i32 0, i32 19
  %77 = load ptr, ptr %aData106, align 8
  %78 = load ptr, ptr %pParent.addr, align 8
  %maskPage107 = getelementptr inbounds nuw %struct.MemPage, ptr %78, i32 0, i32 15
  %79 = load i16, ptr %maskPage107, align 2
  %conv108 = zext i16 %79 to i32
  %80 = load ptr, ptr %pParent.addr, align 8
  %aCellIdx109 = getelementptr inbounds nuw %struct.MemPage, ptr %80, i32 0, i32 21
  %81 = load ptr, ptr %aCellIdx109, align 8
  %82 = load i32, ptr %i, align 4
  %83 = load i32, ptr %nxDiv, align 4
  %add110 = add nsw i32 %82, %83
  %84 = load ptr, ptr %pParent.addr, align 8
  %nOverflow111 = getelementptr inbounds nuw %struct.MemPage, ptr %84, i32 0, i32 9
  %85 = load i8, ptr %nOverflow111, align 4
  %conv112 = zext i8 %85 to i32
  %sub113 = sub nsw i32 %add110, %conv112
  %mul114 = mul nsw i32 2, %sub113
  %idxprom115 = sext i32 %mul114 to i64
  %arrayidx116 = getelementptr inbounds i8, ptr %81, i64 %idxprom115
  %arrayidx117 = getelementptr inbounds i8, ptr %arrayidx116, i64 0
  %86 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %86 to i32
  %shl119 = shl i32 %conv118, 8
  %87 = load ptr, ptr %pParent.addr, align 8
  %aCellIdx120 = getelementptr inbounds nuw %struct.MemPage, ptr %87, i32 0, i32 21
  %88 = load ptr, ptr %aCellIdx120, align 8
  %89 = load i32, ptr %i, align 4
  %90 = load i32, ptr %nxDiv, align 4
  %add121 = add nsw i32 %89, %90
  %91 = load ptr, ptr %pParent.addr, align 8
  %nOverflow122 = getelementptr inbounds nuw %struct.MemPage, ptr %91, i32 0, i32 9
  %92 = load i8, ptr %nOverflow122, align 4
  %conv123 = zext i8 %92 to i32
  %sub124 = sub nsw i32 %add121, %conv123
  %mul125 = mul nsw i32 2, %sub124
  %idxprom126 = sext i32 %mul125 to i64
  %arrayidx127 = getelementptr inbounds i8, ptr %88, i64 %idxprom126
  %arrayidx128 = getelementptr inbounds i8, ptr %arrayidx127, i64 1
  %93 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %93 to i32
  %or130 = or i32 %shl119, %conv129
  %and131 = and i32 %conv108, %or130
  %idx.ext132 = sext i32 %and131 to i64
  %add.ptr133 = getelementptr inbounds i8, ptr %77, i64 %idx.ext132
  %94 = load i32, ptr %i, align 4
  %idxprom134 = sext i32 %94 to i64
  %arrayidx135 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom134
  store ptr %add.ptr133, ptr %arrayidx135, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom136 = sext i32 %95 to i64
  %arrayidx137 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom136
  %96 = load ptr, ptr %arrayidx137, align 8
  %call138 = call i32 @sqlite3Get4byte(ptr noundef %96)
  store i32 %call138, ptr %pgno, align 4
  %97 = load ptr, ptr %pParent.addr, align 8
  %xCellSize139 = getelementptr inbounds nuw %struct.MemPage, ptr %97, i32 0, i32 24
  %98 = load ptr, ptr %xCellSize139, align 8
  %99 = load ptr, ptr %pParent.addr, align 8
  %100 = load i32, ptr %i, align 4
  %idxprom140 = sext i32 %100 to i64
  %arrayidx141 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom140
  %101 = load ptr, ptr %arrayidx141, align 8
  %call142 = call zeroext i16 %98(ptr noundef %99, ptr noundef %101)
  %conv143 = zext i16 %call142 to i32
  %102 = load i32, ptr %i, align 4
  %idxprom144 = sext i32 %102 to i64
  %arrayidx145 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom144
  store i32 %conv143, ptr %arrayidx145, align 4
  %103 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %103, i32 0, i32 10
  %104 = load i16, ptr %btsFlags, align 2
  %conv146 = zext i16 %104 to i32
  %and147 = and i32 %conv146, 12
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.then149, label %if.end182

if.then149:                                       ; preds = %if.else105
  %105 = load i32, ptr %i, align 4
  %idxprom150 = sext i32 %105 to i64
  %arrayidx151 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom150
  %106 = load ptr, ptr %arrayidx151, align 8
  %107 = ptrtoint ptr %106 to i64
  %conv152 = trunc i64 %107 to i32
  %108 = load ptr, ptr %pParent.addr, align 8
  %aData153 = getelementptr inbounds nuw %struct.MemPage, ptr %108, i32 0, i32 19
  %109 = load ptr, ptr %aData153, align 8
  %110 = ptrtoint ptr %109 to i64
  %conv154 = trunc i64 %110 to i32
  %sub155 = sub nsw i32 %conv152, %conv154
  store i32 %sub155, ptr %iOff, align 4
  %111 = load i32, ptr %iOff, align 4
  %112 = load i32, ptr %i, align 4
  %idxprom156 = sext i32 %112 to i64
  %arrayidx157 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom156
  %113 = load i32, ptr %arrayidx157, align 4
  %add158 = add nsw i32 %111, %113
  %114 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %114, i32 0, i32 16
  %115 = load i32, ptr %usableSize, align 4
  %cmp159 = icmp sgt i32 %add158, %115
  br i1 %cmp159, label %if.then161, label %if.else167

if.then161:                                       ; preds = %if.then149
  %call162 = call i32 @sqlite3CorruptError(i32 noundef 70990)
  store i32 %call162, ptr %rc, align 4
  %arraydecay163 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %116 = load i32, ptr %i, align 4
  %add164 = add nsw i32 %116, 1
  %conv165 = sext i32 %add164 to i64
  %mul166 = mul i64 %conv165, 8
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay163, i8 0, i64 %mul166, i1 false)
  br label %balance_cleanup

if.else167:                                       ; preds = %if.then149
  %117 = load ptr, ptr %aOvflSpace.addr, align 8
  %118 = load i32, ptr %iOff, align 4
  %idxprom168 = sext i32 %118 to i64
  %arrayidx169 = getelementptr inbounds i8, ptr %117, i64 %idxprom168
  %119 = load i32, ptr %i, align 4
  %idxprom170 = sext i32 %119 to i64
  %arrayidx171 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom170
  %120 = load ptr, ptr %arrayidx171, align 8
  %121 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %121 to i64
  %arrayidx173 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom172
  %122 = load i32, ptr %arrayidx173, align 4
  %conv174 = sext i32 %122 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx169, ptr align 1 %120, i64 %conv174, i1 false)
  %123 = load ptr, ptr %aOvflSpace.addr, align 8
  %124 = load i32, ptr %i, align 4
  %idxprom175 = sext i32 %124 to i64
  %arrayidx176 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom175
  %125 = load ptr, ptr %arrayidx176, align 8
  %126 = load ptr, ptr %pParent.addr, align 8
  %aData177 = getelementptr inbounds nuw %struct.MemPage, ptr %126, i32 0, i32 19
  %127 = load ptr, ptr %aData177, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %125 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx178 = getelementptr inbounds i8, ptr %123, i64 %sub.ptr.sub
  %128 = load i32, ptr %i, align 4
  %idxprom179 = sext i32 %128 to i64
  %arrayidx180 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom179
  store ptr %arrayidx178, ptr %arrayidx180, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.else167
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.else105
  %129 = load ptr, ptr %pParent.addr, align 8
  %130 = load i32, ptr %i, align 4
  %131 = load i32, ptr %nxDiv, align 4
  %add183 = add nsw i32 %130, %131
  %132 = load ptr, ptr %pParent.addr, align 8
  %nOverflow184 = getelementptr inbounds nuw %struct.MemPage, ptr %132, i32 0, i32 9
  %133 = load i8, ptr %nOverflow184, align 4
  %conv185 = zext i8 %133 to i32
  %sub186 = sub nsw i32 %add183, %conv185
  %134 = load i32, ptr %i, align 4
  %idxprom187 = sext i32 %134 to i64
  %arrayidx188 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom187
  %135 = load i32, ptr %arrayidx188, align 4
  call void @dropCell(ptr noundef %129, i32 noundef %sub186, i32 noundef %135, ptr noundef %rc)
  br label %if.end189

if.end189:                                        ; preds = %if.end182, %if.then91
  br label %while.body

while.end:                                        ; preds = %if.then81
  %136 = load i32, ptr %nOld, align 4
  %137 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %137, i32 0, i32 15
  %138 = load i32, ptr %pageSize, align 8
  %sub190 = sub i32 %138, 8
  %div = udiv i32 %sub190, 6
  %add191 = add i32 %div, 4
  %mul192 = mul i32 %136, %add191
  store i32 %mul192, ptr %nMaxCells, align 4
  %139 = load i32, ptr %nMaxCells, align 4
  %add193 = add nsw i32 %139, 3
  %and194 = and i32 %add193, -4
  store i32 %and194, ptr %nMaxCells, align 4
  %140 = load i32, ptr %nMaxCells, align 4
  %conv195 = sext i32 %140 to i64
  %mul196 = mul i64 %conv195, 8
  %141 = load i32, ptr %nMaxCells, align 4
  %conv197 = sext i32 %141 to i64
  %mul198 = mul i64 %conv197, 2
  %add199 = add i64 %mul196, %mul198
  %142 = load ptr, ptr %pBt, align 8
  %pageSize200 = getelementptr inbounds nuw %struct.BtShared, ptr %142, i32 0, i32 15
  %143 = load i32, ptr %pageSize200, align 8
  %conv201 = zext i32 %143 to i64
  %add202 = add i64 %add199, %conv201
  %conv203 = trunc i64 %add202 to i32
  store i32 %conv203, ptr %szScratch, align 4
  %144 = load i32, ptr %szScratch, align 4
  %conv204 = sext i32 %144 to i64
  %call205 = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef %conv204)
  %apCell206 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  store ptr %call205, ptr %apCell206, align 8
  %apCell207 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %145 = load ptr, ptr %apCell207, align 8
  %cmp208 = icmp eq ptr %145, null
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %while.end
  store i32 7, ptr %rc, align 4
  br label %balance_cleanup

if.end211:                                        ; preds = %while.end
  %apCell212 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %146 = load ptr, ptr %apCell212, align 8
  %147 = load i32, ptr %nMaxCells, align 4
  %idxprom213 = sext i32 %147 to i64
  %arrayidx214 = getelementptr inbounds ptr, ptr %146, i64 %idxprom213
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  store ptr %arrayidx214, ptr %szCell, align 8
  %szCell215 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %148 = load ptr, ptr %szCell215, align 8
  %149 = load i32, ptr %nMaxCells, align 4
  %idxprom216 = sext i32 %149 to i64
  %arrayidx217 = getelementptr inbounds i16, ptr %148, i64 %idxprom216
  store ptr %arrayidx217, ptr %aSpace1, align 8
  %arrayidx218 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %150 = load ptr, ptr %arrayidx218, align 16
  %pRef = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 1
  store ptr %150, ptr %pRef, align 8
  %pRef219 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 1
  %151 = load ptr, ptr %pRef219, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %151, i32 0, i32 5
  %152 = load i8, ptr %leaf, align 8
  %conv220 = zext i8 %152 to i32
  %mul221 = mul nsw i32 %conv220, 4
  %conv222 = trunc i32 %mul221 to i16
  store i16 %conv222, ptr %leafCorrection, align 2
  %pRef223 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 1
  %153 = load ptr, ptr %pRef223, align 8
  %intKeyLeaf = getelementptr inbounds nuw %struct.MemPage, ptr %153, i32 0, i32 3
  %154 = load i8, ptr %intKeyLeaf, align 1
  %conv224 = zext i8 %154 to i32
  store i32 %conv224, ptr %leafData, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc419, %if.end211
  %155 = load i32, ptr %i, align 4
  %156 = load i32, ptr %nOld, align 4
  %cmp225 = icmp slt i32 %155, %156
  br i1 %cmp225, label %for.body, label %for.end421

for.body:                                         ; preds = %for.cond
  %157 = load i32, ptr %i, align 4
  %idxprom227 = sext i32 %157 to i64
  %arrayidx228 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom227
  %158 = load ptr, ptr %arrayidx228, align 8
  store ptr %158, ptr %pOld, align 8
  %159 = load ptr, ptr %pOld, align 8
  %nCell229 = getelementptr inbounds nuw %struct.MemPage, ptr %159, i32 0, i32 14
  %160 = load i16, ptr %nCell229, align 8
  %conv230 = zext i16 %160 to i32
  store i32 %conv230, ptr %limit, align 4
  %161 = load ptr, ptr %pOld, align 8
  %aData232 = getelementptr inbounds nuw %struct.MemPage, ptr %161, i32 0, i32 19
  %162 = load ptr, ptr %aData232, align 8
  store ptr %162, ptr %aData231, align 8
  %163 = load ptr, ptr %pOld, align 8
  %maskPage234 = getelementptr inbounds nuw %struct.MemPage, ptr %163, i32 0, i32 15
  %164 = load i16, ptr %maskPage234, align 2
  store i16 %164, ptr %maskPage233, align 2
  %165 = load ptr, ptr %aData231, align 8
  %166 = load ptr, ptr %pOld, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %166, i32 0, i32 12
  %167 = load i16, ptr %cellOffset, align 2
  %conv235 = zext i16 %167 to i32
  %idx.ext236 = sext i32 %conv235 to i64
  %add.ptr237 = getelementptr inbounds i8, ptr %165, i64 %idx.ext236
  store ptr %add.ptr237, ptr %piCell, align 8
  %168 = load ptr, ptr %pOld, align 8
  %aData238 = getelementptr inbounds nuw %struct.MemPage, ptr %168, i32 0, i32 19
  %169 = load ptr, ptr %aData238, align 8
  %arrayidx239 = getelementptr inbounds i8, ptr %169, i64 0
  %170 = load i8, ptr %arrayidx239, align 1
  %conv240 = zext i8 %170 to i32
  %arrayidx241 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %171 = load ptr, ptr %arrayidx241, align 16
  %aData242 = getelementptr inbounds nuw %struct.MemPage, ptr %171, i32 0, i32 19
  %172 = load ptr, ptr %aData242, align 8
  %arrayidx243 = getelementptr inbounds i8, ptr %172, i64 0
  %173 = load i8, ptr %arrayidx243, align 1
  %conv244 = zext i8 %173 to i32
  %cmp245 = icmp ne i32 %conv240, %conv244
  br i1 %cmp245, label %if.then247, label %if.end249

if.then247:                                       ; preds = %for.body
  %call248 = call i32 @sqlite3CorruptError(i32 noundef 71057)
  store i32 %call248, ptr %rc, align 4
  br label %balance_cleanup

if.end249:                                        ; preds = %for.body
  %szCell250 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %174 = load ptr, ptr %szCell250, align 8
  %nCell251 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %175 = load i32, ptr %nCell251, align 8
  %idxprom252 = sext i32 %175 to i64
  %arrayidx253 = getelementptr inbounds i16, ptr %174, i64 %idxprom252
  %176 = load i32, ptr %limit, align 4
  %177 = load ptr, ptr %pOld, align 8
  %nOverflow254 = getelementptr inbounds nuw %struct.MemPage, ptr %177, i32 0, i32 9
  %178 = load i8, ptr %nOverflow254, align 4
  %conv255 = zext i8 %178 to i32
  %add256 = add nsw i32 %176, %conv255
  %conv257 = sext i32 %add256 to i64
  %mul258 = mul i64 2, %conv257
  call void @llvm.memset.p0.i64(ptr align 2 %arrayidx253, i8 0, i64 %mul258, i1 false)
  %179 = load ptr, ptr %pOld, align 8
  %nOverflow259 = getelementptr inbounds nuw %struct.MemPage, ptr %179, i32 0, i32 9
  %180 = load i8, ptr %nOverflow259, align 4
  %conv260 = zext i8 %180 to i32
  %cmp261 = icmp sgt i32 %conv260, 0
  br i1 %cmp261, label %if.then263, label %if.end314

if.then263:                                       ; preds = %if.end249
  %181 = load i32, ptr %limit, align 4
  %182 = load ptr, ptr %pOld, align 8
  %aiOvfl264 = getelementptr inbounds nuw %struct.MemPage, ptr %182, i32 0, i32 16
  %arrayidx265 = getelementptr inbounds [4 x i16], ptr %aiOvfl264, i64 0, i64 0
  %183 = load i16, ptr %arrayidx265, align 4
  %conv266 = zext i16 %183 to i32
  %cmp267 = icmp slt i32 %181, %conv266
  br i1 %cmp267, label %if.then269, label %if.end271

if.then269:                                       ; preds = %if.then263
  %call270 = call i32 @sqlite3CorruptError(i32 noundef 71081)
  store i32 %call270, ptr %rc, align 4
  br label %balance_cleanup

if.end271:                                        ; preds = %if.then263
  %184 = load ptr, ptr %pOld, align 8
  %aiOvfl272 = getelementptr inbounds nuw %struct.MemPage, ptr %184, i32 0, i32 16
  %arrayidx273 = getelementptr inbounds [4 x i16], ptr %aiOvfl272, i64 0, i64 0
  %185 = load i16, ptr %arrayidx273, align 4
  %conv274 = zext i16 %185 to i32
  store i32 %conv274, ptr %limit, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond275

for.cond275:                                      ; preds = %for.inc, %if.end271
  %186 = load i32, ptr %j, align 4
  %187 = load i32, ptr %limit, align 4
  %cmp276 = icmp slt i32 %186, %187
  br i1 %cmp276, label %for.body278, label %for.end

for.body278:                                      ; preds = %for.cond275
  %188 = load ptr, ptr %aData231, align 8
  %189 = load i16, ptr %maskPage233, align 2
  %conv279 = zext i16 %189 to i32
  %190 = load ptr, ptr %piCell, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %190, i64 0
  %191 = load i8, ptr %arrayidx280, align 1
  %conv281 = zext i8 %191 to i32
  %shl282 = shl i32 %conv281, 8
  %192 = load ptr, ptr %piCell, align 8
  %arrayidx283 = getelementptr inbounds i8, ptr %192, i64 1
  %193 = load i8, ptr %arrayidx283, align 1
  %conv284 = zext i8 %193 to i32
  %or285 = or i32 %shl282, %conv284
  %and286 = and i32 %conv279, %or285
  %idx.ext287 = sext i32 %and286 to i64
  %add.ptr288 = getelementptr inbounds i8, ptr %188, i64 %idx.ext287
  %apCell289 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %194 = load ptr, ptr %apCell289, align 8
  %nCell290 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %195 = load i32, ptr %nCell290, align 8
  %idxprom291 = sext i32 %195 to i64
  %arrayidx292 = getelementptr inbounds ptr, ptr %194, i64 %idxprom291
  store ptr %add.ptr288, ptr %arrayidx292, align 8
  %196 = load ptr, ptr %piCell, align 8
  %add.ptr293 = getelementptr inbounds i8, ptr %196, i64 2
  store ptr %add.ptr293, ptr %piCell, align 8
  %nCell294 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %197 = load i32, ptr %nCell294, align 8
  %inc = add nsw i32 %197, 1
  store i32 %inc, ptr %nCell294, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body278
  %198 = load i32, ptr %j, align 4
  %inc295 = add nsw i32 %198, 1
  store i32 %inc295, ptr %j, align 4
  br label %for.cond275, !llvm.loop !6

for.end:                                          ; preds = %for.cond275
  store i32 0, ptr %k, align 4
  br label %for.cond296

for.cond296:                                      ; preds = %for.inc311, %for.end
  %199 = load i32, ptr %k, align 4
  %200 = load ptr, ptr %pOld, align 8
  %nOverflow297 = getelementptr inbounds nuw %struct.MemPage, ptr %200, i32 0, i32 9
  %201 = load i8, ptr %nOverflow297, align 4
  %conv298 = zext i8 %201 to i32
  %cmp299 = icmp slt i32 %199, %conv298
  br i1 %cmp299, label %for.body301, label %for.end313

for.body301:                                      ; preds = %for.cond296
  %202 = load ptr, ptr %pOld, align 8
  %apOvfl302 = getelementptr inbounds nuw %struct.MemPage, ptr %202, i32 0, i32 17
  %203 = load i32, ptr %k, align 4
  %idxprom303 = sext i32 %203 to i64
  %arrayidx304 = getelementptr inbounds [4 x ptr], ptr %apOvfl302, i64 0, i64 %idxprom303
  %204 = load ptr, ptr %arrayidx304, align 8
  %apCell305 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %205 = load ptr, ptr %apCell305, align 8
  %nCell306 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %206 = load i32, ptr %nCell306, align 8
  %idxprom307 = sext i32 %206 to i64
  %arrayidx308 = getelementptr inbounds ptr, ptr %205, i64 %idxprom307
  store ptr %204, ptr %arrayidx308, align 8
  %nCell309 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %207 = load i32, ptr %nCell309, align 8
  %inc310 = add nsw i32 %207, 1
  store i32 %inc310, ptr %nCell309, align 8
  br label %for.inc311

for.inc311:                                       ; preds = %for.body301
  %208 = load i32, ptr %k, align 4
  %inc312 = add nsw i32 %208, 1
  store i32 %inc312, ptr %k, align 4
  br label %for.cond296, !llvm.loop !8

for.end313:                                       ; preds = %for.cond296
  br label %if.end314

if.end314:                                        ; preds = %for.end313, %if.end249
  %209 = load ptr, ptr %aData231, align 8
  %210 = load ptr, ptr %pOld, align 8
  %cellOffset315 = getelementptr inbounds nuw %struct.MemPage, ptr %210, i32 0, i32 12
  %211 = load i16, ptr %cellOffset315, align 2
  %conv316 = zext i16 %211 to i32
  %idx.ext317 = sext i32 %conv316 to i64
  %add.ptr318 = getelementptr inbounds i8, ptr %209, i64 %idx.ext317
  %212 = load ptr, ptr %pOld, align 8
  %nCell319 = getelementptr inbounds nuw %struct.MemPage, ptr %212, i32 0, i32 14
  %213 = load i16, ptr %nCell319, align 8
  %conv320 = zext i16 %213 to i32
  %mul321 = mul nsw i32 2, %conv320
  %idx.ext322 = sext i32 %mul321 to i64
  %add.ptr323 = getelementptr inbounds i8, ptr %add.ptr318, i64 %idx.ext322
  store ptr %add.ptr323, ptr %piEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body326, %if.end314
  %214 = load ptr, ptr %piCell, align 8
  %215 = load ptr, ptr %piEnd, align 8
  %cmp324 = icmp ult ptr %214, %215
  br i1 %cmp324, label %while.body326, label %while.end344

while.body326:                                    ; preds = %while.cond
  %216 = load ptr, ptr %aData231, align 8
  %217 = load i16, ptr %maskPage233, align 2
  %conv327 = zext i16 %217 to i32
  %218 = load ptr, ptr %piCell, align 8
  %arrayidx328 = getelementptr inbounds i8, ptr %218, i64 0
  %219 = load i8, ptr %arrayidx328, align 1
  %conv329 = zext i8 %219 to i32
  %shl330 = shl i32 %conv329, 8
  %220 = load ptr, ptr %piCell, align 8
  %arrayidx331 = getelementptr inbounds i8, ptr %220, i64 1
  %221 = load i8, ptr %arrayidx331, align 1
  %conv332 = zext i8 %221 to i32
  %or333 = or i32 %shl330, %conv332
  %and334 = and i32 %conv327, %or333
  %idx.ext335 = sext i32 %and334 to i64
  %add.ptr336 = getelementptr inbounds i8, ptr %216, i64 %idx.ext335
  %apCell337 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %222 = load ptr, ptr %apCell337, align 8
  %nCell338 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %223 = load i32, ptr %nCell338, align 8
  %idxprom339 = sext i32 %223 to i64
  %arrayidx340 = getelementptr inbounds ptr, ptr %222, i64 %idxprom339
  store ptr %add.ptr336, ptr %arrayidx340, align 8
  %224 = load ptr, ptr %piCell, align 8
  %add.ptr341 = getelementptr inbounds i8, ptr %224, i64 2
  store ptr %add.ptr341, ptr %piCell, align 8
  %nCell342 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %225 = load i32, ptr %nCell342, align 8
  %inc343 = add nsw i32 %225, 1
  store i32 %inc343, ptr %nCell342, align 8
  br label %while.cond, !llvm.loop !9

while.end344:                                     ; preds = %while.cond
  %nCell345 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %226 = load i32, ptr %nCell345, align 8
  %227 = load i32, ptr %i, align 4
  %idxprom346 = sext i32 %227 to i64
  %arrayidx347 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom346
  store i32 %226, ptr %arrayidx347, align 4
  %228 = load i32, ptr %i, align 4
  %229 = load i32, ptr %nOld, align 4
  %sub348 = sub nsw i32 %229, 1
  %cmp349 = icmp slt i32 %228, %sub348
  br i1 %cmp349, label %land.lhs.true351, label %if.end418

land.lhs.true351:                                 ; preds = %while.end344
  %230 = load i32, ptr %leafData, align 4
  %tobool352 = icmp ne i32 %230, 0
  br i1 %tobool352, label %if.end418, label %if.then353

if.then353:                                       ; preds = %land.lhs.true351
  %231 = load i32, ptr %i, align 4
  %idxprom354 = sext i32 %231 to i64
  %arrayidx355 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom354
  %232 = load i32, ptr %arrayidx355, align 4
  %conv356 = trunc i32 %232 to i16
  store i16 %conv356, ptr %sz, align 2
  %233 = load i16, ptr %sz, align 2
  %szCell357 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %234 = load ptr, ptr %szCell357, align 8
  %nCell358 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %235 = load i32, ptr %nCell358, align 8
  %idxprom359 = sext i32 %235 to i64
  %arrayidx360 = getelementptr inbounds i16, ptr %234, i64 %idxprom359
  store i16 %233, ptr %arrayidx360, align 2
  %236 = load ptr, ptr %aSpace1, align 8
  %237 = load i32, ptr %iSpace1, align 4
  %idxprom361 = sext i32 %237 to i64
  %arrayidx362 = getelementptr inbounds i8, ptr %236, i64 %idxprom361
  store ptr %arrayidx362, ptr %pTemp, align 8
  %238 = load i16, ptr %sz, align 2
  %conv363 = zext i16 %238 to i32
  %239 = load i32, ptr %iSpace1, align 4
  %add364 = add nsw i32 %239, %conv363
  store i32 %add364, ptr %iSpace1, align 4
  %240 = load ptr, ptr %pTemp, align 8
  %241 = load i32, ptr %i, align 4
  %idxprom365 = sext i32 %241 to i64
  %arrayidx366 = getelementptr inbounds [2 x ptr], ptr %apDiv, i64 0, i64 %idxprom365
  %242 = load ptr, ptr %arrayidx366, align 8
  %243 = load i16, ptr %sz, align 2
  %conv367 = zext i16 %243 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %240, ptr align 1 %242, i64 %conv367, i1 false)
  %244 = load ptr, ptr %pTemp, align 8
  %245 = load i16, ptr %leafCorrection, align 2
  %conv368 = zext i16 %245 to i32
  %idx.ext369 = sext i32 %conv368 to i64
  %add.ptr370 = getelementptr inbounds i8, ptr %244, i64 %idx.ext369
  %apCell371 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %246 = load ptr, ptr %apCell371, align 8
  %nCell372 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %247 = load i32, ptr %nCell372, align 8
  %idxprom373 = sext i32 %247 to i64
  %arrayidx374 = getelementptr inbounds ptr, ptr %246, i64 %idxprom373
  store ptr %add.ptr370, ptr %arrayidx374, align 8
  %szCell375 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %248 = load ptr, ptr %szCell375, align 8
  %nCell376 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %249 = load i32, ptr %nCell376, align 8
  %idxprom377 = sext i32 %249 to i64
  %arrayidx378 = getelementptr inbounds i16, ptr %248, i64 %idxprom377
  %250 = load i16, ptr %arrayidx378, align 2
  %conv379 = zext i16 %250 to i32
  %251 = load i16, ptr %leafCorrection, align 2
  %conv380 = zext i16 %251 to i32
  %sub381 = sub nsw i32 %conv379, %conv380
  %conv382 = trunc i32 %sub381 to i16
  %szCell383 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %252 = load ptr, ptr %szCell383, align 8
  %nCell384 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %253 = load i32, ptr %nCell384, align 8
  %idxprom385 = sext i32 %253 to i64
  %arrayidx386 = getelementptr inbounds i16, ptr %252, i64 %idxprom385
  store i16 %conv382, ptr %arrayidx386, align 2
  %254 = load ptr, ptr %pOld, align 8
  %leaf387 = getelementptr inbounds nuw %struct.MemPage, ptr %254, i32 0, i32 5
  %255 = load i8, ptr %leaf387, align 8
  %tobool388 = icmp ne i8 %255, 0
  br i1 %tobool388, label %if.else396, label %if.then389

if.then389:                                       ; preds = %if.then353
  %apCell390 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %256 = load ptr, ptr %apCell390, align 8
  %nCell391 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %257 = load i32, ptr %nCell391, align 8
  %idxprom392 = sext i32 %257 to i64
  %arrayidx393 = getelementptr inbounds ptr, ptr %256, i64 %idxprom392
  %258 = load ptr, ptr %arrayidx393, align 8
  %259 = load ptr, ptr %pOld, align 8
  %aData394 = getelementptr inbounds nuw %struct.MemPage, ptr %259, i32 0, i32 19
  %260 = load ptr, ptr %aData394, align 8
  %arrayidx395 = getelementptr inbounds i8, ptr %260, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %258, ptr align 1 %arrayidx395, i64 4, i1 false)
  br label %if.end415

if.else396:                                       ; preds = %if.then353
  br label %while.cond397

while.cond397:                                    ; preds = %while.body405, %if.else396
  %szCell398 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %261 = load ptr, ptr %szCell398, align 8
  %nCell399 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %262 = load i32, ptr %nCell399, align 8
  %idxprom400 = sext i32 %262 to i64
  %arrayidx401 = getelementptr inbounds i16, ptr %261, i64 %idxprom400
  %263 = load i16, ptr %arrayidx401, align 2
  %conv402 = zext i16 %263 to i32
  %cmp403 = icmp slt i32 %conv402, 4
  br i1 %cmp403, label %while.body405, label %while.end414

while.body405:                                    ; preds = %while.cond397
  %264 = load ptr, ptr %aSpace1, align 8
  %265 = load i32, ptr %iSpace1, align 4
  %inc406 = add nsw i32 %265, 1
  store i32 %inc406, ptr %iSpace1, align 4
  %idxprom407 = sext i32 %265 to i64
  %arrayidx408 = getelementptr inbounds i8, ptr %264, i64 %idxprom407
  store i8 0, ptr %arrayidx408, align 1
  %szCell409 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %266 = load ptr, ptr %szCell409, align 8
  %nCell410 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %267 = load i32, ptr %nCell410, align 8
  %idxprom411 = sext i32 %267 to i64
  %arrayidx412 = getelementptr inbounds i16, ptr %266, i64 %idxprom411
  %268 = load i16, ptr %arrayidx412, align 2
  %inc413 = add i16 %268, 1
  store i16 %inc413, ptr %arrayidx412, align 2
  br label %while.cond397, !llvm.loop !10

while.end414:                                     ; preds = %while.cond397
  br label %if.end415

if.end415:                                        ; preds = %while.end414, %if.then389
  %nCell416 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %269 = load i32, ptr %nCell416, align 8
  %inc417 = add nsw i32 %269, 1
  store i32 %inc417, ptr %nCell416, align 8
  br label %if.end418

if.end418:                                        ; preds = %if.end415, %land.lhs.true351, %while.end344
  br label %for.inc419

for.inc419:                                       ; preds = %if.end418
  %270 = load i32, ptr %i, align 4
  %inc420 = add nsw i32 %270, 1
  store i32 %inc420, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end421:                                       ; preds = %for.cond
  %271 = load ptr, ptr %pBt, align 8
  %usableSize422 = getelementptr inbounds nuw %struct.BtShared, ptr %271, i32 0, i32 16
  %272 = load i32, ptr %usableSize422, align 4
  %sub423 = sub i32 %272, 12
  %273 = load i16, ptr %leafCorrection, align 2
  %conv424 = zext i16 %273 to i32
  %add425 = add i32 %sub423, %conv424
  store i32 %add425, ptr %usableSpace, align 4
  store i32 0, ptr %k, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond426

for.cond426:                                      ; preds = %for.inc493, %for.end421
  %274 = load i32, ptr %i, align 4
  %275 = load i32, ptr %nOld, align 4
  %cmp427 = icmp slt i32 %274, %275
  br i1 %cmp427, label %for.body429, label %for.end496

for.body429:                                      ; preds = %for.cond426
  %276 = load i32, ptr %i, align 4
  %idxprom430 = sext i32 %276 to i64
  %arrayidx431 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom430
  %277 = load ptr, ptr %arrayidx431, align 8
  store ptr %277, ptr %p, align 8
  %278 = load ptr, ptr %p, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %278, i32 0, i32 20
  %279 = load ptr, ptr %aDataEnd, align 8
  %apEnd = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 4
  %280 = load i32, ptr %k, align 4
  %idxprom432 = sext i32 %280 to i64
  %arrayidx433 = getelementptr inbounds [6 x ptr], ptr %apEnd, i64 0, i64 %idxprom432
  store ptr %279, ptr %arrayidx433, align 8
  %281 = load i32, ptr %i, align 4
  %idxprom434 = sext i32 %281 to i64
  %arrayidx435 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom434
  %282 = load i32, ptr %arrayidx435, align 4
  %ixNx = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 5
  %283 = load i32, ptr %k, align 4
  %idxprom436 = sext i32 %283 to i64
  %arrayidx437 = getelementptr inbounds [6 x i32], ptr %ixNx, i64 0, i64 %idxprom436
  store i32 %282, ptr %arrayidx437, align 4
  %284 = load i32, ptr %k, align 4
  %tobool438 = icmp ne i32 %284, 0
  br i1 %tobool438, label %land.lhs.true439, label %if.end451

land.lhs.true439:                                 ; preds = %for.body429
  %ixNx440 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 5
  %285 = load i32, ptr %k, align 4
  %idxprom441 = sext i32 %285 to i64
  %arrayidx442 = getelementptr inbounds [6 x i32], ptr %ixNx440, i64 0, i64 %idxprom441
  %286 = load i32, ptr %arrayidx442, align 4
  %ixNx443 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 5
  %287 = load i32, ptr %k, align 4
  %sub444 = sub nsw i32 %287, 1
  %idxprom445 = sext i32 %sub444 to i64
  %arrayidx446 = getelementptr inbounds [6 x i32], ptr %ixNx443, i64 0, i64 %idxprom445
  %288 = load i32, ptr %arrayidx446, align 4
  %cmp447 = icmp eq i32 %286, %288
  br i1 %cmp447, label %if.then449, label %if.end451

if.then449:                                       ; preds = %land.lhs.true439
  %289 = load i32, ptr %k, align 4
  %dec450 = add nsw i32 %289, -1
  store i32 %dec450, ptr %k, align 4
  br label %if.end451

if.end451:                                        ; preds = %if.then449, %land.lhs.true439, %for.body429
  %290 = load i32, ptr %leafData, align 4
  %tobool452 = icmp ne i32 %290, 0
  br i1 %tobool452, label %if.end465, label %if.then453

if.then453:                                       ; preds = %if.end451
  %291 = load i32, ptr %k, align 4
  %inc454 = add nsw i32 %291, 1
  store i32 %inc454, ptr %k, align 4
  %292 = load ptr, ptr %pParent.addr, align 8
  %aDataEnd455 = getelementptr inbounds nuw %struct.MemPage, ptr %292, i32 0, i32 20
  %293 = load ptr, ptr %aDataEnd455, align 8
  %apEnd456 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 4
  %294 = load i32, ptr %k, align 4
  %idxprom457 = sext i32 %294 to i64
  %arrayidx458 = getelementptr inbounds [6 x ptr], ptr %apEnd456, i64 0, i64 %idxprom457
  store ptr %293, ptr %arrayidx458, align 8
  %295 = load i32, ptr %i, align 4
  %idxprom459 = sext i32 %295 to i64
  %arrayidx460 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom459
  %296 = load i32, ptr %arrayidx460, align 4
  %add461 = add nsw i32 %296, 1
  %ixNx462 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 5
  %297 = load i32, ptr %k, align 4
  %idxprom463 = sext i32 %297 to i64
  %arrayidx464 = getelementptr inbounds [6 x i32], ptr %ixNx462, i64 0, i64 %idxprom463
  store i32 %add461, ptr %arrayidx464, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.then453, %if.end451
  %298 = load i32, ptr %usableSpace, align 4
  %299 = load ptr, ptr %p, align 8
  %nFree466 = getelementptr inbounds nuw %struct.MemPage, ptr %299, i32 0, i32 13
  %300 = load i32, ptr %nFree466, align 4
  %sub467 = sub nsw i32 %298, %300
  %301 = load i32, ptr %i, align 4
  %idxprom468 = sext i32 %301 to i64
  %arrayidx469 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom468
  store i32 %sub467, ptr %arrayidx469, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond470

for.cond470:                                      ; preds = %for.inc486, %if.end465
  %302 = load i32, ptr %j, align 4
  %303 = load ptr, ptr %p, align 8
  %nOverflow471 = getelementptr inbounds nuw %struct.MemPage, ptr %303, i32 0, i32 9
  %304 = load i8, ptr %nOverflow471, align 4
  %conv472 = zext i8 %304 to i32
  %cmp473 = icmp slt i32 %302, %conv472
  br i1 %cmp473, label %for.body475, label %for.end488

for.body475:                                      ; preds = %for.cond470
  %305 = load ptr, ptr %p, align 8
  %xCellSize476 = getelementptr inbounds nuw %struct.MemPage, ptr %305, i32 0, i32 24
  %306 = load ptr, ptr %xCellSize476, align 8
  %307 = load ptr, ptr %p, align 8
  %308 = load ptr, ptr %p, align 8
  %apOvfl477 = getelementptr inbounds nuw %struct.MemPage, ptr %308, i32 0, i32 17
  %309 = load i32, ptr %j, align 4
  %idxprom478 = sext i32 %309 to i64
  %arrayidx479 = getelementptr inbounds [4 x ptr], ptr %apOvfl477, i64 0, i64 %idxprom478
  %310 = load ptr, ptr %arrayidx479, align 8
  %call480 = call zeroext i16 %306(ptr noundef %307, ptr noundef %310)
  %conv481 = zext i16 %call480 to i32
  %add482 = add nsw i32 2, %conv481
  %311 = load i32, ptr %i, align 4
  %idxprom483 = sext i32 %311 to i64
  %arrayidx484 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom483
  %312 = load i32, ptr %arrayidx484, align 4
  %add485 = add nsw i32 %312, %add482
  store i32 %add485, ptr %arrayidx484, align 4
  br label %for.inc486

for.inc486:                                       ; preds = %for.body475
  %313 = load i32, ptr %j, align 4
  %inc487 = add nsw i32 %313, 1
  store i32 %inc487, ptr %j, align 4
  br label %for.cond470, !llvm.loop !12

for.end488:                                       ; preds = %for.cond470
  %314 = load i32, ptr %i, align 4
  %idxprom489 = sext i32 %314 to i64
  %arrayidx490 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom489
  %315 = load i32, ptr %arrayidx490, align 4
  %316 = load i32, ptr %i, align 4
  %idxprom491 = sext i32 %316 to i64
  %arrayidx492 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom491
  store i32 %315, ptr %arrayidx492, align 4
  br label %for.inc493

for.inc493:                                       ; preds = %for.end488
  %317 = load i32, ptr %i, align 4
  %inc494 = add nsw i32 %317, 1
  store i32 %inc494, ptr %i, align 4
  %318 = load i32, ptr %k, align 4
  %inc495 = add nsw i32 %318, 1
  store i32 %inc495, ptr %k, align 4
  br label %for.cond426, !llvm.loop !13

for.end496:                                       ; preds = %for.cond426
  %319 = load i32, ptr %nOld, align 4
  store i32 %319, ptr %k, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond497

for.cond497:                                      ; preds = %for.inc626, %for.end496
  %320 = load i32, ptr %i, align 4
  %321 = load i32, ptr %k, align 4
  %cmp498 = icmp slt i32 %320, %321
  br i1 %cmp498, label %for.body500, label %for.end628

for.body500:                                      ; preds = %for.cond497
  br label %while.cond502

while.cond502:                                    ; preds = %if.end550, %for.body500
  %322 = load i32, ptr %i, align 4
  %idxprom503 = sext i32 %322 to i64
  %arrayidx504 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom503
  %323 = load i32, ptr %arrayidx504, align 4
  %324 = load i32, ptr %usableSpace, align 4
  %cmp505 = icmp sgt i32 %323, %324
  br i1 %cmp505, label %while.body507, label %while.end558

while.body507:                                    ; preds = %while.cond502
  %325 = load i32, ptr %i, align 4
  %add508 = add nsw i32 %325, 1
  %326 = load i32, ptr %k, align 4
  %cmp509 = icmp sge i32 %add508, %326
  br i1 %cmp509, label %if.then511, label %if.end525

if.then511:                                       ; preds = %while.body507
  %327 = load i32, ptr %i, align 4
  %add512 = add nsw i32 %327, 2
  store i32 %add512, ptr %k, align 4
  %328 = load i32, ptr %k, align 4
  %cmp513 = icmp sgt i32 %328, 5
  br i1 %cmp513, label %if.then515, label %if.end517

if.then515:                                       ; preds = %if.then511
  %call516 = call i32 @sqlite3CorruptError(i32 noundef 71182)
  store i32 %call516, ptr %rc, align 4
  br label %balance_cleanup

if.end517:                                        ; preds = %if.then511
  %329 = load i32, ptr %k, align 4
  %sub518 = sub nsw i32 %329, 1
  %idxprom519 = sext i32 %sub518 to i64
  %arrayidx520 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom519
  store i32 0, ptr %arrayidx520, align 4
  %nCell521 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %330 = load i32, ptr %nCell521, align 8
  %331 = load i32, ptr %k, align 4
  %sub522 = sub nsw i32 %331, 1
  %idxprom523 = sext i32 %sub522 to i64
  %arrayidx524 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom523
  store i32 %330, ptr %arrayidx524, align 4
  br label %if.end525

if.end525:                                        ; preds = %if.end517, %while.body507
  %332 = load i32, ptr %i, align 4
  %idxprom526 = sext i32 %332 to i64
  %arrayidx527 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom526
  %333 = load i32, ptr %arrayidx527, align 4
  %sub528 = sub nsw i32 %333, 1
  %call529 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %sub528)
  %conv530 = zext i16 %call529 to i32
  %add531 = add nsw i32 2, %conv530
  store i32 %add531, ptr %sz501, align 4
  %334 = load i32, ptr %sz501, align 4
  %335 = load i32, ptr %i, align 4
  %idxprom532 = sext i32 %335 to i64
  %arrayidx533 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom532
  %336 = load i32, ptr %arrayidx533, align 4
  %sub534 = sub nsw i32 %336, %334
  store i32 %sub534, ptr %arrayidx533, align 4
  %337 = load i32, ptr %leafData, align 4
  %tobool535 = icmp ne i32 %337, 0
  br i1 %tobool535, label %if.end550, label %if.then536

if.then536:                                       ; preds = %if.end525
  %338 = load i32, ptr %i, align 4
  %idxprom537 = sext i32 %338 to i64
  %arrayidx538 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom537
  %339 = load i32, ptr %arrayidx538, align 4
  %nCell539 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %340 = load i32, ptr %nCell539, align 8
  %cmp540 = icmp slt i32 %339, %340
  br i1 %cmp540, label %if.then542, label %if.else548

if.then542:                                       ; preds = %if.then536
  %341 = load i32, ptr %i, align 4
  %idxprom543 = sext i32 %341 to i64
  %arrayidx544 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom543
  %342 = load i32, ptr %arrayidx544, align 4
  %call545 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %342)
  %conv546 = zext i16 %call545 to i32
  %add547 = add nsw i32 2, %conv546
  store i32 %add547, ptr %sz501, align 4
  br label %if.end549

if.else548:                                       ; preds = %if.then536
  store i32 0, ptr %sz501, align 4
  br label %if.end549

if.end549:                                        ; preds = %if.else548, %if.then542
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.end525
  %343 = load i32, ptr %sz501, align 4
  %344 = load i32, ptr %i, align 4
  %add551 = add nsw i32 %344, 1
  %idxprom552 = sext i32 %add551 to i64
  %arrayidx553 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom552
  %345 = load i32, ptr %arrayidx553, align 4
  %add554 = add nsw i32 %345, %343
  store i32 %add554, ptr %arrayidx553, align 4
  %346 = load i32, ptr %i, align 4
  %idxprom555 = sext i32 %346 to i64
  %arrayidx556 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom555
  %347 = load i32, ptr %arrayidx556, align 4
  %dec557 = add nsw i32 %347, -1
  store i32 %dec557, ptr %arrayidx556, align 4
  br label %while.cond502, !llvm.loop !14

while.end558:                                     ; preds = %while.cond502
  br label %while.cond559

while.cond559:                                    ; preds = %if.end599, %while.end558
  %348 = load i32, ptr %i, align 4
  %idxprom560 = sext i32 %348 to i64
  %arrayidx561 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom560
  %349 = load i32, ptr %arrayidx561, align 4
  %nCell562 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %350 = load i32, ptr %nCell562, align 8
  %cmp563 = icmp slt i32 %349, %350
  br i1 %cmp563, label %while.body565, label %while.end604

while.body565:                                    ; preds = %while.cond559
  %351 = load i32, ptr %i, align 4
  %idxprom566 = sext i32 %351 to i64
  %arrayidx567 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom566
  %352 = load i32, ptr %arrayidx567, align 4
  %call568 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %352)
  %conv569 = zext i16 %call568 to i32
  %add570 = add nsw i32 2, %conv569
  store i32 %add570, ptr %sz501, align 4
  %353 = load i32, ptr %i, align 4
  %idxprom571 = sext i32 %353 to i64
  %arrayidx572 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom571
  %354 = load i32, ptr %arrayidx572, align 4
  %355 = load i32, ptr %sz501, align 4
  %add573 = add nsw i32 %354, %355
  %356 = load i32, ptr %usableSpace, align 4
  %cmp574 = icmp sgt i32 %add573, %356
  br i1 %cmp574, label %if.then576, label %if.end577

if.then576:                                       ; preds = %while.body565
  br label %while.end604

if.end577:                                        ; preds = %while.body565
  %357 = load i32, ptr %sz501, align 4
  %358 = load i32, ptr %i, align 4
  %idxprom578 = sext i32 %358 to i64
  %arrayidx579 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom578
  %359 = load i32, ptr %arrayidx579, align 4
  %add580 = add nsw i32 %359, %357
  store i32 %add580, ptr %arrayidx579, align 4
  %360 = load i32, ptr %i, align 4
  %idxprom581 = sext i32 %360 to i64
  %arrayidx582 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom581
  %361 = load i32, ptr %arrayidx582, align 4
  %inc583 = add nsw i32 %361, 1
  store i32 %inc583, ptr %arrayidx582, align 4
  %362 = load i32, ptr %leafData, align 4
  %tobool584 = icmp ne i32 %362, 0
  br i1 %tobool584, label %if.end599, label %if.then585

if.then585:                                       ; preds = %if.end577
  %363 = load i32, ptr %i, align 4
  %idxprom586 = sext i32 %363 to i64
  %arrayidx587 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom586
  %364 = load i32, ptr %arrayidx587, align 4
  %nCell588 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %365 = load i32, ptr %nCell588, align 8
  %cmp589 = icmp slt i32 %364, %365
  br i1 %cmp589, label %if.then591, label %if.else597

if.then591:                                       ; preds = %if.then585
  %366 = load i32, ptr %i, align 4
  %idxprom592 = sext i32 %366 to i64
  %arrayidx593 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom592
  %367 = load i32, ptr %arrayidx593, align 4
  %call594 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %367)
  %conv595 = zext i16 %call594 to i32
  %add596 = add nsw i32 2, %conv595
  store i32 %add596, ptr %sz501, align 4
  br label %if.end598

if.else597:                                       ; preds = %if.then585
  store i32 0, ptr %sz501, align 4
  br label %if.end598

if.end598:                                        ; preds = %if.else597, %if.then591
  br label %if.end599

if.end599:                                        ; preds = %if.end598, %if.end577
  %368 = load i32, ptr %sz501, align 4
  %369 = load i32, ptr %i, align 4
  %add600 = add nsw i32 %369, 1
  %idxprom601 = sext i32 %add600 to i64
  %arrayidx602 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom601
  %370 = load i32, ptr %arrayidx602, align 4
  %sub603 = sub nsw i32 %370, %368
  store i32 %sub603, ptr %arrayidx602, align 4
  br label %while.cond559, !llvm.loop !15

while.end604:                                     ; preds = %if.then576, %while.cond559
  %371 = load i32, ptr %i, align 4
  %idxprom605 = sext i32 %371 to i64
  %arrayidx606 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom605
  %372 = load i32, ptr %arrayidx606, align 4
  %nCell607 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %373 = load i32, ptr %nCell607, align 8
  %cmp608 = icmp sge i32 %372, %373
  br i1 %cmp608, label %if.then610, label %if.else612

if.then610:                                       ; preds = %while.end604
  %374 = load i32, ptr %i, align 4
  %add611 = add nsw i32 %374, 1
  store i32 %add611, ptr %k, align 4
  br label %if.end625

if.else612:                                       ; preds = %while.end604
  %375 = load i32, ptr %i, align 4
  %idxprom613 = sext i32 %375 to i64
  %arrayidx614 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom613
  %376 = load i32, ptr %arrayidx614, align 4
  %377 = load i32, ptr %i, align 4
  %cmp615 = icmp sgt i32 %377, 0
  br i1 %cmp615, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else612
  %378 = load i32, ptr %i, align 4
  %sub617 = sub nsw i32 %378, 1
  %idxprom618 = sext i32 %sub617 to i64
  %arrayidx619 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom618
  %379 = load i32, ptr %arrayidx619, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else612
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %379, %cond.true ], [ 0, %cond.false ]
  %cmp620 = icmp sle i32 %376, %cond
  br i1 %cmp620, label %if.then622, label %if.end624

if.then622:                                       ; preds = %cond.end
  %call623 = call i32 @sqlite3CorruptError(i32 noundef 71215)
  store i32 %call623, ptr %rc, align 4
  br label %balance_cleanup

if.end624:                                        ; preds = %cond.end
  br label %if.end625

if.end625:                                        ; preds = %if.end624, %if.then610
  br label %for.inc626

for.inc626:                                       ; preds = %if.end625
  %380 = load i32, ptr %i, align 4
  %inc627 = add nsw i32 %380, 1
  store i32 %inc627, ptr %i, align 4
  br label %for.cond497, !llvm.loop !16

for.end628:                                       ; preds = %for.cond497
  %381 = load i32, ptr %k, align 4
  %sub629 = sub nsw i32 %381, 1
  store i32 %sub629, ptr %i, align 4
  br label %for.cond630

for.cond630:                                      ; preds = %for.inc712, %for.end628
  %382 = load i32, ptr %i, align 4
  %cmp631 = icmp sgt i32 %382, 0
  br i1 %cmp631, label %for.body633, label %for.end714

for.body633:                                      ; preds = %for.cond630
  %383 = load i32, ptr %i, align 4
  %idxprom634 = sext i32 %383 to i64
  %arrayidx635 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom634
  %384 = load i32, ptr %arrayidx635, align 4
  store i32 %384, ptr %szRight, align 4
  %385 = load i32, ptr %i, align 4
  %sub636 = sub nsw i32 %385, 1
  %idxprom637 = sext i32 %sub636 to i64
  %arrayidx638 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom637
  %386 = load i32, ptr %arrayidx638, align 4
  store i32 %386, ptr %szLeft, align 4
  %387 = load i32, ptr %i, align 4
  %sub639 = sub nsw i32 %387, 1
  %idxprom640 = sext i32 %sub639 to i64
  %arrayidx641 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom640
  %388 = load i32, ptr %arrayidx641, align 4
  %sub642 = sub nsw i32 %388, 1
  store i32 %sub642, ptr %r, align 4
  %389 = load i32, ptr %r, align 4
  %add643 = add nsw i32 %389, 1
  %390 = load i32, ptr %leafData, align 4
  %sub644 = sub nsw i32 %add643, %390
  store i32 %sub644, ptr %d, align 4
  %391 = load i32, ptr %d, align 4
  %call645 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %391)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body633
  %392 = load i32, ptr %r, align 4
  %call646 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %392)
  %393 = load i32, ptr %szRight, align 4
  %cmp647 = icmp ne i32 %393, 0
  br i1 %cmp647, label %land.lhs.true649, label %if.end670

land.lhs.true649:                                 ; preds = %do.body
  %394 = load i32, ptr %bBulk.addr, align 4
  %tobool650 = icmp ne i32 %394, 0
  br i1 %tobool650, label %if.then669, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true649
  %395 = load i32, ptr %szRight, align 4
  %szCell651 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %396 = load ptr, ptr %szCell651, align 8
  %397 = load i32, ptr %d, align 4
  %idxprom652 = sext i32 %397 to i64
  %arrayidx653 = getelementptr inbounds i16, ptr %396, i64 %idxprom652
  %398 = load i16, ptr %arrayidx653, align 2
  %conv654 = zext i16 %398 to i32
  %add655 = add nsw i32 %395, %conv654
  %add656 = add nsw i32 %add655, 2
  %399 = load i32, ptr %szLeft, align 4
  %szCell657 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %400 = load ptr, ptr %szCell657, align 8
  %401 = load i32, ptr %r, align 4
  %idxprom658 = sext i32 %401 to i64
  %arrayidx659 = getelementptr inbounds i16, ptr %400, i64 %idxprom658
  %402 = load i16, ptr %arrayidx659, align 2
  %conv660 = zext i16 %402 to i32
  %403 = load i32, ptr %i, align 4
  %404 = load i32, ptr %k, align 4
  %sub661 = sub nsw i32 %404, 1
  %cmp662 = icmp eq i32 %403, %sub661
  %405 = zext i1 %cmp662 to i64
  %cond664 = select i1 %cmp662, i32 0, i32 2
  %add665 = add nsw i32 %conv660, %cond664
  %sub666 = sub nsw i32 %399, %add665
  %cmp667 = icmp sgt i32 %add656, %sub666
  br i1 %cmp667, label %if.then669, label %if.end670

if.then669:                                       ; preds = %lor.lhs.false, %land.lhs.true649
  br label %do.end

if.end670:                                        ; preds = %lor.lhs.false, %do.body
  %szCell671 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %406 = load ptr, ptr %szCell671, align 8
  %407 = load i32, ptr %d, align 4
  %idxprom672 = sext i32 %407 to i64
  %arrayidx673 = getelementptr inbounds i16, ptr %406, i64 %idxprom672
  %408 = load i16, ptr %arrayidx673, align 2
  %conv674 = zext i16 %408 to i32
  %add675 = add nsw i32 %conv674, 2
  %409 = load i32, ptr %szRight, align 4
  %add676 = add nsw i32 %409, %add675
  store i32 %add676, ptr %szRight, align 4
  %szCell677 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %410 = load ptr, ptr %szCell677, align 8
  %411 = load i32, ptr %r, align 4
  %idxprom678 = sext i32 %411 to i64
  %arrayidx679 = getelementptr inbounds i16, ptr %410, i64 %idxprom678
  %412 = load i16, ptr %arrayidx679, align 2
  %conv680 = zext i16 %412 to i32
  %add681 = add nsw i32 %conv680, 2
  %413 = load i32, ptr %szLeft, align 4
  %sub682 = sub nsw i32 %413, %add681
  store i32 %sub682, ptr %szLeft, align 4
  %414 = load i32, ptr %r, align 4
  %415 = load i32, ptr %i, align 4
  %sub683 = sub nsw i32 %415, 1
  %idxprom684 = sext i32 %sub683 to i64
  %arrayidx685 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom684
  store i32 %414, ptr %arrayidx685, align 4
  %416 = load i32, ptr %r, align 4
  %dec686 = add nsw i32 %416, -1
  store i32 %dec686, ptr %r, align 4
  %417 = load i32, ptr %d, align 4
  %dec687 = add nsw i32 %417, -1
  store i32 %dec687, ptr %d, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end670
  %418 = load i32, ptr %r, align 4
  %cmp688 = icmp sge i32 %418, 0
  br i1 %cmp688, label %do.body, label %do.end, !llvm.loop !17

do.end:                                           ; preds = %do.cond, %if.then669
  %419 = load i32, ptr %szRight, align 4
  %420 = load i32, ptr %i, align 4
  %idxprom690 = sext i32 %420 to i64
  %arrayidx691 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom690
  store i32 %419, ptr %arrayidx691, align 4
  %421 = load i32, ptr %szLeft, align 4
  %422 = load i32, ptr %i, align 4
  %sub692 = sub nsw i32 %422, 1
  %idxprom693 = sext i32 %sub692 to i64
  %arrayidx694 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom693
  store i32 %421, ptr %arrayidx694, align 4
  %423 = load i32, ptr %i, align 4
  %sub695 = sub nsw i32 %423, 1
  %idxprom696 = sext i32 %sub695 to i64
  %arrayidx697 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom696
  %424 = load i32, ptr %arrayidx697, align 4
  %425 = load i32, ptr %i, align 4
  %cmp698 = icmp sgt i32 %425, 1
  br i1 %cmp698, label %cond.true700, label %cond.false704

cond.true700:                                     ; preds = %do.end
  %426 = load i32, ptr %i, align 4
  %sub701 = sub nsw i32 %426, 2
  %idxprom702 = sext i32 %sub701 to i64
  %arrayidx703 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom702
  %427 = load i32, ptr %arrayidx703, align 4
  br label %cond.end705

cond.false704:                                    ; preds = %do.end
  br label %cond.end705

cond.end705:                                      ; preds = %cond.false704, %cond.true700
  %cond706 = phi i32 [ %427, %cond.true700 ], [ 0, %cond.false704 ]
  %cmp707 = icmp sle i32 %424, %cond706
  br i1 %cmp707, label %if.then709, label %if.end711

if.then709:                                       ; preds = %cond.end705
  %call710 = call i32 @sqlite3CorruptError(i32 noundef 71257)
  store i32 %call710, ptr %rc, align 4
  br label %balance_cleanup

if.end711:                                        ; preds = %cond.end705
  br label %for.inc712

for.inc712:                                       ; preds = %if.end711
  %428 = load i32, ptr %i, align 4
  %dec713 = add nsw i32 %428, -1
  store i32 %dec713, ptr %i, align 4
  br label %for.cond630, !llvm.loop !18

for.end714:                                       ; preds = %for.cond630
  %arrayidx715 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  %429 = load ptr, ptr %arrayidx715, align 16
  %aData716 = getelementptr inbounds nuw %struct.MemPage, ptr %429, i32 0, i32 19
  %430 = load ptr, ptr %aData716, align 8
  %arrayidx717 = getelementptr inbounds i8, ptr %430, i64 0
  %431 = load i8, ptr %arrayidx717, align 1
  %conv718 = zext i8 %431 to i32
  store i32 %conv718, ptr %pageFlags, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond719

for.cond719:                                      ; preds = %for.inc763, %for.end714
  %432 = load i32, ptr %i, align 4
  %433 = load i32, ptr %k, align 4
  %cmp720 = icmp slt i32 %432, %433
  br i1 %cmp720, label %for.body722, label %for.end765

for.body722:                                      ; preds = %for.cond719
  %434 = load i32, ptr %i, align 4
  %435 = load i32, ptr %nOld, align 4
  %cmp723 = icmp slt i32 %434, %435
  br i1 %cmp723, label %if.then725, label %if.else737

if.then725:                                       ; preds = %for.body722
  %436 = load i32, ptr %i, align 4
  %idxprom726 = sext i32 %436 to i64
  %arrayidx727 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom726
  %437 = load ptr, ptr %arrayidx727, align 8
  %438 = load i32, ptr %i, align 4
  %idxprom728 = sext i32 %438 to i64
  %arrayidx729 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom728
  store ptr %437, ptr %arrayidx729, align 8
  store ptr %437, ptr %pNew, align 8
  %439 = load i32, ptr %i, align 4
  %idxprom730 = sext i32 %439 to i64
  %arrayidx731 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom730
  store ptr null, ptr %arrayidx731, align 8
  %440 = load ptr, ptr %pNew, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %440, i32 0, i32 23
  %441 = load ptr, ptr %pDbPage, align 8
  %call732 = call i32 @sqlite3PagerWrite(ptr noundef %441)
  store i32 %call732, ptr %rc, align 4
  %442 = load i32, ptr %nNew, align 4
  %inc733 = add nsw i32 %442, 1
  store i32 %inc733, ptr %nNew, align 4
  %443 = load i32, ptr %rc, align 4
  %tobool734 = icmp ne i32 %443, 0
  br i1 %tobool734, label %if.then735, label %if.end736

if.then735:                                       ; preds = %if.then725
  br label %balance_cleanup

if.end736:                                        ; preds = %if.then725
  br label %if.end762

if.else737:                                       ; preds = %for.body722
  %444 = load ptr, ptr %pBt, align 8
  %445 = load i32, ptr %bBulk.addr, align 4
  %tobool738 = icmp ne i32 %445, 0
  br i1 %tobool738, label %cond.true739, label %cond.false740

cond.true739:                                     ; preds = %if.else737
  br label %cond.end741

cond.false740:                                    ; preds = %if.else737
  %446 = load i32, ptr %pgno, align 4
  br label %cond.end741

cond.end741:                                      ; preds = %cond.false740, %cond.true739
  %cond742 = phi i32 [ 1, %cond.true739 ], [ %446, %cond.false740 ]
  %call743 = call i32 @allocateBtreePage(ptr noundef %444, ptr noundef %pNew, ptr noundef %pgno, i32 noundef %cond742, i8 noundef zeroext 0)
  store i32 %call743, ptr %rc, align 4
  %447 = load i32, ptr %rc, align 4
  %tobool744 = icmp ne i32 %447, 0
  br i1 %tobool744, label %if.then745, label %if.end746

if.then745:                                       ; preds = %cond.end741
  br label %balance_cleanup

if.end746:                                        ; preds = %cond.end741
  %448 = load ptr, ptr %pNew, align 8
  %449 = load i32, ptr %pageFlags, align 4
  call void @zeroPage(ptr noundef %448, i32 noundef %449)
  %450 = load ptr, ptr %pNew, align 8
  %451 = load i32, ptr %i, align 4
  %idxprom747 = sext i32 %451 to i64
  %arrayidx748 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom747
  store ptr %450, ptr %arrayidx748, align 8
  %452 = load i32, ptr %nNew, align 4
  %inc749 = add nsw i32 %452, 1
  store i32 %inc749, ptr %nNew, align 4
  %nCell750 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %453 = load i32, ptr %nCell750, align 8
  %454 = load i32, ptr %i, align 4
  %idxprom751 = sext i32 %454 to i64
  %arrayidx752 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom751
  store i32 %453, ptr %arrayidx752, align 4
  %455 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %455, i32 0, i32 5
  %456 = load i8, ptr %autoVacuum, align 1
  %tobool753 = icmp ne i8 %456, 0
  br i1 %tobool753, label %if.then754, label %if.end761

if.then754:                                       ; preds = %if.end746
  %457 = load ptr, ptr %pBt, align 8
  %458 = load ptr, ptr %pNew, align 8
  %pgno755 = getelementptr inbounds nuw %struct.MemPage, ptr %458, i32 0, i32 4
  %459 = load i32, ptr %pgno755, align 4
  %460 = load ptr, ptr %pParent.addr, align 8
  %pgno756 = getelementptr inbounds nuw %struct.MemPage, ptr %460, i32 0, i32 4
  %461 = load i32, ptr %pgno756, align 4
  call void @ptrmapPut(ptr noundef %457, i32 noundef %459, i8 noundef zeroext 5, i32 noundef %461, ptr noundef %rc)
  %462 = load i32, ptr %rc, align 4
  %cmp757 = icmp ne i32 %462, 0
  br i1 %cmp757, label %if.then759, label %if.end760

if.then759:                                       ; preds = %if.then754
  br label %balance_cleanup

if.end760:                                        ; preds = %if.then754
  br label %if.end761

if.end761:                                        ; preds = %if.end760, %if.end746
  br label %if.end762

if.end762:                                        ; preds = %if.end761, %if.end736
  br label %for.inc763

for.inc763:                                       ; preds = %if.end762
  %463 = load i32, ptr %i, align 4
  %inc764 = add nsw i32 %463, 1
  store i32 %inc764, ptr %i, align 4
  br label %for.cond719, !llvm.loop !19

for.end765:                                       ; preds = %for.cond719
  store i32 0, ptr %i, align 4
  br label %for.cond766

for.cond766:                                      ; preds = %for.inc798, %for.end765
  %464 = load i32, ptr %i, align 4
  %465 = load i32, ptr %nNew, align 4
  %cmp767 = icmp slt i32 %464, %465
  br i1 %cmp767, label %for.body769, label %for.end800

for.body769:                                      ; preds = %for.cond766
  %466 = load i32, ptr %i, align 4
  %idxprom770 = sext i32 %466 to i64
  %arrayidx771 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom770
  %467 = load ptr, ptr %arrayidx771, align 8
  %pgno772 = getelementptr inbounds nuw %struct.MemPage, ptr %467, i32 0, i32 4
  %468 = load i32, ptr %pgno772, align 4
  %469 = load i32, ptr %i, align 4
  %idxprom773 = sext i32 %469 to i64
  %arrayidx774 = getelementptr inbounds [5 x i32], ptr %aPgno, i64 0, i64 %idxprom773
  store i32 %468, ptr %arrayidx774, align 4
  %470 = load i32, ptr %i, align 4
  %idxprom775 = sext i32 %470 to i64
  %arrayidx776 = getelementptr inbounds [5 x i32], ptr %aPgOrder, i64 0, i64 %idxprom775
  store i32 %468, ptr %arrayidx776, align 4
  %471 = load i32, ptr %i, align 4
  %idxprom777 = sext i32 %471 to i64
  %arrayidx778 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom777
  %472 = load ptr, ptr %arrayidx778, align 8
  %pDbPage779 = getelementptr inbounds nuw %struct.MemPage, ptr %472, i32 0, i32 23
  %473 = load ptr, ptr %pDbPage779, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %473, i32 0, i32 7
  %474 = load i16, ptr %flags, align 4
  %475 = load i32, ptr %i, align 4
  %idxprom780 = sext i32 %475 to i64
  %arrayidx781 = getelementptr inbounds [5 x i16], ptr %aPgFlags, i64 0, i64 %idxprom780
  store i16 %474, ptr %arrayidx781, align 2
  store i32 0, ptr %j, align 4
  br label %for.cond782

for.cond782:                                      ; preds = %for.inc795, %for.body769
  %476 = load i32, ptr %j, align 4
  %477 = load i32, ptr %i, align 4
  %cmp783 = icmp slt i32 %476, %477
  br i1 %cmp783, label %for.body785, label %for.end797

for.body785:                                      ; preds = %for.cond782
  %478 = load i32, ptr %j, align 4
  %idxprom786 = sext i32 %478 to i64
  %arrayidx787 = getelementptr inbounds [5 x i32], ptr %aPgno, i64 0, i64 %idxprom786
  %479 = load i32, ptr %arrayidx787, align 4
  %480 = load i32, ptr %i, align 4
  %idxprom788 = sext i32 %480 to i64
  %arrayidx789 = getelementptr inbounds [5 x i32], ptr %aPgno, i64 0, i64 %idxprom788
  %481 = load i32, ptr %arrayidx789, align 4
  %cmp790 = icmp eq i32 %479, %481
  br i1 %cmp790, label %if.then792, label %if.end794

if.then792:                                       ; preds = %for.body785
  %call793 = call i32 @sqlite3CorruptError(i32 noundef 71331)
  store i32 %call793, ptr %rc, align 4
  br label %balance_cleanup

if.end794:                                        ; preds = %for.body785
  br label %for.inc795

for.inc795:                                       ; preds = %if.end794
  %482 = load i32, ptr %j, align 4
  %inc796 = add nsw i32 %482, 1
  store i32 %inc796, ptr %j, align 4
  br label %for.cond782, !llvm.loop !20

for.end797:                                       ; preds = %for.cond782
  br label %for.inc798

for.inc798:                                       ; preds = %for.end797
  %483 = load i32, ptr %i, align 4
  %inc799 = add nsw i32 %483, 1
  store i32 %inc799, ptr %i, align 4
  br label %for.cond766, !llvm.loop !21

for.end800:                                       ; preds = %for.cond766
  store i32 0, ptr %i, align 4
  br label %for.cond801

for.cond801:                                      ; preds = %for.inc845, %for.end800
  %484 = load i32, ptr %i, align 4
  %485 = load i32, ptr %nNew, align 4
  %cmp802 = icmp slt i32 %484, %485
  br i1 %cmp802, label %for.body804, label %for.end847

for.body804:                                      ; preds = %for.cond801
  store i32 0, ptr %iBest, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond805

for.cond805:                                      ; preds = %for.inc817, %for.body804
  %486 = load i32, ptr %j, align 4
  %487 = load i32, ptr %nNew, align 4
  %cmp806 = icmp slt i32 %486, %487
  br i1 %cmp806, label %for.body808, label %for.end819

for.body808:                                      ; preds = %for.cond805
  %488 = load i32, ptr %j, align 4
  %idxprom809 = sext i32 %488 to i64
  %arrayidx810 = getelementptr inbounds [5 x i32], ptr %aPgOrder, i64 0, i64 %idxprom809
  %489 = load i32, ptr %arrayidx810, align 4
  %490 = load i32, ptr %iBest, align 4
  %idxprom811 = sext i32 %490 to i64
  %arrayidx812 = getelementptr inbounds [5 x i32], ptr %aPgOrder, i64 0, i64 %idxprom811
  %491 = load i32, ptr %arrayidx812, align 4
  %cmp813 = icmp ult i32 %489, %491
  br i1 %cmp813, label %if.then815, label %if.end816

if.then815:                                       ; preds = %for.body808
  %492 = load i32, ptr %j, align 4
  store i32 %492, ptr %iBest, align 4
  br label %if.end816

if.end816:                                        ; preds = %if.then815, %for.body808
  br label %for.inc817

for.inc817:                                       ; preds = %if.end816
  %493 = load i32, ptr %j, align 4
  %inc818 = add nsw i32 %493, 1
  store i32 %inc818, ptr %j, align 4
  br label %for.cond805, !llvm.loop !22

for.end819:                                       ; preds = %for.cond805
  %494 = load i32, ptr %iBest, align 4
  %idxprom820 = sext i32 %494 to i64
  %arrayidx821 = getelementptr inbounds [5 x i32], ptr %aPgOrder, i64 0, i64 %idxprom820
  %495 = load i32, ptr %arrayidx821, align 4
  store i32 %495, ptr %pgno, align 4
  %496 = load i32, ptr %iBest, align 4
  %idxprom822 = sext i32 %496 to i64
  %arrayidx823 = getelementptr inbounds [5 x i32], ptr %aPgOrder, i64 0, i64 %idxprom822
  store i32 -1, ptr %arrayidx823, align 4
  %497 = load i32, ptr %iBest, align 4
  %498 = load i32, ptr %i, align 4
  %cmp824 = icmp ne i32 %497, %498
  br i1 %cmp824, label %if.then826, label %if.end844

if.then826:                                       ; preds = %for.end819
  %499 = load i32, ptr %iBest, align 4
  %500 = load i32, ptr %i, align 4
  %cmp827 = icmp sgt i32 %499, %500
  br i1 %cmp827, label %if.then829, label %if.end835

if.then829:                                       ; preds = %if.then826
  %501 = load i32, ptr %iBest, align 4
  %idxprom830 = sext i32 %501 to i64
  %arrayidx831 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom830
  %502 = load ptr, ptr %arrayidx831, align 8
  %pDbPage832 = getelementptr inbounds nuw %struct.MemPage, ptr %502, i32 0, i32 23
  %503 = load ptr, ptr %pDbPage832, align 8
  %504 = load ptr, ptr %pBt, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %504, i32 0, i32 18
  %505 = load i32, ptr %nPage, align 4
  %506 = load i32, ptr %iBest, align 4
  %add833 = add i32 %505, %506
  %add834 = add i32 %add833, 1
  call void @sqlite3PagerRekey(ptr noundef %503, i32 noundef %add834, i16 noundef zeroext 0)
  br label %if.end835

if.end835:                                        ; preds = %if.then829, %if.then826
  %507 = load i32, ptr %i, align 4
  %idxprom836 = sext i32 %507 to i64
  %arrayidx837 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom836
  %508 = load ptr, ptr %arrayidx837, align 8
  %pDbPage838 = getelementptr inbounds nuw %struct.MemPage, ptr %508, i32 0, i32 23
  %509 = load ptr, ptr %pDbPage838, align 8
  %510 = load i32, ptr %pgno, align 4
  %511 = load i32, ptr %iBest, align 4
  %idxprom839 = sext i32 %511 to i64
  %arrayidx840 = getelementptr inbounds [5 x i16], ptr %aPgFlags, i64 0, i64 %idxprom839
  %512 = load i16, ptr %arrayidx840, align 2
  call void @sqlite3PagerRekey(ptr noundef %509, i32 noundef %510, i16 noundef zeroext %512)
  %513 = load i32, ptr %pgno, align 4
  %514 = load i32, ptr %i, align 4
  %idxprom841 = sext i32 %514 to i64
  %arrayidx842 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom841
  %515 = load ptr, ptr %arrayidx842, align 8
  %pgno843 = getelementptr inbounds nuw %struct.MemPage, ptr %515, i32 0, i32 4
  store i32 %513, ptr %pgno843, align 4
  br label %if.end844

if.end844:                                        ; preds = %if.end835, %for.end819
  br label %for.inc845

for.inc845:                                       ; preds = %if.end844
  %516 = load i32, ptr %i, align 4
  %inc846 = add nsw i32 %516, 1
  store i32 %inc846, ptr %i, align 4
  br label %for.cond801, !llvm.loop !23

for.end847:                                       ; preds = %for.cond801
  %517 = load ptr, ptr %pRight, align 8
  %518 = load i32, ptr %nNew, align 4
  %sub848 = sub nsw i32 %518, 1
  %idxprom849 = sext i32 %sub848 to i64
  %arrayidx850 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom849
  %519 = load ptr, ptr %arrayidx850, align 8
  %pgno851 = getelementptr inbounds nuw %struct.MemPage, ptr %519, i32 0, i32 4
  %520 = load i32, ptr %pgno851, align 4
  call void @sqlite3Put4byte(ptr noundef %517, i32 noundef %520)
  %521 = load i32, ptr %pageFlags, align 4
  %and852 = and i32 %521, 8
  %cmp853 = icmp eq i32 %and852, 0
  br i1 %cmp853, label %land.lhs.true855, label %if.end878

land.lhs.true855:                                 ; preds = %for.end847
  %522 = load i32, ptr %nOld, align 4
  %523 = load i32, ptr %nNew, align 4
  %cmp856 = icmp ne i32 %522, %523
  br i1 %cmp856, label %if.then858, label %if.end878

if.then858:                                       ; preds = %land.lhs.true855
  %524 = load i32, ptr %nNew, align 4
  %525 = load i32, ptr %nOld, align 4
  %cmp860 = icmp sgt i32 %524, %525
  br i1 %cmp860, label %cond.true862, label %cond.false864

cond.true862:                                     ; preds = %if.then858
  %arraydecay863 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  br label %cond.end866

cond.false864:                                    ; preds = %if.then858
  %arraydecay865 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 0
  br label %cond.end866

cond.end866:                                      ; preds = %cond.false864, %cond.true862
  %cond867 = phi ptr [ %arraydecay863, %cond.true862 ], [ %arraydecay865, %cond.false864 ]
  %526 = load i32, ptr %nOld, align 4
  %sub868 = sub nsw i32 %526, 1
  %idxprom869 = sext i32 %sub868 to i64
  %arrayidx870 = getelementptr inbounds ptr, ptr %cond867, i64 %idxprom869
  %527 = load ptr, ptr %arrayidx870, align 8
  store ptr %527, ptr %pOld859, align 8
  %528 = load i32, ptr %nNew, align 4
  %sub871 = sub nsw i32 %528, 1
  %idxprom872 = sext i32 %sub871 to i64
  %arrayidx873 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom872
  %529 = load ptr, ptr %arrayidx873, align 8
  %aData874 = getelementptr inbounds nuw %struct.MemPage, ptr %529, i32 0, i32 19
  %530 = load ptr, ptr %aData874, align 8
  %arrayidx875 = getelementptr inbounds i8, ptr %530, i64 8
  %531 = load ptr, ptr %pOld859, align 8
  %aData876 = getelementptr inbounds nuw %struct.MemPage, ptr %531, i32 0, i32 19
  %532 = load ptr, ptr %aData876, align 8
  %arrayidx877 = getelementptr inbounds i8, ptr %532, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx875, ptr align 1 %arrayidx877, i64 4, i1 false)
  br label %if.end878

if.end878:                                        ; preds = %cond.end866, %land.lhs.true855, %for.end847
  %533 = load ptr, ptr %pBt, align 8
  %autoVacuum879 = getelementptr inbounds nuw %struct.BtShared, ptr %533, i32 0, i32 5
  %534 = load i8, ptr %autoVacuum879, align 1
  %tobool880 = icmp ne i8 %534, 0
  br i1 %tobool880, label %if.then881, label %if.end970

if.then881:                                       ; preds = %if.end878
  %arrayidx884 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  %535 = load ptr, ptr %arrayidx884, align 16
  store ptr %535, ptr %pOld882, align 8
  store ptr %535, ptr %pNew883, align 8
  %536 = load ptr, ptr %pNew883, align 8
  %nCell885 = getelementptr inbounds nuw %struct.MemPage, ptr %536, i32 0, i32 14
  %537 = load i16, ptr %nCell885, align 8
  %conv886 = zext i16 %537 to i32
  %538 = load ptr, ptr %pNew883, align 8
  %nOverflow887 = getelementptr inbounds nuw %struct.MemPage, ptr %538, i32 0, i32 9
  %539 = load i8, ptr %nOverflow887, align 4
  %conv888 = zext i8 %539 to i32
  %add889 = add nsw i32 %conv886, %conv888
  store i32 %add889, ptr %cntOldNext, align 4
  store i32 0, ptr %iNew, align 4
  store i32 0, ptr %iOld, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond890

for.cond890:                                      ; preds = %for.inc967, %if.then881
  %540 = load i32, ptr %i, align 4
  %nCell891 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %541 = load i32, ptr %nCell891, align 8
  %cmp892 = icmp slt i32 %540, %541
  br i1 %cmp892, label %for.body894, label %for.end969

for.body894:                                      ; preds = %for.cond890
  %apCell895 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %542 = load ptr, ptr %apCell895, align 8
  %543 = load i32, ptr %i, align 4
  %idxprom896 = sext i32 %543 to i64
  %arrayidx897 = getelementptr inbounds ptr, ptr %542, i64 %idxprom896
  %544 = load ptr, ptr %arrayidx897, align 8
  store ptr %544, ptr %pCell, align 8
  br label %while.cond898

while.cond898:                                    ; preds = %cond.end911, %for.body894
  %545 = load i32, ptr %i, align 4
  %546 = load i32, ptr %cntOldNext, align 4
  %cmp899 = icmp eq i32 %545, %546
  br i1 %cmp899, label %while.body901, label %while.end921

while.body901:                                    ; preds = %while.cond898
  %547 = load i32, ptr %iOld, align 4
  %inc902 = add nsw i32 %547, 1
  store i32 %inc902, ptr %iOld, align 4
  %548 = load i32, ptr %iOld, align 4
  %549 = load i32, ptr %nNew, align 4
  %cmp903 = icmp slt i32 %548, %549
  br i1 %cmp903, label %cond.true905, label %cond.false908

cond.true905:                                     ; preds = %while.body901
  %550 = load i32, ptr %iOld, align 4
  %idxprom906 = sext i32 %550 to i64
  %arrayidx907 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom906
  %551 = load ptr, ptr %arrayidx907, align 8
  br label %cond.end911

cond.false908:                                    ; preds = %while.body901
  %552 = load i32, ptr %iOld, align 4
  %idxprom909 = sext i32 %552 to i64
  %arrayidx910 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom909
  %553 = load ptr, ptr %arrayidx910, align 8
  br label %cond.end911

cond.end911:                                      ; preds = %cond.false908, %cond.true905
  %cond912 = phi ptr [ %551, %cond.true905 ], [ %553, %cond.false908 ]
  store ptr %cond912, ptr %pOld882, align 8
  %554 = load ptr, ptr %pOld882, align 8
  %nCell913 = getelementptr inbounds nuw %struct.MemPage, ptr %554, i32 0, i32 14
  %555 = load i16, ptr %nCell913, align 8
  %conv914 = zext i16 %555 to i32
  %556 = load ptr, ptr %pOld882, align 8
  %nOverflow915 = getelementptr inbounds nuw %struct.MemPage, ptr %556, i32 0, i32 9
  %557 = load i8, ptr %nOverflow915, align 4
  %conv916 = zext i8 %557 to i32
  %add917 = add nsw i32 %conv914, %conv916
  %558 = load i32, ptr %leafData, align 4
  %tobool918 = icmp ne i32 %558, 0
  %lnot = xor i1 %tobool918, true
  %lnot.ext = zext i1 %lnot to i32
  %add919 = add nsw i32 %add917, %lnot.ext
  %559 = load i32, ptr %cntOldNext, align 4
  %add920 = add nsw i32 %559, %add919
  store i32 %add920, ptr %cntOldNext, align 4
  br label %while.cond898, !llvm.loop !24

while.end921:                                     ; preds = %while.cond898
  %560 = load i32, ptr %i, align 4
  %561 = load i32, ptr %iNew, align 4
  %idxprom922 = sext i32 %561 to i64
  %arrayidx923 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom922
  %562 = load i32, ptr %arrayidx923, align 4
  %cmp924 = icmp eq i32 %560, %562
  br i1 %cmp924, label %if.then926, label %if.end933

if.then926:                                       ; preds = %while.end921
  %563 = load i32, ptr %iNew, align 4
  %inc927 = add nsw i32 %563, 1
  store i32 %inc927, ptr %iNew, align 4
  %idxprom928 = sext i32 %inc927 to i64
  %arrayidx929 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom928
  %564 = load ptr, ptr %arrayidx929, align 8
  store ptr %564, ptr %pNew883, align 8
  %565 = load i32, ptr %leafData, align 4
  %tobool930 = icmp ne i32 %565, 0
  br i1 %tobool930, label %if.end932, label %if.then931

if.then931:                                       ; preds = %if.then926
  br label %for.inc967

if.end932:                                        ; preds = %if.then926
  br label %if.end933

if.end933:                                        ; preds = %if.end932, %while.end921
  %566 = load i32, ptr %iOld, align 4
  %567 = load i32, ptr %nNew, align 4
  %cmp934 = icmp sge i32 %566, %567
  br i1 %cmp934, label %if.then950, label %lor.lhs.false936

lor.lhs.false936:                                 ; preds = %if.end933
  %568 = load ptr, ptr %pNew883, align 8
  %pgno937 = getelementptr inbounds nuw %struct.MemPage, ptr %568, i32 0, i32 4
  %569 = load i32, ptr %pgno937, align 4
  %570 = load i32, ptr %iOld, align 4
  %idxprom938 = sext i32 %570 to i64
  %arrayidx939 = getelementptr inbounds [5 x i32], ptr %aPgno, i64 0, i64 %idxprom938
  %571 = load i32, ptr %arrayidx939, align 4
  %cmp940 = icmp ne i32 %569, %571
  br i1 %cmp940, label %if.then950, label %lor.lhs.false942

lor.lhs.false942:                                 ; preds = %lor.lhs.false936
  %572 = load ptr, ptr %pCell, align 8
  %573 = ptrtoint ptr %572 to i64
  %574 = load ptr, ptr %pOld882, align 8
  %aData943 = getelementptr inbounds nuw %struct.MemPage, ptr %574, i32 0, i32 19
  %575 = load ptr, ptr %aData943, align 8
  %576 = ptrtoint ptr %575 to i64
  %cmp944 = icmp uge i64 %573, %576
  br i1 %cmp944, label %land.lhs.true946, label %if.then950

land.lhs.true946:                                 ; preds = %lor.lhs.false942
  %577 = load ptr, ptr %pCell, align 8
  %578 = ptrtoint ptr %577 to i64
  %579 = load ptr, ptr %pOld882, align 8
  %aDataEnd947 = getelementptr inbounds nuw %struct.MemPage, ptr %579, i32 0, i32 20
  %580 = load ptr, ptr %aDataEnd947, align 8
  %581 = ptrtoint ptr %580 to i64
  %cmp948 = icmp ult i64 %578, %581
  br i1 %cmp948, label %if.end966, label %if.then950

if.then950:                                       ; preds = %land.lhs.true946, %lor.lhs.false942, %lor.lhs.false936, %if.end933
  %582 = load i16, ptr %leafCorrection, align 2
  %tobool951 = icmp ne i16 %582, 0
  br i1 %tobool951, label %if.end955, label %if.then952

if.then952:                                       ; preds = %if.then950
  %583 = load ptr, ptr %pBt, align 8
  %584 = load ptr, ptr %pCell, align 8
  %call953 = call i32 @sqlite3Get4byte(ptr noundef %584)
  %585 = load ptr, ptr %pNew883, align 8
  %pgno954 = getelementptr inbounds nuw %struct.MemPage, ptr %585, i32 0, i32 4
  %586 = load i32, ptr %pgno954, align 4
  call void @ptrmapPut(ptr noundef %583, i32 noundef %call953, i8 noundef zeroext 5, i32 noundef %586, ptr noundef %rc)
  br label %if.end955

if.end955:                                        ; preds = %if.then952, %if.then950
  %587 = load i32, ptr %i, align 4
  %call956 = call zeroext i16 @cachedCellSize(ptr noundef %b, i32 noundef %587)
  %conv957 = zext i16 %call956 to i32
  %588 = load ptr, ptr %pNew883, align 8
  %minLocal = getelementptr inbounds nuw %struct.MemPage, ptr %588, i32 0, i32 11
  %589 = load i16, ptr %minLocal, align 8
  %conv958 = zext i16 %589 to i32
  %cmp959 = icmp sgt i32 %conv957, %conv958
  br i1 %cmp959, label %if.then961, label %if.end962

if.then961:                                       ; preds = %if.end955
  %590 = load ptr, ptr %pNew883, align 8
  %591 = load ptr, ptr %pOld882, align 8
  %592 = load ptr, ptr %pCell, align 8
  call void @ptrmapPutOvflPtr(ptr noundef %590, ptr noundef %591, ptr noundef %592, ptr noundef %rc)
  br label %if.end962

if.end962:                                        ; preds = %if.then961, %if.end955
  %593 = load i32, ptr %rc, align 4
  %tobool963 = icmp ne i32 %593, 0
  br i1 %tobool963, label %if.then964, label %if.end965

if.then964:                                       ; preds = %if.end962
  br label %balance_cleanup

if.end965:                                        ; preds = %if.end962
  br label %if.end966

if.end966:                                        ; preds = %if.end965, %land.lhs.true946
  br label %for.inc967

for.inc967:                                       ; preds = %if.end966, %if.then931
  %594 = load i32, ptr %i, align 4
  %inc968 = add nsw i32 %594, 1
  store i32 %inc968, ptr %i, align 4
  br label %for.cond890, !llvm.loop !25

for.end969:                                       ; preds = %for.cond890
  br label %if.end970

if.end970:                                        ; preds = %for.end969, %if.end878
  store i32 0, ptr %i, align 4
  br label %for.cond971

for.cond971:                                      ; preds = %for.inc1032, %if.end970
  %595 = load i32, ptr %i, align 4
  %596 = load i32, ptr %nNew, align 4
  %sub972 = sub nsw i32 %596, 1
  %cmp973 = icmp slt i32 %595, %sub972
  br i1 %cmp973, label %for.body975, label %for.end1034

for.body975:                                      ; preds = %for.cond971
  %597 = load i32, ptr %i, align 4
  %idxprom980 = sext i32 %597 to i64
  %arrayidx981 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom980
  %598 = load ptr, ptr %arrayidx981, align 8
  store ptr %598, ptr %pNew979, align 8
  %599 = load i32, ptr %i, align 4
  %idxprom982 = sext i32 %599 to i64
  %arrayidx983 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom982
  %600 = load i32, ptr %arrayidx983, align 4
  store i32 %600, ptr %j, align 4
  %apCell984 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %601 = load ptr, ptr %apCell984, align 8
  %602 = load i32, ptr %j, align 4
  %idxprom985 = sext i32 %602 to i64
  %arrayidx986 = getelementptr inbounds ptr, ptr %601, i64 %idxprom985
  %603 = load ptr, ptr %arrayidx986, align 8
  store ptr %603, ptr %pCell976, align 8
  %szCell987 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %604 = load ptr, ptr %szCell987, align 8
  %605 = load i32, ptr %j, align 4
  %idxprom988 = sext i32 %605 to i64
  %arrayidx989 = getelementptr inbounds i16, ptr %604, i64 %idxprom988
  %606 = load i16, ptr %arrayidx989, align 2
  %conv990 = zext i16 %606 to i32
  %607 = load i16, ptr %leafCorrection, align 2
  %conv991 = zext i16 %607 to i32
  %add992 = add nsw i32 %conv990, %conv991
  store i32 %add992, ptr %sz978, align 4
  %608 = load ptr, ptr %aOvflSpace.addr, align 8
  %609 = load i32, ptr %iOvflSpace, align 4
  %idxprom993 = sext i32 %609 to i64
  %arrayidx994 = getelementptr inbounds i8, ptr %608, i64 %idxprom993
  store ptr %arrayidx994, ptr %pTemp977, align 8
  %610 = load ptr, ptr %pNew979, align 8
  %leaf995 = getelementptr inbounds nuw %struct.MemPage, ptr %610, i32 0, i32 5
  %611 = load i8, ptr %leaf995, align 8
  %tobool996 = icmp ne i8 %611, 0
  br i1 %tobool996, label %if.else1000, label %if.then997

if.then997:                                       ; preds = %for.body975
  %612 = load ptr, ptr %pNew979, align 8
  %aData998 = getelementptr inbounds nuw %struct.MemPage, ptr %612, i32 0, i32 19
  %613 = load ptr, ptr %aData998, align 8
  %arrayidx999 = getelementptr inbounds i8, ptr %613, i64 8
  %614 = load ptr, ptr %pCell976, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx999, ptr align 1 %614, i64 4, i1 false)
  br label %if.end1024

if.else1000:                                      ; preds = %for.body975
  %615 = load i32, ptr %leafData, align 4
  %tobool1001 = icmp ne i32 %615, 0
  br i1 %tobool1001, label %if.then1002, label %if.else1010

if.then1002:                                      ; preds = %if.else1000
  %616 = load i32, ptr %j, align 4
  %dec1003 = add nsw i32 %616, -1
  store i32 %dec1003, ptr %j, align 4
  %617 = load ptr, ptr %pNew979, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %617, i32 0, i32 25
  %618 = load ptr, ptr %xParseCell, align 8
  %619 = load ptr, ptr %pNew979, align 8
  %apCell1004 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %620 = load ptr, ptr %apCell1004, align 8
  %621 = load i32, ptr %j, align 4
  %idxprom1005 = sext i32 %621 to i64
  %arrayidx1006 = getelementptr inbounds ptr, ptr %620, i64 %idxprom1005
  %622 = load ptr, ptr %arrayidx1006, align 8
  call void %618(ptr noundef %619, ptr noundef %622, ptr noundef %info)
  %623 = load ptr, ptr %pTemp977, align 8
  store ptr %623, ptr %pCell976, align 8
  %624 = load ptr, ptr %pCell976, align 8
  %arrayidx1007 = getelementptr inbounds i8, ptr %624, i64 4
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %625 = load i64, ptr %nKey, align 8
  %call1008 = call i32 @sqlite3PutVarint(ptr noundef %arrayidx1007, i64 noundef %625)
  %add1009 = add nsw i32 4, %call1008
  store i32 %add1009, ptr %sz978, align 4
  store ptr null, ptr %pTemp977, align 8
  br label %if.end1023

if.else1010:                                      ; preds = %if.else1000
  %626 = load ptr, ptr %pCell976, align 8
  %add.ptr1011 = getelementptr inbounds i8, ptr %626, i64 -4
  store ptr %add.ptr1011, ptr %pCell976, align 8
  %szCell1012 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 3
  %627 = load ptr, ptr %szCell1012, align 8
  %628 = load i32, ptr %j, align 4
  %idxprom1013 = sext i32 %628 to i64
  %arrayidx1014 = getelementptr inbounds i16, ptr %627, i64 %idxprom1013
  %629 = load i16, ptr %arrayidx1014, align 2
  %conv1015 = zext i16 %629 to i32
  %cmp1016 = icmp eq i32 %conv1015, 4
  br i1 %cmp1016, label %if.then1018, label %if.end1022

if.then1018:                                      ; preds = %if.else1010
  %630 = load ptr, ptr %pParent.addr, align 8
  %xCellSize1019 = getelementptr inbounds nuw %struct.MemPage, ptr %630, i32 0, i32 24
  %631 = load ptr, ptr %xCellSize1019, align 8
  %632 = load ptr, ptr %pParent.addr, align 8
  %633 = load ptr, ptr %pCell976, align 8
  %call1020 = call zeroext i16 %631(ptr noundef %632, ptr noundef %633)
  %conv1021 = zext i16 %call1020 to i32
  store i32 %conv1021, ptr %sz978, align 4
  br label %if.end1022

if.end1022:                                       ; preds = %if.then1018, %if.else1010
  br label %if.end1023

if.end1023:                                       ; preds = %if.end1022, %if.then1002
  br label %if.end1024

if.end1024:                                       ; preds = %if.end1023, %if.then997
  %634 = load i32, ptr %sz978, align 4
  %635 = load i32, ptr %iOvflSpace, align 4
  %add1025 = add nsw i32 %635, %634
  store i32 %add1025, ptr %iOvflSpace, align 4
  %636 = load ptr, ptr %pParent.addr, align 8
  %637 = load i32, ptr %nxDiv, align 4
  %638 = load i32, ptr %i, align 4
  %add1026 = add nsw i32 %637, %638
  %639 = load ptr, ptr %pCell976, align 8
  %640 = load i32, ptr %sz978, align 4
  %641 = load ptr, ptr %pTemp977, align 8
  %642 = load ptr, ptr %pNew979, align 8
  %pgno1027 = getelementptr inbounds nuw %struct.MemPage, ptr %642, i32 0, i32 4
  %643 = load i32, ptr %pgno1027, align 4
  call void @insertCell(ptr noundef %636, i32 noundef %add1026, ptr noundef %639, i32 noundef %640, ptr noundef %641, i32 noundef %643, ptr noundef %rc)
  %644 = load i32, ptr %rc, align 4
  %cmp1028 = icmp ne i32 %644, 0
  br i1 %cmp1028, label %if.then1030, label %if.end1031

if.then1030:                                      ; preds = %if.end1024
  br label %balance_cleanup

if.end1031:                                       ; preds = %if.end1024
  br label %for.inc1032

for.inc1032:                                      ; preds = %if.end1031
  %645 = load i32, ptr %i, align 4
  %inc1033 = add nsw i32 %645, 1
  store i32 %inc1033, ptr %i, align 4
  br label %for.cond971, !llvm.loop !26

for.end1034:                                      ; preds = %for.cond971
  %646 = load i32, ptr %nNew, align 4
  %sub1035 = sub nsw i32 1, %646
  store i32 %sub1035, ptr %i, align 4
  br label %for.cond1036

for.cond1036:                                     ; preds = %for.inc1112, %for.end1034
  %647 = load i32, ptr %i, align 4
  %648 = load i32, ptr %nNew, align 4
  %cmp1037 = icmp slt i32 %647, %648
  br i1 %cmp1037, label %for.body1039, label %for.end1114

for.body1039:                                     ; preds = %for.cond1036
  %649 = load i32, ptr %i, align 4
  %cmp1040 = icmp slt i32 %649, 0
  br i1 %cmp1040, label %cond.true1042, label %cond.false1044

cond.true1042:                                    ; preds = %for.body1039
  %650 = load i32, ptr %i, align 4
  %sub1043 = sub nsw i32 0, %650
  br label %cond.end1045

cond.false1044:                                   ; preds = %for.body1039
  %651 = load i32, ptr %i, align 4
  br label %cond.end1045

cond.end1045:                                     ; preds = %cond.false1044, %cond.true1042
  %cond1046 = phi i32 [ %sub1043, %cond.true1042 ], [ %651, %cond.false1044 ]
  store i32 %cond1046, ptr %iPg, align 4
  %652 = load i32, ptr %iPg, align 4
  %idxprom1047 = sext i32 %652 to i64
  %arrayidx1048 = getelementptr inbounds [5 x i8], ptr %abDone, i64 0, i64 %idxprom1047
  %653 = load i8, ptr %arrayidx1048, align 1
  %tobool1049 = icmp ne i8 %653, 0
  br i1 %tobool1049, label %if.then1050, label %if.end1051

if.then1050:                                      ; preds = %cond.end1045
  br label %for.inc1112

if.end1051:                                       ; preds = %cond.end1045
  %654 = load i32, ptr %i, align 4
  %cmp1052 = icmp sge i32 %654, 0
  br i1 %cmp1052, label %if.then1063, label %lor.lhs.false1054

lor.lhs.false1054:                                ; preds = %if.end1051
  %655 = load i32, ptr %iPg, align 4
  %sub1055 = sub nsw i32 %655, 1
  %idxprom1056 = sext i32 %sub1055 to i64
  %arrayidx1057 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom1056
  %656 = load i32, ptr %arrayidx1057, align 4
  %657 = load i32, ptr %iPg, align 4
  %sub1058 = sub nsw i32 %657, 1
  %idxprom1059 = sext i32 %sub1058 to i64
  %arrayidx1060 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom1059
  %658 = load i32, ptr %arrayidx1060, align 4
  %cmp1061 = icmp sge i32 %656, %658
  br i1 %cmp1061, label %if.then1063, label %if.end1111

if.then1063:                                      ; preds = %lor.lhs.false1054, %if.end1051
  %659 = load i32, ptr %iPg, align 4
  %cmp1066 = icmp eq i32 %659, 0
  br i1 %cmp1066, label %if.then1068, label %if.else1070

if.then1068:                                      ; preds = %if.then1063
  store i32 0, ptr %iOld1065, align 4
  store i32 0, ptr %iNew1064, align 4
  %arrayidx1069 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 0
  %660 = load i32, ptr %arrayidx1069, align 16
  store i32 %660, ptr %nNewCell, align 4
  br label %if.end1095

if.else1070:                                      ; preds = %if.then1063
  %661 = load i32, ptr %iPg, align 4
  %662 = load i32, ptr %nOld, align 4
  %cmp1071 = icmp slt i32 %661, %662
  br i1 %cmp1071, label %cond.true1073, label %cond.false1081

cond.true1073:                                    ; preds = %if.else1070
  %663 = load i32, ptr %iPg, align 4
  %sub1074 = sub nsw i32 %663, 1
  %idxprom1075 = sext i32 %sub1074 to i64
  %arrayidx1076 = getelementptr inbounds [5 x i32], ptr %cntOld, i64 0, i64 %idxprom1075
  %664 = load i32, ptr %arrayidx1076, align 4
  %665 = load i32, ptr %leafData, align 4
  %tobool1077 = icmp ne i32 %665, 0
  %lnot1078 = xor i1 %tobool1077, true
  %lnot.ext1079 = zext i1 %lnot1078 to i32
  %add1080 = add nsw i32 %664, %lnot.ext1079
  br label %cond.end1083

cond.false1081:                                   ; preds = %if.else1070
  %nCell1082 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 0
  %666 = load i32, ptr %nCell1082, align 8
  br label %cond.end1083

cond.end1083:                                     ; preds = %cond.false1081, %cond.true1073
  %cond1084 = phi i32 [ %add1080, %cond.true1073 ], [ %666, %cond.false1081 ]
  store i32 %cond1084, ptr %iOld1065, align 4
  %667 = load i32, ptr %iPg, align 4
  %sub1085 = sub nsw i32 %667, 1
  %idxprom1086 = sext i32 %sub1085 to i64
  %arrayidx1087 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom1086
  %668 = load i32, ptr %arrayidx1087, align 4
  %669 = load i32, ptr %leafData, align 4
  %tobool1088 = icmp ne i32 %669, 0
  %lnot1089 = xor i1 %tobool1088, true
  %lnot.ext1090 = zext i1 %lnot1089 to i32
  %add1091 = add nsw i32 %668, %lnot.ext1090
  store i32 %add1091, ptr %iNew1064, align 4
  %670 = load i32, ptr %iPg, align 4
  %idxprom1092 = sext i32 %670 to i64
  %arrayidx1093 = getelementptr inbounds [5 x i32], ptr %cntNew, i64 0, i64 %idxprom1092
  %671 = load i32, ptr %arrayidx1093, align 4
  %672 = load i32, ptr %iNew1064, align 4
  %sub1094 = sub nsw i32 %671, %672
  store i32 %sub1094, ptr %nNewCell, align 4
  br label %if.end1095

if.end1095:                                       ; preds = %cond.end1083, %if.then1068
  %673 = load i32, ptr %iPg, align 4
  %idxprom1096 = sext i32 %673 to i64
  %arrayidx1097 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom1096
  %674 = load ptr, ptr %arrayidx1097, align 8
  %675 = load i32, ptr %iOld1065, align 4
  %676 = load i32, ptr %iNew1064, align 4
  %677 = load i32, ptr %nNewCell, align 4
  %call1098 = call i32 @editPage(ptr noundef %674, i32 noundef %675, i32 noundef %676, i32 noundef %677, ptr noundef %b)
  store i32 %call1098, ptr %rc, align 4
  %678 = load i32, ptr %rc, align 4
  %tobool1099 = icmp ne i32 %678, 0
  br i1 %tobool1099, label %if.then1100, label %if.end1101

if.then1100:                                      ; preds = %if.end1095
  br label %balance_cleanup

if.end1101:                                       ; preds = %if.end1095
  %679 = load i32, ptr %iPg, align 4
  %idxprom1102 = sext i32 %679 to i64
  %arrayidx1103 = getelementptr inbounds [5 x i8], ptr %abDone, i64 0, i64 %idxprom1102
  %680 = load i8, ptr %arrayidx1103, align 1
  %inc1104 = add i8 %680, 1
  store i8 %inc1104, ptr %arrayidx1103, align 1
  %681 = load i32, ptr %usableSpace, align 4
  %682 = load i32, ptr %iPg, align 4
  %idxprom1105 = sext i32 %682 to i64
  %arrayidx1106 = getelementptr inbounds [5 x i32], ptr %szNew, i64 0, i64 %idxprom1105
  %683 = load i32, ptr %arrayidx1106, align 4
  %sub1107 = sub nsw i32 %681, %683
  %684 = load i32, ptr %iPg, align 4
  %idxprom1108 = sext i32 %684 to i64
  %arrayidx1109 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom1108
  %685 = load ptr, ptr %arrayidx1109, align 8
  %nFree1110 = getelementptr inbounds nuw %struct.MemPage, ptr %685, i32 0, i32 13
  store i32 %sub1107, ptr %nFree1110, align 4
  br label %if.end1111

if.end1111:                                       ; preds = %if.end1101, %lor.lhs.false1054
  br label %for.inc1112

for.inc1112:                                      ; preds = %if.end1111, %if.then1050
  %686 = load i32, ptr %i, align 4
  %inc1113 = add nsw i32 %686, 1
  store i32 %inc1113, ptr %i, align 4
  br label %for.cond1036, !llvm.loop !27

for.end1114:                                      ; preds = %for.cond1036
  %687 = load i32, ptr %isRoot.addr, align 4
  %tobool1115 = icmp ne i32 %687, 0
  br i1 %tobool1115, label %land.lhs.true1116, label %if.else1133

land.lhs.true1116:                                ; preds = %for.end1114
  %688 = load ptr, ptr %pParent.addr, align 8
  %nCell1117 = getelementptr inbounds nuw %struct.MemPage, ptr %688, i32 0, i32 14
  %689 = load i16, ptr %nCell1117, align 8
  %conv1118 = zext i16 %689 to i32
  %cmp1119 = icmp eq i32 %conv1118, 0
  br i1 %cmp1119, label %land.lhs.true1121, label %if.else1133

land.lhs.true1121:                                ; preds = %land.lhs.true1116
  %690 = load ptr, ptr %pParent.addr, align 8
  %hdrOffset1122 = getelementptr inbounds nuw %struct.MemPage, ptr %690, i32 0, i32 6
  %691 = load i8, ptr %hdrOffset1122, align 1
  %conv1123 = zext i8 %691 to i32
  %arrayidx1124 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  %692 = load ptr, ptr %arrayidx1124, align 16
  %nFree1125 = getelementptr inbounds nuw %struct.MemPage, ptr %692, i32 0, i32 13
  %693 = load i32, ptr %nFree1125, align 4
  %cmp1126 = icmp sle i32 %conv1123, %693
  br i1 %cmp1126, label %if.then1128, label %if.else1133

if.then1128:                                      ; preds = %land.lhs.true1121
  %arrayidx1129 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  %694 = load ptr, ptr %arrayidx1129, align 16
  %call1130 = call i32 @defragmentPage(ptr noundef %694, i32 noundef -1)
  store i32 %call1130, ptr %rc, align 4
  %arrayidx1131 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  %695 = load ptr, ptr %arrayidx1131, align 16
  %696 = load ptr, ptr %pParent.addr, align 8
  call void @copyNodeContent(ptr noundef %695, ptr noundef %696, ptr noundef %rc)
  %arrayidx1132 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 0
  %697 = load ptr, ptr %arrayidx1132, align 16
  call void @freePage(ptr noundef %697, ptr noundef %rc)
  br label %if.end1156

if.else1133:                                      ; preds = %land.lhs.true1121, %land.lhs.true1116, %for.end1114
  %698 = load ptr, ptr %pBt, align 8
  %autoVacuum1134 = getelementptr inbounds nuw %struct.BtShared, ptr %698, i32 0, i32 5
  %699 = load i8, ptr %autoVacuum1134, align 1
  %conv1135 = zext i8 %699 to i32
  %tobool1136 = icmp ne i32 %conv1135, 0
  br i1 %tobool1136, label %land.lhs.true1137, label %if.end1155

land.lhs.true1137:                                ; preds = %if.else1133
  %700 = load i16, ptr %leafCorrection, align 2
  %tobool1138 = icmp ne i16 %700, 0
  br i1 %tobool1138, label %if.end1155, label %if.then1139

if.then1139:                                      ; preds = %land.lhs.true1137
  store i32 0, ptr %i, align 4
  br label %for.cond1140

for.cond1140:                                     ; preds = %for.inc1152, %if.then1139
  %701 = load i32, ptr %i, align 4
  %702 = load i32, ptr %nNew, align 4
  %cmp1141 = icmp slt i32 %701, %702
  br i1 %cmp1141, label %for.body1143, label %for.end1154

for.body1143:                                     ; preds = %for.cond1140
  %703 = load i32, ptr %i, align 4
  %idxprom1144 = sext i32 %703 to i64
  %arrayidx1145 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom1144
  %704 = load ptr, ptr %arrayidx1145, align 8
  %aData1146 = getelementptr inbounds nuw %struct.MemPage, ptr %704, i32 0, i32 19
  %705 = load ptr, ptr %aData1146, align 8
  %arrayidx1147 = getelementptr inbounds i8, ptr %705, i64 8
  %call1148 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx1147)
  store i32 %call1148, ptr %key, align 4
  %706 = load ptr, ptr %pBt, align 8
  %707 = load i32, ptr %key, align 4
  %708 = load i32, ptr %i, align 4
  %idxprom1149 = sext i32 %708 to i64
  %arrayidx1150 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom1149
  %709 = load ptr, ptr %arrayidx1150, align 8
  %pgno1151 = getelementptr inbounds nuw %struct.MemPage, ptr %709, i32 0, i32 4
  %710 = load i32, ptr %pgno1151, align 4
  call void @ptrmapPut(ptr noundef %706, i32 noundef %707, i8 noundef zeroext 5, i32 noundef %710, ptr noundef %rc)
  br label %for.inc1152

for.inc1152:                                      ; preds = %for.body1143
  %711 = load i32, ptr %i, align 4
  %inc1153 = add nsw i32 %711, 1
  store i32 %inc1153, ptr %i, align 4
  br label %for.cond1140, !llvm.loop !28

for.end1154:                                      ; preds = %for.cond1140
  br label %if.end1155

if.end1155:                                       ; preds = %for.end1154, %land.lhs.true1137, %if.else1133
  br label %if.end1156

if.end1156:                                       ; preds = %if.end1155, %if.then1128
  %712 = load i32, ptr %nNew, align 4
  store i32 %712, ptr %i, align 4
  br label %for.cond1157

for.cond1157:                                     ; preds = %for.inc1163, %if.end1156
  %713 = load i32, ptr %i, align 4
  %714 = load i32, ptr %nOld, align 4
  %cmp1158 = icmp slt i32 %713, %714
  br i1 %cmp1158, label %for.body1160, label %for.end1165

for.body1160:                                     ; preds = %for.cond1157
  %715 = load i32, ptr %i, align 4
  %idxprom1161 = sext i32 %715 to i64
  %arrayidx1162 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom1161
  %716 = load ptr, ptr %arrayidx1162, align 8
  call void @freePage(ptr noundef %716, ptr noundef %rc)
  br label %for.inc1163

for.inc1163:                                      ; preds = %for.body1160
  %717 = load i32, ptr %i, align 4
  %inc1164 = add nsw i32 %717, 1
  store i32 %inc1164, ptr %i, align 4
  br label %for.cond1157, !llvm.loop !29

for.end1165:                                      ; preds = %for.cond1157
  br label %balance_cleanup

balance_cleanup:                                  ; preds = %for.end1165, %if.then1100, %if.then1030, %if.then964, %if.then792, %if.then759, %if.then745, %if.then735, %if.then709, %if.then622, %if.then515, %if.then269, %if.then247, %if.then210, %if.then161, %if.then73, %if.then58
  %apCell1166 = getelementptr inbounds nuw %struct.CellArray, ptr %b, i32 0, i32 2
  %718 = load ptr, ptr %apCell1166, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %718)
  store i32 0, ptr %i, align 4
  br label %for.cond1167

for.cond1167:                                     ; preds = %for.inc1173, %balance_cleanup
  %719 = load i32, ptr %i, align 4
  %720 = load i32, ptr %nOld, align 4
  %cmp1168 = icmp slt i32 %719, %720
  br i1 %cmp1168, label %for.body1170, label %for.end1175

for.body1170:                                     ; preds = %for.cond1167
  %721 = load i32, ptr %i, align 4
  %idxprom1171 = sext i32 %721 to i64
  %arrayidx1172 = getelementptr inbounds [3 x ptr], ptr %apOld, i64 0, i64 %idxprom1171
  %722 = load ptr, ptr %arrayidx1172, align 8
  call void @releasePage(ptr noundef %722)
  br label %for.inc1173

for.inc1173:                                      ; preds = %for.body1170
  %723 = load i32, ptr %i, align 4
  %inc1174 = add nsw i32 %723, 1
  store i32 %inc1174, ptr %i, align 4
  br label %for.cond1167, !llvm.loop !30

for.end1175:                                      ; preds = %for.cond1167
  store i32 0, ptr %i, align 4
  br label %for.cond1176

for.cond1176:                                     ; preds = %for.inc1182, %for.end1175
  %724 = load i32, ptr %i, align 4
  %725 = load i32, ptr %nNew, align 4
  %cmp1177 = icmp slt i32 %724, %725
  br i1 %cmp1177, label %for.body1179, label %for.end1184

for.body1179:                                     ; preds = %for.cond1176
  %726 = load i32, ptr %i, align 4
  %idxprom1180 = sext i32 %726 to i64
  %arrayidx1181 = getelementptr inbounds [5 x ptr], ptr %apNew, i64 0, i64 %idxprom1180
  %727 = load ptr, ptr %arrayidx1181, align 8
  call void @releasePage(ptr noundef %727)
  br label %for.inc1182

for.inc1182:                                      ; preds = %for.body1179
  %728 = load i32, ptr %i, align 4
  %inc1183 = add nsw i32 %728, 1
  store i32 %inc1183, ptr %i, align 4
  br label %for.cond1176, !llvm.loop !31

for.end1184:                                      ; preds = %for.cond1176
  %729 = load i32, ptr %rc, align 4
  store i32 %729, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end1184, %if.then
  %730 = load i32, ptr %retval, align 4
  ret i32 %730
}

; Function Attrs: nounwind uwtable
declare hidden void @copyNodeContent(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @cachedCellSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerRekey(ptr noundef, i32 noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @editPage(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
