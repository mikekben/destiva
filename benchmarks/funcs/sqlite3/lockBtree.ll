; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@zMagicHeader = external hidden constant [16 x i8], align 16
@.str.104 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerPagecount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @lockBtree(ptr noundef %pBt) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pPage1 = alloca ptr, align 8
  %nPage = alloca i32, align 4
  %nPageFile = alloca i32, align 4
  %nPageHeader = alloca i32, align 4
  %pageSize = alloca i32, align 4
  %usableSize = alloca i32, align 4
  %page1 = alloca ptr, align 8
  %isOpen = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 0, ptr %nPageFile, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pPager, align 8
  %call = call i32 @sqlite3PagerSharedLock(ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pBt.addr, align 8
  %call1 = call i32 @btreeGetPage(ptr noundef %4, i32 noundef 1, ptr noundef %pPage1, i32 noundef 0)
  store i32 %call1, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %aData, align 8
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 28
  %call5 = call i32 @sqlite3Get4byte(ptr noundef %add.ptr)
  store i32 %call5, ptr %nPageHeader, align 4
  store i32 %call5, ptr %nPage, align 4
  %9 = load ptr, ptr %pBt.addr, align 8
  %pPager6 = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pPager6, align 8
  call void @sqlite3PagerPagecount(ptr noundef %10, ptr noundef %nPageFile)
  %11 = load i32, ptr %nPage, align 4
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load ptr, ptr %pPage1, align 8
  %aData8 = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 19
  %13 = load ptr, ptr %aData8, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %13, i64 24
  %14 = load ptr, ptr %pPage1, align 8
  %aData10 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %aData10, align 8
  %add.ptr11 = getelementptr inbounds i8, ptr %15, i64 92
  %call12 = call i32 @memcmp(ptr noundef %add.ptr9, ptr noundef %add.ptr11, i64 noundef 4) #2
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %if.end4
  %16 = load i32, ptr %nPageFile, align 4
  store i32 %16, ptr %nPage, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false
  %17 = load ptr, ptr %pBt.addr, align 8
  %db = getelementptr inbounds nuw %struct.BtShared, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 7
  %19 = load i64, ptr %flags, align 8
  %and = and i64 %19, 33554432
  %cmp16 = icmp ne i64 %and, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 0, ptr %nPage, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  %20 = load i32, ptr %nPage, align 4
  %cmp19 = icmp ugt i32 %20, 0
  br i1 %cmp19, label %if.then20, label %if.end125

if.then20:                                        ; preds = %if.end18
  %21 = load ptr, ptr %pPage1, align 8
  %aData21 = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 19
  %22 = load ptr, ptr %aData21, align 8
  store ptr %22, ptr %page1, align 8
  store i32 26, ptr %rc, align 4
  %23 = load ptr, ptr %page1, align 8
  %call22 = call i32 @memcmp(ptr noundef %23, ptr noundef @zMagicHeader, i64 noundef 16) #2
  %cmp23 = icmp ne i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  br label %page1_init_failed

if.end25:                                         ; preds = %if.then20
  %24 = load ptr, ptr %page1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 18
  %25 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %25 to i32
  %cmp26 = icmp sgt i32 %conv, 2
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end25
  %26 = load ptr, ptr %pBt.addr, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %26, i32 0, i32 10
  %27 = load i16, ptr %btsFlags, align 2
  %conv29 = zext i16 %27 to i32
  %or = or i32 %conv29, 1
  %conv30 = trunc i32 %or to i16
  store i16 %conv30, ptr %btsFlags, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25
  %28 = load ptr, ptr %page1, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %28, i64 19
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %cmp34 = icmp sgt i32 %conv33, 2
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  br label %page1_init_failed

if.end37:                                         ; preds = %if.end31
  %30 = load ptr, ptr %page1, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %30, i64 19
  %31 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %31 to i32
  %cmp40 = icmp eq i32 %conv39, 2
  br i1 %cmp40, label %land.lhs.true, label %if.else58

land.lhs.true:                                    ; preds = %if.end37
  %32 = load ptr, ptr %pBt.addr, align 8
  %btsFlags42 = getelementptr inbounds nuw %struct.BtShared, ptr %32, i32 0, i32 10
  %33 = load i16, ptr %btsFlags42, align 2
  %conv43 = zext i16 %33 to i32
  %and44 = and i32 %conv43, 32
  %cmp45 = icmp eq i32 %and44, 0
  br i1 %cmp45, label %if.then47, label %if.else58

if.then47:                                        ; preds = %land.lhs.true
  store i32 0, ptr %isOpen, align 4
  %34 = load ptr, ptr %pBt.addr, align 8
  %pPager48 = getelementptr inbounds nuw %struct.BtShared, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pPager48, align 8
  %call49 = call i32 @sqlite3PagerOpenWal(ptr noundef %35, ptr noundef %isOpen)
  store i32 %call49, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 %36, 0
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.then47
  br label %page1_init_failed

if.else:                                          ; preds = %if.then47
  %37 = load i32, ptr %isOpen, align 4
  %cmp53 = icmp eq i32 %37, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.else
  %38 = load ptr, ptr %pPage1, align 8
  call void @releasePageOne(ptr noundef %38)
  store i32 0, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.else
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  store i32 26, ptr %rc, align 4
  br label %if.end59

if.else58:                                        ; preds = %land.lhs.true, %if.end37
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.end57
  %39 = load ptr, ptr %page1, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %39, i64 21
  %call61 = call i32 @memcmp(ptr noundef %arrayidx60, ptr noundef @.str.104, i64 noundef 3) #2
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end59
  br label %page1_init_failed

if.end65:                                         ; preds = %if.end59
  %40 = load ptr, ptr %page1, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %40, i64 16
  %41 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %41 to i32
  %shl = shl i32 %conv67, 8
  %42 = load ptr, ptr %page1, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %42, i64 17
  %43 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %43 to i32
  %shl70 = shl i32 %conv69, 16
  %or71 = or i32 %shl, %shl70
  store i32 %or71, ptr %pageSize, align 4
  %44 = load i32, ptr %pageSize, align 4
  %sub = sub i32 %44, 1
  %45 = load i32, ptr %pageSize, align 4
  %and72 = and i32 %sub, %45
  %cmp73 = icmp ne i32 %and72, 0
  br i1 %cmp73, label %if.then81, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end65
  %46 = load i32, ptr %pageSize, align 4
  %cmp76 = icmp ugt i32 %46, 65536
  br i1 %cmp76, label %if.then81, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %47 = load i32, ptr %pageSize, align 4
  %cmp79 = icmp ule i32 %47, 256
  br i1 %cmp79, label %if.then81, label %if.end82

if.then81:                                        ; preds = %lor.lhs.false78, %lor.lhs.false75, %if.end65
  br label %page1_init_failed

if.end82:                                         ; preds = %lor.lhs.false78
  %48 = load ptr, ptr %pBt.addr, align 8
  %btsFlags83 = getelementptr inbounds nuw %struct.BtShared, ptr %48, i32 0, i32 10
  %49 = load i16, ptr %btsFlags83, align 2
  %conv84 = zext i16 %49 to i32
  %or85 = or i32 %conv84, 2
  %conv86 = trunc i32 %or85 to i16
  store i16 %conv86, ptr %btsFlags83, align 2
  %50 = load i32, ptr %pageSize, align 4
  %51 = load ptr, ptr %page1, align 8
  %arrayidx87 = getelementptr inbounds i8, ptr %51, i64 20
  %52 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %52 to i32
  %sub89 = sub i32 %50, %conv88
  store i32 %sub89, ptr %usableSize, align 4
  %53 = load i32, ptr %pageSize, align 4
  %54 = load ptr, ptr %pBt.addr, align 8
  %pageSize90 = getelementptr inbounds nuw %struct.BtShared, ptr %54, i32 0, i32 15
  %55 = load i32, ptr %pageSize90, align 8
  %cmp91 = icmp ne i32 %53, %55
  br i1 %cmp91, label %if.then93, label %if.end100

if.then93:                                        ; preds = %if.end82
  %56 = load ptr, ptr %pPage1, align 8
  call void @releasePageOne(ptr noundef %56)
  %57 = load i32, ptr %usableSize, align 4
  %58 = load ptr, ptr %pBt.addr, align 8
  %usableSize94 = getelementptr inbounds nuw %struct.BtShared, ptr %58, i32 0, i32 16
  store i32 %57, ptr %usableSize94, align 4
  %59 = load i32, ptr %pageSize, align 4
  %60 = load ptr, ptr %pBt.addr, align 8
  %pageSize95 = getelementptr inbounds nuw %struct.BtShared, ptr %60, i32 0, i32 15
  store i32 %59, ptr %pageSize95, align 8
  %61 = load ptr, ptr %pBt.addr, align 8
  call void @freeTempSpace(ptr noundef %61)
  %62 = load ptr, ptr %pBt.addr, align 8
  %pPager96 = getelementptr inbounds nuw %struct.BtShared, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %pPager96, align 8
  %64 = load ptr, ptr %pBt.addr, align 8
  %pageSize97 = getelementptr inbounds nuw %struct.BtShared, ptr %64, i32 0, i32 15
  %65 = load i32, ptr %pageSize, align 4
  %66 = load i32, ptr %usableSize, align 4
  %sub98 = sub i32 %65, %66
  %call99 = call i32 @sqlite3PagerSetPagesize(ptr noundef %63, ptr noundef %pageSize97, i32 noundef %sub98)
  store i32 %call99, ptr %rc, align 4
  %67 = load i32, ptr %rc, align 4
  store i32 %67, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %if.end82
  %68 = load ptr, ptr %pBt.addr, align 8
  %db101 = getelementptr inbounds nuw %struct.BtShared, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %db101, align 8
  %call102 = call i32 @sqlite3WritableSchema(ptr noundef %69)
  %cmp103 = icmp eq i32 %call102, 0
  br i1 %cmp103, label %land.lhs.true105, label %if.end110

land.lhs.true105:                                 ; preds = %if.end100
  %70 = load i32, ptr %nPage, align 4
  %71 = load i32, ptr %nPageFile, align 4
  %cmp106 = icmp ugt i32 %70, %71
  br i1 %cmp106, label %if.then108, label %if.end110

if.then108:                                       ; preds = %land.lhs.true105
  %call109 = call i32 @sqlite3CorruptError(i32 noundef 66580)
  store i32 %call109, ptr %rc, align 4
  br label %page1_init_failed

if.end110:                                        ; preds = %land.lhs.true105, %if.end100
  %72 = load i32, ptr %usableSize, align 4
  %cmp111 = icmp ult i32 %72, 480
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end110
  br label %page1_init_failed

if.end114:                                        ; preds = %if.end110
  %73 = load i32, ptr %pageSize, align 4
  %74 = load ptr, ptr %pBt.addr, align 8
  %pageSize115 = getelementptr inbounds nuw %struct.BtShared, ptr %74, i32 0, i32 15
  store i32 %73, ptr %pageSize115, align 8
  %75 = load i32, ptr %usableSize, align 4
  %76 = load ptr, ptr %pBt.addr, align 8
  %usableSize116 = getelementptr inbounds nuw %struct.BtShared, ptr %76, i32 0, i32 16
  store i32 %75, ptr %usableSize116, align 4
  %77 = load ptr, ptr %page1, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %77, i64 52
  %call118 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx117)
  %tobool = icmp ne i32 %call118, 0
  %78 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %conv119 = trunc i32 %cond to i8
  %79 = load ptr, ptr %pBt.addr, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %79, i32 0, i32 5
  store i8 %conv119, ptr %autoVacuum, align 1
  %80 = load ptr, ptr %page1, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %80, i64 64
  %call121 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx120)
  %tobool122 = icmp ne i32 %call121, 0
  %81 = zext i1 %tobool122 to i64
  %cond123 = select i1 %tobool122, i32 1, i32 0
  %conv124 = trunc i32 %cond123 to i8
  %82 = load ptr, ptr %pBt.addr, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %82, i32 0, i32 6
  store i8 %conv124, ptr %incrVacuum, align 2
  br label %if.end125

if.end125:                                        ; preds = %if.end114, %if.end18
  %83 = load ptr, ptr %pBt.addr, align 8
  %usableSize126 = getelementptr inbounds nuw %struct.BtShared, ptr %83, i32 0, i32 16
  %84 = load i32, ptr %usableSize126, align 4
  %sub127 = sub i32 %84, 12
  %mul = mul i32 %sub127, 64
  %div = udiv i32 %mul, 255
  %sub128 = sub i32 %div, 23
  %conv129 = trunc i32 %sub128 to i16
  %85 = load ptr, ptr %pBt.addr, align 8
  %maxLocal = getelementptr inbounds nuw %struct.BtShared, ptr %85, i32 0, i32 11
  store i16 %conv129, ptr %maxLocal, align 8
  %86 = load ptr, ptr %pBt.addr, align 8
  %usableSize130 = getelementptr inbounds nuw %struct.BtShared, ptr %86, i32 0, i32 16
  %87 = load i32, ptr %usableSize130, align 4
  %sub131 = sub i32 %87, 12
  %mul132 = mul i32 %sub131, 32
  %div133 = udiv i32 %mul132, 255
  %sub134 = sub i32 %div133, 23
  %conv135 = trunc i32 %sub134 to i16
  %88 = load ptr, ptr %pBt.addr, align 8
  %minLocal = getelementptr inbounds nuw %struct.BtShared, ptr %88, i32 0, i32 12
  store i16 %conv135, ptr %minLocal, align 2
  %89 = load ptr, ptr %pBt.addr, align 8
  %usableSize136 = getelementptr inbounds nuw %struct.BtShared, ptr %89, i32 0, i32 16
  %90 = load i32, ptr %usableSize136, align 4
  %sub137 = sub i32 %90, 35
  %conv138 = trunc i32 %sub137 to i16
  %91 = load ptr, ptr %pBt.addr, align 8
  %maxLeaf = getelementptr inbounds nuw %struct.BtShared, ptr %91, i32 0, i32 13
  store i16 %conv138, ptr %maxLeaf, align 4
  %92 = load ptr, ptr %pBt.addr, align 8
  %usableSize139 = getelementptr inbounds nuw %struct.BtShared, ptr %92, i32 0, i32 16
  %93 = load i32, ptr %usableSize139, align 4
  %sub140 = sub i32 %93, 12
  %mul141 = mul i32 %sub140, 32
  %div142 = udiv i32 %mul141, 255
  %sub143 = sub i32 %div142, 23
  %conv144 = trunc i32 %sub143 to i16
  %94 = load ptr, ptr %pBt.addr, align 8
  %minLeaf = getelementptr inbounds nuw %struct.BtShared, ptr %94, i32 0, i32 14
  store i16 %conv144, ptr %minLeaf, align 2
  %95 = load ptr, ptr %pBt.addr, align 8
  %maxLocal145 = getelementptr inbounds nuw %struct.BtShared, ptr %95, i32 0, i32 11
  %96 = load i16, ptr %maxLocal145, align 8
  %conv146 = zext i16 %96 to i32
  %cmp147 = icmp sgt i32 %conv146, 127
  br i1 %cmp147, label %if.then149, label %if.else150

if.then149:                                       ; preds = %if.end125
  %97 = load ptr, ptr %pBt.addr, align 8
  %max1bytePayload = getelementptr inbounds nuw %struct.BtShared, ptr %97, i32 0, i32 9
  store i8 127, ptr %max1bytePayload, align 1
  br label %if.end154

if.else150:                                       ; preds = %if.end125
  %98 = load ptr, ptr %pBt.addr, align 8
  %maxLocal151 = getelementptr inbounds nuw %struct.BtShared, ptr %98, i32 0, i32 11
  %99 = load i16, ptr %maxLocal151, align 8
  %conv152 = trunc i16 %99 to i8
  %100 = load ptr, ptr %pBt.addr, align 8
  %max1bytePayload153 = getelementptr inbounds nuw %struct.BtShared, ptr %100, i32 0, i32 9
  store i8 %conv152, ptr %max1bytePayload153, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.else150, %if.then149
  %101 = load ptr, ptr %pPage1, align 8
  %102 = load ptr, ptr %pBt.addr, align 8
  %pPage1155 = getelementptr inbounds nuw %struct.BtShared, ptr %102, i32 0, i32 3
  store ptr %101, ptr %pPage1155, align 8
  %103 = load i32, ptr %nPage, align 4
  %104 = load ptr, ptr %pBt.addr, align 8
  %nPage156 = getelementptr inbounds nuw %struct.BtShared, ptr %104, i32 0, i32 18
  store i32 %103, ptr %nPage156, align 4
  store i32 0, ptr %retval, align 4
  br label %return

page1_init_failed:                                ; preds = %if.then113, %if.then108, %if.then81, %if.then64, %if.then52, %if.then36, %if.then24
  %105 = load ptr, ptr %pPage1, align 8
  call void @releasePageOne(ptr noundef %105)
  %106 = load ptr, ptr %pBt.addr, align 8
  %pPage1157 = getelementptr inbounds nuw %struct.BtShared, ptr %106, i32 0, i32 3
  store ptr null, ptr %pPage1157, align 8
  %107 = load i32, ptr %rc, align 4
  store i32 %107, ptr %retval, align 4
  br label %return

return:                                           ; preds = %page1_init_failed, %if.end154, %if.then93, %if.then55, %if.then3, %if.then
  %108 = load i32, ptr %retval, align 4
  ret i32 %108
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSharedLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerOpenWal(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePageOne(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeTempSpace(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WritableSchema(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
