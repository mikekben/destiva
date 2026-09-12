; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @freeSpace(ptr noundef %pPage, i16 noundef zeroext %iStart, i16 noundef zeroext %iSize) #1 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %iStart.addr = alloca i16, align 2
  %iSize.addr = alloca i16, align 2
  %iPtr = alloca i16, align 2
  %iFreeBlk = alloca i16, align 2
  %hdr = alloca i8, align 1
  %nFrag = alloca i8, align 1
  %iOrigSize = alloca i16, align 2
  %x = alloca i16, align 2
  %iEnd = alloca i32, align 4
  %data = alloca ptr, align 8
  %iPtrEnd = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store i16 %iStart, ptr %iStart.addr, align 2
  store i16 %iSize, ptr %iSize.addr, align 2
  store i8 0, ptr %nFrag, align 1
  %0 = load i16, ptr %iSize.addr, align 2
  store i16 %0, ptr %iOrigSize, align 2
  %1 = load i16, ptr %iStart.addr, align 2
  %conv = zext i16 %1 to i32
  %2 = load i16, ptr %iSize.addr, align 2
  %conv1 = zext i16 %2 to i32
  %add = add nsw i32 %conv, %conv1
  store i32 %add, ptr %iEnd, align 4
  %3 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %aData, align 8
  store ptr %4, ptr %data, align 8
  %5 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 6
  %6 = load i8, ptr %hdrOffset, align 1
  store i8 %6, ptr %hdr, align 1
  %7 = load i8, ptr %hdr, align 1
  %conv2 = zext i8 %7 to i32
  %add3 = add nsw i32 %conv2, 1
  %conv4 = trunc i32 %add3 to i16
  store i16 %conv4, ptr %iPtr, align 2
  %8 = load ptr, ptr %data, align 8
  %9 = load i16, ptr %iPtr, align 2
  %conv5 = zext i16 %9 to i32
  %add6 = add nsw i32 %conv5, 1
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %10 to i32
  %cmp = icmp eq i32 %conv7, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %data, align 8
  %12 = load i16, ptr %iPtr, align 2
  %idxprom9 = zext i16 %12 to i64
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i16 0, ptr %iFreeBlk, align 2
  br label %if.end160

if.else:                                          ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.else
  %14 = load ptr, ptr %data, align 8
  %15 = load i16, ptr %iPtr, align 2
  %idxprom14 = zext i16 %15 to i64
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %14, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds i8, ptr %arrayidx15, i64 0
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %shl = shl i32 %conv17, 8
  %17 = load ptr, ptr %data, align 8
  %18 = load i16, ptr %iPtr, align 2
  %idxprom18 = zext i16 %18 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds i8, ptr %arrayidx19, i64 1
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %19 to i32
  %or = or i32 %shl, %conv21
  %conv22 = trunc i32 %or to i16
  store i16 %conv22, ptr %iFreeBlk, align 2
  %conv23 = zext i16 %conv22 to i32
  %20 = load i16, ptr %iStart.addr, align 2
  %conv24 = zext i16 %20 to i32
  %cmp25 = icmp slt i32 %conv23, %conv24
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i16, ptr %iFreeBlk, align 2
  %conv27 = zext i16 %21 to i32
  %22 = load i16, ptr %iPtr, align 2
  %conv28 = zext i16 %22 to i32
  %add29 = add nsw i32 %conv28, 4
  %cmp30 = icmp slt i32 %conv27, %add29
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %while.body
  %23 = load i16, ptr %iFreeBlk, align 2
  %conv33 = zext i16 %23 to i32
  %cmp34 = icmp eq i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %if.then32
  br label %while.end

if.end:                                           ; preds = %if.then32
  %call = call i32 @sqlite3CorruptError(i32 noundef 65130)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %while.body
  %24 = load i16, ptr %iFreeBlk, align 2
  store i16 %24, ptr %iPtr, align 2
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then36, %while.cond
  %25 = load i16, ptr %iFreeBlk, align 2
  %conv38 = zext i16 %25 to i32
  %26 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 18
  %27 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %27, i32 0, i32 16
  %28 = load i32, ptr %usableSize, align 4
  %sub = sub i32 %28, 4
  %cmp39 = icmp ugt i32 %conv38, %sub
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %while.end
  %call42 = call i32 @sqlite3CorruptError(i32 noundef 65135)
  store i32 %call42, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %while.end
  %29 = load i16, ptr %iFreeBlk, align 2
  %conv44 = zext i16 %29 to i32
  %tobool = icmp ne i32 %conv44, 0
  br i1 %tobool, label %land.lhs.true45, label %if.end97

land.lhs.true45:                                  ; preds = %if.end43
  %30 = load i32, ptr %iEnd, align 4
  %add46 = add i32 %30, 3
  %31 = load i16, ptr %iFreeBlk, align 2
  %conv47 = zext i16 %31 to i32
  %cmp48 = icmp uge i32 %add46, %conv47
  br i1 %cmp48, label %if.then50, label %if.end97

if.then50:                                        ; preds = %land.lhs.true45
  %32 = load i16, ptr %iFreeBlk, align 2
  %conv51 = zext i16 %32 to i32
  %33 = load i32, ptr %iEnd, align 4
  %sub52 = sub i32 %conv51, %33
  %conv53 = trunc i32 %sub52 to i8
  store i8 %conv53, ptr %nFrag, align 1
  %34 = load i32, ptr %iEnd, align 4
  %35 = load i16, ptr %iFreeBlk, align 2
  %conv54 = zext i16 %35 to i32
  %cmp55 = icmp ugt i32 %34, %conv54
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then50
  %call58 = call i32 @sqlite3CorruptError(i32 noundef 65147)
  store i32 %call58, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then50
  %36 = load i16, ptr %iFreeBlk, align 2
  %conv60 = zext i16 %36 to i32
  %37 = load ptr, ptr %data, align 8
  %38 = load i16, ptr %iFreeBlk, align 2
  %conv61 = zext i16 %38 to i32
  %add62 = add nsw i32 %conv61, 2
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %37, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds i8, ptr %arrayidx64, i64 0
  %39 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %39 to i32
  %shl67 = shl i32 %conv66, 8
  %40 = load ptr, ptr %data, align 8
  %41 = load i16, ptr %iFreeBlk, align 2
  %conv68 = zext i16 %41 to i32
  %add69 = add nsw i32 %conv68, 2
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds i8, ptr %40, i64 %idxprom70
  %arrayidx72 = getelementptr inbounds i8, ptr %arrayidx71, i64 1
  %42 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %42 to i32
  %or74 = or i32 %shl67, %conv73
  %add75 = add nsw i32 %conv60, %or74
  store i32 %add75, ptr %iEnd, align 4
  %43 = load i32, ptr %iEnd, align 4
  %44 = load ptr, ptr %pPage.addr, align 8
  %pBt76 = getelementptr inbounds nuw %struct.MemPage, ptr %44, i32 0, i32 18
  %45 = load ptr, ptr %pBt76, align 8
  %usableSize77 = getelementptr inbounds nuw %struct.BtShared, ptr %45, i32 0, i32 16
  %46 = load i32, ptr %usableSize77, align 4
  %cmp78 = icmp ugt i32 %43, %46
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %if.end59
  %call81 = call i32 @sqlite3CorruptError(i32 noundef 65150)
  store i32 %call81, ptr %retval, align 4
  br label %return

if.end82:                                         ; preds = %if.end59
  %47 = load i32, ptr %iEnd, align 4
  %48 = load i16, ptr %iStart.addr, align 2
  %conv83 = zext i16 %48 to i32
  %sub84 = sub i32 %47, %conv83
  %conv85 = trunc i32 %sub84 to i16
  store i16 %conv85, ptr %iSize.addr, align 2
  %49 = load ptr, ptr %data, align 8
  %50 = load i16, ptr %iFreeBlk, align 2
  %idxprom86 = zext i16 %50 to i64
  %arrayidx87 = getelementptr inbounds nuw i8, ptr %49, i64 %idxprom86
  %arrayidx88 = getelementptr inbounds i8, ptr %arrayidx87, i64 0
  %51 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %51 to i32
  %shl90 = shl i32 %conv89, 8
  %52 = load ptr, ptr %data, align 8
  %53 = load i16, ptr %iFreeBlk, align 2
  %idxprom91 = zext i16 %53 to i64
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %52, i64 %idxprom91
  %arrayidx93 = getelementptr inbounds i8, ptr %arrayidx92, i64 1
  %54 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %54 to i32
  %or95 = or i32 %shl90, %conv94
  %conv96 = trunc i32 %or95 to i16
  store i16 %conv96, ptr %iFreeBlk, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.end82, %land.lhs.true45, %if.end43
  %55 = load i16, ptr %iPtr, align 2
  %conv98 = zext i16 %55 to i32
  %56 = load i8, ptr %hdr, align 1
  %conv99 = zext i8 %56 to i32
  %add100 = add nsw i32 %conv99, 1
  %cmp101 = icmp sgt i32 %conv98, %add100
  br i1 %cmp101, label %if.then103, label %if.end140

if.then103:                                       ; preds = %if.end97
  %57 = load i16, ptr %iPtr, align 2
  %conv104 = zext i16 %57 to i32
  %58 = load ptr, ptr %data, align 8
  %59 = load i16, ptr %iPtr, align 2
  %conv105 = zext i16 %59 to i32
  %add106 = add nsw i32 %conv105, 2
  %idxprom107 = sext i32 %add106 to i64
  %arrayidx108 = getelementptr inbounds i8, ptr %58, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds i8, ptr %arrayidx108, i64 0
  %60 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %60 to i32
  %shl111 = shl i32 %conv110, 8
  %61 = load ptr, ptr %data, align 8
  %62 = load i16, ptr %iPtr, align 2
  %conv112 = zext i16 %62 to i32
  %add113 = add nsw i32 %conv112, 2
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds i8, ptr %61, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds i8, ptr %arrayidx115, i64 1
  %63 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %63 to i32
  %or118 = or i32 %shl111, %conv117
  %add119 = add nsw i32 %conv104, %or118
  store i32 %add119, ptr %iPtrEnd, align 4
  %64 = load i32, ptr %iPtrEnd, align 4
  %add120 = add nsw i32 %64, 3
  %65 = load i16, ptr %iStart.addr, align 2
  %conv121 = zext i16 %65 to i32
  %cmp122 = icmp sge i32 %add120, %conv121
  br i1 %cmp122, label %if.then124, label %if.end139

if.then124:                                       ; preds = %if.then103
  %66 = load i32, ptr %iPtrEnd, align 4
  %67 = load i16, ptr %iStart.addr, align 2
  %conv125 = zext i16 %67 to i32
  %cmp126 = icmp sgt i32 %66, %conv125
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %if.then124
  %call129 = call i32 @sqlite3CorruptError(i32 noundef 65163)
  store i32 %call129, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.then124
  %68 = load i16, ptr %iStart.addr, align 2
  %conv131 = zext i16 %68 to i32
  %69 = load i32, ptr %iPtrEnd, align 4
  %sub132 = sub nsw i32 %conv131, %69
  %70 = load i8, ptr %nFrag, align 1
  %conv133 = zext i8 %70 to i32
  %add134 = add nsw i32 %conv133, %sub132
  %conv135 = trunc i32 %add134 to i8
  store i8 %conv135, ptr %nFrag, align 1
  %71 = load i32, ptr %iEnd, align 4
  %72 = load i16, ptr %iPtr, align 2
  %conv136 = zext i16 %72 to i32
  %sub137 = sub i32 %71, %conv136
  %conv138 = trunc i32 %sub137 to i16
  store i16 %conv138, ptr %iSize.addr, align 2
  %73 = load i16, ptr %iPtr, align 2
  store i16 %73, ptr %iStart.addr, align 2
  br label %if.end139

if.end139:                                        ; preds = %if.end130, %if.then103
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end97
  %74 = load i8, ptr %nFrag, align 1
  %conv141 = zext i8 %74 to i32
  %75 = load ptr, ptr %data, align 8
  %76 = load i8, ptr %hdr, align 1
  %conv142 = zext i8 %76 to i32
  %add143 = add nsw i32 %conv142, 7
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds i8, ptr %75, i64 %idxprom144
  %77 = load i8, ptr %arrayidx145, align 1
  %conv146 = zext i8 %77 to i32
  %cmp147 = icmp sgt i32 %conv141, %conv146
  br i1 %cmp147, label %if.then149, label %if.end151

if.then149:                                       ; preds = %if.end140
  %call150 = call i32 @sqlite3CorruptError(i32 noundef 65169)
  store i32 %call150, ptr %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.end140
  %78 = load i8, ptr %nFrag, align 1
  %conv152 = zext i8 %78 to i32
  %79 = load ptr, ptr %data, align 8
  %80 = load i8, ptr %hdr, align 1
  %conv153 = zext i8 %80 to i32
  %add154 = add nsw i32 %conv153, 7
  %idxprom155 = sext i32 %add154 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %79, i64 %idxprom155
  %81 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %81 to i32
  %sub158 = sub nsw i32 %conv157, %conv152
  %conv159 = trunc i32 %sub158 to i8
  store i8 %conv159, ptr %arrayidx156, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.end151, %if.then
  %82 = load ptr, ptr %data, align 8
  %83 = load i8, ptr %hdr, align 1
  %conv161 = zext i8 %83 to i32
  %add162 = add nsw i32 %conv161, 5
  %idxprom163 = sext i32 %add162 to i64
  %arrayidx164 = getelementptr inbounds i8, ptr %82, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds i8, ptr %arrayidx164, i64 0
  %84 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %84 to i32
  %shl167 = shl i32 %conv166, 8
  %85 = load ptr, ptr %data, align 8
  %86 = load i8, ptr %hdr, align 1
  %conv168 = zext i8 %86 to i32
  %add169 = add nsw i32 %conv168, 5
  %idxprom170 = sext i32 %add169 to i64
  %arrayidx171 = getelementptr inbounds i8, ptr %85, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds i8, ptr %arrayidx171, i64 1
  %87 = load i8, ptr %arrayidx172, align 1
  %conv173 = zext i8 %87 to i32
  %or174 = or i32 %shl167, %conv173
  %conv175 = trunc i32 %or174 to i16
  store i16 %conv175, ptr %x, align 2
  %88 = load i16, ptr %iStart.addr, align 2
  %conv176 = zext i16 %88 to i32
  %89 = load i16, ptr %x, align 2
  %conv177 = zext i16 %89 to i32
  %cmp178 = icmp sle i32 %conv176, %conv177
  br i1 %cmp178, label %if.then180, label %if.else219

if.then180:                                       ; preds = %if.end160
  %90 = load i16, ptr %iStart.addr, align 2
  %conv181 = zext i16 %90 to i32
  %91 = load i16, ptr %x, align 2
  %conv182 = zext i16 %91 to i32
  %cmp183 = icmp slt i32 %conv181, %conv182
  br i1 %cmp183, label %if.then190, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then180
  %92 = load i16, ptr %iPtr, align 2
  %conv185 = zext i16 %92 to i32
  %93 = load i8, ptr %hdr, align 1
  %conv186 = zext i8 %93 to i32
  %add187 = add nsw i32 %conv186, 1
  %cmp188 = icmp ne i32 %conv185, %add187
  br i1 %cmp188, label %if.then190, label %if.end192

if.then190:                                       ; preds = %lor.lhs.false, %if.then180
  %call191 = call i32 @sqlite3CorruptError(i32 noundef 65177)
  store i32 %call191, ptr %retval, align 4
  br label %return

if.end192:                                        ; preds = %lor.lhs.false
  %94 = load i16, ptr %iFreeBlk, align 2
  %conv193 = zext i16 %94 to i32
  %shr = ashr i32 %conv193, 8
  %conv194 = trunc i32 %shr to i8
  %95 = load ptr, ptr %data, align 8
  %96 = load i8, ptr %hdr, align 1
  %conv195 = zext i8 %96 to i32
  %add196 = add nsw i32 %conv195, 1
  %idxprom197 = sext i32 %add196 to i64
  %arrayidx198 = getelementptr inbounds i8, ptr %95, i64 %idxprom197
  %arrayidx199 = getelementptr inbounds i8, ptr %arrayidx198, i64 0
  store i8 %conv194, ptr %arrayidx199, align 1
  %97 = load i16, ptr %iFreeBlk, align 2
  %conv200 = trunc i16 %97 to i8
  %98 = load ptr, ptr %data, align 8
  %99 = load i8, ptr %hdr, align 1
  %conv201 = zext i8 %99 to i32
  %add202 = add nsw i32 %conv201, 1
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds i8, ptr %98, i64 %idxprom203
  %arrayidx205 = getelementptr inbounds i8, ptr %arrayidx204, i64 1
  store i8 %conv200, ptr %arrayidx205, align 1
  %100 = load i32, ptr %iEnd, align 4
  %shr206 = lshr i32 %100, 8
  %conv207 = trunc i32 %shr206 to i8
  %101 = load ptr, ptr %data, align 8
  %102 = load i8, ptr %hdr, align 1
  %conv208 = zext i8 %102 to i32
  %add209 = add nsw i32 %conv208, 5
  %idxprom210 = sext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds i8, ptr %101, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds i8, ptr %arrayidx211, i64 0
  store i8 %conv207, ptr %arrayidx212, align 1
  %103 = load i32, ptr %iEnd, align 4
  %conv213 = trunc i32 %103 to i8
  %104 = load ptr, ptr %data, align 8
  %105 = load i8, ptr %hdr, align 1
  %conv214 = zext i8 %105 to i32
  %add215 = add nsw i32 %conv214, 5
  %idxprom216 = sext i32 %add215 to i64
  %arrayidx217 = getelementptr inbounds i8, ptr %104, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds i8, ptr %arrayidx217, i64 1
  store i8 %conv213, ptr %arrayidx218, align 1
  br label %if.end230

if.else219:                                       ; preds = %if.end160
  %106 = load i16, ptr %iStart.addr, align 2
  %conv220 = zext i16 %106 to i32
  %shr221 = ashr i32 %conv220, 8
  %conv222 = trunc i32 %shr221 to i8
  %107 = load ptr, ptr %data, align 8
  %108 = load i16, ptr %iPtr, align 2
  %idxprom223 = zext i16 %108 to i64
  %arrayidx224 = getelementptr inbounds nuw i8, ptr %107, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds i8, ptr %arrayidx224, i64 0
  store i8 %conv222, ptr %arrayidx225, align 1
  %109 = load i16, ptr %iStart.addr, align 2
  %conv226 = trunc i16 %109 to i8
  %110 = load ptr, ptr %data, align 8
  %111 = load i16, ptr %iPtr, align 2
  %idxprom227 = zext i16 %111 to i64
  %arrayidx228 = getelementptr inbounds nuw i8, ptr %110, i64 %idxprom227
  %arrayidx229 = getelementptr inbounds i8, ptr %arrayidx228, i64 1
  store i8 %conv226, ptr %arrayidx229, align 1
  br label %if.end230

if.end230:                                        ; preds = %if.else219, %if.end192
  %112 = load ptr, ptr %pPage.addr, align 8
  %pBt231 = getelementptr inbounds nuw %struct.MemPage, ptr %112, i32 0, i32 18
  %113 = load ptr, ptr %pBt231, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %113, i32 0, i32 10
  %114 = load i16, ptr %btsFlags, align 2
  %conv232 = zext i16 %114 to i32
  %and = and i32 %conv232, 12
  %tobool233 = icmp ne i32 %and, 0
  br i1 %tobool233, label %if.then234, label %if.end238

if.then234:                                       ; preds = %if.end230
  %115 = load ptr, ptr %data, align 8
  %116 = load i16, ptr %iStart.addr, align 2
  %idxprom235 = zext i16 %116 to i64
  %arrayidx236 = getelementptr inbounds nuw i8, ptr %115, i64 %idxprom235
  %117 = load i16, ptr %iSize.addr, align 2
  %conv237 = zext i16 %117 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx236, i8 0, i64 %conv237, i1 false)
  br label %if.end238

if.end238:                                        ; preds = %if.then234, %if.end230
  %118 = load i16, ptr %iFreeBlk, align 2
  %conv239 = zext i16 %118 to i32
  %shr240 = ashr i32 %conv239, 8
  %conv241 = trunc i32 %shr240 to i8
  %119 = load ptr, ptr %data, align 8
  %120 = load i16, ptr %iStart.addr, align 2
  %idxprom242 = zext i16 %120 to i64
  %arrayidx243 = getelementptr inbounds nuw i8, ptr %119, i64 %idxprom242
  %arrayidx244 = getelementptr inbounds i8, ptr %arrayidx243, i64 0
  store i8 %conv241, ptr %arrayidx244, align 1
  %121 = load i16, ptr %iFreeBlk, align 2
  %conv245 = trunc i16 %121 to i8
  %122 = load ptr, ptr %data, align 8
  %123 = load i16, ptr %iStart.addr, align 2
  %idxprom246 = zext i16 %123 to i64
  %arrayidx247 = getelementptr inbounds nuw i8, ptr %122, i64 %idxprom246
  %arrayidx248 = getelementptr inbounds i8, ptr %arrayidx247, i64 1
  store i8 %conv245, ptr %arrayidx248, align 1
  %124 = load i16, ptr %iSize.addr, align 2
  %conv249 = zext i16 %124 to i32
  %shr250 = ashr i32 %conv249, 8
  %conv251 = trunc i32 %shr250 to i8
  %125 = load ptr, ptr %data, align 8
  %126 = load i16, ptr %iStart.addr, align 2
  %conv252 = zext i16 %126 to i32
  %add253 = add nsw i32 %conv252, 2
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds i8, ptr %125, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds i8, ptr %arrayidx255, i64 0
  store i8 %conv251, ptr %arrayidx256, align 1
  %127 = load i16, ptr %iSize.addr, align 2
  %conv257 = trunc i16 %127 to i8
  %128 = load ptr, ptr %data, align 8
  %129 = load i16, ptr %iStart.addr, align 2
  %conv258 = zext i16 %129 to i32
  %add259 = add nsw i32 %conv258, 2
  %idxprom260 = sext i32 %add259 to i64
  %arrayidx261 = getelementptr inbounds i8, ptr %128, i64 %idxprom260
  %arrayidx262 = getelementptr inbounds i8, ptr %arrayidx261, i64 1
  store i8 %conv257, ptr %arrayidx262, align 1
  %130 = load i16, ptr %iOrigSize, align 2
  %conv263 = zext i16 %130 to i32
  %131 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %131, i32 0, i32 13
  %132 = load i32, ptr %nFree, align 4
  %add264 = add nsw i32 %132, %conv263
  store i32 %add264, ptr %nFree, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end238, %if.then190, %if.then149, %if.then128, %if.then80, %if.then57, %if.then41, %if.end
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
