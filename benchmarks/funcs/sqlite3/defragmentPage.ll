; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @defragmentPage(ptr noundef %pPage, i32 noundef %nMaxFrag) #2 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %nMaxFrag.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pc = alloca i32, align 4
  %hdr = alloca i32, align 4
  %size = alloca i32, align 4
  %usableSize = alloca i32, align 4
  %cellOffset = alloca i32, align 4
  %cbrk = alloca i32, align 4
  %nCell = alloca i32, align 4
  %data = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %src = alloca ptr, align 8
  %iCellFirst = alloca i32, align 4
  %iCellLast = alloca i32, align 4
  %iFree = alloca i32, align 4
  %iFree2 = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  %pAddr = alloca ptr, align 8
  %sz2 = alloca i32, align 4
  %sz = alloca i32, align 4
  %top = alloca i32, align 4
  %pAddr177 = alloca ptr, align 8
  %x = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %nMaxFrag, ptr %nMaxFrag.addr, align 4
  store ptr null, ptr %temp, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aData, align 8
  store ptr %1, ptr %data, align 8
  store ptr %1, ptr %src, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 6
  %3 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %hdr, align 4
  %4 = load ptr, ptr %pPage.addr, align 8
  %cellOffset1 = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 12
  %5 = load i16, ptr %cellOffset1, align 2
  %conv2 = zext i16 %5 to i32
  store i32 %conv2, ptr %cellOffset, align 4
  %6 = load ptr, ptr %pPage.addr, align 8
  %nCell3 = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 14
  %7 = load i16, ptr %nCell3, align 8
  %conv4 = zext i16 %7 to i32
  store i32 %conv4, ptr %nCell, align 4
  %8 = load i32, ptr %cellOffset, align 4
  %9 = load i32, ptr %nCell, align 4
  %mul = mul nsw i32 2, %9
  %add = add nsw i32 %8, %mul
  store i32 %add, ptr %iCellFirst, align 4
  %10 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 18
  %11 = load ptr, ptr %pBt, align 8
  %usableSize5 = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 16
  %12 = load i32, ptr %usableSize5, align 4
  store i32 %12, ptr %usableSize, align 4
  %13 = load ptr, ptr %data, align 8
  %14 = load i32, ptr %hdr, align 4
  %add6 = add nsw i32 %14, 7
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  %15 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %15 to i32
  %16 = load i32, ptr %nMaxFrag.addr, align 4
  %cmp = icmp sle i32 %conv7, %16
  br i1 %cmp, label %if.then, label %if.end171

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %data, align 8
  %18 = load i32, ptr %hdr, align 4
  %add9 = add nsw i32 %18, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds i8, ptr %arrayidx11, i64 0
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %shl = shl i32 %conv13, 8
  %20 = load ptr, ptr %data, align 8
  %21 = load i32, ptr %hdr, align 4
  %add14 = add nsw i32 %21, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %20, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds i8, ptr %arrayidx16, i64 1
  %22 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %22 to i32
  %or = or i32 %shl, %conv18
  store i32 %or, ptr %iFree, align 4
  %23 = load i32, ptr %iFree, align 4
  %24 = load i32, ptr %usableSize, align 4
  %sub = sub nsw i32 %24, 4
  %cmp19 = icmp sgt i32 %23, %sub
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.then
  %call = call i32 @sqlite3CorruptError(i32 noundef 64839)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %25 = load i32, ptr %iFree, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then22, label %if.end170

if.then22:                                        ; preds = %if.end
  %26 = load ptr, ptr %data, align 8
  %27 = load i32, ptr %iFree, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %26, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds i8, ptr %arrayidx24, i64 0
  %28 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %28 to i32
  %shl27 = shl i32 %conv26, 8
  %29 = load ptr, ptr %data, align 8
  %30 = load i32, ptr %iFree, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %29, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds i8, ptr %arrayidx29, i64 1
  %31 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %or32 = or i32 %shl27, %conv31
  store i32 %or32, ptr %iFree2, align 4
  %32 = load i32, ptr %iFree2, align 4
  %33 = load i32, ptr %usableSize, align 4
  %sub33 = sub nsw i32 %33, 4
  %cmp34 = icmp sgt i32 %32, %sub33
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then22
  %call37 = call i32 @sqlite3CorruptError(i32 noundef 64842)
  store i32 %call37, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then22
  %34 = load i32, ptr %iFree2, align 4
  %cmp39 = icmp eq i32 0, %34
  br i1 %cmp39, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end38
  %35 = load ptr, ptr %data, align 8
  %36 = load i32, ptr %iFree2, align 4
  %idxprom41 = sext i32 %36 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %35, i64 %idxprom41
  %37 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %37 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end169

land.lhs.true:                                    ; preds = %lor.lhs.false
  %38 = load ptr, ptr %data, align 8
  %39 = load i32, ptr %iFree2, align 4
  %add46 = add nsw i32 %39, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %38, i64 %idxprom47
  %40 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %40 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then52, label %if.end169

if.then52:                                        ; preds = %land.lhs.true, %if.end38
  %41 = load ptr, ptr %data, align 8
  %42 = load i32, ptr %cellOffset, align 4
  %43 = load i32, ptr %nCell, align 4
  %mul53 = mul nsw i32 %43, 2
  %add54 = add nsw i32 %42, %mul53
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i8, ptr %41, i64 %idxprom55
  store ptr %arrayidx56, ptr %pEnd, align 8
  store i32 0, ptr %sz2, align 4
  %44 = load ptr, ptr %data, align 8
  %45 = load i32, ptr %iFree, align 4
  %add57 = add nsw i32 %45, 2
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %44, i64 %idxprom58
  %arrayidx60 = getelementptr inbounds i8, ptr %arrayidx59, i64 0
  %46 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %46 to i32
  %shl62 = shl i32 %conv61, 8
  %47 = load ptr, ptr %data, align 8
  %48 = load i32, ptr %iFree, align 4
  %add63 = add nsw i32 %48, 2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %47, i64 %idxprom64
  %arrayidx66 = getelementptr inbounds i8, ptr %arrayidx65, i64 1
  %49 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %49 to i32
  %or68 = or i32 %shl62, %conv67
  store i32 %or68, ptr %sz, align 4
  %50 = load ptr, ptr %data, align 8
  %51 = load i32, ptr %hdr, align 4
  %add69 = add nsw i32 %51, 5
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %50, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds i8, ptr %arrayidx71, i64 0
  %52 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %52 to i32
  %shl74 = shl i32 %conv73, 8
  %53 = load ptr, ptr %data, align 8
  %54 = load i32, ptr %hdr, align 4
  %add75 = add nsw i32 %54, 5
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds i8, ptr %53, i64 %idxprom76
  %arrayidx78 = getelementptr inbounds i8, ptr %arrayidx77, i64 1
  %55 = load i8, ptr %arrayidx78, align 1
  %conv79 = zext i8 %55 to i32
  %or80 = or i32 %shl74, %conv79
  store i32 %or80, ptr %top, align 4
  %56 = load i32, ptr %top, align 4
  %57 = load i32, ptr %iFree, align 4
  %cmp81 = icmp sge i32 %56, %57
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.then52
  %call84 = call i32 @sqlite3CorruptError(i32 noundef 64850)
  store i32 %call84, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.then52
  %58 = load i32, ptr %iFree2, align 4
  %tobool86 = icmp ne i32 %58, 0
  br i1 %tobool86, label %if.then87, label %if.else

if.then87:                                        ; preds = %if.end85
  %59 = load i32, ptr %iFree, align 4
  %60 = load i32, ptr %sz, align 4
  %add88 = add nsw i32 %59, %60
  %61 = load i32, ptr %iFree2, align 4
  %cmp89 = icmp sgt i32 %add88, %61
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.then87
  %call92 = call i32 @sqlite3CorruptError(i32 noundef 64853)
  store i32 %call92, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.then87
  %62 = load ptr, ptr %data, align 8
  %63 = load i32, ptr %iFree2, align 4
  %add94 = add nsw i32 %63, 2
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %62, i64 %idxprom95
  %arrayidx97 = getelementptr inbounds i8, ptr %arrayidx96, i64 0
  %64 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %64 to i32
  %shl99 = shl i32 %conv98, 8
  %65 = load ptr, ptr %data, align 8
  %66 = load i32, ptr %iFree2, align 4
  %add100 = add nsw i32 %66, 2
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds i8, ptr %65, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds i8, ptr %arrayidx102, i64 1
  %67 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %67 to i32
  %or105 = or i32 %shl99, %conv104
  store i32 %or105, ptr %sz2, align 4
  %68 = load i32, ptr %iFree2, align 4
  %69 = load i32, ptr %sz2, align 4
  %add106 = add nsw i32 %68, %69
  %70 = load i32, ptr %usableSize, align 4
  %cmp107 = icmp sgt i32 %add106, %70
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %if.end93
  %call110 = call i32 @sqlite3CorruptError(i32 noundef 64855)
  store i32 %call110, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end93
  %71 = load ptr, ptr %data, align 8
  %72 = load i32, ptr %iFree, align 4
  %73 = load i32, ptr %sz, align 4
  %add112 = add nsw i32 %72, %73
  %74 = load i32, ptr %sz2, align 4
  %add113 = add nsw i32 %add112, %74
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %71, i64 %idxprom114
  %75 = load ptr, ptr %data, align 8
  %76 = load i32, ptr %iFree, align 4
  %77 = load i32, ptr %sz, align 4
  %add116 = add nsw i32 %76, %77
  %idxprom117 = sext i32 %add116 to i64
  %arrayidx118 = getelementptr inbounds i8, ptr %75, i64 %idxprom117
  %78 = load i32, ptr %iFree2, align 4
  %79 = load i32, ptr %iFree, align 4
  %80 = load i32, ptr %sz, align 4
  %add119 = add nsw i32 %79, %80
  %sub120 = sub nsw i32 %78, %add119
  %conv121 = sext i32 %sub120 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx115, ptr align 1 %arrayidx118, i64 %conv121, i1 false)
  %81 = load i32, ptr %sz2, align 4
  %82 = load i32, ptr %sz, align 4
  %add122 = add nsw i32 %82, %81
  store i32 %add122, ptr %sz, align 4
  br label %if.end129

if.else:                                          ; preds = %if.end85
  %83 = load i32, ptr %iFree, align 4
  %84 = load i32, ptr %sz, align 4
  %add123 = add nsw i32 %83, %84
  %85 = load i32, ptr %usableSize, align 4
  %cmp124 = icmp sgt i32 %add123, %85
  br i1 %cmp124, label %if.then126, label %if.end128

if.then126:                                       ; preds = %if.else
  %call127 = call i32 @sqlite3CorruptError(i32 noundef 64859)
  store i32 %call127, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %if.else
  br label %if.end129

if.end129:                                        ; preds = %if.end128, %if.end111
  %86 = load i32, ptr %top, align 4
  %87 = load i32, ptr %sz, align 4
  %add130 = add nsw i32 %86, %87
  store i32 %add130, ptr %cbrk, align 4
  %88 = load ptr, ptr %data, align 8
  %89 = load i32, ptr %cbrk, align 4
  %idxprom131 = sext i32 %89 to i64
  %arrayidx132 = getelementptr inbounds i8, ptr %88, i64 %idxprom131
  %90 = load ptr, ptr %data, align 8
  %91 = load i32, ptr %top, align 4
  %idxprom133 = sext i32 %91 to i64
  %arrayidx134 = getelementptr inbounds i8, ptr %90, i64 %idxprom133
  %92 = load i32, ptr %iFree, align 4
  %93 = load i32, ptr %top, align 4
  %sub135 = sub nsw i32 %92, %93
  %conv136 = sext i32 %sub135 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %arrayidx132, ptr align 1 %arrayidx134, i64 %conv136, i1 false)
  %94 = load ptr, ptr %data, align 8
  %95 = load i32, ptr %cellOffset, align 4
  %idxprom137 = sext i32 %95 to i64
  %arrayidx138 = getelementptr inbounds i8, ptr %94, i64 %idxprom137
  store ptr %arrayidx138, ptr %pAddr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end129
  %96 = load ptr, ptr %pAddr, align 8
  %97 = load ptr, ptr %pEnd, align 8
  %cmp139 = icmp ult ptr %96, %97
  br i1 %cmp139, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %98 = load ptr, ptr %pAddr, align 8
  %arrayidx141 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %99 to i32
  %shl143 = shl i32 %conv142, 8
  %100 = load ptr, ptr %pAddr, align 8
  %arrayidx144 = getelementptr inbounds i8, ptr %100, i64 1
  %101 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %101 to i32
  %or146 = or i32 %shl143, %conv145
  store i32 %or146, ptr %pc, align 4
  %102 = load i32, ptr %pc, align 4
  %103 = load i32, ptr %iFree, align 4
  %cmp147 = icmp slt i32 %102, %103
  br i1 %cmp147, label %if.then149, label %if.else156

if.then149:                                       ; preds = %for.body
  %104 = load i32, ptr %pc, align 4
  %105 = load i32, ptr %sz, align 4
  %add150 = add nsw i32 %104, %105
  %shr = ashr i32 %add150, 8
  %conv151 = trunc i32 %shr to i8
  %106 = load ptr, ptr %pAddr, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %106, i64 0
  store i8 %conv151, ptr %arrayidx152, align 1
  %107 = load i32, ptr %pc, align 4
  %108 = load i32, ptr %sz, align 4
  %add153 = add nsw i32 %107, %108
  %conv154 = trunc i32 %add153 to i8
  %109 = load ptr, ptr %pAddr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 %conv154, ptr %arrayidx155, align 1
  br label %if.end168

if.else156:                                       ; preds = %for.body
  %110 = load i32, ptr %pc, align 4
  %111 = load i32, ptr %iFree2, align 4
  %cmp157 = icmp slt i32 %110, %111
  br i1 %cmp157, label %if.then159, label %if.end167

if.then159:                                       ; preds = %if.else156
  %112 = load i32, ptr %pc, align 4
  %113 = load i32, ptr %sz2, align 4
  %add160 = add nsw i32 %112, %113
  %shr161 = ashr i32 %add160, 8
  %conv162 = trunc i32 %shr161 to i8
  %114 = load ptr, ptr %pAddr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %114, i64 0
  store i8 %conv162, ptr %arrayidx163, align 1
  %115 = load i32, ptr %pc, align 4
  %116 = load i32, ptr %sz2, align 4
  %add164 = add nsw i32 %115, %116
  %conv165 = trunc i32 %add164 to i8
  %117 = load ptr, ptr %pAddr, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %conv165, ptr %arrayidx166, align 1
  br label %if.end167

if.end167:                                        ; preds = %if.then159, %if.else156
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.then149
  br label %for.inc

for.inc:                                          ; preds = %if.end168
  %118 = load ptr, ptr %pAddr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %118, i64 2
  store ptr %add.ptr, ptr %pAddr, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %defragment_out

if.end169:                                        ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end170

if.end170:                                        ; preds = %if.end169, %if.end
  br label %if.end171

if.end171:                                        ; preds = %if.end170, %entry
  %119 = load i32, ptr %usableSize, align 4
  store i32 %119, ptr %cbrk, align 4
  %120 = load i32, ptr %usableSize, align 4
  %sub172 = sub nsw i32 %120, 4
  store i32 %sub172, ptr %iCellLast, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond173

for.cond173:                                      ; preds = %for.inc249, %if.end171
  %121 = load i32, ptr %i, align 4
  %122 = load i32, ptr %nCell, align 4
  %cmp174 = icmp slt i32 %121, %122
  br i1 %cmp174, label %for.body176, label %for.end250

for.body176:                                      ; preds = %for.cond173
  %123 = load ptr, ptr %data, align 8
  %124 = load i32, ptr %cellOffset, align 4
  %125 = load i32, ptr %i, align 4
  %mul178 = mul nsw i32 %125, 2
  %add179 = add nsw i32 %124, %mul178
  %idxprom180 = sext i32 %add179 to i64
  %arrayidx181 = getelementptr inbounds i8, ptr %123, i64 %idxprom180
  store ptr %arrayidx181, ptr %pAddr177, align 8
  %126 = load ptr, ptr %pAddr177, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %126, i64 0
  %127 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %127 to i32
  %shl184 = shl i32 %conv183, 8
  %128 = load ptr, ptr %pAddr177, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %128, i64 1
  %129 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %129 to i32
  %or187 = or i32 %shl184, %conv186
  store i32 %or187, ptr %pc, align 4
  %130 = load i32, ptr %pc, align 4
  %131 = load i32, ptr %iCellFirst, align 4
  %cmp188 = icmp slt i32 %130, %131
  br i1 %cmp188, label %if.then193, label %lor.lhs.false190

lor.lhs.false190:                                 ; preds = %for.body176
  %132 = load i32, ptr %pc, align 4
  %133 = load i32, ptr %iCellLast, align 4
  %cmp191 = icmp sgt i32 %132, %133
  br i1 %cmp191, label %if.then193, label %if.end195

if.then193:                                       ; preds = %lor.lhs.false190, %for.body176
  %call194 = call i32 @sqlite3CorruptError(i32 noundef 64887)
  store i32 %call194, ptr %retval, align 4
  br label %return

if.end195:                                        ; preds = %lor.lhs.false190
  %134 = load ptr, ptr %pPage.addr, align 8
  %xCellSize = getelementptr inbounds nuw %struct.MemPage, ptr %134, i32 0, i32 24
  %135 = load ptr, ptr %xCellSize, align 8
  %136 = load ptr, ptr %pPage.addr, align 8
  %137 = load ptr, ptr %src, align 8
  %138 = load i32, ptr %pc, align 4
  %idxprom196 = sext i32 %138 to i64
  %arrayidx197 = getelementptr inbounds i8, ptr %137, i64 %idxprom196
  %call198 = call zeroext i16 %135(ptr noundef %136, ptr noundef %arrayidx197)
  %conv199 = zext i16 %call198 to i32
  store i32 %conv199, ptr %size, align 4
  %139 = load i32, ptr %size, align 4
  %140 = load i32, ptr %cbrk, align 4
  %sub200 = sub nsw i32 %140, %139
  store i32 %sub200, ptr %cbrk, align 4
  %141 = load i32, ptr %cbrk, align 4
  %142 = load i32, ptr %iCellFirst, align 4
  %cmp201 = icmp slt i32 %141, %142
  br i1 %cmp201, label %if.then207, label %lor.lhs.false203

lor.lhs.false203:                                 ; preds = %if.end195
  %143 = load i32, ptr %pc, align 4
  %144 = load i32, ptr %size, align 4
  %add204 = add nsw i32 %143, %144
  %145 = load i32, ptr %usableSize, align 4
  %cmp205 = icmp sgt i32 %add204, %145
  br i1 %cmp205, label %if.then207, label %if.end209

if.then207:                                       ; preds = %lor.lhs.false203, %if.end195
  %call208 = call i32 @sqlite3CorruptError(i32 noundef 64893)
  store i32 %call208, ptr %retval, align 4
  br label %return

if.end209:                                        ; preds = %lor.lhs.false203
  %146 = load i32, ptr %cbrk, align 4
  %shr210 = ashr i32 %146, 8
  %conv211 = trunc i32 %shr210 to i8
  %147 = load ptr, ptr %pAddr177, align 8
  %arrayidx212 = getelementptr inbounds i8, ptr %147, i64 0
  store i8 %conv211, ptr %arrayidx212, align 1
  %148 = load i32, ptr %cbrk, align 4
  %conv213 = trunc i32 %148 to i8
  %149 = load ptr, ptr %pAddr177, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %149, i64 1
  store i8 %conv213, ptr %arrayidx214, align 1
  %150 = load ptr, ptr %temp, align 8
  %cmp215 = icmp eq ptr %150, null
  br i1 %cmp215, label %if.then217, label %if.end243

if.then217:                                       ; preds = %if.end209
  %151 = load i32, ptr %cbrk, align 4
  %152 = load i32, ptr %pc, align 4
  %cmp218 = icmp eq i32 %151, %152
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %if.then217
  br label %for.inc249

if.end221:                                        ; preds = %if.then217
  %153 = load ptr, ptr %pPage.addr, align 8
  %pBt222 = getelementptr inbounds nuw %struct.MemPage, ptr %153, i32 0, i32 18
  %154 = load ptr, ptr %pBt222, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %pPager, align 8
  %call223 = call ptr @sqlite3PagerTempSpace(ptr noundef %155)
  store ptr %call223, ptr %temp, align 8
  %156 = load ptr, ptr %data, align 8
  %157 = load i32, ptr %hdr, align 4
  %add224 = add nsw i32 %157, 5
  %idxprom225 = sext i32 %add224 to i64
  %arrayidx226 = getelementptr inbounds i8, ptr %156, i64 %idxprom225
  %arrayidx227 = getelementptr inbounds i8, ptr %arrayidx226, i64 0
  %158 = load i8, ptr %arrayidx227, align 1
  %conv228 = zext i8 %158 to i32
  %shl229 = shl i32 %conv228, 8
  %159 = load ptr, ptr %data, align 8
  %160 = load i32, ptr %hdr, align 4
  %add230 = add nsw i32 %160, 5
  %idxprom231 = sext i32 %add230 to i64
  %arrayidx232 = getelementptr inbounds i8, ptr %159, i64 %idxprom231
  %arrayidx233 = getelementptr inbounds i8, ptr %arrayidx232, i64 1
  %161 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %161 to i32
  %or235 = or i32 %shl229, %conv234
  store i32 %or235, ptr %x, align 4
  %162 = load ptr, ptr %temp, align 8
  %163 = load i32, ptr %x, align 4
  %idxprom236 = sext i32 %163 to i64
  %arrayidx237 = getelementptr inbounds i8, ptr %162, i64 %idxprom236
  %164 = load ptr, ptr %data, align 8
  %165 = load i32, ptr %x, align 4
  %idxprom238 = sext i32 %165 to i64
  %arrayidx239 = getelementptr inbounds i8, ptr %164, i64 %idxprom238
  %166 = load i32, ptr %cbrk, align 4
  %167 = load i32, ptr %size, align 4
  %add240 = add nsw i32 %166, %167
  %168 = load i32, ptr %x, align 4
  %sub241 = sub nsw i32 %add240, %168
  %conv242 = sext i32 %sub241 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx237, ptr align 1 %arrayidx239, i64 %conv242, i1 false)
  %169 = load ptr, ptr %temp, align 8
  store ptr %169, ptr %src, align 8
  br label %if.end243

if.end243:                                        ; preds = %if.end221, %if.end209
  %170 = load ptr, ptr %data, align 8
  %171 = load i32, ptr %cbrk, align 4
  %idxprom244 = sext i32 %171 to i64
  %arrayidx245 = getelementptr inbounds i8, ptr %170, i64 %idxprom244
  %172 = load ptr, ptr %src, align 8
  %173 = load i32, ptr %pc, align 4
  %idxprom246 = sext i32 %173 to i64
  %arrayidx247 = getelementptr inbounds i8, ptr %172, i64 %idxprom246
  %174 = load i32, ptr %size, align 4
  %conv248 = sext i32 %174 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx245, ptr align 1 %arrayidx247, i64 %conv248, i1 false)
  br label %for.inc249

for.inc249:                                       ; preds = %if.end243, %if.then220
  %175 = load i32, ptr %i, align 4
  %inc = add nsw i32 %175, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond173, !llvm.loop !8

for.end250:                                       ; preds = %for.cond173
  %176 = load ptr, ptr %data, align 8
  %177 = load i32, ptr %hdr, align 4
  %add251 = add nsw i32 %177, 7
  %idxprom252 = sext i32 %add251 to i64
  %arrayidx253 = getelementptr inbounds i8, ptr %176, i64 %idxprom252
  store i8 0, ptr %arrayidx253, align 1
  br label %defragment_out

defragment_out:                                   ; preds = %for.end250, %for.end
  %178 = load ptr, ptr %data, align 8
  %179 = load i32, ptr %hdr, align 4
  %add254 = add nsw i32 %179, 7
  %idxprom255 = sext i32 %add254 to i64
  %arrayidx256 = getelementptr inbounds i8, ptr %178, i64 %idxprom255
  %180 = load i8, ptr %arrayidx256, align 1
  %conv257 = zext i8 %180 to i32
  %181 = load i32, ptr %cbrk, align 4
  %add258 = add nsw i32 %conv257, %181
  %182 = load i32, ptr %iCellFirst, align 4
  %sub259 = sub nsw i32 %add258, %182
  %183 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %183, i32 0, i32 13
  %184 = load i32, ptr %nFree, align 4
  %cmp260 = icmp ne i32 %sub259, %184
  br i1 %cmp260, label %if.then262, label %if.end264

if.then262:                                       ; preds = %defragment_out
  %call263 = call i32 @sqlite3CorruptError(i32 noundef 64914)
  store i32 %call263, ptr %retval, align 4
  br label %return

if.end264:                                        ; preds = %defragment_out
  %185 = load i32, ptr %cbrk, align 4
  %shr265 = ashr i32 %185, 8
  %conv266 = trunc i32 %shr265 to i8
  %186 = load ptr, ptr %data, align 8
  %187 = load i32, ptr %hdr, align 4
  %add267 = add nsw i32 %187, 5
  %idxprom268 = sext i32 %add267 to i64
  %arrayidx269 = getelementptr inbounds i8, ptr %186, i64 %idxprom268
  %arrayidx270 = getelementptr inbounds i8, ptr %arrayidx269, i64 0
  store i8 %conv266, ptr %arrayidx270, align 1
  %188 = load i32, ptr %cbrk, align 4
  %conv271 = trunc i32 %188 to i8
  %189 = load ptr, ptr %data, align 8
  %190 = load i32, ptr %hdr, align 4
  %add272 = add nsw i32 %190, 5
  %idxprom273 = sext i32 %add272 to i64
  %arrayidx274 = getelementptr inbounds i8, ptr %189, i64 %idxprom273
  %arrayidx275 = getelementptr inbounds i8, ptr %arrayidx274, i64 1
  store i8 %conv271, ptr %arrayidx275, align 1
  %191 = load ptr, ptr %data, align 8
  %192 = load i32, ptr %hdr, align 4
  %add276 = add nsw i32 %192, 1
  %idxprom277 = sext i32 %add276 to i64
  %arrayidx278 = getelementptr inbounds i8, ptr %191, i64 %idxprom277
  store i8 0, ptr %arrayidx278, align 1
  %193 = load ptr, ptr %data, align 8
  %194 = load i32, ptr %hdr, align 4
  %add279 = add nsw i32 %194, 2
  %idxprom280 = sext i32 %add279 to i64
  %arrayidx281 = getelementptr inbounds i8, ptr %193, i64 %idxprom280
  store i8 0, ptr %arrayidx281, align 1
  %195 = load ptr, ptr %data, align 8
  %196 = load i32, ptr %iCellFirst, align 4
  %idxprom282 = sext i32 %196 to i64
  %arrayidx283 = getelementptr inbounds i8, ptr %195, i64 %idxprom282
  %197 = load i32, ptr %cbrk, align 4
  %198 = load i32, ptr %iCellFirst, align 4
  %sub284 = sub nsw i32 %197, %198
  %conv285 = sext i32 %sub284 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx283, i8 0, i64 %conv285, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end264, %if.then262, %if.then207, %if.then193, %if.then126, %if.then109, %if.then91, %if.then83, %if.then36, %if.then21
  %199 = load i32, ptr %retval, align 4
  ret i32 %199
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerTempSpace(ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
