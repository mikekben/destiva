; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapGet(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @allocateBtreePage(ptr noundef %pBt, ptr noundef %ppPage, ptr noundef %pPgno, i32 noundef %nearby, i8 noundef zeroext %eMode) #1 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %ppPage.addr = alloca ptr, align 8
  %pPgno.addr = alloca ptr, align 8
  %nearby.addr = alloca i32, align 4
  %eMode.addr = alloca i8, align 1
  %pPage1 = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %pTrunk = alloca ptr, align 8
  %pPrevTrunk = alloca ptr, align 8
  %mxPage = alloca i32, align 4
  %iTrunk = alloca i32, align 4
  %searchList = alloca i8, align 1
  %nSearch = alloca i32, align 4
  %eType = alloca i8, align 1
  %pNewTrunk = alloca ptr, align 8
  %iNewTrunk = alloca i32, align 4
  %closest = alloca i32, align 4
  %iPage = alloca i32, align 4
  %aData168 = alloca ptr, align 8
  %i = alloca i32, align 4
  %dist = alloca i32, align 4
  %d2 = alloca i32, align 4
  %noContent = alloca i32, align 4
  %bNoContent = alloca i32, align 4
  %pPg = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store ptr %pPgno, ptr %pPgno.addr, align 8
  store i32 %nearby, ptr %nearby.addr, align 4
  store i8 %eMode, ptr %eMode.addr, align 1
  store ptr null, ptr %pTrunk, align 8
  store ptr null, ptr %pPrevTrunk, align 8
  %0 = load ptr, ptr %pBt.addr, align 8
  %pPage11 = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pPage11, align 8
  store ptr %1, ptr %pPage1, align 8
  %2 = load ptr, ptr %pBt.addr, align 8
  %call = call i32 @btreePagecount(ptr noundef %2)
  store i32 %call, ptr %mxPage, align 4
  %3 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 36
  %call2 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call2, ptr %n, align 4
  %5 = load i32, ptr %n, align 4
  %6 = load i32, ptr %mxPage, align 4
  %cmp = icmp uge i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @sqlite3CorruptError(i32 noundef 69283)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %n, align 4
  %cmp4 = icmp ugt i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.else274

if.then5:                                         ; preds = %if.end
  store i8 0, ptr %searchList, align 1
  store i32 0, ptr %nSearch, align 4
  %8 = load i8, ptr %eMode.addr, align 1
  %conv = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %9 = load i32, ptr %nearby.addr, align 4
  %10 = load i32, ptr %mxPage, align 4
  %cmp9 = icmp ule i32 %9, %10
  br i1 %cmp9, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.then8
  %11 = load ptr, ptr %pBt.addr, align 8
  %12 = load i32, ptr %nearby.addr, align 4
  %call12 = call i32 @ptrmapGet(ptr noundef %11, i32 noundef %12, ptr noundef %eType, ptr noundef null)
  store i32 %call12, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then11
  %15 = load i8, ptr %eType, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp eq i32 %conv15, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i8 1, ptr %searchList, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then8
  br label %if.end26

if.else:                                          ; preds = %if.then5
  %16 = load i8, ptr %eMode.addr, align 1
  %conv21 = zext i8 %16 to i32
  %cmp22 = icmp eq i32 %conv21, 2
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.else
  store i8 1, ptr %searchList, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.else
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end20
  %17 = load ptr, ptr %pPage1, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 23
  %18 = load ptr, ptr %pDbPage, align 8
  %call27 = call i32 @sqlite3PagerWrite(ptr noundef %18)
  store i32 %call27, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %tobool28 = icmp ne i32 %19, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end26
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end26
  %21 = load ptr, ptr %pPage1, align 8
  %aData31 = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 19
  %22 = load ptr, ptr %aData31, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %22, i64 36
  %23 = load i32, ptr %n, align 4
  %sub = sub i32 %23, 1
  call void @sqlite3Put4byte(ptr noundef %arrayidx32, i32 noundef %sub)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end30
  %24 = load ptr, ptr %pTrunk, align 8
  store ptr %24, ptr %pPrevTrunk, align 8
  %25 = load ptr, ptr %pPrevTrunk, align 8
  %tobool33 = icmp ne ptr %25, null
  br i1 %tobool33, label %if.then34, label %if.else38

if.then34:                                        ; preds = %do.body
  %26 = load ptr, ptr %pPrevTrunk, align 8
  %aData35 = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %aData35, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %27, i64 0
  %call37 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx36)
  store i32 %call37, ptr %iTrunk, align 4
  br label %if.end42

if.else38:                                        ; preds = %do.body
  %28 = load ptr, ptr %pPage1, align 8
  %aData39 = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 19
  %29 = load ptr, ptr %aData39, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %29, i64 32
  %call41 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx40)
  store i32 %call41, ptr %iTrunk, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then34
  %30 = load i32, ptr %iTrunk, align 4
  %31 = load i32, ptr %mxPage, align 4
  %cmp43 = icmp ugt i32 %30, %31
  br i1 %cmp43, label %if.then47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end42
  %32 = load i32, ptr %nSearch, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %nSearch, align 4
  %33 = load i32, ptr %n, align 4
  %cmp45 = icmp ugt i32 %32, %33
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %lor.lhs.false, %if.end42
  %call48 = call i32 @sqlite3CorruptError(i32 noundef 69339)
  store i32 %call48, ptr %rc, align 4
  br label %if.end51

if.else49:                                        ; preds = %lor.lhs.false
  %34 = load ptr, ptr %pBt.addr, align 8
  %35 = load i32, ptr %iTrunk, align 4
  %call50 = call i32 @btreeGetUnusedPage(ptr noundef %34, i32 noundef %35, ptr noundef %pTrunk, i32 noundef 0)
  store i32 %call50, ptr %rc, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  %36 = load i32, ptr %rc, align 4
  %tobool52 = icmp ne i32 %36, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end51
  store ptr null, ptr %pTrunk, align 8
  br label %end_allocate_page

if.end54:                                         ; preds = %if.end51
  %37 = load ptr, ptr %pTrunk, align 8
  %aData55 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %aData55, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %38, i64 4
  %call57 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx56)
  store i32 %call57, ptr %k, align 4
  %39 = load i32, ptr %k, align 4
  %cmp58 = icmp eq i32 %39, 0
  br i1 %cmp58, label %land.lhs.true, label %if.else71

land.lhs.true:                                    ; preds = %if.end54
  %40 = load i8, ptr %searchList, align 1
  %tobool60 = icmp ne i8 %40, 0
  br i1 %tobool60, label %if.else71, label %if.then61

if.then61:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %pTrunk, align 8
  %pDbPage62 = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 23
  %42 = load ptr, ptr %pDbPage62, align 8
  %call63 = call i32 @sqlite3PagerWrite(ptr noundef %42)
  store i32 %call63, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %tobool64 = icmp ne i32 %43, 0
  br i1 %tobool64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then61
  br label %end_allocate_page

if.end66:                                         ; preds = %if.then61
  %44 = load i32, ptr %iTrunk, align 4
  %45 = load ptr, ptr %pPgno.addr, align 8
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %pPage1, align 8
  %aData67 = getelementptr inbounds nuw %struct.MemPage, ptr %46, i32 0, i32 19
  %47 = load ptr, ptr %aData67, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %47, i64 32
  %48 = load ptr, ptr %pTrunk, align 8
  %aData69 = getelementptr inbounds nuw %struct.MemPage, ptr %48, i32 0, i32 19
  %49 = load ptr, ptr %aData69, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %49, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx68, ptr align 1 %arrayidx70, i64 4, i1 false)
  %50 = load ptr, ptr %pTrunk, align 8
  %51 = load ptr, ptr %ppPage.addr, align 8
  store ptr %50, ptr %51, align 8
  store ptr null, ptr %pTrunk, align 8
  br label %if.end272

if.else71:                                        ; preds = %land.lhs.true, %if.end54
  %52 = load i32, ptr %k, align 4
  %53 = load ptr, ptr %pBt.addr, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %53, i32 0, i32 16
  %54 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %54, 4
  %sub72 = sub i32 %div, 2
  %cmp73 = icmp ugt i32 %52, %sub72
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else71
  %call76 = call i32 @sqlite3CorruptError(i32 noundef 69368)
  store i32 %call76, ptr %rc, align 4
  br label %end_allocate_page

if.else77:                                        ; preds = %if.else71
  %55 = load i8, ptr %searchList, align 1
  %conv78 = zext i8 %55 to i32
  %tobool79 = icmp ne i32 %conv78, 0
  br i1 %tobool79, label %land.lhs.true80, label %if.else164

land.lhs.true80:                                  ; preds = %if.else77
  %56 = load i32, ptr %nearby.addr, align 4
  %57 = load i32, ptr %iTrunk, align 4
  %cmp81 = icmp eq i32 %56, %57
  br i1 %cmp81, label %if.then90, label %lor.lhs.false83

lor.lhs.false83:                                  ; preds = %land.lhs.true80
  %58 = load i32, ptr %iTrunk, align 4
  %59 = load i32, ptr %nearby.addr, align 4
  %cmp84 = icmp ult i32 %58, %59
  br i1 %cmp84, label %land.lhs.true86, label %if.else164

land.lhs.true86:                                  ; preds = %lor.lhs.false83
  %60 = load i8, ptr %eMode.addr, align 1
  %conv87 = zext i8 %60 to i32
  %cmp88 = icmp eq i32 %conv87, 2
  br i1 %cmp88, label %if.then90, label %if.else164

if.then90:                                        ; preds = %land.lhs.true86, %land.lhs.true80
  %61 = load i32, ptr %iTrunk, align 4
  %62 = load ptr, ptr %pPgno.addr, align 8
  store i32 %61, ptr %62, align 4
  %63 = load ptr, ptr %pTrunk, align 8
  %64 = load ptr, ptr %ppPage.addr, align 8
  store ptr %63, ptr %64, align 8
  store i8 0, ptr %searchList, align 1
  %65 = load ptr, ptr %pTrunk, align 8
  %pDbPage91 = getelementptr inbounds nuw %struct.MemPage, ptr %65, i32 0, i32 23
  %66 = load ptr, ptr %pDbPage91, align 8
  %call92 = call i32 @sqlite3PagerWrite(ptr noundef %66)
  store i32 %call92, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  %tobool93 = icmp ne i32 %67, 0
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then90
  br label %end_allocate_page

if.end95:                                         ; preds = %if.then90
  %68 = load i32, ptr %k, align 4
  %cmp96 = icmp eq i32 %68, 0
  br i1 %cmp96, label %if.then98, label %if.else117

if.then98:                                        ; preds = %if.end95
  %69 = load ptr, ptr %pPrevTrunk, align 8
  %tobool99 = icmp ne ptr %69, null
  br i1 %tobool99, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.then98
  %70 = load ptr, ptr %pPage1, align 8
  %aData101 = getelementptr inbounds nuw %struct.MemPage, ptr %70, i32 0, i32 19
  %71 = load ptr, ptr %aData101, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %71, i64 32
  %72 = load ptr, ptr %pTrunk, align 8
  %aData103 = getelementptr inbounds nuw %struct.MemPage, ptr %72, i32 0, i32 19
  %73 = load ptr, ptr %aData103, align 8
  %arrayidx104 = getelementptr inbounds i8, ptr %73, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx102, ptr align 1 %arrayidx104, i64 4, i1 false)
  br label %if.end116

if.else105:                                       ; preds = %if.then98
  %74 = load ptr, ptr %pPrevTrunk, align 8
  %pDbPage106 = getelementptr inbounds nuw %struct.MemPage, ptr %74, i32 0, i32 23
  %75 = load ptr, ptr %pDbPage106, align 8
  %call107 = call i32 @sqlite3PagerWrite(ptr noundef %75)
  store i32 %call107, ptr %rc, align 4
  %76 = load i32, ptr %rc, align 4
  %cmp108 = icmp ne i32 %76, 0
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.else105
  br label %end_allocate_page

if.end111:                                        ; preds = %if.else105
  %77 = load ptr, ptr %pPrevTrunk, align 8
  %aData112 = getelementptr inbounds nuw %struct.MemPage, ptr %77, i32 0, i32 19
  %78 = load ptr, ptr %aData112, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %78, i64 0
  %79 = load ptr, ptr %pTrunk, align 8
  %aData114 = getelementptr inbounds nuw %struct.MemPage, ptr %79, i32 0, i32 19
  %80 = load ptr, ptr %aData114, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %80, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx113, ptr align 1 %arrayidx115, i64 4, i1 false)
  br label %if.end116

if.end116:                                        ; preds = %if.end111, %if.then100
  br label %if.end163

if.else117:                                       ; preds = %if.end95
  %81 = load ptr, ptr %pTrunk, align 8
  %aData118 = getelementptr inbounds nuw %struct.MemPage, ptr %81, i32 0, i32 19
  %82 = load ptr, ptr %aData118, align 8
  %arrayidx119 = getelementptr inbounds i8, ptr %82, i64 8
  %call120 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx119)
  store i32 %call120, ptr %iNewTrunk, align 4
  %83 = load i32, ptr %iNewTrunk, align 4
  %84 = load i32, ptr %mxPage, align 4
  %cmp121 = icmp ugt i32 %83, %84
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %if.else117
  %call124 = call i32 @sqlite3CorruptError(i32 noundef 69402)
  store i32 %call124, ptr %rc, align 4
  br label %end_allocate_page

if.end125:                                        ; preds = %if.else117
  %85 = load ptr, ptr %pBt.addr, align 8
  %86 = load i32, ptr %iNewTrunk, align 4
  %call126 = call i32 @btreeGetUnusedPage(ptr noundef %85, i32 noundef %86, ptr noundef %pNewTrunk, i32 noundef 0)
  store i32 %call126, ptr %rc, align 4
  %87 = load i32, ptr %rc, align 4
  %cmp127 = icmp ne i32 %87, 0
  br i1 %cmp127, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end125
  br label %end_allocate_page

if.end130:                                        ; preds = %if.end125
  %88 = load ptr, ptr %pNewTrunk, align 8
  %pDbPage131 = getelementptr inbounds nuw %struct.MemPage, ptr %88, i32 0, i32 23
  %89 = load ptr, ptr %pDbPage131, align 8
  %call132 = call i32 @sqlite3PagerWrite(ptr noundef %89)
  store i32 %call132, ptr %rc, align 4
  %90 = load i32, ptr %rc, align 4
  %cmp133 = icmp ne i32 %90, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end130
  %91 = load ptr, ptr %pNewTrunk, align 8
  call void @releasePage(ptr noundef %91)
  br label %end_allocate_page

if.end136:                                        ; preds = %if.end130
  %92 = load ptr, ptr %pNewTrunk, align 8
  %aData137 = getelementptr inbounds nuw %struct.MemPage, ptr %92, i32 0, i32 19
  %93 = load ptr, ptr %aData137, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %93, i64 0
  %94 = load ptr, ptr %pTrunk, align 8
  %aData139 = getelementptr inbounds nuw %struct.MemPage, ptr %94, i32 0, i32 19
  %95 = load ptr, ptr %aData139, align 8
  %arrayidx140 = getelementptr inbounds i8, ptr %95, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx138, ptr align 1 %arrayidx140, i64 4, i1 false)
  %96 = load ptr, ptr %pNewTrunk, align 8
  %aData141 = getelementptr inbounds nuw %struct.MemPage, ptr %96, i32 0, i32 19
  %97 = load ptr, ptr %aData141, align 8
  %arrayidx142 = getelementptr inbounds i8, ptr %97, i64 4
  %98 = load i32, ptr %k, align 4
  %sub143 = sub i32 %98, 1
  call void @sqlite3Put4byte(ptr noundef %arrayidx142, i32 noundef %sub143)
  %99 = load ptr, ptr %pNewTrunk, align 8
  %aData144 = getelementptr inbounds nuw %struct.MemPage, ptr %99, i32 0, i32 19
  %100 = load ptr, ptr %aData144, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %100, i64 8
  %101 = load ptr, ptr %pTrunk, align 8
  %aData146 = getelementptr inbounds nuw %struct.MemPage, ptr %101, i32 0, i32 19
  %102 = load ptr, ptr %aData146, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %102, i64 12
  %103 = load i32, ptr %k, align 4
  %sub148 = sub i32 %103, 1
  %mul = mul i32 %sub148, 4
  %conv149 = zext i32 %mul to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx145, ptr align 1 %arrayidx147, i64 %conv149, i1 false)
  %104 = load ptr, ptr %pNewTrunk, align 8
  call void @releasePage(ptr noundef %104)
  %105 = load ptr, ptr %pPrevTrunk, align 8
  %tobool150 = icmp ne ptr %105, null
  br i1 %tobool150, label %if.else154, label %if.then151

if.then151:                                       ; preds = %if.end136
  %106 = load ptr, ptr %pPage1, align 8
  %aData152 = getelementptr inbounds nuw %struct.MemPage, ptr %106, i32 0, i32 19
  %107 = load ptr, ptr %aData152, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %107, i64 32
  %108 = load i32, ptr %iNewTrunk, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx153, i32 noundef %108)
  br label %if.end162

if.else154:                                       ; preds = %if.end136
  %109 = load ptr, ptr %pPrevTrunk, align 8
  %pDbPage155 = getelementptr inbounds nuw %struct.MemPage, ptr %109, i32 0, i32 23
  %110 = load ptr, ptr %pDbPage155, align 8
  %call156 = call i32 @sqlite3PagerWrite(ptr noundef %110)
  store i32 %call156, ptr %rc, align 4
  %111 = load i32, ptr %rc, align 4
  %tobool157 = icmp ne i32 %111, 0
  br i1 %tobool157, label %if.then158, label %if.end159

if.then158:                                       ; preds = %if.else154
  br label %end_allocate_page

if.end159:                                        ; preds = %if.else154
  %112 = load ptr, ptr %pPrevTrunk, align 8
  %aData160 = getelementptr inbounds nuw %struct.MemPage, ptr %112, i32 0, i32 19
  %113 = load ptr, ptr %aData160, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %113, i64 0
  %114 = load i32, ptr %iNewTrunk, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx161, i32 noundef %114)
  br label %if.end162

if.end162:                                        ; preds = %if.end159, %if.then151
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end116
  store ptr null, ptr %pTrunk, align 8
  br label %if.end270

if.else164:                                       ; preds = %land.lhs.true86, %lor.lhs.false83, %if.else77
  %115 = load i32, ptr %k, align 4
  %cmp165 = icmp ugt i32 %115, 0
  br i1 %cmp165, label %if.then167, label %if.end269

if.then167:                                       ; preds = %if.else164
  %116 = load ptr, ptr %pTrunk, align 8
  %aData169 = getelementptr inbounds nuw %struct.MemPage, ptr %116, i32 0, i32 19
  %117 = load ptr, ptr %aData169, align 8
  store ptr %117, ptr %aData168, align 8
  %118 = load i32, ptr %nearby.addr, align 4
  %cmp170 = icmp ugt i32 %118, 0
  br i1 %cmp170, label %if.then172, label %if.else211

if.then172:                                       ; preds = %if.then167
  store i32 0, ptr %closest, align 4
  %119 = load i8, ptr %eMode.addr, align 1
  %conv173 = zext i8 %119 to i32
  %cmp174 = icmp eq i32 %conv173, 2
  br i1 %cmp174, label %if.then176, label %if.else187

if.then176:                                       ; preds = %if.then172
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then176
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %k, align 4
  %cmp177 = icmp ult i32 %120, %121
  br i1 %cmp177, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %122 = load ptr, ptr %aData168, align 8
  %123 = load i32, ptr %i, align 4
  %mul179 = mul i32 %123, 4
  %add = add i32 8, %mul179
  %idxprom = zext i32 %add to i64
  %arrayidx180 = getelementptr inbounds nuw i8, ptr %122, i64 %idxprom
  %call181 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx180)
  store i32 %call181, ptr %iPage, align 4
  %124 = load i32, ptr %iPage, align 4
  %125 = load i32, ptr %nearby.addr, align 4
  %cmp182 = icmp ule i32 %124, %125
  br i1 %cmp182, label %if.then184, label %if.end185

if.then184:                                       ; preds = %for.body
  %126 = load i32, ptr %i, align 4
  store i32 %126, ptr %closest, align 4
  br label %for.end

if.end185:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end185
  %127 = load i32, ptr %i, align 4
  %inc186 = add i32 %127, 1
  store i32 %inc186, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then184, %for.cond
  br label %if.end210

if.else187:                                       ; preds = %if.then172
  %128 = load ptr, ptr %aData168, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %128, i64 8
  %call189 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx188)
  %129 = load i32, ptr %nearby.addr, align 4
  %sub190 = sub i32 %call189, %129
  %call191 = call i32 @sqlite3AbsInt32(i32 noundef %sub190)
  store i32 %call191, ptr %dist, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond192

for.cond192:                                      ; preds = %for.inc207, %if.else187
  %130 = load i32, ptr %i, align 4
  %131 = load i32, ptr %k, align 4
  %cmp193 = icmp ult i32 %130, %131
  br i1 %cmp193, label %for.body195, label %for.end209

for.body195:                                      ; preds = %for.cond192
  %132 = load ptr, ptr %aData168, align 8
  %133 = load i32, ptr %i, align 4
  %mul196 = mul i32 %133, 4
  %add197 = add i32 8, %mul196
  %idxprom198 = zext i32 %add197 to i64
  %arrayidx199 = getelementptr inbounds nuw i8, ptr %132, i64 %idxprom198
  %call200 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx199)
  %134 = load i32, ptr %nearby.addr, align 4
  %sub201 = sub i32 %call200, %134
  %call202 = call i32 @sqlite3AbsInt32(i32 noundef %sub201)
  store i32 %call202, ptr %d2, align 4
  %135 = load i32, ptr %d2, align 4
  %136 = load i32, ptr %dist, align 4
  %cmp203 = icmp slt i32 %135, %136
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %for.body195
  %137 = load i32, ptr %i, align 4
  store i32 %137, ptr %closest, align 4
  %138 = load i32, ptr %d2, align 4
  store i32 %138, ptr %dist, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %for.body195
  br label %for.inc207

for.inc207:                                       ; preds = %if.end206
  %139 = load i32, ptr %i, align 4
  %inc208 = add i32 %139, 1
  store i32 %inc208, ptr %i, align 4
  br label %for.cond192, !llvm.loop !8

for.end209:                                       ; preds = %for.cond192
  br label %if.end210

if.end210:                                        ; preds = %for.end209, %for.end
  br label %if.end212

if.else211:                                       ; preds = %if.then167
  store i32 0, ptr %closest, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.else211, %if.end210
  %140 = load ptr, ptr %aData168, align 8
  %141 = load i32, ptr %closest, align 4
  %mul213 = mul i32 %141, 4
  %add214 = add i32 8, %mul213
  %idxprom215 = zext i32 %add214 to i64
  %arrayidx216 = getelementptr inbounds nuw i8, ptr %140, i64 %idxprom215
  %call217 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx216)
  store i32 %call217, ptr %iPage, align 4
  %142 = load i32, ptr %iPage, align 4
  %143 = load i32, ptr %mxPage, align 4
  %cmp218 = icmp ugt i32 %142, %143
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end212
  %call221 = call i32 @sqlite3CorruptError(i32 noundef 69467)
  store i32 %call221, ptr %rc, align 4
  br label %end_allocate_page

if.end222:                                        ; preds = %if.end212
  %144 = load i8, ptr %searchList, align 1
  %tobool223 = icmp ne i8 %144, 0
  br i1 %tobool223, label %lor.lhs.false224, label %if.then234

lor.lhs.false224:                                 ; preds = %if.end222
  %145 = load i32, ptr %iPage, align 4
  %146 = load i32, ptr %nearby.addr, align 4
  %cmp225 = icmp eq i32 %145, %146
  br i1 %cmp225, label %if.then234, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %lor.lhs.false224
  %147 = load i32, ptr %iPage, align 4
  %148 = load i32, ptr %nearby.addr, align 4
  %cmp228 = icmp ult i32 %147, %148
  br i1 %cmp228, label %land.lhs.true230, label %if.end268

land.lhs.true230:                                 ; preds = %lor.lhs.false227
  %149 = load i8, ptr %eMode.addr, align 1
  %conv231 = zext i8 %149 to i32
  %cmp232 = icmp eq i32 %conv231, 2
  br i1 %cmp232, label %if.then234, label %if.end268

if.then234:                                       ; preds = %land.lhs.true230, %lor.lhs.false224, %if.end222
  %150 = load i32, ptr %iPage, align 4
  %151 = load ptr, ptr %pPgno.addr, align 8
  store i32 %150, ptr %151, align 4
  %152 = load ptr, ptr %pTrunk, align 8
  %pDbPage235 = getelementptr inbounds nuw %struct.MemPage, ptr %152, i32 0, i32 23
  %153 = load ptr, ptr %pDbPage235, align 8
  %call236 = call i32 @sqlite3PagerWrite(ptr noundef %153)
  store i32 %call236, ptr %rc, align 4
  %154 = load i32, ptr %rc, align 4
  %tobool237 = icmp ne i32 %154, 0
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.then234
  br label %end_allocate_page

if.end239:                                        ; preds = %if.then234
  %155 = load i32, ptr %closest, align 4
  %156 = load i32, ptr %k, align 4
  %sub240 = sub i32 %156, 1
  %cmp241 = icmp ult i32 %155, %sub240
  br i1 %cmp241, label %if.then243, label %if.end252

if.then243:                                       ; preds = %if.end239
  %157 = load ptr, ptr %aData168, align 8
  %158 = load i32, ptr %closest, align 4
  %mul244 = mul i32 %158, 4
  %add245 = add i32 8, %mul244
  %idxprom246 = zext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds nuw i8, ptr %157, i64 %idxprom246
  %159 = load ptr, ptr %aData168, align 8
  %160 = load i32, ptr %k, align 4
  %mul248 = mul i32 %160, 4
  %add249 = add i32 4, %mul248
  %idxprom250 = zext i32 %add249 to i64
  %arrayidx251 = getelementptr inbounds nuw i8, ptr %159, i64 %idxprom250
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx247, ptr align 1 %arrayidx251, i64 4, i1 false)
  br label %if.end252

if.end252:                                        ; preds = %if.then243, %if.end239
  %161 = load ptr, ptr %aData168, align 8
  %arrayidx253 = getelementptr inbounds i8, ptr %161, i64 4
  %162 = load i32, ptr %k, align 4
  %sub254 = sub i32 %162, 1
  call void @sqlite3Put4byte(ptr noundef %arrayidx253, i32 noundef %sub254)
  %163 = load ptr, ptr %pBt.addr, align 8
  %164 = load ptr, ptr %pPgno.addr, align 8
  %165 = load i32, ptr %164, align 4
  %call255 = call i32 @btreeGetHasContent(ptr noundef %163, i32 noundef %165)
  %tobool256 = icmp ne i32 %call255, 0
  %lnot = xor i1 %tobool256, true
  %166 = zext i1 %lnot to i64
  %cond = select i1 %lnot, i32 1, i32 0
  store i32 %cond, ptr %noContent, align 4
  %167 = load ptr, ptr %pBt.addr, align 8
  %168 = load ptr, ptr %pPgno.addr, align 8
  %169 = load i32, ptr %168, align 4
  %170 = load ptr, ptr %ppPage.addr, align 8
  %171 = load i32, ptr %noContent, align 4
  %call257 = call i32 @btreeGetUnusedPage(ptr noundef %167, i32 noundef %169, ptr noundef %170, i32 noundef %171)
  store i32 %call257, ptr %rc, align 4
  %172 = load i32, ptr %rc, align 4
  %cmp258 = icmp eq i32 %172, 0
  br i1 %cmp258, label %if.then260, label %if.end267

if.then260:                                       ; preds = %if.end252
  %173 = load ptr, ptr %ppPage.addr, align 8
  %174 = load ptr, ptr %173, align 8
  %pDbPage261 = getelementptr inbounds nuw %struct.MemPage, ptr %174, i32 0, i32 23
  %175 = load ptr, ptr %pDbPage261, align 8
  %call262 = call i32 @sqlite3PagerWrite(ptr noundef %175)
  store i32 %call262, ptr %rc, align 4
  %176 = load i32, ptr %rc, align 4
  %cmp263 = icmp ne i32 %176, 0
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.then260
  %177 = load ptr, ptr %ppPage.addr, align 8
  %178 = load ptr, ptr %177, align 8
  call void @releasePage(ptr noundef %178)
  %179 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %179, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.then260
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end252
  store i8 0, ptr %searchList, align 1
  br label %if.end268

if.end268:                                        ; preds = %if.end267, %land.lhs.true230, %lor.lhs.false227
  br label %if.end269

if.end269:                                        ; preds = %if.end268, %if.else164
  br label %if.end270

if.end270:                                        ; preds = %if.end269, %if.end163
  br label %if.end271

if.end271:                                        ; preds = %if.end270
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.end66
  %180 = load ptr, ptr %pPrevTrunk, align 8
  call void @releasePage(ptr noundef %180)
  store ptr null, ptr %pPrevTrunk, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end272
  %181 = load i8, ptr %searchList, align 1
  %tobool273 = icmp ne i8 %181, 0
  br i1 %tobool273, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  br label %if.end342

if.else274:                                       ; preds = %if.end
  %182 = load ptr, ptr %pBt.addr, align 8
  %bDoTruncate = getelementptr inbounds nuw %struct.BtShared, ptr %182, i32 0, i32 7
  %183 = load i8, ptr %bDoTruncate, align 1
  %conv275 = zext i8 %183 to i32
  %cmp276 = icmp eq i32 0, %conv275
  %184 = zext i1 %cmp276 to i64
  %cond278 = select i1 %cmp276, i32 1, i32 0
  store i32 %cond278, ptr %bNoContent, align 4
  %185 = load ptr, ptr %pBt.addr, align 8
  %pPage1279 = getelementptr inbounds nuw %struct.BtShared, ptr %185, i32 0, i32 3
  %186 = load ptr, ptr %pPage1279, align 8
  %pDbPage280 = getelementptr inbounds nuw %struct.MemPage, ptr %186, i32 0, i32 23
  %187 = load ptr, ptr %pDbPage280, align 8
  %call281 = call i32 @sqlite3PagerWrite(ptr noundef %187)
  store i32 %call281, ptr %rc, align 4
  %188 = load i32, ptr %rc, align 4
  %tobool282 = icmp ne i32 %188, 0
  br i1 %tobool282, label %if.then283, label %if.end284

if.then283:                                       ; preds = %if.else274
  %189 = load i32, ptr %rc, align 4
  store i32 %189, ptr %retval, align 4
  br label %return

if.end284:                                        ; preds = %if.else274
  %190 = load ptr, ptr %pBt.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %190, i32 0, i32 18
  %191 = load i32, ptr %nPage, align 4
  %inc285 = add i32 %191, 1
  store i32 %inc285, ptr %nPage, align 4
  %192 = load ptr, ptr %pBt.addr, align 8
  %nPage286 = getelementptr inbounds nuw %struct.BtShared, ptr %192, i32 0, i32 18
  %193 = load i32, ptr %nPage286, align 4
  %194 = load i32, ptr @sqlite3PendingByte, align 4
  %195 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %195, i32 0, i32 15
  %196 = load i32, ptr %pageSize, align 8
  %div287 = udiv i32 %194, %196
  %add288 = add i32 %div287, 1
  %cmp289 = icmp eq i32 %193, %add288
  br i1 %cmp289, label %if.then291, label %if.end294

if.then291:                                       ; preds = %if.end284
  %197 = load ptr, ptr %pBt.addr, align 8
  %nPage292 = getelementptr inbounds nuw %struct.BtShared, ptr %197, i32 0, i32 18
  %198 = load i32, ptr %nPage292, align 4
  %inc293 = add i32 %198, 1
  store i32 %inc293, ptr %nPage292, align 4
  br label %if.end294

if.end294:                                        ; preds = %if.then291, %if.end284
  %199 = load ptr, ptr %pBt.addr, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %199, i32 0, i32 5
  %200 = load i8, ptr %autoVacuum, align 1
  %conv295 = zext i8 %200 to i32
  %tobool296 = icmp ne i32 %conv295, 0
  br i1 %tobool296, label %land.lhs.true297, label %if.end327

land.lhs.true297:                                 ; preds = %if.end294
  %201 = load ptr, ptr %pBt.addr, align 8
  %202 = load ptr, ptr %pBt.addr, align 8
  %nPage298 = getelementptr inbounds nuw %struct.BtShared, ptr %202, i32 0, i32 18
  %203 = load i32, ptr %nPage298, align 4
  %call299 = call i32 @ptrmapPageno(ptr noundef %201, i32 noundef %203)
  %204 = load ptr, ptr %pBt.addr, align 8
  %nPage300 = getelementptr inbounds nuw %struct.BtShared, ptr %204, i32 0, i32 18
  %205 = load i32, ptr %nPage300, align 4
  %cmp301 = icmp eq i32 %call299, %205
  br i1 %cmp301, label %if.then303, label %if.end327

if.then303:                                       ; preds = %land.lhs.true297
  store ptr null, ptr %pPg, align 8
  %206 = load ptr, ptr %pBt.addr, align 8
  %207 = load ptr, ptr %pBt.addr, align 8
  %nPage304 = getelementptr inbounds nuw %struct.BtShared, ptr %207, i32 0, i32 18
  %208 = load i32, ptr %nPage304, align 4
  %209 = load i32, ptr %bNoContent, align 4
  %call305 = call i32 @btreeGetUnusedPage(ptr noundef %206, i32 noundef %208, ptr noundef %pPg, i32 noundef %209)
  store i32 %call305, ptr %rc, align 4
  %210 = load i32, ptr %rc, align 4
  %cmp306 = icmp eq i32 %210, 0
  br i1 %cmp306, label %if.then308, label %if.end311

if.then308:                                       ; preds = %if.then303
  %211 = load ptr, ptr %pPg, align 8
  %pDbPage309 = getelementptr inbounds nuw %struct.MemPage, ptr %211, i32 0, i32 23
  %212 = load ptr, ptr %pDbPage309, align 8
  %call310 = call i32 @sqlite3PagerWrite(ptr noundef %212)
  store i32 %call310, ptr %rc, align 4
  %213 = load ptr, ptr %pPg, align 8
  call void @releasePage(ptr noundef %213)
  br label %if.end311

if.end311:                                        ; preds = %if.then308, %if.then303
  %214 = load i32, ptr %rc, align 4
  %tobool312 = icmp ne i32 %214, 0
  br i1 %tobool312, label %if.then313, label %if.end314

if.then313:                                       ; preds = %if.end311
  %215 = load i32, ptr %rc, align 4
  store i32 %215, ptr %retval, align 4
  br label %return

if.end314:                                        ; preds = %if.end311
  %216 = load ptr, ptr %pBt.addr, align 8
  %nPage315 = getelementptr inbounds nuw %struct.BtShared, ptr %216, i32 0, i32 18
  %217 = load i32, ptr %nPage315, align 4
  %inc316 = add i32 %217, 1
  store i32 %inc316, ptr %nPage315, align 4
  %218 = load ptr, ptr %pBt.addr, align 8
  %nPage317 = getelementptr inbounds nuw %struct.BtShared, ptr %218, i32 0, i32 18
  %219 = load i32, ptr %nPage317, align 4
  %220 = load i32, ptr @sqlite3PendingByte, align 4
  %221 = load ptr, ptr %pBt.addr, align 8
  %pageSize318 = getelementptr inbounds nuw %struct.BtShared, ptr %221, i32 0, i32 15
  %222 = load i32, ptr %pageSize318, align 8
  %div319 = udiv i32 %220, %222
  %add320 = add i32 %div319, 1
  %cmp321 = icmp eq i32 %219, %add320
  br i1 %cmp321, label %if.then323, label %if.end326

if.then323:                                       ; preds = %if.end314
  %223 = load ptr, ptr %pBt.addr, align 8
  %nPage324 = getelementptr inbounds nuw %struct.BtShared, ptr %223, i32 0, i32 18
  %224 = load i32, ptr %nPage324, align 4
  %inc325 = add i32 %224, 1
  store i32 %inc325, ptr %nPage324, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then323, %if.end314
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %land.lhs.true297, %if.end294
  %225 = load ptr, ptr %pBt.addr, align 8
  %pPage1328 = getelementptr inbounds nuw %struct.BtShared, ptr %225, i32 0, i32 3
  %226 = load ptr, ptr %pPage1328, align 8
  %aData329 = getelementptr inbounds nuw %struct.MemPage, ptr %226, i32 0, i32 19
  %227 = load ptr, ptr %aData329, align 8
  %add.ptr = getelementptr inbounds i8, ptr %227, i64 28
  %228 = load ptr, ptr %pBt.addr, align 8
  %nPage330 = getelementptr inbounds nuw %struct.BtShared, ptr %228, i32 0, i32 18
  %229 = load i32, ptr %nPage330, align 4
  call void @sqlite3Put4byte(ptr noundef %add.ptr, i32 noundef %229)
  %230 = load ptr, ptr %pBt.addr, align 8
  %nPage331 = getelementptr inbounds nuw %struct.BtShared, ptr %230, i32 0, i32 18
  %231 = load i32, ptr %nPage331, align 4
  %232 = load ptr, ptr %pPgno.addr, align 8
  store i32 %231, ptr %232, align 4
  %233 = load ptr, ptr %pBt.addr, align 8
  %234 = load ptr, ptr %pPgno.addr, align 8
  %235 = load i32, ptr %234, align 4
  %236 = load ptr, ptr %ppPage.addr, align 8
  %237 = load i32, ptr %bNoContent, align 4
  %call332 = call i32 @btreeGetUnusedPage(ptr noundef %233, i32 noundef %235, ptr noundef %236, i32 noundef %237)
  store i32 %call332, ptr %rc, align 4
  %238 = load i32, ptr %rc, align 4
  %tobool333 = icmp ne i32 %238, 0
  br i1 %tobool333, label %if.then334, label %if.end335

if.then334:                                       ; preds = %if.end327
  %239 = load i32, ptr %rc, align 4
  store i32 %239, ptr %retval, align 4
  br label %return

if.end335:                                        ; preds = %if.end327
  %240 = load ptr, ptr %ppPage.addr, align 8
  %241 = load ptr, ptr %240, align 8
  %pDbPage336 = getelementptr inbounds nuw %struct.MemPage, ptr %241, i32 0, i32 23
  %242 = load ptr, ptr %pDbPage336, align 8
  %call337 = call i32 @sqlite3PagerWrite(ptr noundef %242)
  store i32 %call337, ptr %rc, align 4
  %243 = load i32, ptr %rc, align 4
  %cmp338 = icmp ne i32 %243, 0
  br i1 %cmp338, label %if.then340, label %if.end341

if.then340:                                       ; preds = %if.end335
  %244 = load ptr, ptr %ppPage.addr, align 8
  %245 = load ptr, ptr %244, align 8
  call void @releasePage(ptr noundef %245)
  %246 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %246, align 8
  br label %if.end341

if.end341:                                        ; preds = %if.then340, %if.end335
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %do.end
  br label %end_allocate_page

end_allocate_page:                                ; preds = %if.end342, %if.then238, %if.then220, %if.then158, %if.then135, %if.then129, %if.then123, %if.then110, %if.then94, %if.then75, %if.then65, %if.then53
  %247 = load ptr, ptr %pTrunk, align 8
  call void @releasePage(ptr noundef %247)
  %248 = load ptr, ptr %pPrevTrunk, align 8
  call void @releasePage(ptr noundef %248)
  %249 = load i32, ptr %rc, align 4
  store i32 %249, ptr %retval, align 4
  br label %return

return:                                           ; preds = %end_allocate_page, %if.then334, %if.then313, %if.then283, %if.then29, %if.then13, %if.then
  %250 = load i32, ptr %retval, align 4
  ret i32 %250
}

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetUnusedPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AbsInt32(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetHasContent(ptr noundef, i32 noundef) #1

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
