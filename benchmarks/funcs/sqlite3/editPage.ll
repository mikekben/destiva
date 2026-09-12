; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @rebuildPage(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @cachedCellSize(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @editPage(ptr noundef %pPg, i32 noundef %iOld, i32 noundef %iNew, i32 noundef %nNew, ptr noundef %pCArray) #1 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %iOld.addr = alloca i32, align 4
  %iNew.addr = alloca i32, align 4
  %nNew.addr = alloca i32, align 4
  %pCArray.addr = alloca ptr, align 8
  %aData = alloca ptr, align 8
  %hdr = alloca i32, align 4
  %pBegin = alloca ptr, align 8
  %nCell = alloca i32, align 4
  %pData = alloca ptr, align 8
  %pCellptr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iOldEnd = alloca i32, align 4
  %iNewEnd = alloca i32, align 4
  %nShift = alloca i32, align 4
  %nTail = alloca i32, align 4
  %nAdd = alloca i32, align 4
  %iCell = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  store i32 %iOld, ptr %iOld.addr, align 4
  store i32 %iNew, ptr %iNew.addr, align 4
  store i32 %nNew, ptr %nNew.addr, align 4
  store ptr %pCArray, ptr %pCArray.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %aData1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aData1, align 8
  store ptr %1, ptr %aData, align 8
  %2 = load ptr, ptr %pPg.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %hdr, align 4
  %4 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 21
  %5 = load ptr, ptr %aCellIdx, align 8
  %6 = load i32, ptr %nNew.addr, align 4
  %mul = mul nsw i32 %6, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %pBegin, align 8
  %7 = load ptr, ptr %pPg.addr, align 8
  %nCell2 = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 14
  %8 = load i16, ptr %nCell2, align 8
  %conv3 = zext i16 %8 to i32
  store i32 %conv3, ptr %nCell, align 4
  %9 = load i32, ptr %iOld.addr, align 4
  %10 = load ptr, ptr %pPg.addr, align 8
  %nCell4 = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 14
  %11 = load i16, ptr %nCell4, align 8
  %conv5 = zext i16 %11 to i32
  %add = add nsw i32 %9, %conv5
  %12 = load ptr, ptr %pPg.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 9
  %13 = load i8, ptr %nOverflow, align 4
  %conv6 = zext i8 %13 to i32
  %add7 = add nsw i32 %add, %conv6
  store i32 %add7, ptr %iOldEnd, align 4
  %14 = load i32, ptr %iNew.addr, align 4
  %15 = load i32, ptr %nNew.addr, align 4
  %add8 = add nsw i32 %14, %15
  store i32 %add8, ptr %iNewEnd, align 4
  %16 = load i32, ptr %iOld.addr, align 4
  %17 = load i32, ptr %iNew.addr, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %18 = load ptr, ptr %pPg.addr, align 8
  %19 = load i32, ptr %iOld.addr, align 4
  %20 = load i32, ptr %iNew.addr, align 4
  %21 = load i32, ptr %iOld.addr, align 4
  %sub = sub nsw i32 %20, %21
  %22 = load ptr, ptr %pCArray.addr, align 8
  %call = call i32 @pageFreeArray(ptr noundef %18, i32 noundef %19, i32 noundef %sub, ptr noundef %22)
  store i32 %call, ptr %nShift, align 4
  %23 = load i32, ptr %nShift, align 4
  %24 = load i32, ptr %nCell, align 4
  %cmp10 = icmp sgt i32 %23, %24
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  %call13 = call i32 @sqlite3CorruptError(i32 noundef 70521)
  store i32 %call13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %25 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx14 = getelementptr inbounds nuw %struct.MemPage, ptr %25, i32 0, i32 21
  %26 = load ptr, ptr %aCellIdx14, align 8
  %27 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx15 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 21
  %28 = load ptr, ptr %aCellIdx15, align 8
  %29 = load i32, ptr %nShift, align 4
  %mul16 = mul nsw i32 %29, 2
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %28, i64 %idxprom17
  %30 = load i32, ptr %nCell, align 4
  %mul19 = mul nsw i32 %30, 2
  %conv20 = sext i32 %mul19 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %26, ptr align 1 %arrayidx18, i64 %conv20, i1 false)
  %31 = load i32, ptr %nShift, align 4
  %32 = load i32, ptr %nCell, align 4
  %sub21 = sub nsw i32 %32, %31
  store i32 %sub21, ptr %nCell, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end, %entry
  %33 = load i32, ptr %iNewEnd, align 4
  %34 = load i32, ptr %iOldEnd, align 4
  %cmp23 = icmp slt i32 %33, %34
  br i1 %cmp23, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end22
  %35 = load ptr, ptr %pPg.addr, align 8
  %36 = load i32, ptr %iNewEnd, align 4
  %37 = load i32, ptr %iOldEnd, align 4
  %38 = load i32, ptr %iNewEnd, align 4
  %sub26 = sub nsw i32 %37, %38
  %39 = load ptr, ptr %pCArray.addr, align 8
  %call27 = call i32 @pageFreeArray(ptr noundef %35, i32 noundef %36, i32 noundef %sub26, ptr noundef %39)
  store i32 %call27, ptr %nTail, align 4
  %40 = load i32, ptr %nTail, align 4
  %41 = load i32, ptr %nCell, align 4
  %sub28 = sub nsw i32 %41, %40
  store i32 %sub28, ptr %nCell, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end22
  %42 = load ptr, ptr %aData, align 8
  %43 = load ptr, ptr %aData, align 8
  %44 = load i32, ptr %hdr, align 4
  %add30 = add nsw i32 %44, 5
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %43, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds i8, ptr %arrayidx32, i64 0
  %45 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %45 to i32
  %shl = shl i32 %conv34, 8
  %46 = load ptr, ptr %aData, align 8
  %47 = load i32, ptr %hdr, align 4
  %add35 = add nsw i32 %47, 5
  %idxprom36 = sext i32 %add35 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %46, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds i8, ptr %arrayidx37, i64 1
  %48 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %48 to i32
  %or = or i32 %shl, %conv39
  %sub40 = sub nsw i32 %or, 1
  %and = and i32 %sub40, 65535
  %add41 = add nsw i32 %and, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %42, i64 %idxprom42
  store ptr %arrayidx43, ptr %pData, align 8
  %49 = load ptr, ptr %pData, align 8
  %50 = load ptr, ptr %pBegin, align 8
  %cmp44 = icmp ult ptr %49, %50
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end29
  br label %editpage_fail

if.end47:                                         ; preds = %if.end29
  %51 = load i32, ptr %iNew.addr, align 4
  %52 = load i32, ptr %iOld.addr, align 4
  %cmp48 = icmp slt i32 %51, %52
  br i1 %cmp48, label %if.then50, label %if.end65

if.then50:                                        ; preds = %if.end47
  %53 = load i32, ptr %nNew.addr, align 4
  %54 = load i32, ptr %iOld.addr, align 4
  %55 = load i32, ptr %iNew.addr, align 4
  %sub51 = sub nsw i32 %54, %55
  %cmp52 = icmp slt i32 %53, %sub51
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then50
  %56 = load i32, ptr %nNew.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then50
  %57 = load i32, ptr %iOld.addr, align 4
  %58 = load i32, ptr %iNew.addr, align 4
  %sub54 = sub nsw i32 %57, %58
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %56, %cond.true ], [ %sub54, %cond.false ]
  store i32 %cond, ptr %nAdd, align 4
  %59 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx55 = getelementptr inbounds nuw %struct.MemPage, ptr %59, i32 0, i32 21
  %60 = load ptr, ptr %aCellIdx55, align 8
  store ptr %60, ptr %pCellptr, align 8
  %61 = load ptr, ptr %pCellptr, align 8
  %62 = load i32, ptr %nAdd, align 4
  %mul56 = mul nsw i32 %62, 2
  %idxprom57 = sext i32 %mul56 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %61, i64 %idxprom57
  %63 = load ptr, ptr %pCellptr, align 8
  %64 = load i32, ptr %nCell, align 4
  %mul59 = mul nsw i32 %64, 2
  %conv60 = sext i32 %mul59 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx58, ptr align 1 %63, i64 %conv60, i1 false)
  %65 = load ptr, ptr %pPg.addr, align 8
  %66 = load ptr, ptr %pBegin, align 8
  %67 = load ptr, ptr %pCellptr, align 8
  %68 = load i32, ptr %iNew.addr, align 4
  %69 = load i32, ptr %nAdd, align 4
  %70 = load ptr, ptr %pCArray.addr, align 8
  %call61 = call i32 @pageInsertArray(ptr noundef %65, ptr noundef %66, ptr noundef %pData, ptr noundef %67, i32 noundef %68, i32 noundef %69, ptr noundef %70)
  %tobool = icmp ne i32 %call61, 0
  br i1 %tobool, label %if.then62, label %if.end63

if.then62:                                        ; preds = %cond.end
  br label %editpage_fail

if.end63:                                         ; preds = %cond.end
  %71 = load i32, ptr %nAdd, align 4
  %72 = load i32, ptr %nCell, align 4
  %add64 = add nsw i32 %72, %71
  store i32 %add64, ptr %nCell, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end47
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end65
  %73 = load i32, ptr %i, align 4
  %74 = load ptr, ptr %pPg.addr, align 8
  %nOverflow66 = getelementptr inbounds nuw %struct.MemPage, ptr %74, i32 0, i32 9
  %75 = load i8, ptr %nOverflow66, align 4
  %conv67 = zext i8 %75 to i32
  %cmp68 = icmp slt i32 %73, %conv67
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i32, ptr %iOld.addr, align 4
  %77 = load ptr, ptr %pPg.addr, align 8
  %aiOvfl = getelementptr inbounds nuw %struct.MemPage, ptr %77, i32 0, i32 16
  %78 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %78 to i64
  %arrayidx71 = getelementptr inbounds [4 x i16], ptr %aiOvfl, i64 0, i64 %idxprom70
  %79 = load i16, ptr %arrayidx71, align 2
  %conv72 = zext i16 %79 to i32
  %add73 = add nsw i32 %76, %conv72
  %80 = load i32, ptr %iNew.addr, align 4
  %sub74 = sub nsw i32 %add73, %80
  store i32 %sub74, ptr %iCell, align 4
  %81 = load i32, ptr %iCell, align 4
  %cmp75 = icmp sge i32 %81, 0
  br i1 %cmp75, label %land.lhs.true, label %if.end99

land.lhs.true:                                    ; preds = %for.body
  %82 = load i32, ptr %iCell, align 4
  %83 = load i32, ptr %nNew.addr, align 4
  %cmp77 = icmp slt i32 %82, %83
  br i1 %cmp77, label %if.then79, label %if.end99

if.then79:                                        ; preds = %land.lhs.true
  %84 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx80 = getelementptr inbounds nuw %struct.MemPage, ptr %84, i32 0, i32 21
  %85 = load ptr, ptr %aCellIdx80, align 8
  %86 = load i32, ptr %iCell, align 4
  %mul81 = mul nsw i32 %86, 2
  %idxprom82 = sext i32 %mul81 to i64
  %arrayidx83 = getelementptr inbounds i8, ptr %85, i64 %idxprom82
  store ptr %arrayidx83, ptr %pCellptr, align 8
  %87 = load i32, ptr %nCell, align 4
  %88 = load i32, ptr %iCell, align 4
  %cmp84 = icmp sgt i32 %87, %88
  br i1 %cmp84, label %if.then86, label %if.end91

if.then86:                                        ; preds = %if.then79
  %89 = load ptr, ptr %pCellptr, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %89, i64 2
  %90 = load ptr, ptr %pCellptr, align 8
  %91 = load i32, ptr %nCell, align 4
  %92 = load i32, ptr %iCell, align 4
  %sub88 = sub nsw i32 %91, %92
  %mul89 = mul nsw i32 %sub88, 2
  %conv90 = sext i32 %mul89 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx87, ptr align 1 %90, i64 %conv90, i1 false)
  br label %if.end91

if.end91:                                         ; preds = %if.then86, %if.then79
  %93 = load i32, ptr %nCell, align 4
  %inc = add nsw i32 %93, 1
  store i32 %inc, ptr %nCell, align 4
  %94 = load ptr, ptr %pCArray.addr, align 8
  %95 = load i32, ptr %iCell, align 4
  %96 = load i32, ptr %iNew.addr, align 4
  %add92 = add nsw i32 %95, %96
  %call93 = call zeroext i16 @cachedCellSize(ptr noundef %94, i32 noundef %add92)
  %97 = load ptr, ptr %pPg.addr, align 8
  %98 = load ptr, ptr %pBegin, align 8
  %99 = load ptr, ptr %pCellptr, align 8
  %100 = load i32, ptr %iCell, align 4
  %101 = load i32, ptr %iNew.addr, align 4
  %add94 = add nsw i32 %100, %101
  %102 = load ptr, ptr %pCArray.addr, align 8
  %call95 = call i32 @pageInsertArray(ptr noundef %97, ptr noundef %98, ptr noundef %pData, ptr noundef %99, i32 noundef %add94, i32 noundef 1, ptr noundef %102)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end91
  br label %editpage_fail

if.end98:                                         ; preds = %if.end91
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end99
  %103 = load i32, ptr %i, align 4
  %inc100 = add nsw i32 %103, 1
  store i32 %inc100, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %104 = load ptr, ptr %pPg.addr, align 8
  %aCellIdx101 = getelementptr inbounds nuw %struct.MemPage, ptr %104, i32 0, i32 21
  %105 = load ptr, ptr %aCellIdx101, align 8
  %106 = load i32, ptr %nCell, align 4
  %mul102 = mul nsw i32 %106, 2
  %idxprom103 = sext i32 %mul102 to i64
  %arrayidx104 = getelementptr inbounds i8, ptr %105, i64 %idxprom103
  store ptr %arrayidx104, ptr %pCellptr, align 8
  %107 = load ptr, ptr %pPg.addr, align 8
  %108 = load ptr, ptr %pBegin, align 8
  %109 = load ptr, ptr %pCellptr, align 8
  %110 = load i32, ptr %iNew.addr, align 4
  %111 = load i32, ptr %nCell, align 4
  %add105 = add nsw i32 %110, %111
  %112 = load i32, ptr %nNew.addr, align 4
  %113 = load i32, ptr %nCell, align 4
  %sub106 = sub nsw i32 %112, %113
  %114 = load ptr, ptr %pCArray.addr, align 8
  %call107 = call i32 @pageInsertArray(ptr noundef %107, ptr noundef %108, ptr noundef %pData, ptr noundef %109, i32 noundef %add105, i32 noundef %sub106, ptr noundef %114)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.end
  br label %editpage_fail

if.end110:                                        ; preds = %for.end
  %115 = load i32, ptr %nNew.addr, align 4
  %conv111 = trunc i32 %115 to i16
  %116 = load ptr, ptr %pPg.addr, align 8
  %nCell112 = getelementptr inbounds nuw %struct.MemPage, ptr %116, i32 0, i32 14
  store i16 %conv111, ptr %nCell112, align 8
  %117 = load ptr, ptr %pPg.addr, align 8
  %nOverflow113 = getelementptr inbounds nuw %struct.MemPage, ptr %117, i32 0, i32 9
  store i8 0, ptr %nOverflow113, align 4
  %118 = load ptr, ptr %pPg.addr, align 8
  %nCell114 = getelementptr inbounds nuw %struct.MemPage, ptr %118, i32 0, i32 14
  %119 = load i16, ptr %nCell114, align 8
  %conv115 = zext i16 %119 to i32
  %shr = ashr i32 %conv115, 8
  %conv116 = trunc i32 %shr to i8
  %120 = load ptr, ptr %aData, align 8
  %121 = load i32, ptr %hdr, align 4
  %add117 = add nsw i32 %121, 3
  %idxprom118 = sext i32 %add117 to i64
  %arrayidx119 = getelementptr inbounds i8, ptr %120, i64 %idxprom118
  %arrayidx120 = getelementptr inbounds i8, ptr %arrayidx119, i64 0
  store i8 %conv116, ptr %arrayidx120, align 1
  %122 = load ptr, ptr %pPg.addr, align 8
  %nCell121 = getelementptr inbounds nuw %struct.MemPage, ptr %122, i32 0, i32 14
  %123 = load i16, ptr %nCell121, align 8
  %conv122 = trunc i16 %123 to i8
  %124 = load ptr, ptr %aData, align 8
  %125 = load i32, ptr %hdr, align 4
  %add123 = add nsw i32 %125, 3
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds i8, ptr %124, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds i8, ptr %arrayidx125, i64 1
  store i8 %conv122, ptr %arrayidx126, align 1
  %126 = load ptr, ptr %pData, align 8
  %127 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %126 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %127 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %shr127 = ashr i64 %sub.ptr.sub, 8
  %conv128 = trunc i64 %shr127 to i8
  %128 = load ptr, ptr %aData, align 8
  %129 = load i32, ptr %hdr, align 4
  %add129 = add nsw i32 %129, 5
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %128, i64 %idxprom130
  %arrayidx132 = getelementptr inbounds i8, ptr %arrayidx131, i64 0
  store i8 %conv128, ptr %arrayidx132, align 1
  %130 = load ptr, ptr %pData, align 8
  %131 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast133 = ptrtoint ptr %130 to i64
  %sub.ptr.rhs.cast134 = ptrtoint ptr %131 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %conv136 = trunc i64 %sub.ptr.sub135 to i8
  %132 = load ptr, ptr %aData, align 8
  %133 = load i32, ptr %hdr, align 4
  %add137 = add nsw i32 %133, 5
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %132, i64 %idxprom138
  %arrayidx140 = getelementptr inbounds i8, ptr %arrayidx139, i64 1
  store i8 %conv136, ptr %arrayidx140, align 1
  store i32 0, ptr %retval, align 4
  br label %return

editpage_fail:                                    ; preds = %if.then109, %if.then97, %if.then62, %if.then46
  %134 = load ptr, ptr %pCArray.addr, align 8
  %135 = load i32, ptr %iNew.addr, align 4
  %136 = load i32, ptr %nNew.addr, align 4
  call void @populateCellCache(ptr noundef %134, i32 noundef %135, i32 noundef %136)
  %137 = load ptr, ptr %pCArray.addr, align 8
  %138 = load i32, ptr %iNew.addr, align 4
  %139 = load i32, ptr %nNew.addr, align 4
  %140 = load ptr, ptr %pPg.addr, align 8
  %call141 = call i32 @rebuildPage(ptr noundef %137, i32 noundef %138, i32 noundef %139, ptr noundef %140)
  store i32 %call141, ptr %retval, align 4
  br label %return

return:                                           ; preds = %editpage_fail, %if.end110, %if.then12
  %141 = load i32, ptr %retval, align 4
  ret i32 %141
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pageFreeArray(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pageInsertArray(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @populateCellCache(ptr noundef, i32 noundef, i32 noundef) #1

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
