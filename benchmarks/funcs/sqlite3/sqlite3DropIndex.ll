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
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.503 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.818 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.819 = external hidden unnamed_addr constant [73 x i8], align 1
@.str.820 = external hidden unnamed_addr constant [49 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DropIndex(ptr noundef %pParse, ptr noundef %pName, i32 noundef %ifExists) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %ifExists.addr = alloca i32, align 4
  %pIndex = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %code = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %ifExists, ptr %ifExists.addr, align 4
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
  br label %exit_drop_index

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %4)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %exit_drop_index

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pName.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 2
  %7 = load ptr, ptr %zName, align 8
  %8 = load ptr, ptr %pName.addr, align 8
  %a4 = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a4, i64 0, i64 0
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx5, i32 0, i32 1
  %9 = load ptr, ptr %zDatabase, align 8
  %call6 = call ptr @sqlite3FindIndex(ptr noundef %5, ptr noundef %7, ptr noundef %9)
  store ptr %call6, ptr %pIndex, align 8
  %10 = load ptr, ptr %pIndex, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end3
  %11 = load i32, ptr %ifExists.addr, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.818, ptr noundef %13, i32 noundef 0)
  br label %if.end14

if.else:                                          ; preds = %if.then8
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pName.addr, align 8
  %a11 = getelementptr inbounds nuw %struct.SrcList, ptr %15, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a11, i64 0, i64 0
  %zDatabase13 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx12, i32 0, i32 1
  %16 = load ptr, ptr %zDatabase13, align 8
  call void @sqlite3CodeVerifyNamedSchema(ptr noundef %14, ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %17 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  br label %exit_drop_index

if.end15:                                         ; preds = %if.end3
  %18 = load ptr, ptr %pIndex, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp16 = icmp ne i32 %bf.cast, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %19 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %19, ptr noundef @.str.819, i32 noundef 0)
  br label %exit_drop_index

if.end18:                                         ; preds = %if.end15
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pIndex, align 8
  %pSchema = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %pSchema, align 8
  %call19 = call i32 @sqlite3SchemaToIndex(ptr noundef %20, ptr noundef %22)
  store i32 %call19, ptr %iDb, align 4
  store i32 10, ptr %code, align 4
  %23 = load ptr, ptr %pIndex, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pTable, align 8
  store ptr %24, ptr %pTab, align 8
  %25 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %aDb, align 8
  %27 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds %struct.Db, ptr %26, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx20, i32 0, i32 0
  %28 = load ptr, ptr %zDbSName, align 8
  store ptr %28, ptr %zDb, align 8
  %29 = load i32, ptr %iDb, align 4
  %cmp21 = icmp eq i32 %29, 1
  %30 = zext i1 %cmp21 to i64
  %cond = select i1 %cmp21, ptr @.str.331, ptr @.str.320
  store ptr %cond, ptr %zTab, align 8
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %zTab, align 8
  %33 = load ptr, ptr %zDb, align 8
  %call22 = call i32 @sqlite3AuthCheck(ptr noundef %31, i32 noundef 9, ptr noundef %32, ptr noundef null, ptr noundef %33)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  br label %exit_drop_index

if.end25:                                         ; preds = %if.end18
  %34 = load i32, ptr %iDb, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end25
  store i32 12, ptr %code, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load i32, ptr %code, align 4
  %37 = load ptr, ptr %pIndex, align 8
  %zName29 = getelementptr inbounds nuw %struct.Index, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zName29, align 8
  %39 = load ptr, ptr %pTab, align 8
  %zName30 = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zName30, align 8
  %41 = load ptr, ptr %zDb, align 8
  %call31 = call i32 @sqlite3AuthCheck(ptr noundef %35, i32 noundef %36, ptr noundef %38, ptr noundef %40, ptr noundef %41)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  br label %exit_drop_index

if.end34:                                         ; preds = %if.end28
  %42 = load ptr, ptr %pParse.addr, align 8
  %call35 = call ptr @sqlite3GetVdbe(ptr noundef %42)
  store ptr %call35, ptr %v, align 8
  %43 = load ptr, ptr %v, align 8
  %tobool36 = icmp ne ptr %43, null
  br i1 %tobool36, label %if.then37, label %if.end46

if.then37:                                        ; preds = %if.end34
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %44, i32 noundef 1, i32 noundef %45)
  %46 = load ptr, ptr %pParse.addr, align 8
  %47 = load ptr, ptr %db, align 8
  %aDb38 = getelementptr inbounds nuw %struct.sqlite3, ptr %47, i32 0, i32 4
  %48 = load ptr, ptr %aDb38, align 8
  %49 = load i32, ptr %iDb, align 4
  %idxprom39 = sext i32 %49 to i64
  %arrayidx40 = getelementptr inbounds %struct.Db, ptr %48, i64 %idxprom39
  %zDbSName41 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx40, i32 0, i32 0
  %50 = load ptr, ptr %zDbSName41, align 8
  %51 = load ptr, ptr %pIndex, align 8
  %zName42 = getelementptr inbounds nuw %struct.Index, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zName42, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %46, ptr noundef @.str.820, ptr noundef %50, ptr noundef @.str.320, ptr noundef %52)
  %53 = load ptr, ptr %pParse.addr, align 8
  %54 = load i32, ptr %iDb, align 4
  %55 = load ptr, ptr %pIndex, align 8
  %zName43 = getelementptr inbounds nuw %struct.Index, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %zName43, align 8
  call void @sqlite3ClearStatTables(ptr noundef %53, i32 noundef %54, ptr noundef @.str.503, ptr noundef %56)
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %57, i32 noundef %58)
  %59 = load ptr, ptr %pParse.addr, align 8
  %60 = load ptr, ptr %pIndex, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %60, i32 0, i32 11
  %61 = load i32, ptr %tnum, align 8
  %62 = load i32, ptr %iDb, align 4
  call void @destroyRootPage(ptr noundef %59, i32 noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %v, align 8
  %64 = load i32, ptr %iDb, align 4
  %65 = load ptr, ptr %pIndex, align 8
  %zName44 = getelementptr inbounds nuw %struct.Index, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %zName44, align 8
  %call45 = call i32 @sqlite3VdbeAddOp4(ptr noundef %63, i32 noundef 144, i32 noundef %64, i32 noundef 0, i32 noundef 0, ptr noundef %66, i32 noundef 0)
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %if.end34
  br label %exit_drop_index

exit_drop_index:                                  ; preds = %if.end46, %if.then33, %if.then24, %if.then17, %if.end14, %if.then2, %if.then
  %67 = load ptr, ptr %db, align 8
  %68 = load ptr, ptr %pName.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %67, ptr noundef %68)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifyNamedSchema(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearStatTables(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @destroyRootPage(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
