; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtreePayload = type { ptr, i64, ptr, ptr, i16, i32, i32 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @allocateBtreePage(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PutVarint(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @fillInCell(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pX, ptr noundef %pnSize) #2 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %pnSize.addr = alloca ptr, align 8
  %nPayload = alloca i32, align 4
  %pSrc = alloca ptr, align 8
  %nSrc = alloca i32, align 4
  %n = alloca i32, align 4
  %rc = alloca i32, align 4
  %mn = alloca i32, align 4
  %spaceLeft = alloca i32, align 4
  %pToRelease = alloca ptr, align 8
  %pPrior = alloca ptr, align 8
  %pPayload = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pgnoOvfl = alloca i32, align 4
  %nHeader = alloca i32, align 4
  %pOvfl = alloca ptr, align 8
  %pgnoPtrmap = alloca i32, align 4
  %eType = alloca i8, align 1
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  store ptr %pnSize, ptr %pnSize.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 7
  %1 = load i8, ptr %childPtrSize, align 2
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %nHeader, align 4
  %2 = load ptr, ptr %pPage.addr, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 2
  %3 = load i8, ptr %intKey, align 2
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pX.addr, align 8
  %nData = getelementptr inbounds nuw %struct.BtreePayload, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %nData, align 4
  %6 = load ptr, ptr %pX.addr, align 8
  %nZero = getelementptr inbounds nuw %struct.BtreePayload, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %nZero, align 8
  %add = add nsw i32 %5, %7
  store i32 %add, ptr %nPayload, align 4
  %8 = load ptr, ptr %pX.addr, align 8
  %pData = getelementptr inbounds nuw %struct.BtreePayload, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pData, align 8
  store ptr %9, ptr %pSrc, align 8
  %10 = load ptr, ptr %pX.addr, align 8
  %nData1 = getelementptr inbounds nuw %struct.BtreePayload, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nData1, align 4
  store i32 %11, ptr %nSrc, align 4
  %12 = load i32, ptr %nPayload, align 4
  %cmp = icmp ult i32 %12, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %13 = load i32, ptr %nPayload, align 4
  %conv3 = trunc i32 %13 to i8
  %14 = load ptr, ptr %pCell.addr, align 8
  %15 = load i32, ptr %nHeader, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  store i8 %conv3, ptr %arrayidx, align 1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %16 = load ptr, ptr %pCell.addr, align 8
  %17 = load i32, ptr %nHeader, align 4
  %idxprom4 = sext i32 %17 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %16, i64 %idxprom4
  %18 = load i32, ptr %nPayload, align 4
  %conv6 = sext i32 %18 to i64
  %call = call i32 @sqlite3PutVarint(ptr noundef %arrayidx5, i64 noundef %conv6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %call, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  %conv8 = zext i8 %conv7 to i32
  %19 = load i32, ptr %nHeader, align 4
  %add9 = add nsw i32 %19, %conv8
  store i32 %add9, ptr %nHeader, align 4
  %20 = load ptr, ptr %pCell.addr, align 8
  %21 = load i32, ptr %nHeader, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 %idxprom10
  %22 = load ptr, ptr %pX.addr, align 8
  %nKey = getelementptr inbounds nuw %struct.BtreePayload, ptr %22, i32 0, i32 1
  %23 = load i64, ptr %nKey, align 8
  %call12 = call i32 @sqlite3PutVarint(ptr noundef %arrayidx11, i64 noundef %23)
  %24 = load i32, ptr %nHeader, align 4
  %add13 = add nsw i32 %24, %call12
  store i32 %add13, ptr %nHeader, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %pX.addr, align 8
  %nKey14 = getelementptr inbounds nuw %struct.BtreePayload, ptr %25, i32 0, i32 1
  %26 = load i64, ptr %nKey14, align 8
  %conv15 = trunc i64 %26 to i32
  store i32 %conv15, ptr %nPayload, align 4
  store i32 %conv15, ptr %nSrc, align 4
  %27 = load ptr, ptr %pX.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.BtreePayload, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pKey, align 8
  store ptr %28, ptr %pSrc, align 8
  %29 = load i32, ptr %nPayload, align 4
  %cmp16 = icmp ult i32 %29, 128
  br i1 %cmp16, label %cond.true18, label %cond.false22

cond.true18:                                      ; preds = %if.else
  %30 = load i32, ptr %nPayload, align 4
  %conv19 = trunc i32 %30 to i8
  %31 = load ptr, ptr %pCell.addr, align 8
  %32 = load i32, ptr %nHeader, align 4
  %idxprom20 = sext i32 %32 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %31, i64 %idxprom20
  store i8 %conv19, ptr %arrayidx21, align 1
  br label %cond.end27

cond.false22:                                     ; preds = %if.else
  %33 = load ptr, ptr %pCell.addr, align 8
  %34 = load i32, ptr %nHeader, align 4
  %idxprom23 = sext i32 %34 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %33, i64 %idxprom23
  %35 = load i32, ptr %nPayload, align 4
  %conv25 = sext i32 %35 to i64
  %call26 = call i32 @sqlite3PutVarint(ptr noundef %arrayidx24, i64 noundef %conv25)
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false22, %cond.true18
  %cond28 = phi i32 [ 1, %cond.true18 ], [ %call26, %cond.false22 ]
  %conv29 = trunc i32 %cond28 to i8
  %conv30 = zext i8 %conv29 to i32
  %36 = load i32, ptr %nHeader, align 4
  %add31 = add nsw i32 %36, %conv30
  store i32 %add31, ptr %nHeader, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end27, %cond.end
  %37 = load ptr, ptr %pCell.addr, align 8
  %38 = load i32, ptr %nHeader, align 4
  %idxprom32 = sext i32 %38 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %37, i64 %idxprom32
  store ptr %arrayidx33, ptr %pPayload, align 8
  %39 = load i32, ptr %nPayload, align 4
  %40 = load ptr, ptr %pPage.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.MemPage, ptr %40, i32 0, i32 10
  %41 = load i16, ptr %maxLocal, align 2
  %conv34 = zext i16 %41 to i32
  %cmp35 = icmp sle i32 %39, %conv34
  br i1 %cmp35, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end
  %42 = load i32, ptr %nHeader, align 4
  %43 = load i32, ptr %nPayload, align 4
  %add38 = add nsw i32 %42, %43
  store i32 %add38, ptr %n, align 4
  %44 = load i32, ptr %n, align 4
  %cmp39 = icmp slt i32 %44, 4
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then37
  store i32 4, ptr %n, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then37
  %45 = load i32, ptr %n, align 4
  %46 = load ptr, ptr %pnSize.addr, align 8
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %pPayload, align 8
  %48 = load ptr, ptr %pSrc, align 8
  %49 = load i32, ptr %nSrc, align 4
  %conv43 = sext i32 %49 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %conv43, i1 false)
  %50 = load ptr, ptr %pPayload, align 8
  %51 = load i32, ptr %nSrc, align 4
  %idx.ext = sext i32 %51 to i64
  %add.ptr = getelementptr inbounds i8, ptr %50, i64 %idx.ext
  %52 = load i32, ptr %nPayload, align 4
  %53 = load i32, ptr %nSrc, align 4
  %sub = sub nsw i32 %52, %53
  %conv44 = sext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv44, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.end
  %54 = load ptr, ptr %pPage.addr, align 8
  %minLocal = getelementptr inbounds nuw %struct.MemPage, ptr %54, i32 0, i32 11
  %55 = load i16, ptr %minLocal, align 8
  %conv46 = zext i16 %55 to i32
  store i32 %conv46, ptr %mn, align 4
  %56 = load i32, ptr %mn, align 4
  %57 = load i32, ptr %nPayload, align 4
  %58 = load i32, ptr %mn, align 4
  %sub47 = sub nsw i32 %57, %58
  %59 = load ptr, ptr %pPage.addr, align 8
  %pBt48 = getelementptr inbounds nuw %struct.MemPage, ptr %59, i32 0, i32 18
  %60 = load ptr, ptr %pBt48, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %60, i32 0, i32 16
  %61 = load i32, ptr %usableSize, align 4
  %sub49 = sub i32 %61, 4
  %rem = urem i32 %sub47, %sub49
  %add50 = add i32 %56, %rem
  store i32 %add50, ptr %n, align 4
  %62 = load i32, ptr %n, align 4
  %63 = load ptr, ptr %pPage.addr, align 8
  %maxLocal51 = getelementptr inbounds nuw %struct.MemPage, ptr %63, i32 0, i32 10
  %64 = load i16, ptr %maxLocal51, align 2
  %conv52 = zext i16 %64 to i32
  %cmp53 = icmp sgt i32 %62, %conv52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end45
  %65 = load i32, ptr %mn, align 4
  store i32 %65, ptr %n, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end45
  %66 = load i32, ptr %n, align 4
  store i32 %66, ptr %spaceLeft, align 4
  %67 = load i32, ptr %n, align 4
  %68 = load i32, ptr %nHeader, align 4
  %add57 = add nsw i32 %67, %68
  %add58 = add nsw i32 %add57, 4
  %69 = load ptr, ptr %pnSize.addr, align 8
  store i32 %add58, ptr %69, align 4
  %70 = load ptr, ptr %pCell.addr, align 8
  %71 = load i32, ptr %nHeader, align 4
  %72 = load i32, ptr %n, align 4
  %add59 = add nsw i32 %71, %72
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %70, i64 %idxprom60
  store ptr %arrayidx61, ptr %pPrior, align 8
  store ptr null, ptr %pToRelease, align 8
  store i32 0, ptr %pgnoOvfl, align 4
  %73 = load ptr, ptr %pPage.addr, align 8
  %pBt62 = getelementptr inbounds nuw %struct.MemPage, ptr %73, i32 0, i32 18
  %74 = load ptr, ptr %pBt62, align 8
  store ptr %74, ptr %pBt, align 8
  br label %while.body

while.body:                                       ; preds = %if.end124, %if.end56
  %75 = load i32, ptr %nPayload, align 4
  store i32 %75, ptr %n, align 4
  %76 = load i32, ptr %n, align 4
  %77 = load i32, ptr %spaceLeft, align 4
  %cmp63 = icmp sgt i32 %76, %77
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %while.body
  %78 = load i32, ptr %spaceLeft, align 4
  store i32 %78, ptr %n, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %while.body
  %79 = load i32, ptr %nSrc, align 4
  %80 = load i32, ptr %n, align 4
  %cmp67 = icmp sge i32 %79, %80
  br i1 %cmp67, label %if.then69, label %if.else71

if.then69:                                        ; preds = %if.end66
  %81 = load ptr, ptr %pPayload, align 8
  %82 = load ptr, ptr %pSrc, align 8
  %83 = load i32, ptr %n, align 4
  %conv70 = sext i32 %83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %82, i64 %conv70, i1 false)
  br label %if.end79

if.else71:                                        ; preds = %if.end66
  %84 = load i32, ptr %nSrc, align 4
  %cmp72 = icmp sgt i32 %84, 0
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.else71
  %85 = load i32, ptr %nSrc, align 4
  store i32 %85, ptr %n, align 4
  %86 = load ptr, ptr %pPayload, align 8
  %87 = load ptr, ptr %pSrc, align 8
  %88 = load i32, ptr %n, align 4
  %conv75 = sext i32 %88 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %87, i64 %conv75, i1 false)
  br label %if.end78

if.else76:                                        ; preds = %if.else71
  %89 = load ptr, ptr %pPayload, align 8
  %90 = load i32, ptr %n, align 4
  %conv77 = sext i32 %90 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %89, i8 0, i64 %conv77, i1 false)
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.then69
  %91 = load i32, ptr %n, align 4
  %92 = load i32, ptr %nPayload, align 4
  %sub80 = sub nsw i32 %92, %91
  store i32 %sub80, ptr %nPayload, align 4
  %93 = load i32, ptr %nPayload, align 4
  %cmp81 = icmp sle i32 %93, 0
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end79
  br label %while.end

if.end84:                                         ; preds = %if.end79
  %94 = load i32, ptr %n, align 4
  %95 = load ptr, ptr %pPayload, align 8
  %idx.ext85 = sext i32 %94 to i64
  %add.ptr86 = getelementptr inbounds i8, ptr %95, i64 %idx.ext85
  store ptr %add.ptr86, ptr %pPayload, align 8
  %96 = load i32, ptr %n, align 4
  %97 = load ptr, ptr %pSrc, align 8
  %idx.ext87 = sext i32 %96 to i64
  %add.ptr88 = getelementptr inbounds i8, ptr %97, i64 %idx.ext87
  store ptr %add.ptr88, ptr %pSrc, align 8
  %98 = load i32, ptr %n, align 4
  %99 = load i32, ptr %nSrc, align 4
  %sub89 = sub nsw i32 %99, %98
  store i32 %sub89, ptr %nSrc, align 4
  %100 = load i32, ptr %n, align 4
  %101 = load i32, ptr %spaceLeft, align 4
  %sub90 = sub nsw i32 %101, %100
  store i32 %sub90, ptr %spaceLeft, align 4
  %102 = load i32, ptr %spaceLeft, align 4
  %cmp91 = icmp eq i32 %102, 0
  br i1 %cmp91, label %if.then93, label %if.end124

if.then93:                                        ; preds = %if.end84
  store ptr null, ptr %pOvfl, align 8
  %103 = load i32, ptr %pgnoOvfl, align 4
  store i32 %103, ptr %pgnoPtrmap, align 4
  %104 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %104, i32 0, i32 5
  %105 = load i8, ptr %autoVacuum, align 1
  %tobool94 = icmp ne i8 %105, 0
  br i1 %tobool94, label %if.then95, label %if.end102

if.then95:                                        ; preds = %if.then93
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then95
  %106 = load i32, ptr %pgnoOvfl, align 4
  %inc = add i32 %106, 1
  store i32 %inc, ptr %pgnoOvfl, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %107 = load ptr, ptr %pBt, align 8
  %108 = load i32, ptr %pgnoOvfl, align 4
  %call96 = call i32 @ptrmapPageno(ptr noundef %107, i32 noundef %108)
  %109 = load i32, ptr %pgnoOvfl, align 4
  %cmp97 = icmp eq i32 %call96, %109
  br i1 %cmp97, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %110 = load i32, ptr %pgnoOvfl, align 4
  %111 = load i32, ptr @sqlite3PendingByte, align 4
  %112 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %112, i32 0, i32 15
  %113 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %111, %113
  %add99 = add i32 %div, 1
  %cmp100 = icmp eq i32 %110, %add99
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %114 = phi i1 [ true, %do.cond ], [ %cmp100, %lor.rhs ]
  br i1 %114, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %lor.end
  br label %if.end102

if.end102:                                        ; preds = %do.end, %if.then93
  %115 = load ptr, ptr %pBt, align 8
  %116 = load i32, ptr %pgnoOvfl, align 4
  %call103 = call i32 @allocateBtreePage(ptr noundef %115, ptr noundef %pOvfl, ptr noundef %pgnoOvfl, i32 noundef %116, i8 noundef zeroext 0)
  store i32 %call103, ptr %rc, align 4
  %117 = load ptr, ptr %pBt, align 8
  %autoVacuum104 = getelementptr inbounds nuw %struct.BtShared, ptr %117, i32 0, i32 5
  %118 = load i8, ptr %autoVacuum104, align 1
  %conv105 = zext i8 %118 to i32
  %tobool106 = icmp ne i32 %conv105, 0
  br i1 %tobool106, label %land.lhs.true, label %if.end116

land.lhs.true:                                    ; preds = %if.end102
  %119 = load i32, ptr %rc, align 4
  %cmp107 = icmp eq i32 %119, 0
  br i1 %cmp107, label %if.then109, label %if.end116

if.then109:                                       ; preds = %land.lhs.true
  %120 = load i32, ptr %pgnoPtrmap, align 4
  %tobool110 = icmp ne i32 %120, 0
  %121 = zext i1 %tobool110 to i64
  %cond111 = select i1 %tobool110, i32 4, i32 3
  %conv112 = trunc i32 %cond111 to i8
  store i8 %conv112, ptr %eType, align 1
  %122 = load ptr, ptr %pBt, align 8
  %123 = load i32, ptr %pgnoOvfl, align 4
  %124 = load i8, ptr %eType, align 1
  %125 = load i32, ptr %pgnoPtrmap, align 4
  call void @ptrmapPut(ptr noundef %122, i32 noundef %123, i8 noundef zeroext %124, i32 noundef %125, ptr noundef %rc)
  %126 = load i32, ptr %rc, align 4
  %tobool113 = icmp ne i32 %126, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then109
  %127 = load ptr, ptr %pOvfl, align 8
  call void @releasePage(ptr noundef %127)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then109
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %land.lhs.true, %if.end102
  %128 = load i32, ptr %rc, align 4
  %tobool117 = icmp ne i32 %128, 0
  br i1 %tobool117, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.end116
  %129 = load ptr, ptr %pToRelease, align 8
  call void @releasePage(ptr noundef %129)
  %130 = load i32, ptr %rc, align 4
  store i32 %130, ptr %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.end116
  %131 = load ptr, ptr %pPrior, align 8
  %132 = load i32, ptr %pgnoOvfl, align 4
  call void @sqlite3Put4byte(ptr noundef %131, i32 noundef %132)
  %133 = load ptr, ptr %pToRelease, align 8
  call void @releasePage(ptr noundef %133)
  %134 = load ptr, ptr %pOvfl, align 8
  store ptr %134, ptr %pToRelease, align 8
  %135 = load ptr, ptr %pOvfl, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %135, i32 0, i32 19
  %136 = load ptr, ptr %aData, align 8
  store ptr %136, ptr %pPrior, align 8
  %137 = load ptr, ptr %pPrior, align 8
  call void @sqlite3Put4byte(ptr noundef %137, i32 noundef 0)
  %138 = load ptr, ptr %pOvfl, align 8
  %aData120 = getelementptr inbounds nuw %struct.MemPage, ptr %138, i32 0, i32 19
  %139 = load ptr, ptr %aData120, align 8
  %arrayidx121 = getelementptr inbounds i8, ptr %139, i64 4
  store ptr %arrayidx121, ptr %pPayload, align 8
  %140 = load ptr, ptr %pBt, align 8
  %usableSize122 = getelementptr inbounds nuw %struct.BtShared, ptr %140, i32 0, i32 16
  %141 = load i32, ptr %usableSize122, align 4
  %sub123 = sub i32 %141, 4
  store i32 %sub123, ptr %spaceLeft, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.end119, %if.end84
  br label %while.body

while.end:                                        ; preds = %if.then83
  %142 = load ptr, ptr %pToRelease, align 8
  call void @releasePage(ptr noundef %142)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then118, %if.end42
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

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
