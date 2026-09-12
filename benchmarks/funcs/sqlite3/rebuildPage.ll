; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.CellArray = type { i32, ptr, ptr, ptr, [6 x ptr], [6 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerTempSpace(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @rebuildPage(ptr noundef %pCArray, i32 noundef %iFirst, i32 noundef %nCell, ptr noundef %pPg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCArray.addr = alloca ptr, align 8
  %iFirst.addr = alloca i32, align 4
  %nCell.addr = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %hdr = alloca i32, align 4
  %aData = alloca ptr, align 8
  %usableSize = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iEnd = alloca i32, align 4
  %pCellptr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %k = alloca i32, align 4
  %pSrcEnd = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  %sz = alloca i16, align 2
  store ptr %pCArray, ptr %pCArray.addr, align 8
  store i32 %iFirst, ptr %iFirst.addr, align 4
  store i32 %nCell, ptr %nCell.addr, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 6
  %1 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %hdr, align 4
  %2 = load ptr, ptr %pPg.addr, align 8
  %aData1 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aData1, align 8
  store ptr %3, ptr %aData, align 8
  %4 = load ptr, ptr %pPg.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %pBt, align 8
  %usableSize2 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %usableSize2, align 4
  store i32 %6, ptr %usableSize, align 4
  %7 = load ptr, ptr %aData, align 8
  %8 = load i32, ptr %usableSize, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %pEnd, align 8
  %9 = load i32, ptr %iFirst.addr, align 4
  store i32 %9, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %nCell.addr, align 4
  %add = add nsw i32 %10, %11
  store i32 %add, ptr %iEnd, align 4
  %12 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 21
  %13 = load ptr, ptr %aCellIdx, align 8
  store ptr %13, ptr %pCellptr, align 8
  %14 = load ptr, ptr %pPg.addr, align 8
  %pBt3 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 18
  %15 = load ptr, ptr %pBt3, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pPager, align 8
  %call = call ptr @sqlite3PagerTempSpace(ptr noundef %16)
  store ptr %call, ptr %pTmp, align 8
  %17 = load ptr, ptr %aData, align 8
  %18 = load i32, ptr %hdr, align 4
  %add4 = add nsw i32 %18, 5
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %17, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds i8, ptr %arrayidx6, i64 0
  %19 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %19 to i32
  %shl = shl i32 %conv8, 8
  %20 = load ptr, ptr %aData, align 8
  %21 = load i32, ptr %hdr, align 4
  %add9 = add nsw i32 %21, 5
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds i8, ptr %arrayidx11, i64 1
  %22 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %22 to i32
  %or = or i32 %shl, %conv13
  store i32 %or, ptr %j, align 4
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %usableSize, align 4
  %cmp = icmp ugt i32 %23, %24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %25 = load ptr, ptr %pTmp, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom15 = zext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom15
  %27 = load ptr, ptr %aData, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom17 = zext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %27, i64 %idxprom17
  %29 = load i32, ptr %usableSize, align 4
  %30 = load i32, ptr %j, align 4
  %sub = sub i32 %29, %30
  %conv19 = zext i32 %sub to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx16, ptr align 1 %arrayidx18, i64 %conv19, i1 false)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load ptr, ptr %pCArray.addr, align 8
  %ixNx = getelementptr inbounds nuw %struct.CellArray, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %k, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds [6 x i32], ptr %ixNx, i64 0, i64 %idxprom20
  %33 = load i32, ptr %arrayidx21, align 4
  %34 = load i32, ptr %i, align 4
  %cmp22 = icmp sle i32 %33, %34
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %35 = load i32, ptr %k, align 4
  %cmp24 = icmp slt i32 %35, 6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %36 = phi i1 [ false, %for.cond ], [ %cmp24, %land.rhs ]
  br i1 %36, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %k, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %38 = load ptr, ptr %pCArray.addr, align 8
  %apEnd = getelementptr inbounds nuw %struct.CellArray, ptr %38, i32 0, i32 4
  %39 = load i32, ptr %k, align 4
  %idxprom26 = sext i32 %39 to i64
  %arrayidx27 = getelementptr inbounds [6 x ptr], ptr %apEnd, i64 0, i64 %idxprom26
  %40 = load ptr, ptr %arrayidx27, align 8
  store ptr %40, ptr %pSrcEnd, align 8
  %41 = load ptr, ptr %pEnd, align 8
  store ptr %41, ptr %pData, align 8
  br label %while.body

while.body:                                       ; preds = %if.end91, %for.end
  %42 = load ptr, ptr %pCArray.addr, align 8
  %apCell = getelementptr inbounds nuw %struct.CellArray, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %apCell, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %44 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %43, i64 %idxprom28
  %45 = load ptr, ptr %arrayidx29, align 8
  store ptr %45, ptr %pCell, align 8
  %46 = load ptr, ptr %pCArray.addr, align 8
  %szCell = getelementptr inbounds nuw %struct.CellArray, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %szCell, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %48 to i64
  %arrayidx31 = getelementptr inbounds i16, ptr %47, i64 %idxprom30
  %49 = load i16, ptr %arrayidx31, align 2
  store i16 %49, ptr %sz, align 2
  %50 = load ptr, ptr %pCell, align 8
  %51 = ptrtoint ptr %50 to i64
  %52 = load ptr, ptr %aData, align 8
  %53 = ptrtoint ptr %52 to i64
  %cmp32 = icmp uge i64 %51, %53
  br i1 %cmp32, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %54 = load ptr, ptr %pCell, align 8
  %55 = ptrtoint ptr %54 to i64
  %56 = load ptr, ptr %pEnd, align 8
  %57 = ptrtoint ptr %56 to i64
  %cmp34 = icmp ult i64 %55, %57
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr %pCell, align 8
  %59 = load i16, ptr %sz, align 2
  %conv37 = zext i16 %59 to i32
  %idx.ext = sext i32 %conv37 to i64
  %add.ptr = getelementptr inbounds i8, ptr %58, i64 %idx.ext
  %60 = ptrtoint ptr %add.ptr to i64
  %61 = load ptr, ptr %pEnd, align 8
  %62 = ptrtoint ptr %61 to i64
  %cmp38 = icmp ugt i64 %60, %62
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.then36
  %call41 = call i32 @sqlite3CorruptError(i32 noundef 70315)
  store i32 %call41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then36
  %63 = load ptr, ptr %pTmp, align 8
  %64 = load ptr, ptr %pCell, align 8
  %65 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %65 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx43 = getelementptr inbounds i8, ptr %63, i64 %sub.ptr.sub
  store ptr %arrayidx43, ptr %pCell, align 8
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true, %while.body
  %66 = load ptr, ptr %pCell, align 8
  %67 = load i16, ptr %sz, align 2
  %conv44 = zext i16 %67 to i32
  %idx.ext45 = sext i32 %conv44 to i64
  %add.ptr46 = getelementptr inbounds i8, ptr %66, i64 %idx.ext45
  %68 = ptrtoint ptr %add.ptr46 to i64
  %69 = load ptr, ptr %pSrcEnd, align 8
  %70 = ptrtoint ptr %69 to i64
  %cmp47 = icmp ugt i64 %68, %70
  br i1 %cmp47, label %land.lhs.true49, label %if.end54

land.lhs.true49:                                  ; preds = %if.else
  %71 = load ptr, ptr %pCell, align 8
  %72 = ptrtoint ptr %71 to i64
  %73 = load ptr, ptr %pSrcEnd, align 8
  %74 = ptrtoint ptr %73 to i64
  %cmp50 = icmp ult i64 %72, %74
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true49
  %call53 = call i32 @sqlite3CorruptError(i32 noundef 70320)
  store i32 %call53, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %land.lhs.true49, %if.else
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end42
  %75 = load i16, ptr %sz, align 2
  %conv56 = zext i16 %75 to i32
  %76 = load ptr, ptr %pData, align 8
  %idx.ext57 = sext i32 %conv56 to i64
  %idx.neg = sub i64 0, %idx.ext57
  %add.ptr58 = getelementptr inbounds i8, ptr %76, i64 %idx.neg
  store ptr %add.ptr58, ptr %pData, align 8
  %77 = load ptr, ptr %pData, align 8
  %78 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast59 = ptrtoint ptr %77 to i64
  %sub.ptr.rhs.cast60 = ptrtoint ptr %78 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %shr = ashr i64 %sub.ptr.sub61, 8
  %conv62 = trunc i64 %shr to i8
  %79 = load ptr, ptr %pCellptr, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %79, i64 0
  store i8 %conv62, ptr %arrayidx63, align 1
  %80 = load ptr, ptr %pData, align 8
  %81 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast64 = ptrtoint ptr %80 to i64
  %sub.ptr.rhs.cast65 = ptrtoint ptr %81 to i64
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %conv67 = trunc i64 %sub.ptr.sub66 to i8
  %82 = load ptr, ptr %pCellptr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %conv67, ptr %arrayidx68, align 1
  %83 = load ptr, ptr %pCellptr, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %83, i64 2
  store ptr %add.ptr69, ptr %pCellptr, align 8
  %84 = load ptr, ptr %pData, align 8
  %85 = load ptr, ptr %pCellptr, align 8
  %cmp70 = icmp ult ptr %84, %85
  br i1 %cmp70, label %if.then72, label %if.end74

if.then72:                                        ; preds = %if.end55
  %call73 = call i32 @sqlite3CorruptError(i32 noundef 70326)
  store i32 %call73, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end55
  %86 = load ptr, ptr %pData, align 8
  %87 = load ptr, ptr %pCell, align 8
  %88 = load i16, ptr %sz, align 2
  %conv75 = zext i16 %88 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %87, i64 %conv75, i1 false)
  %89 = load i32, ptr %i, align 4
  %inc76 = add nsw i32 %89, 1
  store i32 %inc76, ptr %i, align 4
  %90 = load i32, ptr %i, align 4
  %91 = load i32, ptr %iEnd, align 4
  %cmp77 = icmp sge i32 %90, %91
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end74
  br label %while.end

if.end80:                                         ; preds = %if.end74
  %92 = load ptr, ptr %pCArray.addr, align 8
  %ixNx81 = getelementptr inbounds nuw %struct.CellArray, ptr %92, i32 0, i32 5
  %93 = load i32, ptr %k, align 4
  %idxprom82 = sext i32 %93 to i64
  %arrayidx83 = getelementptr inbounds [6 x i32], ptr %ixNx81, i64 0, i64 %idxprom82
  %94 = load i32, ptr %arrayidx83, align 4
  %95 = load i32, ptr %i, align 4
  %cmp84 = icmp sle i32 %94, %95
  br i1 %cmp84, label %if.then86, label %if.end91

if.then86:                                        ; preds = %if.end80
  %96 = load i32, ptr %k, align 4
  %inc87 = add nsw i32 %96, 1
  store i32 %inc87, ptr %k, align 4
  %97 = load ptr, ptr %pCArray.addr, align 8
  %apEnd88 = getelementptr inbounds nuw %struct.CellArray, ptr %97, i32 0, i32 4
  %98 = load i32, ptr %k, align 4
  %idxprom89 = sext i32 %98 to i64
  %arrayidx90 = getelementptr inbounds [6 x ptr], ptr %apEnd88, i64 0, i64 %idxprom89
  %99 = load ptr, ptr %arrayidx90, align 8
  store ptr %99, ptr %pSrcEnd, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.end80
  br label %while.body

while.end:                                        ; preds = %if.then79
  %100 = load i32, ptr %nCell.addr, align 4
  %conv92 = trunc i32 %100 to i16
  %101 = load ptr, ptr %pPg.addr, align 8
  %nCell93 = getelementptr inbounds nuw %struct.MemPage, ptr %101, i32 0, i32 14
  store i16 %conv92, ptr %nCell93, align 8
  %102 = load ptr, ptr %pPg.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %102, i32 0, i32 9
  store i8 0, ptr %nOverflow, align 4
  %103 = load ptr, ptr %aData, align 8
  %104 = load i32, ptr %hdr, align 4
  %add94 = add nsw i32 %104, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %103, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds i8, ptr %arrayidx96, i64 0
  store i8 0, ptr %arrayidx97, align 1
  %105 = load ptr, ptr %aData, align 8
  %106 = load i32, ptr %hdr, align 4
  %add98 = add nsw i32 %106, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds i8, ptr %105, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds i8, ptr %arrayidx100, i64 1
  store i8 0, ptr %arrayidx101, align 1
  %107 = load ptr, ptr %pPg.addr, align 8
  %nCell102 = getelementptr inbounds nuw %struct.MemPage, ptr %107, i32 0, i32 14
  %108 = load i16, ptr %nCell102, align 8
  %conv103 = zext i16 %108 to i32
  %shr104 = ashr i32 %conv103, 8
  %conv105 = trunc i32 %shr104 to i8
  %109 = load ptr, ptr %aData, align 8
  %110 = load i32, ptr %hdr, align 4
  %add106 = add nsw i32 %110, 3
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %109, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds i8, ptr %arrayidx108, i64 0
  store i8 %conv105, ptr %arrayidx109, align 1
  %111 = load ptr, ptr %pPg.addr, align 8
  %nCell110 = getelementptr inbounds nuw %struct.MemPage, ptr %111, i32 0, i32 14
  %112 = load i16, ptr %nCell110, align 8
  %conv111 = trunc i16 %112 to i8
  %113 = load ptr, ptr %aData, align 8
  %114 = load i32, ptr %hdr, align 4
  %add112 = add nsw i32 %114, 3
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %113, i64 %idxprom113
  %arrayidx115 = getelementptr inbounds i8, ptr %arrayidx114, i64 1
  store i8 %conv111, ptr %arrayidx115, align 1
  %115 = load ptr, ptr %pData, align 8
  %116 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast116 = ptrtoint ptr %115 to i64
  %sub.ptr.rhs.cast117 = ptrtoint ptr %116 to i64
  %sub.ptr.sub118 = sub i64 %sub.ptr.lhs.cast116, %sub.ptr.rhs.cast117
  %shr119 = ashr i64 %sub.ptr.sub118, 8
  %conv120 = trunc i64 %shr119 to i8
  %117 = load ptr, ptr %aData, align 8
  %118 = load i32, ptr %hdr, align 4
  %add121 = add nsw i32 %118, 5
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds i8, ptr %117, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds i8, ptr %arrayidx123, i64 0
  store i8 %conv120, ptr %arrayidx124, align 1
  %119 = load ptr, ptr %pData, align 8
  %120 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast125 = ptrtoint ptr %119 to i64
  %sub.ptr.rhs.cast126 = ptrtoint ptr %120 to i64
  %sub.ptr.sub127 = sub i64 %sub.ptr.lhs.cast125, %sub.ptr.rhs.cast126
  %conv128 = trunc i64 %sub.ptr.sub127 to i8
  %121 = load ptr, ptr %aData, align 8
  %122 = load i32, ptr %hdr, align 4
  %add129 = add nsw i32 %122, 5
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %121, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds i8, ptr %arrayidx131, i64 1
  store i8 %conv128, ptr %arrayidx132, align 1
  %123 = load ptr, ptr %aData, align 8
  %124 = load i32, ptr %hdr, align 4
  %add133 = add nsw i32 %124, 7
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds i8, ptr %123, i64 %idxprom134
  store i8 0, ptr %arrayidx135, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then72, %if.then52, %if.then40
  %125 = load i32, ptr %retval, align 4
  ret i32 %125
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
