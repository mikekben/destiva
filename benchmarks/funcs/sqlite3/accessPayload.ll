; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Realloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @getCellInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @accessPayload(ptr noundef %pCur, i32 noundef %offset, i32 noundef %amt, ptr noundef %pBuf, i32 noundef %eOp) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %amt.addr = alloca i32, align 4
  %pBuf.addr = alloca ptr, align 8
  %eOp.addr = alloca i32, align 4
  %aPayload = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iIdx = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %a = alloca i32, align 4
  %ovflSize = alloca i32, align 4
  %nextPage = alloca i32, align 4
  %nOvfl = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %a112 = alloca i32, align 4
  %pDbPage119 = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %amt, ptr %amt.addr, align 4
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %eOp, ptr %eOp.addr, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %iIdx, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pPage1, align 8
  store ptr %1, ptr %pPage, align 8
  %2 = load ptr, ptr %pCur.addr, align 8
  %pBt2 = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pBt2, align 8
  store ptr %3, ptr %pBt, align 8
  %4 = load ptr, ptr %pCur.addr, align 8
  call void @getCellInfo(ptr noundef %4)
  %5 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 10
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 1
  %6 = load ptr, ptr %pPayload, align 8
  store ptr %6, ptr %aPayload, align 8
  %7 = load ptr, ptr %aPayload, align 8
  %8 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 19
  %9 = load ptr, ptr %aData, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %10 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %10, i32 0, i32 16
  %11 = load i32, ptr %usableSize, align 4
  %12 = load ptr, ptr %pCur.addr, align 8
  %info3 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 10
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %info3, i32 0, i32 3
  %13 = load i16, ptr %nLocal, align 4
  %conv = zext i16 %13 to i32
  %sub = sub i32 %11, %conv
  %conv4 = zext i32 %sub to i64
  %cmp = icmp ugt i64 %sub.ptr.sub, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 68166)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i32, ptr %offset.addr, align 4
  %15 = load ptr, ptr %pCur.addr, align 8
  %info6 = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 10
  %nLocal7 = getelementptr inbounds nuw %struct.CellInfo, ptr %info6, i32 0, i32 3
  %16 = load i16, ptr %nLocal7, align 4
  %conv8 = zext i16 %16 to i32
  %cmp9 = icmp ult i32 %14, %conv8
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %17 = load i32, ptr %amt.addr, align 4
  store i32 %17, ptr %a, align 4
  %18 = load i32, ptr %a, align 4
  %19 = load i32, ptr %offset.addr, align 4
  %add = add i32 %18, %19
  %20 = load ptr, ptr %pCur.addr, align 8
  %info12 = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 10
  %nLocal13 = getelementptr inbounds nuw %struct.CellInfo, ptr %info12, i32 0, i32 3
  %21 = load i16, ptr %nLocal13, align 4
  %conv14 = zext i16 %21 to i32
  %cmp15 = icmp ugt i32 %add, %conv14
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %if.then11
  %22 = load ptr, ptr %pCur.addr, align 8
  %info18 = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 10
  %nLocal19 = getelementptr inbounds nuw %struct.CellInfo, ptr %info18, i32 0, i32 3
  %23 = load i16, ptr %nLocal19, align 4
  %conv20 = zext i16 %23 to i32
  %24 = load i32, ptr %offset.addr, align 4
  %sub21 = sub i32 %conv20, %24
  store i32 %sub21, ptr %a, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.then11
  %25 = load ptr, ptr %aPayload, align 8
  %26 = load i32, ptr %offset.addr, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom
  %27 = load ptr, ptr %pBuf.addr, align 8
  %28 = load i32, ptr %a, align 4
  %29 = load i32, ptr %eOp.addr, align 4
  %30 = load ptr, ptr %pPage, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %30, i32 0, i32 23
  %31 = load ptr, ptr %pDbPage, align 8
  %call23 = call i32 @copyPayload(ptr noundef %arrayidx, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %31)
  store i32 %call23, ptr %rc, align 4
  store i32 0, ptr %offset.addr, align 4
  %32 = load i32, ptr %a, align 4
  %33 = load ptr, ptr %pBuf.addr, align 8
  %idx.ext = sext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, ptr %33, i64 %idx.ext
  store ptr %add.ptr, ptr %pBuf.addr, align 8
  %34 = load i32, ptr %a, align 4
  %35 = load i32, ptr %amt.addr, align 4
  %sub24 = sub i32 %35, %34
  store i32 %sub24, ptr %amt.addr, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end
  %36 = load ptr, ptr %pCur.addr, align 8
  %info25 = getelementptr inbounds nuw %struct.BtCursor, ptr %36, i32 0, i32 10
  %nLocal26 = getelementptr inbounds nuw %struct.CellInfo, ptr %info25, i32 0, i32 3
  %37 = load i16, ptr %nLocal26, align 4
  %conv27 = zext i16 %37 to i32
  %38 = load i32, ptr %offset.addr, align 4
  %sub28 = sub i32 %38, %conv27
  store i32 %sub28, ptr %offset.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end22
  %39 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %39, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end144

land.lhs.true:                                    ; preds = %if.end29
  %40 = load i32, ptr %amt.addr, align 4
  %cmp32 = icmp ugt i32 %40, 0
  br i1 %cmp32, label %if.then34, label %if.end144

if.then34:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %pBt, align 8
  %usableSize35 = getelementptr inbounds nuw %struct.BtShared, ptr %41, i32 0, i32 16
  %42 = load i32, ptr %usableSize35, align 4
  %sub36 = sub i32 %42, 4
  store i32 %sub36, ptr %ovflSize, align 4
  %43 = load ptr, ptr %aPayload, align 8
  %44 = load ptr, ptr %pCur.addr, align 8
  %info37 = getelementptr inbounds nuw %struct.BtCursor, ptr %44, i32 0, i32 10
  %nLocal38 = getelementptr inbounds nuw %struct.CellInfo, ptr %info37, i32 0, i32 3
  %45 = load i16, ptr %nLocal38, align 4
  %idxprom39 = zext i16 %45 to i64
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %43, i64 %idxprom39
  %call41 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx40)
  store i32 %call41, ptr %nextPage, align 4
  %46 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %46, i32 0, i32 1
  %47 = load i8, ptr %curFlags, align 1
  %conv42 = zext i8 %47 to i32
  %and = and i32 %conv42, 4
  %cmp43 = icmp eq i32 %and, 0
  br i1 %cmp43, label %if.then45, label %if.else78

if.then45:                                        ; preds = %if.then34
  %48 = load ptr, ptr %pCur.addr, align 8
  %info46 = getelementptr inbounds nuw %struct.BtCursor, ptr %48, i32 0, i32 10
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %info46, i32 0, i32 2
  %49 = load i32, ptr %nPayload, align 8
  %50 = load ptr, ptr %pCur.addr, align 8
  %info47 = getelementptr inbounds nuw %struct.BtCursor, ptr %50, i32 0, i32 10
  %nLocal48 = getelementptr inbounds nuw %struct.CellInfo, ptr %info47, i32 0, i32 3
  %51 = load i16, ptr %nLocal48, align 4
  %conv49 = zext i16 %51 to i32
  %sub50 = sub i32 %49, %conv49
  %52 = load i32, ptr %ovflSize, align 4
  %add51 = add i32 %sub50, %52
  %sub52 = sub i32 %add51, 1
  %53 = load i32, ptr %ovflSize, align 4
  %div = udiv i32 %sub52, %53
  store i32 %div, ptr %nOvfl, align 4
  %54 = load ptr, ptr %pCur.addr, align 8
  %aOverflow = getelementptr inbounds nuw %struct.BtCursor, ptr %54, i32 0, i32 6
  %55 = load ptr, ptr %aOverflow, align 8
  %cmp53 = icmp eq ptr %55, null
  br i1 %cmp53, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then45
  %56 = load i32, ptr %nOvfl, align 4
  %mul = mul nsw i32 %56, 4
  %57 = load ptr, ptr %pCur.addr, align 8
  %aOverflow55 = getelementptr inbounds nuw %struct.BtCursor, ptr %57, i32 0, i32 6
  %58 = load ptr, ptr %aOverflow55, align 8
  %call56 = call i32 @sqlite3MallocSize(ptr noundef %58)
  %cmp57 = icmp sgt i32 %mul, %call56
  br i1 %cmp57, label %if.then59, label %if.end71

if.then59:                                        ; preds = %lor.lhs.false, %if.then45
  %59 = load ptr, ptr %pCur.addr, align 8
  %aOverflow60 = getelementptr inbounds nuw %struct.BtCursor, ptr %59, i32 0, i32 6
  %60 = load ptr, ptr %aOverflow60, align 8
  %61 = load i32, ptr %nOvfl, align 4
  %mul61 = mul nsw i32 %61, 2
  %conv62 = sext i32 %mul61 to i64
  %mul63 = mul i64 %conv62, 4
  %call64 = call ptr @sqlite3Realloc(ptr noundef %60, i64 noundef %mul63)
  store ptr %call64, ptr %aNew, align 8
  %62 = load ptr, ptr %aNew, align 8
  %cmp65 = icmp eq ptr %62, null
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.then59
  store i32 7, ptr %retval, align 4
  br label %return

if.else68:                                        ; preds = %if.then59
  %63 = load ptr, ptr %aNew, align 8
  %64 = load ptr, ptr %pCur.addr, align 8
  %aOverflow69 = getelementptr inbounds nuw %struct.BtCursor, ptr %64, i32 0, i32 6
  store ptr %63, ptr %aOverflow69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else68
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %lor.lhs.false
  %65 = load ptr, ptr %pCur.addr, align 8
  %aOverflow72 = getelementptr inbounds nuw %struct.BtCursor, ptr %65, i32 0, i32 6
  %66 = load ptr, ptr %aOverflow72, align 8
  %67 = load i32, ptr %nOvfl, align 4
  %conv73 = sext i32 %67 to i64
  %mul74 = mul i64 %conv73, 4
  call void @llvm.memset.p0.i64(ptr align 4 %66, i8 0, i64 %mul74, i1 false)
  %68 = load ptr, ptr %pCur.addr, align 8
  %curFlags75 = getelementptr inbounds nuw %struct.BtCursor, ptr %68, i32 0, i32 1
  %69 = load i8, ptr %curFlags75, align 1
  %conv76 = zext i8 %69 to i32
  %or = or i32 %conv76, 4
  %conv77 = trunc i32 %or to i8
  store i8 %conv77, ptr %curFlags75, align 1
  br label %if.end89

if.else78:                                        ; preds = %if.then34
  %70 = load ptr, ptr %pCur.addr, align 8
  %aOverflow79 = getelementptr inbounds nuw %struct.BtCursor, ptr %70, i32 0, i32 6
  %71 = load ptr, ptr %aOverflow79, align 8
  %72 = load i32, ptr %offset.addr, align 4
  %73 = load i32, ptr %ovflSize, align 4
  %div80 = udiv i32 %72, %73
  %idxprom81 = zext i32 %div80 to i64
  %arrayidx82 = getelementptr inbounds nuw i32, ptr %71, i64 %idxprom81
  %74 = load i32, ptr %arrayidx82, align 4
  %tobool = icmp ne i32 %74, 0
  br i1 %tobool, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.else78
  %75 = load i32, ptr %offset.addr, align 4
  %76 = load i32, ptr %ovflSize, align 4
  %div84 = udiv i32 %75, %76
  store i32 %div84, ptr %iIdx, align 4
  %77 = load ptr, ptr %pCur.addr, align 8
  %aOverflow85 = getelementptr inbounds nuw %struct.BtCursor, ptr %77, i32 0, i32 6
  %78 = load ptr, ptr %aOverflow85, align 8
  %79 = load i32, ptr %iIdx, align 4
  %idxprom86 = sext i32 %79 to i64
  %arrayidx87 = getelementptr inbounds i32, ptr %78, i64 %idxprom86
  %80 = load i32, ptr %arrayidx87, align 4
  store i32 %80, ptr %nextPage, align 4
  %81 = load i32, ptr %offset.addr, align 4
  %82 = load i32, ptr %ovflSize, align 4
  %rem = urem i32 %81, %82
  store i32 %rem, ptr %offset.addr, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.else78
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end71
  br label %while.cond

while.cond:                                       ; preds = %if.end143, %if.end89
  %83 = load i32, ptr %nextPage, align 4
  %tobool90 = icmp ne i32 %83, 0
  br i1 %tobool90, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %84 = load i32, ptr %nextPage, align 4
  %85 = load ptr, ptr %pCur.addr, align 8
  %aOverflow91 = getelementptr inbounds nuw %struct.BtCursor, ptr %85, i32 0, i32 6
  %86 = load ptr, ptr %aOverflow91, align 8
  %87 = load i32, ptr %iIdx, align 4
  %idxprom92 = sext i32 %87 to i64
  %arrayidx93 = getelementptr inbounds i32, ptr %86, i64 %idxprom92
  store i32 %84, ptr %arrayidx93, align 4
  %88 = load i32, ptr %offset.addr, align 4
  %89 = load i32, ptr %ovflSize, align 4
  %cmp94 = icmp uge i32 %88, %89
  br i1 %cmp94, label %if.then96, label %if.else111

if.then96:                                        ; preds = %while.body
  %90 = load ptr, ptr %pCur.addr, align 8
  %aOverflow97 = getelementptr inbounds nuw %struct.BtCursor, ptr %90, i32 0, i32 6
  %91 = load ptr, ptr %aOverflow97, align 8
  %92 = load i32, ptr %iIdx, align 4
  %add98 = add nsw i32 %92, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %91, i64 %idxprom99
  %93 = load i32, ptr %arrayidx100, align 4
  %tobool101 = icmp ne i32 %93, 0
  br i1 %tobool101, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.then96
  %94 = load ptr, ptr %pCur.addr, align 8
  %aOverflow103 = getelementptr inbounds nuw %struct.BtCursor, ptr %94, i32 0, i32 6
  %95 = load ptr, ptr %aOverflow103, align 8
  %96 = load i32, ptr %iIdx, align 4
  %add104 = add nsw i32 %96, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds i32, ptr %95, i64 %idxprom105
  %97 = load i32, ptr %arrayidx106, align 4
  store i32 %97, ptr %nextPage, align 4
  br label %if.end109

if.else107:                                       ; preds = %if.then96
  %98 = load ptr, ptr %pBt, align 8
  %99 = load i32, ptr %nextPage, align 4
  %call108 = call i32 @getOverflowPage(ptr noundef %98, i32 noundef %99, ptr noundef null, ptr noundef %nextPage)
  store i32 %call108, ptr %rc, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then102
  %100 = load i32, ptr %ovflSize, align 4
  %101 = load i32, ptr %offset.addr, align 4
  %sub110 = sub i32 %101, %100
  store i32 %sub110, ptr %offset.addr, align 4
  br label %if.end140

if.else111:                                       ; preds = %while.body
  %102 = load i32, ptr %amt.addr, align 4
  store i32 %102, ptr %a112, align 4
  %103 = load i32, ptr %a112, align 4
  %104 = load i32, ptr %offset.addr, align 4
  %add113 = add i32 %103, %104
  %105 = load i32, ptr %ovflSize, align 4
  %cmp114 = icmp ugt i32 %add113, %105
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.else111
  %106 = load i32, ptr %ovflSize, align 4
  %107 = load i32, ptr %offset.addr, align 4
  %sub117 = sub i32 %106, %107
  store i32 %sub117, ptr %a112, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.else111
  %108 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %108, i32 0, i32 0
  %109 = load ptr, ptr %pPager, align 8
  %110 = load i32, ptr %nextPage, align 4
  %111 = load i32, ptr %eOp.addr, align 4
  %cmp120 = icmp eq i32 %111, 0
  %112 = zext i1 %cmp120 to i64
  %cond = select i1 %cmp120, i32 2, i32 0
  %call122 = call i32 @sqlite3PagerGet(ptr noundef %109, i32 noundef %110, ptr noundef %pDbPage119, i32 noundef %cond)
  store i32 %call122, ptr %rc, align 4
  %113 = load i32, ptr %rc, align 4
  %cmp123 = icmp eq i32 %113, 0
  br i1 %cmp123, label %if.then125, label %if.end132

if.then125:                                       ; preds = %if.end118
  %114 = load ptr, ptr %pDbPage119, align 8
  %call126 = call ptr @sqlite3PagerGetData(ptr noundef %114)
  store ptr %call126, ptr %aPayload, align 8
  %115 = load ptr, ptr %aPayload, align 8
  %call127 = call i32 @sqlite3Get4byte(ptr noundef %115)
  store i32 %call127, ptr %nextPage, align 4
  %116 = load ptr, ptr %aPayload, align 8
  %117 = load i32, ptr %offset.addr, align 4
  %add128 = add i32 %117, 4
  %idxprom129 = zext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds nuw i8, ptr %116, i64 %idxprom129
  %118 = load ptr, ptr %pBuf.addr, align 8
  %119 = load i32, ptr %a112, align 4
  %120 = load i32, ptr %eOp.addr, align 4
  %121 = load ptr, ptr %pDbPage119, align 8
  %call131 = call i32 @copyPayload(ptr noundef %arrayidx130, ptr noundef %118, i32 noundef %119, i32 noundef %120, ptr noundef %121)
  store i32 %call131, ptr %rc, align 4
  %122 = load ptr, ptr %pDbPage119, align 8
  call void @sqlite3PagerUnref(ptr noundef %122)
  store i32 0, ptr %offset.addr, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then125, %if.end118
  %123 = load i32, ptr %a112, align 4
  %124 = load i32, ptr %amt.addr, align 4
  %sub133 = sub i32 %124, %123
  store i32 %sub133, ptr %amt.addr, align 4
  %125 = load i32, ptr %amt.addr, align 4
  %cmp134 = icmp eq i32 %125, 0
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end132
  %126 = load i32, ptr %rc, align 4
  store i32 %126, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end132
  %127 = load i32, ptr %a112, align 4
  %128 = load ptr, ptr %pBuf.addr, align 8
  %idx.ext138 = sext i32 %127 to i64
  %add.ptr139 = getelementptr inbounds i8, ptr %128, i64 %idx.ext138
  store ptr %add.ptr139, ptr %pBuf.addr, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %if.end109
  %129 = load i32, ptr %rc, align 4
  %tobool141 = icmp ne i32 %129, 0
  br i1 %tobool141, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.end140
  br label %while.end

if.end143:                                        ; preds = %if.end140
  %130 = load i32, ptr %iIdx, align 4
  %inc = add nsw i32 %130, 1
  store i32 %inc, ptr %iIdx, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then142, %while.cond
  br label %if.end144

if.end144:                                        ; preds = %while.end, %land.lhs.true, %if.end29
  %131 = load i32, ptr %rc, align 4
  %cmp145 = icmp eq i32 %131, 0
  br i1 %cmp145, label %land.lhs.true147, label %if.end152

land.lhs.true147:                                 ; preds = %if.end144
  %132 = load i32, ptr %amt.addr, align 4
  %cmp148 = icmp ugt i32 %132, 0
  br i1 %cmp148, label %if.then150, label %if.end152

if.then150:                                       ; preds = %land.lhs.true147
  %call151 = call i32 @sqlite3CorruptError(i32 noundef 68312)
  store i32 %call151, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %land.lhs.true147, %if.end144
  %133 = load i32, ptr %rc, align 4
  store i32 %133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end152, %if.then150, %if.then136, %if.then67, %if.then
  %134 = load i32, ptr %retval, align 4
  ret i32 %134
}

; Function Attrs: nounwind uwtable
declare hidden i32 @copyPayload(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getOverflowPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
