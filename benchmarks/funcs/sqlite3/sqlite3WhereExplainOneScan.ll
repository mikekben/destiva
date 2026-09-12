; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.anon.20 = type { i32, i8, i8, i16, ptr }

@.str.755 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.756 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.757 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.758 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.759 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.760 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.761 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.762 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.763 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.764 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.765 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.766 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.767 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.768 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.769 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.770 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.771 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_append(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WhereExplainOneScan(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pLevel, i16 noundef zeroext %wctrlFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pLevel.addr = alloca ptr, align 8
  %wctrlFlags.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  %pItem = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %isSearch = alloca i32, align 4
  %pLoop = alloca ptr, align 8
  %flags = alloca i32, align 4
  %zMsg = alloca ptr, align 8
  %str = alloca %struct.sqlite3_str, align 8
  %zBuf = alloca [100 x i8], align 16
  %zFmt = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %zRangeOp = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store i16 %wctrlFlags, ptr %wctrlFlags.addr, align 2
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %cond, i32 0, i32 50
  %5 = load i8, ptr %explain, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end105

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pLevel.addr, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %7, i32 0, i32 13
  %8 = load i8, ptr %iFrom, align 4
  %idxprom = zext i8 %8 to i64
  %arrayidx = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem, align 8
  %9 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pVdbe, align 8
  store ptr %10, ptr %v, align 8
  %11 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %db3, align 8
  store ptr %12, ptr %db, align 8
  %13 = load ptr, ptr %pLevel.addr, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %13, i32 0, i32 20
  %14 = load ptr, ptr %pWLoop, align 8
  store ptr %14, ptr %pLoop, align 8
  %15 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %wsFlags, align 8
  store i32 %16, ptr %flags, align 4
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 8192
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %18 = load i16, ptr %wctrlFlags.addr, align 2
  %conv5 = zext i16 %18 to i32
  %and6 = and i32 %conv5, 32
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %19 = load i32, ptr %flags, align 4
  %and9 = and i32 %19, 48
  %cmp10 = icmp ne i32 %and9, 0
  br i1 %cmp10, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.end
  %20 = load i32, ptr %flags, align 4
  %and13 = and i32 %20, 1024
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false12
  %21 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 7
  %nEq = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 0
  %22 = load i16, ptr %nEq, align 8
  %conv16 = zext i16 %22 to i32
  %cmp17 = icmp sgt i32 %conv16, 0
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %lor.lhs.false12
  %23 = load i16, ptr %wctrlFlags.addr, align 2
  %conv19 = zext i16 %23 to i32
  %and20 = and i32 %conv19, 3
  %tobool21 = icmp ne i32 %and20, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true, %if.end
  %24 = phi i1 [ true, %land.lhs.true ], [ true, %if.end ], [ %tobool21, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32
  store i32 %lor.ext, ptr %isSearch, align 4
  %25 = load ptr, ptr %db, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zBuf, i64 0, i64 0
  call void @sqlite3StrAccumInit(ptr noundef %str, ptr noundef %25, ptr noundef %arraydecay, i32 noundef 100, i32 noundef 1000000000)
  %26 = load i32, ptr %isSearch, align 4
  %tobool22 = icmp ne i32 %26, 0
  %27 = zext i1 %tobool22 to i64
  %cond23 = select i1 %tobool22, ptr @.str.755, ptr @.str.756
  call void @sqlite3_str_appendall(ptr noundef %str, ptr noundef %cond23)
  %28 = load ptr, ptr %pItem, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %pSelect, align 8
  %tobool24 = icmp ne ptr %29, null
  br i1 %tobool24, label %if.then25, label %if.else

if.then25:                                        ; preds = %lor.end
  %30 = load ptr, ptr %pItem, align 8
  %pSelect26 = getelementptr inbounds nuw %struct.SrcList_item, ptr %30, i32 0, i32 5
  %31 = load ptr, ptr %pSelect26, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %selId, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef @.str.757, i32 noundef %32)
  br label %if.end27

if.else:                                          ; preds = %lor.end
  %33 = load ptr, ptr %pItem, align 8
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef @.str.758, ptr noundef %34)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then25
  %35 = load ptr, ptr %pItem, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %zAlias, align 8
  %tobool28 = icmp ne ptr %36, null
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end27
  %37 = load ptr, ptr %pItem, align 8
  %zAlias30 = getelementptr inbounds nuw %struct.SrcList_item, ptr %37, i32 0, i32 3
  %38 = load ptr, ptr %zAlias30, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef @.str.759, ptr noundef %38)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27
  %39 = load i32, ptr %flags, align 4
  %and32 = and i32 %39, 1280
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.then35, label %if.else68

if.then35:                                        ; preds = %if.end31
  store ptr null, ptr %zFmt, align 8
  %40 = load ptr, ptr %pLoop, align 8
  %u36 = getelementptr inbounds nuw %struct.WhereLoop, ptr %40, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u36, i32 0, i32 4
  %41 = load ptr, ptr %pIndex, align 8
  store ptr %41, ptr %pIdx, align 8
  %42 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %42, i32 0, i32 4
  %43 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %43, i32 0, i32 9
  %44 = load i32, ptr %tabFlags, align 8
  %and37 = and i32 %44, 32
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.else47, label %land.lhs.true40

land.lhs.true40:                                  ; preds = %if.then35
  %45 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %45, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp41 = icmp eq i32 %bf.cast, 2
  br i1 %cmp41, label %if.then43, label %if.else47

if.then43:                                        ; preds = %land.lhs.true40
  %46 = load i32, ptr %isSearch, align 4
  %tobool44 = icmp ne i32 %46, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then43
  store ptr @.str.760, ptr %zFmt, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.then43
  br label %if.end63

if.else47:                                        ; preds = %land.lhs.true40, %if.then35
  %47 = load i32, ptr %flags, align 4
  %and48 = and i32 %47, 131072
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else47
  store ptr @.str.761, ptr %zFmt, align 8
  br label %if.end62

if.else51:                                        ; preds = %if.else47
  %48 = load i32, ptr %flags, align 4
  %and52 = and i32 %48, 16384
  %tobool53 = icmp ne i32 %and52, 0
  br i1 %tobool53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else51
  store ptr @.str.762, ptr %zFmt, align 8
  br label %if.end61

if.else55:                                        ; preds = %if.else51
  %49 = load i32, ptr %flags, align 4
  %and56 = and i32 %49, 64
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else55
  store ptr @.str.763, ptr %zFmt, align 8
  br label %if.end60

if.else59:                                        ; preds = %if.else55
  store ptr @.str.764, ptr %zFmt, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.then58
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then54
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then50
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end46
  %50 = load ptr, ptr %zFmt, align 8
  %tobool64 = icmp ne ptr %50, null
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end63
  call void @sqlite3_str_append(ptr noundef %str, ptr noundef @.str.765, i32 noundef 7)
  %51 = load ptr, ptr %zFmt, align 8
  %52 = load ptr, ptr %pIdx, align 8
  %zName66 = getelementptr inbounds nuw %struct.Index, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %zName66, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef %51, ptr noundef %53)
  %54 = load ptr, ptr %pLoop, align 8
  call void @explainIndexRange(ptr noundef %str, ptr noundef %54)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63
  br label %if.end102

if.else68:                                        ; preds = %if.end31
  %55 = load i32, ptr %flags, align 4
  %and69 = and i32 %55, 256
  %cmp70 = icmp ne i32 %and69, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.else93

land.lhs.true72:                                  ; preds = %if.else68
  %56 = load i32, ptr %flags, align 4
  %and73 = and i32 %56, 15
  %cmp74 = icmp ne i32 %and73, 0
  br i1 %cmp74, label %if.then76, label %if.else93

if.then76:                                        ; preds = %land.lhs.true72
  %57 = load i32, ptr %flags, align 4
  %and77 = and i32 %57, 5
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then76
  store ptr @.str.766, ptr %zRangeOp, align 8
  br label %if.end92

if.else80:                                        ; preds = %if.then76
  %58 = load i32, ptr %flags, align 4
  %and81 = and i32 %58, 48
  %cmp82 = icmp eq i32 %and81, 48
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.else80
  store ptr @.str.767, ptr %zRangeOp, align 8
  br label %if.end91

if.else85:                                        ; preds = %if.else80
  %59 = load i32, ptr %flags, align 4
  %and86 = and i32 %59, 32
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.else89

if.then88:                                        ; preds = %if.else85
  store ptr @.str.768, ptr %zRangeOp, align 8
  br label %if.end90

if.else89:                                        ; preds = %if.else85
  store ptr @.str.769, ptr %zRangeOp, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then88
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then84
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then79
  %60 = load ptr, ptr %zRangeOp, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef @.str.770, ptr noundef %60)
  br label %if.end101

if.else93:                                        ; preds = %land.lhs.true72, %if.else68
  %61 = load i32, ptr %flags, align 4
  %and94 = and i32 %61, 1024
  %cmp95 = icmp ne i32 %and94, 0
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.else93
  %62 = load ptr, ptr %pLoop, align 8
  %u98 = getelementptr inbounds nuw %struct.WhereLoop, ptr %62, i32 0, i32 7
  %idxNum = getelementptr inbounds nuw %struct.anon.20, ptr %u98, i32 0, i32 0
  %63 = load i32, ptr %idxNum, align 8
  %64 = load ptr, ptr %pLoop, align 8
  %u99 = getelementptr inbounds nuw %struct.WhereLoop, ptr %64, i32 0, i32 7
  %idxStr = getelementptr inbounds nuw %struct.anon.20, ptr %u99, i32 0, i32 4
  %65 = load ptr, ptr %idxStr, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %str, ptr noundef @.str.771, i32 noundef %63, ptr noundef %65)
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.else93
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end92
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end67
  %call = call ptr @sqlite3StrAccumFinish(ptr noundef %str)
  store ptr %call, ptr %zMsg, align 8
  %66 = load ptr, ptr %v, align 8
  %67 = load ptr, ptr %v, align 8
  %call103 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %67)
  %68 = load ptr, ptr %pParse.addr, align 8
  %addrExplain = getelementptr inbounds nuw %struct.Parse, ptr %68, i32 0, i32 54
  %69 = load i32, ptr %addrExplain, align 8
  %70 = load ptr, ptr %zMsg, align 8
  %call104 = call i32 @sqlite3VdbeAddOp4(ptr noundef %66, i32 noundef 171, i32 noundef %call103, i32 noundef %69, i32 noundef 0, ptr noundef %70, i32 noundef -7)
  store i32 %call104, ptr %ret, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end102, %cond.end
  %71 = load i32, ptr %ret, align 4
  store i32 %71, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end105, %if.then8
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nounwind uwtable
declare hidden void @explainIndexRange(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
