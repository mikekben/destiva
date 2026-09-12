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
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }

@.str.45 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.502 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.591 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.614 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.709 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.710 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.711 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DropTable(ptr noundef %pParse, ptr noundef %pName, i32 noundef %isView, i32 noundef %noErr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %isView.addr = alloca i32, align 4
  %noErr.addr = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %code = alloca i32, align 4
  %zTab = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zArg2 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %isView, ptr %isView.addr, align 4
  store i32 %noErr, ptr %noErr.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit_drop_table

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit_drop_table

if.end4:                                          ; preds = %if.end
  %5 = load i32, ptr %noErr.addr, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %db, align 8
  %suppressErr = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 23
  %7 = load i8, ptr %suppressErr, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr %suppressErr, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load i32, ptr %isView.addr, align 4
  %10 = load ptr, ptr %pName.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %call8 = call ptr @sqlite3LocateTableItem(ptr noundef %8, i32 noundef %9, ptr noundef %arrayidx)
  store ptr %call8, ptr %pTab, align 8
  %11 = load i32, ptr %noErr.addr, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %12 = load ptr, ptr %db, align 8
  %suppressErr11 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 23
  %13 = load i8, ptr %suppressErr11, align 1
  %dec = add i8 %13, -1
  store i8 %dec, ptr %suppressErr11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %14 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end12
  %15 = load i32, ptr %noErr.addr, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.then13
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pName.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.SrcList, ptr %17, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a16, i64 0, i64 0
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx17, i32 0, i32 1
  %18 = load ptr, ptr %zDatabase, align 8
  call void @sqlite3CodeVerifyNamedSchema(ptr noundef %16, ptr noundef %18)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then13
  br label %exit_drop_table

if.end19:                                         ; preds = %if.end12
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %pSchema, align 8
  %call20 = call i32 @sqlite3SchemaToIndex(ptr noundef %19, ptr noundef %21)
  store i32 %call20, ptr %iDb, align 4
  %22 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 16
  %23 = load i32, ptr %nModuleArg, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end19
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pTab, align 8
  %call22 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %24, ptr noundef %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true
  br label %exit_drop_table

if.end25:                                         ; preds = %land.lhs.true, %if.end19
  %26 = load i32, ptr %iDb, align 4
  %cmp26 = icmp eq i32 %26, 1
  %27 = zext i1 %cmp26 to i64
  %cond = select i1 %cmp26, ptr @.str.331, ptr @.str.320
  store ptr %cond, ptr %zTab, align 8
  %28 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %aDb, align 8
  %30 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds %struct.Db, ptr %29, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx27, i32 0, i32 0
  %31 = load ptr, ptr %zDbSName, align 8
  store ptr %31, ptr %zDb, align 8
  store ptr null, ptr %zArg2, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %zTab, align 8
  %34 = load ptr, ptr %zDb, align 8
  %call28 = call i32 @sqlite3AuthCheck(ptr noundef %32, i32 noundef 9, ptr noundef %33, ptr noundef null, ptr noundef %34)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  br label %exit_drop_table

if.end31:                                         ; preds = %if.end25
  %35 = load i32, ptr %isView.addr, align 4
  %tobool32 = icmp ne i32 %35, 0
  br i1 %tobool32, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end31
  %36 = load i32, ptr %iDb, align 4
  %cmp34 = icmp eq i32 %36, 1
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then33
  store i32 15, ptr %code, align 4
  br label %if.end36

if.else:                                          ; preds = %if.then33
  store i32 17, ptr %code, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then35
  br label %if.end48

if.else37:                                        ; preds = %if.end31
  %37 = load ptr, ptr %pTab, align 8
  %nModuleArg38 = getelementptr inbounds nuw %struct.Table, ptr %37, i32 0, i32 16
  %38 = load i32, ptr %nModuleArg38, align 4
  %tobool39 = icmp ne i32 %38, 0
  br i1 %tobool39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else37
  store i32 30, ptr %code, align 4
  %39 = load ptr, ptr %db, align 8
  %40 = load ptr, ptr %pTab, align 8
  %call41 = call ptr @sqlite3GetVTable(ptr noundef %39, ptr noundef %40)
  %pMod = getelementptr inbounds nuw %struct.VTable, ptr %call41, i32 0, i32 1
  %41 = load ptr, ptr %pMod, align 8
  %zName = getelementptr inbounds nuw %struct.Module, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %zName, align 8
  store ptr %42, ptr %zArg2, align 8
  br label %if.end47

if.else42:                                        ; preds = %if.else37
  %43 = load i32, ptr %iDb, align 4
  %cmp43 = icmp eq i32 %43, 1
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %if.else42
  store i32 13, ptr %code, align 4
  br label %if.end46

if.else45:                                        ; preds = %if.else42
  store i32 11, ptr %code, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else45, %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end36
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load i32, ptr %code, align 4
  %46 = load ptr, ptr %pTab, align 8
  %zName49 = getelementptr inbounds nuw %struct.Table, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %zName49, align 8
  %48 = load ptr, ptr %zArg2, align 8
  %49 = load ptr, ptr %zDb, align 8
  %call50 = call i32 @sqlite3AuthCheck(ptr noundef %44, i32 noundef %45, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  br label %exit_drop_table

if.end53:                                         ; preds = %if.end48
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pTab, align 8
  %zName54 = getelementptr inbounds nuw %struct.Table, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zName54, align 8
  %53 = load ptr, ptr %zDb, align 8
  %call55 = call i32 @sqlite3AuthCheck(ptr noundef %50, i32 noundef 9, ptr noundef %52, ptr noundef null, ptr noundef %53)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end53
  br label %exit_drop_table

if.end58:                                         ; preds = %if.end53
  %54 = load ptr, ptr %pTab, align 8
  %zName59 = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %zName59, align 8
  %call60 = call i32 @sqlite3_strnicmp(ptr noundef %55, ptr noundef @.str.591, i32 noundef 7)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %land.lhs.true62, label %if.end73

land.lhs.true62:                                  ; preds = %if.end58
  %56 = load ptr, ptr %pTab, align 8
  %zName63 = getelementptr inbounds nuw %struct.Table, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %zName63, align 8
  %add.ptr = getelementptr inbounds i8, ptr %57, i64 7
  %call64 = call i32 @sqlite3_strnicmp(ptr noundef %add.ptr, ptr noundef @.str.45, i32 noundef 4)
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %land.lhs.true66, label %if.end73

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %58 = load ptr, ptr %pTab, align 8
  %zName67 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zName67, align 8
  %add.ptr68 = getelementptr inbounds i8, ptr %59, i64 7
  %call69 = call i32 @sqlite3_strnicmp(ptr noundef %add.ptr68, ptr noundef @.str.614, i32 noundef 10)
  %cmp70 = icmp ne i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.end73

if.then71:                                        ; preds = %land.lhs.true66
  %60 = load ptr, ptr %pParse.addr, align 8
  %61 = load ptr, ptr %pTab, align 8
  %zName72 = getelementptr inbounds nuw %struct.Table, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %zName72, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %60, ptr noundef @.str.709, ptr noundef %62)
  br label %exit_drop_table

if.end73:                                         ; preds = %land.lhs.true66, %land.lhs.true62, %if.end58
  %63 = load i32, ptr %isView.addr, align 4
  %tobool74 = icmp ne i32 %63, 0
  br i1 %tobool74, label %land.lhs.true75, label %if.end79

land.lhs.true75:                                  ; preds = %if.end73
  %64 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %64, i32 0, i32 3
  %65 = load ptr, ptr %pSelect, align 8
  %cmp76 = icmp eq ptr %65, null
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %land.lhs.true75
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load ptr, ptr %pTab, align 8
  %zName78 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %zName78, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %66, ptr noundef @.str.710, ptr noundef %68)
  br label %exit_drop_table

if.end79:                                         ; preds = %land.lhs.true75, %if.end73
  %69 = load i32, ptr %isView.addr, align 4
  %tobool80 = icmp ne i32 %69, 0
  br i1 %tobool80, label %if.end86, label %land.lhs.true81

land.lhs.true81:                                  ; preds = %if.end79
  %70 = load ptr, ptr %pTab, align 8
  %pSelect82 = getelementptr inbounds nuw %struct.Table, ptr %70, i32 0, i32 3
  %71 = load ptr, ptr %pSelect82, align 8
  %tobool83 = icmp ne ptr %71, null
  br i1 %tobool83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %land.lhs.true81
  %72 = load ptr, ptr %pParse.addr, align 8
  %73 = load ptr, ptr %pTab, align 8
  %zName85 = getelementptr inbounds nuw %struct.Table, ptr %73, i32 0, i32 0
  %74 = load ptr, ptr %zName85, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %72, ptr noundef @.str.711, ptr noundef %74)
  br label %exit_drop_table

if.end86:                                         ; preds = %land.lhs.true81, %if.end79
  %75 = load ptr, ptr %pParse.addr, align 8
  %call87 = call ptr @sqlite3GetVdbe(ptr noundef %75)
  store ptr %call87, ptr %v, align 8
  %76 = load ptr, ptr %v, align 8
  %tobool88 = icmp ne ptr %76, null
  br i1 %tobool88, label %if.then89, label %if.end94

if.then89:                                        ; preds = %if.end86
  %77 = load ptr, ptr %pParse.addr, align 8
  %78 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %77, i32 noundef 1, i32 noundef %78)
  %79 = load i32, ptr %isView.addr, align 4
  %tobool90 = icmp ne i32 %79, 0
  br i1 %tobool90, label %if.end93, label %if.then91

if.then91:                                        ; preds = %if.then89
  %80 = load ptr, ptr %pParse.addr, align 8
  %81 = load i32, ptr %iDb, align 4
  %82 = load ptr, ptr %pTab, align 8
  %zName92 = getelementptr inbounds nuw %struct.Table, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %zName92, align 8
  call void @sqlite3ClearStatTables(ptr noundef %80, i32 noundef %81, ptr noundef @.str.502, ptr noundef %83)
  %84 = load ptr, ptr %pParse.addr, align 8
  %85 = load ptr, ptr %pName.addr, align 8
  %86 = load ptr, ptr %pTab, align 8
  call void @sqlite3FkDropTable(ptr noundef %84, ptr noundef %85, ptr noundef %86)
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %if.then89
  %87 = load ptr, ptr %pParse.addr, align 8
  %88 = load ptr, ptr %pTab, align 8
  %89 = load i32, ptr %iDb, align 4
  %90 = load i32, ptr %isView.addr, align 4
  call void @sqlite3CodeDropTable(ptr noundef %87, ptr noundef %88, i32 noundef %89, i32 noundef %90)
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end86
  br label %exit_drop_table

exit_drop_table:                                  ; preds = %if.end94, %if.then84, %if.then77, %if.then71, %if.then57, %if.then52, %if.then30, %if.then24, %if.end18, %if.then3, %if.then
  %91 = load ptr, ptr %db, align 8
  %92 = load ptr, ptr %pName.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %91, ptr noundef %92)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifyNamedSchema(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearStatTables(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkDropTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeDropTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
