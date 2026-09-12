; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @getCellInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @accessPayload(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %pCur, ptr noundef %pIdxKey, i64 noundef %intKey, i32 noundef %biasRight, ptr noundef %pRes) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pIdxKey.addr = alloca ptr, align 8
  %intKey.addr = alloca i64, align 8
  %biasRight.addr = alloca i32, align 4
  %pRes.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xRecordCompare = alloca ptr, align 8
  %lwr = alloca i32, align 4
  %upr = alloca i32, align 4
  %idx = alloca i32, align 4
  %c = alloca i32, align 4
  %chldPg = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pCell = alloca ptr, align 8
  %nCellKey = alloca i64, align 8
  %nCell123 = alloca i32, align 4
  %pCellKey = alloca ptr, align 8
  %pCellBody = alloca ptr, align 8
  %nOverrun = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pIdxKey, ptr %pIdxKey.addr, align 8
  store i64 %intKey, ptr %intKey.addr, align 8
  store i32 %biasRight, ptr %biasRight.addr, align 4
  store ptr %pRes, ptr %pRes.addr, align 8
  %0 = load ptr, ptr %pIdxKey.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %eState, align 8
  %conv = zext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true3, label %if.end44

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %3, i32 0, i32 1
  %4 = load i8, ptr %curFlags, align 1
  %conv4 = zext i8 %4 to i32
  %and = and i32 %conv4, 2
  %cmp5 = icmp ne i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end44

if.then:                                          ; preds = %land.lhs.true3
  %5 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 10
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %6 = load i64, ptr %nKey, align 8
  %7 = load i64, ptr %intKey.addr, align 8
  %cmp7 = icmp eq i64 %6, %7
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %8 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %pCur.addr, align 8
  %info10 = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 10
  %nKey11 = getelementptr inbounds nuw %struct.CellInfo, ptr %info10, i32 0, i32 0
  %10 = load i64, ptr %nKey11, align 8
  %11 = load i64, ptr %intKey.addr, align 8
  %cmp12 = icmp slt i64 %10, %11
  br i1 %cmp12, label %if.then14, label %if.end43

if.then14:                                        ; preds = %if.end
  %12 = load ptr, ptr %pCur.addr, align 8
  %curFlags15 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 1
  %13 = load i8, ptr %curFlags15, align 1
  %conv16 = zext i8 %13 to i32
  %and17 = and i32 %conv16, 8
  %cmp18 = icmp ne i32 %and17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then14
  %14 = load ptr, ptr %pRes.addr, align 8
  store i32 -1, ptr %14, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then14
  %15 = load ptr, ptr %pCur.addr, align 8
  %info22 = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 10
  %nKey23 = getelementptr inbounds nuw %struct.CellInfo, ptr %info22, i32 0, i32 0
  %16 = load i64, ptr %nKey23, align 8
  %add = add nsw i64 %16, 1
  %17 = load i64, ptr %intKey.addr, align 8
  %cmp24 = icmp eq i64 %add, %17
  br i1 %cmp24, label %if.then26, label %if.end42

if.then26:                                        ; preds = %if.end21
  %18 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @sqlite3BtreeNext(ptr noundef %19, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp27 = icmp eq i32 %20, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then26
  %21 = load ptr, ptr %pCur.addr, align 8
  call void @getCellInfo(ptr noundef %21)
  %22 = load ptr, ptr %pCur.addr, align 8
  %info30 = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 10
  %nKey31 = getelementptr inbounds nuw %struct.CellInfo, ptr %info30, i32 0, i32 0
  %23 = load i64, ptr %nKey31, align 8
  %24 = load i64, ptr %intKey.addr, align 8
  %cmp32 = icmp eq i64 %23, %24
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then29
  br label %if.end41

if.else:                                          ; preds = %if.then26
  %25 = load i32, ptr %rc, align 4
  %cmp36 = icmp eq i32 %25, 101
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else
  store i32 0, ptr %rc, align 4
  br label %if.end40

if.else39:                                        ; preds = %if.else
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then38
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end35
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end21
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %land.lhs.true3, %land.lhs.true, %entry
  %27 = load ptr, ptr %pIdxKey.addr, align 8
  %tobool = icmp ne ptr %27, null
  br i1 %tobool, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.end44
  %28 = load ptr, ptr %pIdxKey.addr, align 8
  %call46 = call ptr @sqlite3VdbeFindCompare(ptr noundef %28)
  store ptr %call46, ptr %xRecordCompare, align 8
  %29 = load ptr, ptr %pIdxKey.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %29, i32 0, i32 4
  store i8 0, ptr %errCode, align 1
  br label %if.end48

if.else47:                                        ; preds = %if.end44
  store ptr null, ptr %xRecordCompare, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then45
  %30 = load ptr, ptr %pCur.addr, align 8
  %call49 = call i32 @moveToRoot(ptr noundef %30)
  store i32 %call49, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %tobool50 = icmp ne i32 %31, 0
  br i1 %tobool50, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end48
  %32 = load i32, ptr %rc, align 4
  %cmp52 = icmp eq i32 %32, 16
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then51
  %33 = load ptr, ptr %pRes.addr, align 8
  store i32 -1, ptr %33, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.then51
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end48
  br label %for.cond

for.cond:                                         ; preds = %if.end278, %if.end56
  %35 = load ptr, ptr %pCur.addr, align 8
  %pPage57 = getelementptr inbounds nuw %struct.BtCursor, ptr %35, i32 0, i32 18
  %36 = load ptr, ptr %pPage57, align 8
  store ptr %36, ptr %pPage, align 8
  store i32 0, ptr %lwr, align 4
  %37 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 14
  %38 = load i16, ptr %nCell, align 8
  %conv58 = zext i16 %38 to i32
  %sub = sub nsw i32 %conv58, 1
  store i32 %sub, ptr %upr, align 4
  %39 = load i32, ptr %upr, align 4
  %40 = load i32, ptr %biasRight.addr, align 4
  %sub59 = sub nsw i32 1, %40
  %shr = ashr i32 %39, %sub59
  store i32 %shr, ptr %idx, align 4
  %41 = load i32, ptr %idx, align 4
  %conv60 = trunc i32 %41 to i16
  %42 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %42, i32 0, i32 15
  store i16 %conv60, ptr %ix, align 2
  %43 = load ptr, ptr %xRecordCompare, align 8
  %cmp61 = icmp eq ptr %43, null
  br i1 %cmp61, label %if.then63, label %if.else121

if.then63:                                        ; preds = %for.cond
  br label %for.cond64

for.cond64:                                       ; preds = %if.end118, %if.then63
  %44 = load ptr, ptr %pPage, align 8
  %aDataOfst = getelementptr inbounds nuw %struct.MemPage, ptr %44, i32 0, i32 22
  %45 = load ptr, ptr %aDataOfst, align 8
  %46 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 15
  %47 = load i16, ptr %maskPage, align 2
  %conv65 = zext i16 %47 to i32
  %48 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 21
  %49 = load ptr, ptr %aCellIdx, align 8
  %50 = load i32, ptr %idx, align 4
  %mul = mul nsw i32 2, %50
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %49, i64 %idxprom
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %51 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %51 to i32
  %shl = shl i32 %conv67, 8
  %52 = load ptr, ptr %pPage, align 8
  %aCellIdx68 = getelementptr inbounds nuw %struct.MemPage, ptr %52, i32 0, i32 21
  %53 = load ptr, ptr %aCellIdx68, align 8
  %54 = load i32, ptr %idx, align 4
  %mul69 = mul nsw i32 2, %54
  %idxprom70 = sext i32 %mul69 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %53, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds i8, ptr %arrayidx71, i64 1
  %55 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %55 to i32
  %or = or i32 %shl, %conv73
  %and74 = and i32 %conv65, %or
  %idx.ext = sext i32 %and74 to i64
  %add.ptr = getelementptr inbounds i8, ptr %45, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %56 = load ptr, ptr %pPage, align 8
  %intKeyLeaf = getelementptr inbounds nuw %struct.MemPage, ptr %56, i32 0, i32 3
  %57 = load i8, ptr %intKeyLeaf, align 1
  %tobool75 = icmp ne i8 %57, 0
  br i1 %tobool75, label %if.then76, label %if.end85

if.then76:                                        ; preds = %for.cond64
  br label %while.cond

while.cond:                                       ; preds = %if.end84, %if.then76
  %58 = load ptr, ptr %pCell, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr, ptr %pCell, align 8
  %59 = load i8, ptr %58, align 1
  %conv77 = zext i8 %59 to i32
  %cmp78 = icmp sle i32 128, %conv77
  br i1 %cmp78, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load ptr, ptr %pCell, align 8
  %61 = load ptr, ptr %pPage, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %61, i32 0, i32 20
  %62 = load ptr, ptr %aDataEnd, align 8
  %cmp80 = icmp uge ptr %60, %62
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %while.body
  %call83 = call i32 @sqlite3CorruptError(i32 noundef 68864)
  store i32 %call83, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end85

if.end85:                                         ; preds = %while.end, %for.cond64
  %63 = load ptr, ptr %pCell, align 8
  %call86 = call zeroext i8 @sqlite3GetVarint(ptr noundef %63, ptr noundef %nCellKey)
  %64 = load i64, ptr %nCellKey, align 8
  %65 = load i64, ptr %intKey.addr, align 8
  %cmp87 = icmp slt i64 %64, %65
  br i1 %cmp87, label %if.then89, label %if.else95

if.then89:                                        ; preds = %if.end85
  %66 = load i32, ptr %idx, align 4
  %add90 = add nsw i32 %66, 1
  store i32 %add90, ptr %lwr, align 4
  %67 = load i32, ptr %lwr, align 4
  %68 = load i32, ptr %upr, align 4
  %cmp91 = icmp sgt i32 %67, %68
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then89
  store i32 -1, ptr %c, align 4
  br label %for.end

if.end94:                                         ; preds = %if.then89
  br label %if.end118

if.else95:                                        ; preds = %if.end85
  %69 = load i64, ptr %nCellKey, align 8
  %70 = load i64, ptr %intKey.addr, align 8
  %cmp96 = icmp sgt i64 %69, %70
  br i1 %cmp96, label %if.then98, label %if.else104

if.then98:                                        ; preds = %if.else95
  %71 = load i32, ptr %idx, align 4
  %sub99 = sub nsw i32 %71, 1
  store i32 %sub99, ptr %upr, align 4
  %72 = load i32, ptr %lwr, align 4
  %73 = load i32, ptr %upr, align 4
  %cmp100 = icmp sgt i32 %72, %73
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.then98
  store i32 1, ptr %c, align 4
  br label %for.end

if.end103:                                        ; preds = %if.then98
  br label %if.end117

if.else104:                                       ; preds = %if.else95
  %74 = load i32, ptr %idx, align 4
  %conv105 = trunc i32 %74 to i16
  %75 = load ptr, ptr %pCur.addr, align 8
  %ix106 = getelementptr inbounds nuw %struct.BtCursor, ptr %75, i32 0, i32 15
  store i16 %conv105, ptr %ix106, align 2
  %76 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %76, i32 0, i32 5
  %77 = load i8, ptr %leaf, align 8
  %tobool107 = icmp ne i8 %77, 0
  br i1 %tobool107, label %if.else109, label %if.then108

if.then108:                                       ; preds = %if.else104
  %78 = load i32, ptr %idx, align 4
  store i32 %78, ptr %lwr, align 4
  br label %moveto_next_layer

if.else109:                                       ; preds = %if.else104
  %79 = load ptr, ptr %pCur.addr, align 8
  %curFlags110 = getelementptr inbounds nuw %struct.BtCursor, ptr %79, i32 0, i32 1
  %80 = load i8, ptr %curFlags110, align 1
  %conv111 = zext i8 %80 to i32
  %or112 = or i32 %conv111, 2
  %conv113 = trunc i32 %or112 to i8
  store i8 %conv113, ptr %curFlags110, align 1
  %81 = load i64, ptr %nCellKey, align 8
  %82 = load ptr, ptr %pCur.addr, align 8
  %info114 = getelementptr inbounds nuw %struct.BtCursor, ptr %82, i32 0, i32 10
  %nKey115 = getelementptr inbounds nuw %struct.CellInfo, ptr %info114, i32 0, i32 0
  store i64 %81, ptr %nKey115, align 8
  %83 = load ptr, ptr %pCur.addr, align 8
  %info116 = getelementptr inbounds nuw %struct.BtCursor, ptr %83, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info116, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %84 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %84, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end117:                                        ; preds = %if.end103
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end94
  %85 = load i32, ptr %lwr, align 4
  %86 = load i32, ptr %upr, align 4
  %add119 = add nsw i32 %85, %86
  %shr120 = ashr i32 %add119, 1
  store i32 %shr120, ptr %idx, align 4
  br label %for.cond64

for.end:                                          ; preds = %if.then102, %if.then93
  br label %if.end233

if.else121:                                       ; preds = %for.cond
  br label %for.cond122

for.cond122:                                      ; preds = %if.end229, %if.else121
  %87 = load ptr, ptr %pPage, align 8
  %aDataOfst124 = getelementptr inbounds nuw %struct.MemPage, ptr %87, i32 0, i32 22
  %88 = load ptr, ptr %aDataOfst124, align 8
  %89 = load ptr, ptr %pPage, align 8
  %maskPage125 = getelementptr inbounds nuw %struct.MemPage, ptr %89, i32 0, i32 15
  %90 = load i16, ptr %maskPage125, align 2
  %conv126 = zext i16 %90 to i32
  %91 = load ptr, ptr %pPage, align 8
  %aCellIdx127 = getelementptr inbounds nuw %struct.MemPage, ptr %91, i32 0, i32 21
  %92 = load ptr, ptr %aCellIdx127, align 8
  %93 = load i32, ptr %idx, align 4
  %mul128 = mul nsw i32 2, %93
  %idxprom129 = sext i32 %mul128 to i64
  %arrayidx130 = getelementptr inbounds i8, ptr %92, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds i8, ptr %arrayidx130, i64 0
  %94 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %94 to i32
  %shl133 = shl i32 %conv132, 8
  %95 = load ptr, ptr %pPage, align 8
  %aCellIdx134 = getelementptr inbounds nuw %struct.MemPage, ptr %95, i32 0, i32 21
  %96 = load ptr, ptr %aCellIdx134, align 8
  %97 = load i32, ptr %idx, align 4
  %mul135 = mul nsw i32 2, %97
  %idxprom136 = sext i32 %mul135 to i64
  %arrayidx137 = getelementptr inbounds i8, ptr %96, i64 %idxprom136
  %arrayidx138 = getelementptr inbounds i8, ptr %arrayidx137, i64 1
  %98 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %98 to i32
  %or140 = or i32 %shl133, %conv139
  %and141 = and i32 %conv126, %or140
  %idx.ext142 = sext i32 %and141 to i64
  %add.ptr143 = getelementptr inbounds i8, ptr %88, i64 %idx.ext142
  store ptr %add.ptr143, ptr %pCell, align 8
  %99 = load ptr, ptr %pCell, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %99, i64 0
  %100 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %100 to i32
  store i32 %conv145, ptr %nCell123, align 4
  %101 = load i32, ptr %nCell123, align 4
  %102 = load ptr, ptr %pPage, align 8
  %max1bytePayload = getelementptr inbounds nuw %struct.MemPage, ptr %102, i32 0, i32 8
  %103 = load i8, ptr %max1bytePayload, align 1
  %conv146 = zext i8 %103 to i32
  %cmp147 = icmp sle i32 %101, %conv146
  br i1 %cmp147, label %if.then149, label %if.else152

if.then149:                                       ; preds = %for.cond122
  %104 = load ptr, ptr %xRecordCompare, align 8
  %105 = load i32, ptr %nCell123, align 4
  %106 = load ptr, ptr %pCell, align 8
  %arrayidx150 = getelementptr inbounds i8, ptr %106, i64 1
  %107 = load ptr, ptr %pIdxKey.addr, align 8
  %call151 = call i32 %104(i32 noundef %105, ptr noundef %arrayidx150, ptr noundef %107)
  store i32 %call151, ptr %c, align 4
  br label %if.end206

if.else152:                                       ; preds = %for.cond122
  %108 = load ptr, ptr %pCell, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %108, i64 1
  %109 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %109 to i32
  %and155 = and i32 %conv154, 128
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.else169, label %land.lhs.true157

land.lhs.true157:                                 ; preds = %if.else152
  %110 = load i32, ptr %nCell123, align 4
  %and158 = and i32 %110, 127
  %shl159 = shl i32 %and158, 7
  %111 = load ptr, ptr %pCell, align 8
  %arrayidx160 = getelementptr inbounds i8, ptr %111, i64 1
  %112 = load i8, ptr %arrayidx160, align 1
  %conv161 = zext i8 %112 to i32
  %add162 = add nsw i32 %shl159, %conv161
  store i32 %add162, ptr %nCell123, align 4
  %113 = load ptr, ptr %pPage, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %113, i32 0, i32 10
  %114 = load i16, ptr %maxLocal, align 2
  %conv163 = zext i16 %114 to i32
  %cmp164 = icmp sle i32 %add162, %conv163
  br i1 %cmp164, label %if.then166, label %if.else169

if.then166:                                       ; preds = %land.lhs.true157
  %115 = load ptr, ptr %xRecordCompare, align 8
  %116 = load i32, ptr %nCell123, align 4
  %117 = load ptr, ptr %pCell, align 8
  %arrayidx167 = getelementptr inbounds i8, ptr %117, i64 2
  %118 = load ptr, ptr %pIdxKey.addr, align 8
  %call168 = call i32 %115(i32 noundef %116, ptr noundef %arrayidx167, ptr noundef %118)
  store i32 %call168, ptr %c, align 4
  br label %if.end205

if.else169:                                       ; preds = %land.lhs.true157, %if.else152
  %119 = load ptr, ptr %pCell, align 8
  %120 = load ptr, ptr %pPage, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %120, i32 0, i32 7
  %121 = load i8, ptr %childPtrSize, align 2
  %conv170 = zext i8 %121 to i32
  %idx.ext171 = sext i32 %conv170 to i64
  %idx.neg = sub i64 0, %idx.ext171
  %add.ptr172 = getelementptr inbounds i8, ptr %119, i64 %idx.neg
  store ptr %add.ptr172, ptr %pCellBody, align 8
  store i32 18, ptr %nOverrun, align 4
  %122 = load ptr, ptr %pPage, align 8
  %xParseCell = getelementptr inbounds nuw %struct.MemPage, ptr %122, i32 0, i32 25
  %123 = load ptr, ptr %xParseCell, align 8
  %124 = load ptr, ptr %pPage, align 8
  %125 = load ptr, ptr %pCellBody, align 8
  %126 = load ptr, ptr %pCur.addr, align 8
  %info173 = getelementptr inbounds nuw %struct.BtCursor, ptr %126, i32 0, i32 10
  call void %123(ptr noundef %124, ptr noundef %125, ptr noundef %info173)
  %127 = load ptr, ptr %pCur.addr, align 8
  %info174 = getelementptr inbounds nuw %struct.BtCursor, ptr %127, i32 0, i32 10
  %nKey175 = getelementptr inbounds nuw %struct.CellInfo, ptr %info174, i32 0, i32 0
  %128 = load i64, ptr %nKey175, align 8
  %conv176 = trunc i64 %128 to i32
  store i32 %conv176, ptr %nCell123, align 4
  %129 = load i32, ptr %nCell123, align 4
  %cmp177 = icmp slt i32 %129, 2
  br i1 %cmp177, label %if.then182, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else169
  %130 = load i32, ptr %nCell123, align 4
  %131 = load ptr, ptr %pCur.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.BtCursor, ptr %131, i32 0, i32 8
  %132 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %132, i32 0, i32 16
  %133 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %130, %133
  %134 = load ptr, ptr %pCur.addr, align 8
  %pBt179 = getelementptr inbounds nuw %struct.BtCursor, ptr %134, i32 0, i32 8
  %135 = load ptr, ptr %pBt179, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %135, i32 0, i32 18
  %136 = load i32, ptr %nPage, align 4
  %cmp180 = icmp ugt i32 %div, %136
  br i1 %cmp180, label %if.then182, label %if.end184

if.then182:                                       ; preds = %lor.lhs.false, %if.else169
  %call183 = call i32 @sqlite3CorruptError(i32 noundef 68939)
  store i32 %call183, ptr %rc, align 4
  br label %moveto_finish

if.end184:                                        ; preds = %lor.lhs.false
  %137 = load i32, ptr %nCell123, align 4
  %add185 = add nsw i32 %137, 18
  %conv186 = sext i32 %add185 to i64
  %call187 = call ptr @sqlite3Malloc(i64 noundef %conv186)
  store ptr %call187, ptr %pCellKey, align 8
  %138 = load ptr, ptr %pCellKey, align 8
  %cmp188 = icmp eq ptr %138, null
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.end184
  store i32 7, ptr %rc, align 4
  br label %moveto_finish

if.end191:                                        ; preds = %if.end184
  %139 = load i32, ptr %idx, align 4
  %conv192 = trunc i32 %139 to i16
  %140 = load ptr, ptr %pCur.addr, align 8
  %ix193 = getelementptr inbounds nuw %struct.BtCursor, ptr %140, i32 0, i32 15
  store i16 %conv192, ptr %ix193, align 2
  %141 = load ptr, ptr %pCur.addr, align 8
  %142 = load i32, ptr %nCell123, align 4
  %143 = load ptr, ptr %pCellKey, align 8
  %call194 = call i32 @accessPayload(ptr noundef %141, i32 noundef 0, i32 noundef %142, ptr noundef %143, i32 noundef 0)
  store i32 %call194, ptr %rc, align 4
  %144 = load ptr, ptr %pCellKey, align 8
  %145 = load i32, ptr %nCell123, align 4
  %idx.ext195 = sext i32 %145 to i64
  %add.ptr196 = getelementptr inbounds i8, ptr %144, i64 %idx.ext195
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr196, i8 0, i64 18, i1 false)
  %146 = load ptr, ptr %pCur.addr, align 8
  %curFlags197 = getelementptr inbounds nuw %struct.BtCursor, ptr %146, i32 0, i32 1
  %147 = load i8, ptr %curFlags197, align 1
  %conv198 = zext i8 %147 to i32
  %and199 = and i32 %conv198, -5
  %conv200 = trunc i32 %and199 to i8
  store i8 %conv200, ptr %curFlags197, align 1
  %148 = load i32, ptr %rc, align 4
  %tobool201 = icmp ne i32 %148, 0
  br i1 %tobool201, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.end191
  %149 = load ptr, ptr %pCellKey, align 8
  call void @sqlite3_free(ptr noundef %149)
  br label %moveto_finish

if.end203:                                        ; preds = %if.end191
  %150 = load i32, ptr %nCell123, align 4
  %151 = load ptr, ptr %pCellKey, align 8
  %152 = load ptr, ptr %pIdxKey.addr, align 8
  %call204 = call i32 @sqlite3VdbeRecordCompare(i32 noundef %150, ptr noundef %151, ptr noundef %152)
  store i32 %call204, ptr %c, align 4
  %153 = load ptr, ptr %pCellKey, align 8
  call void @sqlite3_free(ptr noundef %153)
  br label %if.end205

if.end205:                                        ; preds = %if.end203, %if.then166
  br label %if.end206

if.end206:                                        ; preds = %if.end205, %if.then149
  %154 = load i32, ptr %c, align 4
  %cmp207 = icmp slt i32 %154, 0
  br i1 %cmp207, label %if.then209, label %if.else211

if.then209:                                       ; preds = %if.end206
  %155 = load i32, ptr %idx, align 4
  %add210 = add nsw i32 %155, 1
  store i32 %add210, ptr %lwr, align 4
  br label %if.end225

if.else211:                                       ; preds = %if.end206
  %156 = load i32, ptr %c, align 4
  %cmp212 = icmp sgt i32 %156, 0
  br i1 %cmp212, label %if.then214, label %if.else216

if.then214:                                       ; preds = %if.else211
  %157 = load i32, ptr %idx, align 4
  %sub215 = sub nsw i32 %157, 1
  store i32 %sub215, ptr %upr, align 4
  br label %if.end224

if.else216:                                       ; preds = %if.else211
  %158 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %158, align 4
  store i32 0, ptr %rc, align 4
  %159 = load i32, ptr %idx, align 4
  %conv217 = trunc i32 %159 to i16
  %160 = load ptr, ptr %pCur.addr, align 8
  %ix218 = getelementptr inbounds nuw %struct.BtCursor, ptr %160, i32 0, i32 15
  store i16 %conv217, ptr %ix218, align 2
  %161 = load ptr, ptr %pIdxKey.addr, align 8
  %errCode219 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %161, i32 0, i32 4
  %162 = load i8, ptr %errCode219, align 1
  %tobool220 = icmp ne i8 %162, 0
  br i1 %tobool220, label %if.then221, label %if.end223

if.then221:                                       ; preds = %if.else216
  %call222 = call i32 @sqlite3CorruptError(i32 noundef 68971)
  store i32 %call222, ptr %rc, align 4
  br label %if.end223

if.end223:                                        ; preds = %if.then221, %if.else216
  br label %moveto_finish

if.end224:                                        ; preds = %if.then214
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %if.then209
  %163 = load i32, ptr %lwr, align 4
  %164 = load i32, ptr %upr, align 4
  %cmp226 = icmp sgt i32 %163, %164
  br i1 %cmp226, label %if.then228, label %if.end229

if.then228:                                       ; preds = %if.end225
  br label %for.end232

if.end229:                                        ; preds = %if.end225
  %165 = load i32, ptr %lwr, align 4
  %166 = load i32, ptr %upr, align 4
  %add230 = add nsw i32 %165, %166
  %shr231 = ashr i32 %add230, 1
  store i32 %shr231, ptr %idx, align 4
  br label %for.cond122

for.end232:                                       ; preds = %if.then228
  br label %if.end233

if.end233:                                        ; preds = %for.end232, %for.end
  %167 = load ptr, ptr %pPage, align 8
  %leaf234 = getelementptr inbounds nuw %struct.MemPage, ptr %167, i32 0, i32 5
  %168 = load i8, ptr %leaf234, align 8
  %tobool235 = icmp ne i8 %168, 0
  br i1 %tobool235, label %if.then236, label %if.end239

if.then236:                                       ; preds = %if.end233
  %169 = load i32, ptr %idx, align 4
  %conv237 = trunc i32 %169 to i16
  %170 = load ptr, ptr %pCur.addr, align 8
  %ix238 = getelementptr inbounds nuw %struct.BtCursor, ptr %170, i32 0, i32 15
  store i16 %conv237, ptr %ix238, align 2
  %171 = load i32, ptr %c, align 4
  %172 = load ptr, ptr %pRes.addr, align 8
  store i32 %171, ptr %172, align 4
  store i32 0, ptr %rc, align 4
  br label %moveto_finish

if.end239:                                        ; preds = %if.end233
  br label %moveto_next_layer

moveto_next_layer:                                ; preds = %if.end239, %if.then108
  %173 = load i32, ptr %lwr, align 4
  %174 = load ptr, ptr %pPage, align 8
  %nCell240 = getelementptr inbounds nuw %struct.MemPage, ptr %174, i32 0, i32 14
  %175 = load i16, ptr %nCell240, align 8
  %conv241 = zext i16 %175 to i32
  %cmp242 = icmp sge i32 %173, %conv241
  br i1 %cmp242, label %if.then244, label %if.else250

if.then244:                                       ; preds = %moveto_next_layer
  %176 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %176, i32 0, i32 19
  %177 = load ptr, ptr %aData, align 8
  %178 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %178, i32 0, i32 6
  %179 = load i8, ptr %hdrOffset, align 1
  %conv245 = zext i8 %179 to i32
  %add246 = add nsw i32 %conv245, 8
  %idxprom247 = sext i32 %add246 to i64
  %arrayidx248 = getelementptr inbounds i8, ptr %177, i64 %idxprom247
  %call249 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx248)
  store i32 %call249, ptr %chldPg, align 4
  br label %if.end272

if.else250:                                       ; preds = %moveto_next_layer
  %180 = load ptr, ptr %pPage, align 8
  %aData251 = getelementptr inbounds nuw %struct.MemPage, ptr %180, i32 0, i32 19
  %181 = load ptr, ptr %aData251, align 8
  %182 = load ptr, ptr %pPage, align 8
  %maskPage252 = getelementptr inbounds nuw %struct.MemPage, ptr %182, i32 0, i32 15
  %183 = load i16, ptr %maskPage252, align 2
  %conv253 = zext i16 %183 to i32
  %184 = load ptr, ptr %pPage, align 8
  %aCellIdx254 = getelementptr inbounds nuw %struct.MemPage, ptr %184, i32 0, i32 21
  %185 = load ptr, ptr %aCellIdx254, align 8
  %186 = load i32, ptr %lwr, align 4
  %mul255 = mul nsw i32 2, %186
  %idxprom256 = sext i32 %mul255 to i64
  %arrayidx257 = getelementptr inbounds i8, ptr %185, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds i8, ptr %arrayidx257, i64 0
  %187 = load i8, ptr %arrayidx258, align 1
  %conv259 = zext i8 %187 to i32
  %shl260 = shl i32 %conv259, 8
  %188 = load ptr, ptr %pPage, align 8
  %aCellIdx261 = getelementptr inbounds nuw %struct.MemPage, ptr %188, i32 0, i32 21
  %189 = load ptr, ptr %aCellIdx261, align 8
  %190 = load i32, ptr %lwr, align 4
  %mul262 = mul nsw i32 2, %190
  %idxprom263 = sext i32 %mul262 to i64
  %arrayidx264 = getelementptr inbounds i8, ptr %189, i64 %idxprom263
  %arrayidx265 = getelementptr inbounds i8, ptr %arrayidx264, i64 1
  %191 = load i8, ptr %arrayidx265, align 1
  %conv266 = zext i8 %191 to i32
  %or267 = or i32 %shl260, %conv266
  %and268 = and i32 %conv253, %or267
  %idx.ext269 = sext i32 %and268 to i64
  %add.ptr270 = getelementptr inbounds i8, ptr %181, i64 %idx.ext269
  %call271 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr270)
  store i32 %call271, ptr %chldPg, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.else250, %if.then244
  %192 = load i32, ptr %lwr, align 4
  %conv273 = trunc i32 %192 to i16
  %193 = load ptr, ptr %pCur.addr, align 8
  %ix274 = getelementptr inbounds nuw %struct.BtCursor, ptr %193, i32 0, i32 15
  store i16 %conv273, ptr %ix274, align 2
  %194 = load ptr, ptr %pCur.addr, align 8
  %195 = load i32, ptr %chldPg, align 4
  %call275 = call i32 @moveToChild(ptr noundef %194, i32 noundef %195)
  store i32 %call275, ptr %rc, align 4
  %196 = load i32, ptr %rc, align 4
  %tobool276 = icmp ne i32 %196, 0
  br i1 %tobool276, label %if.then277, label %if.end278

if.then277:                                       ; preds = %if.end272
  br label %for.end279

if.end278:                                        ; preds = %if.end272
  br label %for.cond

for.end279:                                       ; preds = %if.then277
  br label %moveto_finish

moveto_finish:                                    ; preds = %for.end279, %if.then236, %if.end223, %if.then202, %if.then190, %if.then182
  %197 = load ptr, ptr %pCur.addr, align 8
  %info280 = getelementptr inbounds nuw %struct.BtCursor, ptr %197, i32 0, i32 10
  %nSize281 = getelementptr inbounds nuw %struct.CellInfo, ptr %info280, i32 0, i32 4
  store i16 0, ptr %nSize281, align 2
  %198 = load i32, ptr %rc, align 4
  store i32 %198, ptr %retval, align 4
  br label %return

return:                                           ; preds = %moveto_finish, %if.else109, %if.then82, %if.end55, %if.then54, %if.else39, %if.then34, %if.then20, %if.then9
  %199 = load i32, ptr %retval, align 4
  ret i32 %199
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeNext(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRoot(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeFindCompare(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompare(i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
