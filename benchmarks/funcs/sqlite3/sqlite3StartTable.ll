; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.330 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.584 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.585 = external hidden unnamed_addr constant [5 x i8], align 1
@sqlite3StartTable.aCode = external hidden constant [4 x i8], align 1
@.str.586 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.587 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.588 = external hidden unnamed_addr constant [16 x i8], align 1
@sqlite3StartTable.nullRow = external hidden constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3StartTable(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2, i32 noundef %isTemp, i32 noundef %isView, i32 noundef %isVirtual, i32 noundef %noErr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %isTemp.addr = alloca i32, align 4
  %isView.addr = alloca i32, align 4
  %isVirtual.addr = alloca i32, align 4
  %noErr.addr = alloca i32, align 4
  %pTable = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %v = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pName = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zDb71 = alloca ptr, align 8
  %addr1 = alloca i32, align 4
  %fileFormat = alloca i32, align 4
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %reg3 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store i32 %isTemp, ptr %isTemp.addr, align 4
  store i32 %isView, ptr %isView.addr, align 4
  store i32 %isVirtual, ptr %isVirtual.addr, align 4
  store i32 %noErr, ptr %noErr.addr, align 4
  store ptr null, ptr %zName, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %3 = load i8, ptr %busy, align 1
  %conv = zext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %init2 = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 35
  %newTnum = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init2, i32 0, i32 0
  %5 = load i32, ptr %newTnum, align 8
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %db, align 8
  %init4 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 35
  %iDb5 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init4, i32 0, i32 1
  %7 = load i8, ptr %iDb5, align 4
  %conv6 = zext i8 %7 to i32
  store i32 %conv6, ptr %iDb, align 4
  %8 = load ptr, ptr %db, align 8
  %9 = load i32, ptr %iDb, align 4
  %cmp7 = icmp eq i32 %9, 1
  %10 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, ptr @.str.331, ptr @.str.320
  %call = call ptr @sqlite3DbStrDup(ptr noundef %8, ptr noundef %cond)
  store ptr %call, ptr %zName, align 8
  %11 = load ptr, ptr %pName1.addr, align 8
  store ptr %11, ptr %pName, align 8
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %entry
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pName1.addr, align 8
  %14 = load ptr, ptr %pName2.addr, align 8
  %call9 = call i32 @sqlite3TwoPartName(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %pName)
  store i32 %call9, ptr %iDb, align 4
  %15 = load i32, ptr %iDb, align 4
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.else
  br label %return

if.end:                                           ; preds = %if.else
  %16 = load i32, ptr %isTemp.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %land.lhs.true14, label %if.end21

land.lhs.true14:                                  ; preds = %if.end
  %17 = load ptr, ptr %pName2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %n, align 8
  %cmp15 = icmp ugt i32 %18, 0
  br i1 %cmp15, label %land.lhs.true17, label %if.end21

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %19 = load i32, ptr %iDb, align 4
  %cmp18 = icmp ne i32 %19, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true17
  %20 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %20, ptr noundef @.str.584)
  br label %return

if.end21:                                         ; preds = %land.lhs.true17, %land.lhs.true14, %if.end
  %21 = load i32, ptr %isTemp.addr, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  store i32 1, ptr %iDb, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end21
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %pName, align 8
  %call25 = call ptr @sqlite3NameFromToken(ptr noundef %22, ptr noundef %23)
  store ptr %call25, ptr %zName, align 8
  %24 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 51
  %25 = load i8, ptr %eParseMode, align 4
  %conv26 = zext i8 %25 to i32
  %cmp27 = icmp sge i32 %conv26, 2
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %zName, align 8
  %28 = load ptr, ptr %pName, align 8
  %call30 = call ptr @sqlite3RenameTokenMap(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %29 = load ptr, ptr %pParse.addr, align 8
  %sNameToken = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 46
  %30 = load ptr, ptr %pName, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sNameToken, ptr align 8 %30, i64 16, i1 false)
  %31 = load ptr, ptr %zName, align 8
  %cmp33 = icmp eq ptr %31, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  br label %return

if.end36:                                         ; preds = %if.end32
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %zName, align 8
  %34 = load i32, ptr %isView.addr, align 4
  %tobool37 = icmp ne i32 %34, 0
  %35 = zext i1 %tobool37 to i64
  %cond38 = select i1 %tobool37, ptr @.str.585, ptr @.str.330
  %36 = load ptr, ptr %zName, align 8
  %call39 = call i32 @sqlite3CheckObjectName(ptr noundef %32, ptr noundef %33, ptr noundef %cond38, ptr noundef %36)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end36
  br label %begin_table_error

if.end42:                                         ; preds = %if.end36
  %37 = load ptr, ptr %db, align 8
  %init43 = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 35
  %iDb44 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init43, i32 0, i32 1
  %38 = load i8, ptr %iDb44, align 4
  %conv45 = zext i8 %38 to i32
  %cmp46 = icmp eq i32 %conv45, 1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end42
  store i32 1, ptr %isTemp.addr, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end42
  %39 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %aDb, align 8
  %41 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %40, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %42 = load ptr, ptr %zDbSName, align 8
  store ptr %42, ptr %zDb, align 8
  %43 = load ptr, ptr %pParse.addr, align 8
  %44 = load i32, ptr %isTemp.addr, align 4
  %cmp50 = icmp eq i32 %44, 1
  %45 = zext i1 %cmp50 to i64
  %cond52 = select i1 %cmp50, ptr @.str.331, ptr @.str.320
  %46 = load ptr, ptr %zDb, align 8
  %call53 = call i32 @sqlite3AuthCheck(ptr noundef %43, i32 noundef 18, ptr noundef %cond52, ptr noundef null, ptr noundef %46)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end49
  br label %begin_table_error

if.end56:                                         ; preds = %if.end49
  %47 = load i32, ptr %isVirtual.addr, align 4
  %tobool57 = icmp ne i32 %47, 0
  br i1 %tobool57, label %if.end65, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %if.end56
  %48 = load ptr, ptr %pParse.addr, align 8
  %49 = load i32, ptr %isTemp.addr, align 4
  %50 = load i32, ptr %isView.addr, align 4
  %mul = mul nsw i32 2, %50
  %add = add nsw i32 %49, %mul
  %idxprom59 = sext i32 %add to i64
  %arrayidx60 = getelementptr inbounds [4 x i8], ptr @sqlite3StartTable.aCode, i64 0, i64 %idxprom59
  %51 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %51 to i32
  %52 = load ptr, ptr %zName, align 8
  %53 = load ptr, ptr %zDb, align 8
  %call62 = call i32 @sqlite3AuthCheck(ptr noundef %48, i32 noundef %conv61, ptr noundef %52, ptr noundef null, ptr noundef %53)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true58
  br label %begin_table_error

if.end65:                                         ; preds = %land.lhs.true58, %if.end56
  %54 = load ptr, ptr %pParse.addr, align 8
  %eParseMode66 = getelementptr inbounds nuw %struct.Parse, ptr %54, i32 0, i32 51
  %55 = load i8, ptr %eParseMode66, align 4
  %conv67 = zext i8 %55 to i32
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %if.end94, label %if.then70

if.then70:                                        ; preds = %if.end65
  %56 = load ptr, ptr %db, align 8
  %aDb72 = getelementptr inbounds nuw %struct.sqlite3, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %aDb72, align 8
  %58 = load i32, ptr %iDb, align 4
  %idxprom73 = sext i32 %58 to i64
  %arrayidx74 = getelementptr inbounds %struct.Db, ptr %57, i64 %idxprom73
  %zDbSName75 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx74, i32 0, i32 0
  %59 = load ptr, ptr %zDbSName75, align 8
  store ptr %59, ptr %zDb71, align 8
  %60 = load ptr, ptr %pParse.addr, align 8
  %call76 = call i32 @sqlite3ReadSchema(ptr noundef %60)
  %cmp77 = icmp ne i32 0, %call76
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.then70
  br label %begin_table_error

if.end80:                                         ; preds = %if.then70
  %61 = load ptr, ptr %db, align 8
  %62 = load ptr, ptr %zName, align 8
  %63 = load ptr, ptr %zDb71, align 8
  %call81 = call ptr @sqlite3FindTable(ptr noundef %61, ptr noundef %62, ptr noundef %63)
  store ptr %call81, ptr %pTable, align 8
  %64 = load ptr, ptr %pTable, align 8
  %tobool82 = icmp ne ptr %64, null
  br i1 %tobool82, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end80
  %65 = load i32, ptr %noErr.addr, align 4
  %tobool84 = icmp ne i32 %65, 0
  br i1 %tobool84, label %if.else86, label %if.then85

if.then85:                                        ; preds = %if.then83
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %66, ptr noundef @.str.586, ptr noundef %67)
  br label %if.end87

if.else86:                                        ; preds = %if.then83
  %68 = load ptr, ptr %pParse.addr, align 8
  %69 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %68, i32 noundef %69)
  br label %if.end87

if.end87:                                         ; preds = %if.else86, %if.then85
  br label %begin_table_error

if.end88:                                         ; preds = %if.end80
  %70 = load ptr, ptr %db, align 8
  %71 = load ptr, ptr %zName, align 8
  %72 = load ptr, ptr %zDb71, align 8
  %call89 = call ptr @sqlite3FindIndex(ptr noundef %70, ptr noundef %71, ptr noundef %72)
  %cmp90 = icmp ne ptr %call89, null
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end88
  %73 = load ptr, ptr %pParse.addr, align 8
  %74 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %73, ptr noundef @.str.587, ptr noundef %74)
  br label %begin_table_error

if.end93:                                         ; preds = %if.end88
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end65
  %75 = load ptr, ptr %db, align 8
  %call95 = call ptr @sqlite3DbMallocZero(ptr noundef %75, i64 noundef 128)
  store ptr %call95, ptr %pTable, align 8
  %76 = load ptr, ptr %pTable, align 8
  %cmp96 = icmp eq ptr %76, null
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end94
  %77 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %77, i32 0, i32 3
  store i32 7, ptr %rc, align 8
  %78 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %78, i32 0, i32 16
  %79 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %79, 1
  store i32 %inc, ptr %nErr, align 8
  br label %begin_table_error

if.end99:                                         ; preds = %if.end94
  %80 = load ptr, ptr %zName, align 8
  %81 = load ptr, ptr %pTable, align 8
  %zName100 = getelementptr inbounds nuw %struct.Table, ptr %81, i32 0, i32 0
  store ptr %80, ptr %zName100, align 8
  %82 = load ptr, ptr %pTable, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %82, i32 0, i32 10
  store i16 -1, ptr %iPKey, align 4
  %83 = load ptr, ptr %db, align 8
  %aDb101 = getelementptr inbounds nuw %struct.sqlite3, ptr %83, i32 0, i32 4
  %84 = load ptr, ptr %aDb101, align 8
  %85 = load i32, ptr %iDb, align 4
  %idxprom102 = sext i32 %85 to i64
  %arrayidx103 = getelementptr inbounds %struct.Db, ptr %84, i64 %idxprom102
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx103, i32 0, i32 4
  %86 = load ptr, ptr %pSchema, align 8
  %87 = load ptr, ptr %pTable, align 8
  %pSchema104 = getelementptr inbounds nuw %struct.Table, ptr %87, i32 0, i32 20
  store ptr %86, ptr %pSchema104, align 8
  %88 = load ptr, ptr %pTable, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %89 = load ptr, ptr %pTable, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %89, i32 0, i32 12
  store i16 200, ptr %nRowLogEst, align 8
  %90 = load ptr, ptr %pTable, align 8
  %91 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %91, i32 0, i32 58
  store ptr %90, ptr %pNewTable, align 8
  %92 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %92, i32 0, i32 6
  %93 = load i8, ptr %nested, align 2
  %tobool105 = icmp ne i8 %93, 0
  br i1 %tobool105, label %if.end112, label %land.lhs.true106

land.lhs.true106:                                 ; preds = %if.end99
  %94 = load ptr, ptr %zName, align 8
  %call107 = call i32 @strcmp(ptr noundef %94, ptr noundef @.str.588) #3
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %land.lhs.true106
  %95 = load ptr, ptr %pTable, align 8
  %96 = load ptr, ptr %pTable, align 8
  %pSchema111 = getelementptr inbounds nuw %struct.Table, ptr %96, i32 0, i32 20
  %97 = load ptr, ptr %pSchema111, align 8
  %pSeqTab = getelementptr inbounds nuw %struct.Schema, ptr %97, i32 0, i32 6
  store ptr %95, ptr %pSeqTab, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %land.lhs.true106, %if.end99
  %98 = load ptr, ptr %db, align 8
  %init113 = getelementptr inbounds nuw %struct.sqlite3, ptr %98, i32 0, i32 35
  %busy114 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init113, i32 0, i32 2
  %99 = load i8, ptr %busy114, align 1
  %tobool115 = icmp ne i8 %99, 0
  br i1 %tobool115, label %if.end149, label %land.lhs.true116

land.lhs.true116:                                 ; preds = %if.end112
  %100 = load ptr, ptr %pParse.addr, align 8
  %call117 = call ptr @sqlite3GetVdbe(ptr noundef %100)
  store ptr %call117, ptr %v, align 8
  %cmp118 = icmp ne ptr %call117, null
  br i1 %cmp118, label %if.then120, label %if.end149

if.then120:                                       ; preds = %land.lhs.true116
  %101 = load ptr, ptr %pParse.addr, align 8
  %102 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %101, i32 noundef 1, i32 noundef %102)
  %103 = load i32, ptr %isVirtual.addr, align 4
  %tobool121 = icmp ne i32 %103, 0
  br i1 %tobool121, label %if.then122, label %if.end124

if.then122:                                       ; preds = %if.then120
  %104 = load ptr, ptr %v, align 8
  %call123 = call i32 @sqlite3VdbeAddOp0(ptr noundef %104, i32 noundef 160)
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %if.then120
  %105 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %105, i32 0, i32 18
  %106 = load i32, ptr %nMem, align 8
  %inc125 = add nsw i32 %106, 1
  store i32 %inc125, ptr %nMem, align 8
  %107 = load ptr, ptr %pParse.addr, align 8
  %regRowid = getelementptr inbounds nuw %struct.Parse, ptr %107, i32 0, i32 28
  store i32 %inc125, ptr %regRowid, align 8
  store i32 %inc125, ptr %reg1, align 4
  %108 = load ptr, ptr %pParse.addr, align 8
  %nMem126 = getelementptr inbounds nuw %struct.Parse, ptr %108, i32 0, i32 18
  %109 = load i32, ptr %nMem126, align 8
  %inc127 = add nsw i32 %109, 1
  store i32 %inc127, ptr %nMem126, align 8
  %110 = load ptr, ptr %pParse.addr, align 8
  %regRoot = getelementptr inbounds nuw %struct.Parse, ptr %110, i32 0, i32 29
  store i32 %inc127, ptr %regRoot, align 4
  store i32 %inc127, ptr %reg2, align 4
  %111 = load ptr, ptr %pParse.addr, align 8
  %nMem128 = getelementptr inbounds nuw %struct.Parse, ptr %111, i32 0, i32 18
  %112 = load i32, ptr %nMem128, align 8
  %inc129 = add nsw i32 %112, 1
  store i32 %inc129, ptr %nMem128, align 8
  store i32 %inc129, ptr %reg3, align 4
  %113 = load ptr, ptr %v, align 8
  %114 = load i32, ptr %iDb, align 4
  %115 = load i32, ptr %reg3, align 4
  %call130 = call i32 @sqlite3VdbeAddOp3(ptr noundef %113, i32 noundef 94, i32 noundef %114, i32 noundef %115, i32 noundef 2)
  %116 = load ptr, ptr %v, align 8
  %117 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %116, i32 noundef %117)
  %118 = load ptr, ptr %v, align 8
  %119 = load i32, ptr %reg3, align 4
  %call131 = call i32 @sqlite3VdbeAddOp1(ptr noundef %118, i32 noundef 18, i32 noundef %119)
  store i32 %call131, ptr %addr1, align 4
  %120 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %120, i32 0, i32 7
  %121 = load i64, ptr %flags, align 8
  %and = and i64 %121, 2
  %cmp132 = icmp ne i64 %and, 0
  %122 = zext i1 %cmp132 to i64
  %cond134 = select i1 %cmp132, i32 1, i32 4
  store i32 %cond134, ptr %fileFormat, align 4
  %123 = load ptr, ptr %v, align 8
  %124 = load i32, ptr %iDb, align 4
  %125 = load i32, ptr %fileFormat, align 4
  %call135 = call i32 @sqlite3VdbeAddOp3(ptr noundef %123, i32 noundef 95, i32 noundef %124, i32 noundef 2, i32 noundef %125)
  %126 = load ptr, ptr %v, align 8
  %127 = load i32, ptr %iDb, align 4
  %128 = load ptr, ptr %db, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %128, i32 0, i32 16
  %129 = load i8, ptr %enc, align 2
  %conv136 = zext i8 %129 to i32
  %call137 = call i32 @sqlite3VdbeAddOp3(ptr noundef %126, i32 noundef 95, i32 noundef %127, i32 noundef 5, i32 noundef %conv136)
  %130 = load ptr, ptr %v, align 8
  %131 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %130, i32 noundef %131)
  %132 = load i32, ptr %isView.addr, align 4
  %tobool138 = icmp ne i32 %132, 0
  br i1 %tobool138, label %if.then140, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end124
  %133 = load i32, ptr %isVirtual.addr, align 4
  %tobool139 = icmp ne i32 %133, 0
  br i1 %tobool139, label %if.then140, label %if.else142

if.then140:                                       ; preds = %lor.lhs.false, %if.end124
  %134 = load ptr, ptr %v, align 8
  %135 = load i32, ptr %reg2, align 4
  %call141 = call i32 @sqlite3VdbeAddOp2(ptr noundef %134, i32 noundef 70, i32 noundef 0, i32 noundef %135)
  br label %if.end144

if.else142:                                       ; preds = %lor.lhs.false
  %136 = load ptr, ptr %v, align 8
  %137 = load i32, ptr %iDb, align 4
  %138 = load i32, ptr %reg2, align 4
  %call143 = call i32 @sqlite3VdbeAddOp3(ptr noundef %136, i32 noundef 139, i32 noundef %137, i32 noundef %138, i32 noundef 1)
  %139 = load ptr, ptr %pParse.addr, align 8
  %addrCrTab = getelementptr inbounds nuw %struct.Parse, ptr %139, i32 0, i32 38
  store i32 %call143, ptr %addrCrTab, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then140
  %140 = load ptr, ptr %pParse.addr, align 8
  %141 = load i32, ptr %iDb, align 4
  call void @sqlite3OpenMasterTable(ptr noundef %140, i32 noundef %141)
  %142 = load ptr, ptr %v, align 8
  %143 = load i32, ptr %reg1, align 4
  %call145 = call i32 @sqlite3VdbeAddOp2(ptr noundef %142, i32 noundef 121, i32 noundef 0, i32 noundef %143)
  %144 = load ptr, ptr %v, align 8
  %145 = load i32, ptr %reg3, align 4
  %call146 = call i32 @sqlite3VdbeAddOp4(ptr noundef %144, i32 noundef 75, i32 noundef 6, i32 noundef %145, i32 noundef 0, ptr noundef @sqlite3StartTable.nullRow, i32 noundef -1)
  %146 = load ptr, ptr %v, align 8
  %147 = load i32, ptr %reg3, align 4
  %148 = load i32, ptr %reg1, align 4
  %call147 = call i32 @sqlite3VdbeAddOp3(ptr noundef %146, i32 noundef 122, i32 noundef 0, i32 noundef %147, i32 noundef %148)
  %149 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %149, i16 noundef zeroext 8)
  %150 = load ptr, ptr %v, align 8
  %call148 = call i32 @sqlite3VdbeAddOp0(ptr noundef %150, i32 noundef 117)
  br label %if.end149

if.end149:                                        ; preds = %if.end144, %land.lhs.true116, %if.end112
  br label %return

begin_table_error:                                ; preds = %if.then98, %if.then92, %if.end87, %if.then79, %if.then64, %if.then55, %if.then41
  %151 = load ptr, ptr %db, align 8
  %152 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %151, ptr noundef %152)
  br label %return

return:                                           ; preds = %begin_table_error, %if.end149, %if.then35, %if.then20, %if.then12
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3RenameTokenMap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CheckObjectName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenMasterTable(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
