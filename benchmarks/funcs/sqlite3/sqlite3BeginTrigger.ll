; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.22 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.591 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.875 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.876 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.877 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.878 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.879 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.880 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.881 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.882 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3BeginTrigger(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2, i32 noundef %tr_tm, i32 noundef %op, ptr noundef %pColumns, ptr noundef %pTableName, ptr noundef %pWhen, i32 noundef %isTemp, i32 noundef %noErr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %tr_tm.addr = alloca i32, align 4
  %op.addr = alloca i32, align 4
  %pColumns.addr = alloca ptr, align 8
  %pTableName.addr = alloca ptr, align 8
  %pWhen.addr = alloca ptr, align 8
  %isTemp.addr = alloca i32, align 4
  %noErr.addr = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pName = alloca ptr, align 8
  %sFix = alloca %struct.DbFixer, align 8
  %iTabDb = alloca i32, align 4
  %code = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %zDbTrig = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store i32 %tr_tm, ptr %tr_tm.addr, align 4
  store i32 %op, ptr %op.addr, align 4
  store ptr %pColumns, ptr %pColumns.addr, align 8
  store ptr %pTableName, ptr %pTableName.addr, align 8
  store ptr %pWhen, ptr %pWhen.addr, align 8
  store i32 %isTemp, ptr %isTemp.addr, align 4
  store i32 %noErr, ptr %noErr.addr, align 4
  store ptr null, ptr %pTrigger, align 8
  store ptr null, ptr %zName, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load i32, ptr %isTemp.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pName2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %n, align 8
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %5, ptr noundef @.str.875)
  br label %trigger_cleanup

if.end:                                           ; preds = %if.then
  store i32 1, ptr %iDb, align 4
  %6 = load ptr, ptr %pName1.addr, align 8
  store ptr %6, ptr %pName, align 8
  br label %if.end6

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pName1.addr, align 8
  %9 = load ptr, ptr %pName2.addr, align 8
  %call = call i32 @sqlite3TwoPartName(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %pName)
  store i32 %call, ptr %iDb, align 4
  %10 = load i32, ptr %iDb, align 4
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.else
  br label %trigger_cleanup

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %11 = load ptr, ptr %pTableName.addr, align 8
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.end6
  %12 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 19
  %13 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %13 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  br label %trigger_cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %15 = load i8, ptr %busy, align 1
  %conv11 = zext i8 %15 to i32
  %tobool12 = icmp ne i32 %conv11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end10
  %16 = load i32, ptr %iDb, align 4
  %cmp13 = icmp ne i32 %16, 1
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %pTableName.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %18, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 1
  %19 = load ptr, ptr %zDatabase, align 8
  call void @sqlite3DbFree(ptr noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %pTableName.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.SrcList, ptr %20, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a16, i64 0, i64 0
  %zDatabase18 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx17, i32 0, i32 1
  store ptr null, ptr %zDatabase18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true, %if.end10
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pTableName.addr, align 8
  %call20 = call ptr @sqlite3SrcListLookup(ptr noundef %21, ptr noundef %22)
  store ptr %call20, ptr %pTab, align 8
  %23 = load ptr, ptr %db, align 8
  %init21 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 35
  %busy22 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init21, i32 0, i32 2
  %24 = load i8, ptr %busy22, align 1
  %conv23 = zext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end38

land.lhs.true26:                                  ; preds = %if.end19
  %25 = load ptr, ptr %pName2.addr, align 8
  %n27 = getelementptr inbounds nuw %struct.Token, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %n27, align 8
  %cmp28 = icmp eq i32 %26, 0
  br i1 %cmp28, label %land.lhs.true30, label %if.end38

land.lhs.true30:                                  ; preds = %land.lhs.true26
  %27 = load ptr, ptr %pTab, align 8
  %tobool31 = icmp ne ptr %27, null
  br i1 %tobool31, label %land.lhs.true32, label %if.end38

land.lhs.true32:                                  ; preds = %land.lhs.true30
  %28 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 20
  %29 = load ptr, ptr %pSchema, align 8
  %30 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %aDb, align 8
  %arrayidx33 = getelementptr inbounds %struct.Db, ptr %31, i64 1
  %pSchema34 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx33, i32 0, i32 4
  %32 = load ptr, ptr %pSchema34, align 8
  %cmp35 = icmp eq ptr %29, %32
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %land.lhs.true32
  store i32 1, ptr %iDb, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true32, %land.lhs.true30, %land.lhs.true26, %if.end19
  %33 = load ptr, ptr %db, align 8
  %mallocFailed39 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 19
  %34 = load i8, ptr %mallocFailed39, align 1
  %tobool40 = icmp ne i8 %34, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  br label %trigger_cleanup

if.end42:                                         ; preds = %if.end38
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load i32, ptr %iDb, align 4
  %37 = load ptr, ptr %pName, align 8
  call void @sqlite3FixInit(ptr noundef %sFix, ptr noundef %35, i32 noundef %36, ptr noundef @.str.22, ptr noundef %37)
  %38 = load ptr, ptr %pTableName.addr, align 8
  %call43 = call i32 @sqlite3FixSrcList(ptr noundef %sFix, ptr noundef %38)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.end42
  br label %trigger_cleanup

if.end46:                                         ; preds = %if.end42
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load ptr, ptr %pTableName.addr, align 8
  %call47 = call ptr @sqlite3SrcListLookup(ptr noundef %39, ptr noundef %40)
  store ptr %call47, ptr %pTab, align 8
  %41 = load ptr, ptr %pTab, align 8
  %tobool48 = icmp ne ptr %41, null
  br i1 %tobool48, label %if.end58, label %if.then49

if.then49:                                        ; preds = %if.end46
  %42 = load ptr, ptr %db, align 8
  %init50 = getelementptr inbounds nuw %struct.sqlite3, ptr %42, i32 0, i32 35
  %iDb51 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init50, i32 0, i32 1
  %43 = load i8, ptr %iDb51, align 4
  %conv52 = zext i8 %43 to i32
  %cmp53 = icmp eq i32 %conv52, 1
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.then49
  %44 = load ptr, ptr %db, align 8
  %init56 = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 35
  %orphanTrigger = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init56, i32 0, i32 3
  %bf.load = load i8, ptr %orphanTrigger, align 2
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr %orphanTrigger, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then49
  br label %trigger_cleanup

if.end58:                                         ; preds = %if.end46
  %45 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 16
  %46 = load i32, ptr %nModuleArg, align 4
  %tobool59 = icmp ne i32 %46, 0
  br i1 %tobool59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  %47 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %47, ptr noundef @.str.876)
  br label %trigger_cleanup

if.end61:                                         ; preds = %if.end58
  %48 = load ptr, ptr %db, align 8
  %49 = load ptr, ptr %pName, align 8
  %call62 = call ptr @sqlite3NameFromToken(ptr noundef %48, ptr noundef %49)
  store ptr %call62, ptr %zName, align 8
  %50 = load ptr, ptr %zName, align 8
  %cmp63 = icmp eq ptr %50, null
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end61
  br label %trigger_cleanup

if.end66:                                         ; preds = %if.end61
  %51 = load ptr, ptr %pParse.addr, align 8
  %52 = load ptr, ptr %zName, align 8
  %53 = load ptr, ptr %pTab, align 8
  %zName67 = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zName67, align 8
  %call68 = call i32 @sqlite3CheckObjectName(ptr noundef %51, ptr noundef %52, ptr noundef @.str.22, ptr noundef %54)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.end66
  br label %trigger_cleanup

if.end71:                                         ; preds = %if.end66
  %55 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %55, i32 0, i32 51
  %56 = load i8, ptr %eParseMode, align 4
  %conv72 = zext i8 %56 to i32
  %cmp73 = icmp sge i32 %conv72, 2
  br i1 %cmp73, label %if.end87, label %if.then75

if.then75:                                        ; preds = %if.end71
  %57 = load ptr, ptr %db, align 8
  %aDb76 = getelementptr inbounds nuw %struct.sqlite3, ptr %57, i32 0, i32 4
  %58 = load ptr, ptr %aDb76, align 8
  %59 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %59 to i64
  %arrayidx77 = getelementptr inbounds %struct.Db, ptr %58, i64 %idxprom
  %pSchema78 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx77, i32 0, i32 4
  %60 = load ptr, ptr %pSchema78, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %zName, align 8
  %call79 = call ptr @sqlite3HashFind(ptr noundef %trigHash, ptr noundef %61)
  %tobool80 = icmp ne ptr %call79, null
  br i1 %tobool80, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.then75
  %62 = load i32, ptr %noErr.addr, align 4
  %tobool82 = icmp ne i32 %62, 0
  br i1 %tobool82, label %if.else84, label %if.then83

if.then83:                                        ; preds = %if.then81
  %63 = load ptr, ptr %pParse.addr, align 8
  %64 = load ptr, ptr %pName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %63, ptr noundef @.str.877, ptr noundef %64)
  br label %if.end85

if.else84:                                        ; preds = %if.then81
  %65 = load ptr, ptr %pParse.addr, align 8
  %66 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %65, i32 noundef %66)
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  br label %trigger_cleanup

if.end86:                                         ; preds = %if.then75
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end71
  %67 = load ptr, ptr %pTab, align 8
  %zName88 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %zName88, align 8
  %call89 = call i32 @sqlite3_strnicmp(ptr noundef %68, ptr noundef @.str.591, i32 noundef 7)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end87
  %69 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %69, ptr noundef @.str.878)
  br label %trigger_cleanup

if.end93:                                         ; preds = %if.end87
  %70 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %70, i32 0, i32 3
  %71 = load ptr, ptr %pSelect, align 8
  %tobool94 = icmp ne ptr %71, null
  br i1 %tobool94, label %land.lhs.true95, label %if.end101

land.lhs.true95:                                  ; preds = %if.end93
  %72 = load i32, ptr %tr_tm.addr, align 4
  %cmp96 = icmp ne i32 %72, 65
  br i1 %cmp96, label %if.then98, label %if.end101

if.then98:                                        ; preds = %land.lhs.true95
  %73 = load ptr, ptr %pParse.addr, align 8
  %74 = load i32, ptr %tr_tm.addr, align 4
  %cmp99 = icmp eq i32 %74, 33
  %75 = zext i1 %cmp99 to i64
  %cond = select i1 %cmp99, ptr @.str.880, ptr @.str.881
  %76 = load ptr, ptr %pTableName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %73, ptr noundef @.str.879, ptr noundef %cond, ptr noundef %76, i32 noundef 0)
  br label %trigger_cleanup

if.end101:                                        ; preds = %land.lhs.true95, %if.end93
  %77 = load ptr, ptr %pTab, align 8
  %pSelect102 = getelementptr inbounds nuw %struct.Table, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %pSelect102, align 8
  %tobool103 = icmp ne ptr %78, null
  br i1 %tobool103, label %if.end108, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.end101
  %79 = load i32, ptr %tr_tm.addr, align 4
  %cmp105 = icmp eq i32 %79, 65
  br i1 %cmp105, label %if.then107, label %if.end108

if.then107:                                       ; preds = %land.lhs.true104
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load ptr, ptr %pTableName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %80, ptr noundef @.str.882, ptr noundef %81, i32 noundef 0)
  br label %trigger_cleanup

if.end108:                                        ; preds = %land.lhs.true104, %if.end101
  %82 = load ptr, ptr %pParse.addr, align 8
  %eParseMode109 = getelementptr inbounds nuw %struct.Parse, ptr %82, i32 0, i32 51
  %83 = load i8, ptr %eParseMode109, align 4
  %conv110 = zext i8 %83 to i32
  %cmp111 = icmp sge i32 %conv110, 2
  br i1 %cmp111, label %if.end142, label %if.then113

if.then113:                                       ; preds = %if.end108
  %84 = load ptr, ptr %db, align 8
  %85 = load ptr, ptr %pTab, align 8
  %pSchema114 = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 20
  %86 = load ptr, ptr %pSchema114, align 8
  %call115 = call i32 @sqlite3SchemaToIndex(ptr noundef %84, ptr noundef %86)
  store i32 %call115, ptr %iTabDb, align 4
  store i32 7, ptr %code, align 4
  %87 = load ptr, ptr %db, align 8
  %aDb116 = getelementptr inbounds nuw %struct.sqlite3, ptr %87, i32 0, i32 4
  %88 = load ptr, ptr %aDb116, align 8
  %89 = load i32, ptr %iTabDb, align 4
  %idxprom117 = sext i32 %89 to i64
  %arrayidx118 = getelementptr inbounds %struct.Db, ptr %88, i64 %idxprom117
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx118, i32 0, i32 0
  %90 = load ptr, ptr %zDbSName, align 8
  store ptr %90, ptr %zDb, align 8
  %91 = load i32, ptr %isTemp.addr, align 4
  %tobool119 = icmp ne i32 %91, 0
  br i1 %tobool119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then113
  %92 = load ptr, ptr %db, align 8
  %aDb120 = getelementptr inbounds nuw %struct.sqlite3, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %aDb120, align 8
  %arrayidx121 = getelementptr inbounds %struct.Db, ptr %93, i64 1
  %zDbSName122 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx121, i32 0, i32 0
  %94 = load ptr, ptr %zDbSName122, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then113
  %95 = load ptr, ptr %zDb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond123 = phi ptr [ %94, %cond.true ], [ %95, %cond.false ]
  store ptr %cond123, ptr %zDbTrig, align 8
  %96 = load i32, ptr %iTabDb, align 4
  %cmp124 = icmp eq i32 %96, 1
  br i1 %cmp124, label %if.then128, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %cond.end
  %97 = load i32, ptr %isTemp.addr, align 4
  %tobool127 = icmp ne i32 %97, 0
  br i1 %tobool127, label %if.then128, label %if.end129

if.then128:                                       ; preds = %lor.lhs.false126, %cond.end
  store i32 5, ptr %code, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then128, %lor.lhs.false126
  %98 = load ptr, ptr %pParse.addr, align 8
  %99 = load i32, ptr %code, align 4
  %100 = load ptr, ptr %zName, align 8
  %101 = load ptr, ptr %pTab, align 8
  %zName130 = getelementptr inbounds nuw %struct.Table, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %zName130, align 8
  %103 = load ptr, ptr %zDbTrig, align 8
  %call131 = call i32 @sqlite3AuthCheck(ptr noundef %98, i32 noundef %99, ptr noundef %100, ptr noundef %102, ptr noundef %103)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end129
  br label %trigger_cleanup

if.end134:                                        ; preds = %if.end129
  %104 = load ptr, ptr %pParse.addr, align 8
  %105 = load i32, ptr %iTabDb, align 4
  %cmp135 = icmp eq i32 %105, 1
  %106 = zext i1 %cmp135 to i64
  %cond137 = select i1 %cmp135, ptr @.str.331, ptr @.str.320
  %107 = load ptr, ptr %zDb, align 8
  %call138 = call i32 @sqlite3AuthCheck(ptr noundef %104, i32 noundef 18, ptr noundef %cond137, ptr noundef null, ptr noundef %107)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end134
  br label %trigger_cleanup

if.end141:                                        ; preds = %if.end134
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end108
  %108 = load i32, ptr %tr_tm.addr, align 4
  %cmp143 = icmp eq i32 %108, 65
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end142
  store i32 33, ptr %tr_tm.addr, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142
  %109 = load ptr, ptr %db, align 8
  %call147 = call ptr @sqlite3DbMallocZero(ptr noundef %109, i64 noundef 72)
  store ptr %call147, ptr %pTrigger, align 8
  %110 = load ptr, ptr %pTrigger, align 8
  %cmp148 = icmp eq ptr %110, null
  br i1 %cmp148, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.end146
  br label %trigger_cleanup

if.end151:                                        ; preds = %if.end146
  %111 = load ptr, ptr %zName, align 8
  %112 = load ptr, ptr %pTrigger, align 8
  %zName152 = getelementptr inbounds nuw %struct.Trigger, ptr %112, i32 0, i32 0
  store ptr %111, ptr %zName152, align 8
  store ptr null, ptr %zName, align 8
  %113 = load ptr, ptr %db, align 8
  %114 = load ptr, ptr %pTableName.addr, align 8
  %a153 = getelementptr inbounds nuw %struct.SrcList, ptr %114, i32 0, i32 2
  %arrayidx154 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a153, i64 0, i64 0
  %zName155 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx154, i32 0, i32 2
  %115 = load ptr, ptr %zName155, align 8
  %call156 = call ptr @sqlite3DbStrDup(ptr noundef %113, ptr noundef %115)
  %116 = load ptr, ptr %pTrigger, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %116, i32 0, i32 1
  store ptr %call156, ptr %table, align 8
  %117 = load ptr, ptr %db, align 8
  %aDb157 = getelementptr inbounds nuw %struct.sqlite3, ptr %117, i32 0, i32 4
  %118 = load ptr, ptr %aDb157, align 8
  %119 = load i32, ptr %iDb, align 4
  %idxprom158 = sext i32 %119 to i64
  %arrayidx159 = getelementptr inbounds %struct.Db, ptr %118, i64 %idxprom158
  %pSchema160 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx159, i32 0, i32 4
  %120 = load ptr, ptr %pSchema160, align 8
  %121 = load ptr, ptr %pTrigger, align 8
  %pSchema161 = getelementptr inbounds nuw %struct.Trigger, ptr %121, i32 0, i32 6
  store ptr %120, ptr %pSchema161, align 8
  %122 = load ptr, ptr %pTab, align 8
  %pSchema162 = getelementptr inbounds nuw %struct.Table, ptr %122, i32 0, i32 20
  %123 = load ptr, ptr %pSchema162, align 8
  %124 = load ptr, ptr %pTrigger, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %124, i32 0, i32 7
  store ptr %123, ptr %pTabSchema, align 8
  %125 = load i32, ptr %op.addr, align 4
  %conv163 = trunc i32 %125 to i8
  %126 = load ptr, ptr %pTrigger, align 8
  %op164 = getelementptr inbounds nuw %struct.Trigger, ptr %126, i32 0, i32 2
  store i8 %conv163, ptr %op164, align 8
  %127 = load i32, ptr %tr_tm.addr, align 4
  %cmp165 = icmp eq i32 %127, 33
  %128 = zext i1 %cmp165 to i64
  %cond167 = select i1 %cmp165, i32 1, i32 2
  %conv168 = trunc i32 %cond167 to i8
  %129 = load ptr, ptr %pTrigger, align 8
  %tr_tm169 = getelementptr inbounds nuw %struct.Trigger, ptr %129, i32 0, i32 3
  store i8 %conv168, ptr %tr_tm169, align 1
  %130 = load ptr, ptr %pParse.addr, align 8
  %eParseMode170 = getelementptr inbounds nuw %struct.Parse, ptr %130, i32 0, i32 51
  %131 = load i8, ptr %eParseMode170, align 4
  %conv171 = zext i8 %131 to i32
  %cmp172 = icmp sge i32 %conv171, 2
  br i1 %cmp172, label %if.then174, label %if.else180

if.then174:                                       ; preds = %if.end151
  %132 = load ptr, ptr %pParse.addr, align 8
  %133 = load ptr, ptr %pTrigger, align 8
  %table175 = getelementptr inbounds nuw %struct.Trigger, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %table175, align 8
  %135 = load ptr, ptr %pTableName.addr, align 8
  %a176 = getelementptr inbounds nuw %struct.SrcList, ptr %135, i32 0, i32 2
  %arrayidx177 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a176, i64 0, i64 0
  %zName178 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx177, i32 0, i32 2
  %136 = load ptr, ptr %zName178, align 8
  call void @sqlite3RenameTokenRemap(ptr noundef %132, ptr noundef %134, ptr noundef %136)
  %137 = load ptr, ptr %pWhen.addr, align 8
  %138 = load ptr, ptr %pTrigger, align 8
  %pWhen179 = getelementptr inbounds nuw %struct.Trigger, ptr %138, i32 0, i32 4
  store ptr %137, ptr %pWhen179, align 8
  store ptr null, ptr %pWhen.addr, align 8
  br label %if.end183

if.else180:                                       ; preds = %if.end151
  %139 = load ptr, ptr %db, align 8
  %140 = load ptr, ptr %pWhen.addr, align 8
  %call181 = call ptr @sqlite3ExprDup(ptr noundef %139, ptr noundef %140, i32 noundef 1)
  %141 = load ptr, ptr %pTrigger, align 8
  %pWhen182 = getelementptr inbounds nuw %struct.Trigger, ptr %141, i32 0, i32 4
  store ptr %call181, ptr %pWhen182, align 8
  br label %if.end183

if.end183:                                        ; preds = %if.else180, %if.then174
  %142 = load ptr, ptr %pColumns.addr, align 8
  %143 = load ptr, ptr %pTrigger, align 8
  %pColumns184 = getelementptr inbounds nuw %struct.Trigger, ptr %143, i32 0, i32 5
  store ptr %142, ptr %pColumns184, align 8
  store ptr null, ptr %pColumns.addr, align 8
  %144 = load ptr, ptr %pTrigger, align 8
  %145 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %145, i32 0, i32 60
  store ptr %144, ptr %pNewTrigger, align 8
  br label %trigger_cleanup

trigger_cleanup:                                  ; preds = %if.end183, %if.then150, %if.then140, %if.then133, %if.then107, %if.then98, %if.then92, %if.end85, %if.then70, %if.then65, %if.then60, %if.end57, %if.then45, %if.then41, %if.then9, %if.then4, %if.then2
  %146 = load ptr, ptr %db, align 8
  %147 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %146, ptr noundef %147)
  %148 = load ptr, ptr %db, align 8
  %149 = load ptr, ptr %pTableName.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %148, ptr noundef %149)
  %150 = load ptr, ptr %db, align 8
  %151 = load ptr, ptr %pColumns.addr, align 8
  call void @sqlite3IdListDelete(ptr noundef %150, ptr noundef %151)
  %152 = load ptr, ptr %db, align 8
  %153 = load ptr, ptr %pWhen.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %152, ptr noundef %153)
  %154 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger185 = getelementptr inbounds nuw %struct.Parse, ptr %154, i32 0, i32 60
  %155 = load ptr, ptr %pNewTrigger185, align 8
  %tobool186 = icmp ne ptr %155, null
  br i1 %tobool186, label %if.else188, label %if.then187

if.then187:                                       ; preds = %trigger_cleanup
  %156 = load ptr, ptr %db, align 8
  %157 = load ptr, ptr %pTrigger, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %156, ptr noundef %157)
  br label %if.end189

if.else188:                                       ; preds = %trigger_cleanup
  br label %if.end189

if.end189:                                        ; preds = %if.else188, %if.then187
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CheckObjectName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RenameTokenRemap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FixInit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSrcList(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
