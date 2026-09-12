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
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.330 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.588 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.922 = external hidden unnamed_addr constant [59 x i8], align 1
@.str.923 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.924 = external hidden unnamed_addr constant [173 x i8], align 1
@.str.925 = external hidden unnamed_addr constant [294 x i8], align 1
@.str.926 = external hidden unnamed_addr constant [58 x i8], align 1
@.str.927 = external hidden unnamed_addr constant [254 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8CharLen(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AlterRenameTable(ptr noundef %pParse, ptr noundef %pSrc, ptr noundef %pName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %nTabName = alloca i32, align 4
  %zTabName = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pVTab = alloca ptr, align 8
  %savedDbFlags = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr null, ptr %zName, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pVTab, align 8
  %2 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %mDbFlags, align 4
  store i32 %3, ptr %savedDbFlags, align 4
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %exit_rename_table

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %call = call ptr @sqlite3LocateTableItem(ptr noundef %6, i32 noundef 0, ptr noundef %arrayidx)
  store ptr %call, ptr %pTab, align 8
  %8 = load ptr, ptr %pTab, align 8
  %tobool2 = icmp ne ptr %8, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %exit_rename_table

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db5, align 8
  %11 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 20
  %12 = load ptr, ptr %pSchema, align 8
  %call6 = call i32 @sqlite3SchemaToIndex(ptr noundef %10, ptr noundef %12)
  store i32 %call6, ptr %iDb, align 4
  %13 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %aDb, align 8
  %15 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds %struct.Db, ptr %14, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx7, i32 0, i32 0
  %16 = load ptr, ptr %zDbSName, align 8
  store ptr %16, ptr %zDb, align 8
  %17 = load ptr, ptr %db, align 8
  %mDbFlags8 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %mDbFlags8, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %mDbFlags8, align 4
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pName.addr, align 8
  %call9 = call ptr @sqlite3NameFromToken(ptr noundef %19, ptr noundef %20)
  store ptr %call9, ptr %zName, align 8
  %21 = load ptr, ptr %zName, align 8
  %tobool10 = icmp ne ptr %21, null
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end4
  br label %exit_rename_table

if.end12:                                         ; preds = %if.end4
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %zName, align 8
  %24 = load ptr, ptr %zDb, align 8
  %call13 = call ptr @sqlite3FindTable(ptr noundef %22, ptr noundef %23, ptr noundef %24)
  %tobool14 = icmp ne ptr %call13, null
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end12
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %zName, align 8
  %27 = load ptr, ptr %zDb, align 8
  %call15 = call ptr @sqlite3FindIndex(ptr noundef %25, ptr noundef %26, ptr noundef %27)
  %tobool16 = icmp ne ptr %call15, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false, %if.end12
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %28, ptr noundef @.str.922, ptr noundef %29)
  br label %exit_rename_table

if.end18:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pTab, align 8
  %call19 = call i32 @isAlterableTable(ptr noundef %30, ptr noundef %31)
  %cmp = icmp ne i32 0, %call19
  br i1 %cmp, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  br label %exit_rename_table

if.end21:                                         ; preds = %if.end18
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %zName, align 8
  %34 = load ptr, ptr %zName, align 8
  %call22 = call i32 @sqlite3CheckObjectName(ptr noundef %32, ptr noundef %33, ptr noundef @.str.330, ptr noundef %34)
  %cmp23 = icmp ne i32 0, %call22
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %exit_rename_table

if.end25:                                         ; preds = %if.end21
  %35 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %pSelect, align 8
  %tobool26 = icmp ne ptr %36, null
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load ptr, ptr %pTab, align 8
  %zName28 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %zName28, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %37, ptr noundef @.str.923, ptr noundef %39)
  br label %exit_rename_table

if.end29:                                         ; preds = %if.end25
  %40 = load ptr, ptr %pParse.addr, align 8
  %41 = load ptr, ptr %zDb, align 8
  %42 = load ptr, ptr %pTab, align 8
  %zName30 = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %zName30, align 8
  %call31 = call i32 @sqlite3AuthCheck(ptr noundef %40, i32 noundef 26, ptr noundef %41, ptr noundef %43, ptr noundef null)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  br label %exit_rename_table

if.end34:                                         ; preds = %if.end29
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %pTab, align 8
  %call35 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %44, ptr noundef %45)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  br label %exit_rename_table

if.end38:                                         ; preds = %if.end34
  %46 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %46, i32 0, i32 16
  %47 = load i32, ptr %nModuleArg, align 4
  %tobool39 = icmp ne i32 %47, 0
  br i1 %tobool39, label %if.then40, label %if.end45

if.then40:                                        ; preds = %if.end38
  %48 = load ptr, ptr %db, align 8
  %49 = load ptr, ptr %pTab, align 8
  %call41 = call ptr @sqlite3GetVTable(ptr noundef %48, ptr noundef %49)
  store ptr %call41, ptr %pVTab, align 8
  %50 = load ptr, ptr %pVTab, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %pVtab, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %pModule, align 8
  %xRename = getelementptr inbounds nuw %struct.sqlite3_module, ptr %52, i32 0, i32 19
  %53 = load ptr, ptr %xRename, align 8
  %cmp42 = icmp eq ptr %53, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.then40
  store ptr null, ptr %pVTab, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end38
  %54 = load ptr, ptr %pParse.addr, align 8
  %call46 = call ptr @sqlite3GetVdbe(ptr noundef %54)
  store ptr %call46, ptr %v, align 8
  %55 = load ptr, ptr %v, align 8
  %cmp47 = icmp eq ptr %55, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  br label %exit_rename_table

if.end49:                                         ; preds = %if.end45
  %56 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %56)
  %57 = load ptr, ptr %pTab, align 8
  %zName50 = getelementptr inbounds nuw %struct.Table, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zName50, align 8
  store ptr %58, ptr %zTabName, align 8
  %59 = load ptr, ptr %zTabName, align 8
  %call51 = call i32 @sqlite3Utf8CharLen(ptr noundef %59, i32 noundef -1)
  store i32 %call51, ptr %nTabName, align 4
  %60 = load ptr, ptr %pParse.addr, align 8
  %61 = load ptr, ptr %zDb, align 8
  %62 = load ptr, ptr %zDb, align 8
  %63 = load ptr, ptr %zTabName, align 8
  %64 = load ptr, ptr %zName, align 8
  %65 = load i32, ptr %iDb, align 4
  %cmp52 = icmp eq i32 %65, 1
  %conv = zext i1 %cmp52 to i32
  %66 = load ptr, ptr %zTabName, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %60, ptr noundef @.str.924, ptr noundef %61, ptr noundef @.str.320, ptr noundef %62, ptr noundef %63, ptr noundef %64, i32 noundef %conv, ptr noundef %66)
  %67 = load ptr, ptr %pParse.addr, align 8
  %68 = load ptr, ptr %zDb, align 8
  %69 = load ptr, ptr %zName, align 8
  %70 = load ptr, ptr %zName, align 8
  %71 = load ptr, ptr %zName, align 8
  %72 = load i32, ptr %nTabName, align 4
  %73 = load ptr, ptr %zTabName, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %67, ptr noundef @.str.925, ptr noundef %68, ptr noundef @.str.320, ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %72, ptr noundef %73)
  %74 = load ptr, ptr %db, align 8
  %75 = load ptr, ptr %zDb, align 8
  %call53 = call ptr @sqlite3FindTable(ptr noundef %74, ptr noundef @.str.588, ptr noundef %75)
  %tobool54 = icmp ne ptr %call53, null
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.end49
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %zDb, align 8
  %78 = load ptr, ptr %zName, align 8
  %79 = load ptr, ptr %pTab, align 8
  %zName56 = getelementptr inbounds nuw %struct.Table, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %zName56, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %76, ptr noundef @.str.926, ptr noundef %77, ptr noundef %78, ptr noundef %80)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end49
  %81 = load i32, ptr %iDb, align 4
  %cmp58 = icmp ne i32 %81, 1
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end57
  %82 = load ptr, ptr %pParse.addr, align 8
  %83 = load ptr, ptr %zDb, align 8
  %84 = load ptr, ptr %zTabName, align 8
  %85 = load ptr, ptr %zName, align 8
  %86 = load ptr, ptr %zTabName, align 8
  %87 = load ptr, ptr %zDb, align 8
  %88 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %82, ptr noundef @.str.927, ptr noundef %83, ptr noundef %84, ptr noundef %85, ptr noundef %86, ptr noundef %87, ptr noundef %88)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57
  %89 = load ptr, ptr %pVTab, align 8
  %tobool62 = icmp ne ptr %89, null
  br i1 %tobool62, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end61
  %90 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %90, i32 0, i32 18
  %91 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %91, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %i, align 4
  %92 = load ptr, ptr %v, align 8
  %93 = load i32, ptr %i, align 4
  %94 = load ptr, ptr %zName, align 8
  %call64 = call i32 @sqlite3VdbeLoadString(ptr noundef %92, i32 noundef %93, ptr noundef %94)
  %95 = load ptr, ptr %v, align 8
  %96 = load i32, ptr %i, align 4
  %97 = load ptr, ptr %pVTab, align 8
  %call65 = call i32 @sqlite3VdbeAddOp4(ptr noundef %95, i32 noundef 165, i32 noundef %96, i32 noundef 0, i32 noundef 0, ptr noundef %97, i32 noundef -12)
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61
  %98 = load ptr, ptr %pParse.addr, align 8
  %99 = load i32, ptr %iDb, align 4
  call void @renameReloadSchema(ptr noundef %98, i32 noundef %99)
  %100 = load ptr, ptr %pParse.addr, align 8
  %101 = load ptr, ptr %zDb, align 8
  %102 = load i32, ptr %iDb, align 4
  %cmp67 = icmp eq i32 %102, 1
  %conv68 = zext i1 %cmp67 to i32
  call void @renameTestSchema(ptr noundef %100, ptr noundef %101, i32 noundef %conv68)
  br label %exit_rename_table

exit_rename_table:                                ; preds = %if.end66, %if.then48, %if.then37, %if.then33, %if.then27, %if.then24, %if.then20, %if.then17, %if.then11, %if.then3, %if.then
  %103 = load ptr, ptr %db, align 8
  %104 = load ptr, ptr %pSrc.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %db, align 8
  %106 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %105, ptr noundef %106)
  %107 = load i32, ptr %savedDbFlags, align 4
  %108 = load ptr, ptr %db, align 8
  %mDbFlags69 = getelementptr inbounds nuw %struct.sqlite3, ptr %108, i32 0, i32 6
  store i32 %107, ptr %mDbFlags69, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CheckObjectName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isAlterableTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameReloadSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTestSchema(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
