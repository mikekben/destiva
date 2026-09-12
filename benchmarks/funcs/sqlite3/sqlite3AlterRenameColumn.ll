; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.16 = external hidden unnamed_addr constant [21 x i8], align 1
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.940 = external hidden unnamed_addr constant [207 x i8], align 1
@.str.941 = external hidden unnamed_addr constant [120 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AlterRenameColumn(ptr noundef %pParse, ptr noundef %pSrc, ptr noundef %pOld, ptr noundef %pNew) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pOld.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %zOld = alloca ptr, align 8
  %zNew = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %iSchema = alloca i32, align 4
  %bQuote = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pOld, ptr %pOld.addr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %zOld, align 8
  store ptr null, ptr %zNew, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %call = call ptr @sqlite3LocateTableItem(ptr noundef %2, i32 noundef 0, ptr noundef %arrayidx)
  store ptr %call, ptr %pTab, align 8
  %4 = load ptr, ptr %pTab, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit_rename_column

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %6 = load ptr, ptr %pTab, align 8
  %call2 = call i32 @isAlterableTable(ptr noundef %5, ptr noundef %6)
  %cmp = icmp ne i32 0, %call2
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %exit_rename_column

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pTab, align 8
  %call5 = call i32 @isRealTable(ptr noundef %7, ptr noundef %8)
  %cmp6 = icmp ne i32 0, %call5
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %exit_rename_column

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %pSchema, align 8
  %call9 = call i32 @sqlite3SchemaToIndex(ptr noundef %9, ptr noundef %11)
  store i32 %call9, ptr %iSchema, align 4
  %12 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %aDb, align 8
  %14 = load i32, ptr %iSchema, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds %struct.Db, ptr %13, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx10, i32 0, i32 0
  %15 = load ptr, ptr %zDbSName, align 8
  store ptr %15, ptr %zDb, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %zDb, align 8
  %18 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  %call11 = call i32 @sqlite3AuthCheck(ptr noundef %16, i32 noundef 26, ptr noundef %17, ptr noundef %19, ptr noundef null)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  br label %exit_rename_column

if.end14:                                         ; preds = %if.end8
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pOld.addr, align 8
  %call15 = call ptr @sqlite3NameFromToken(ptr noundef %20, ptr noundef %21)
  store ptr %call15, ptr %zOld, align 8
  %22 = load ptr, ptr %zOld, align 8
  %tobool16 = icmp ne ptr %22, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  br label %exit_rename_column

if.end18:                                         ; preds = %if.end14
  store i32 0, ptr %iCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %23 = load i32, ptr %iCol, align 4
  %24 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 11
  %25 = load i16, ptr %nCol, align 2
  %conv = sext i16 %25 to i32
  %cmp19 = icmp slt i32 %23, %conv
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %aCol, align 8
  %28 = load i32, ptr %iCol, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds %struct.Column, ptr %27, i64 %idxprom21
  %zName23 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx22, i32 0, i32 0
  %29 = load ptr, ptr %zName23, align 8
  %30 = load ptr, ptr %zOld, align 8
  %call24 = call i32 @sqlite3StrICmp(ptr noundef %29, ptr noundef %30)
  %cmp25 = icmp eq i32 0, %call24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.body
  br label %for.end

if.end28:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %31 = load i32, ptr %iCol, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %iCol, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then27, %for.cond
  %32 = load i32, ptr %iCol, align 4
  %33 = load ptr, ptr %pTab, align 8
  %nCol29 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 11
  %34 = load i16, ptr %nCol29, align 2
  %conv30 = sext i16 %34 to i32
  %cmp31 = icmp eq i32 %32, %conv30
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.end
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %zOld, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %35, ptr noundef @.str.16, ptr noundef %36)
  br label %exit_rename_column

if.end34:                                         ; preds = %for.end
  %37 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %37)
  %38 = load ptr, ptr %db, align 8
  %39 = load ptr, ptr %pNew.addr, align 8
  %call35 = call ptr @sqlite3NameFromToken(ptr noundef %38, ptr noundef %39)
  store ptr %call35, ptr %zNew, align 8
  %40 = load ptr, ptr %zNew, align 8
  %tobool36 = icmp ne ptr %40, null
  br i1 %tobool36, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end34
  br label %exit_rename_column

if.end38:                                         ; preds = %if.end34
  %41 = load ptr, ptr %pNew.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %z, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx39, align 1
  %idxprom40 = zext i8 %43 to i64
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom40
  %44 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %44 to i32
  %and = and i32 %conv42, 128
  store i32 %and, ptr %bQuote, align 4
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %zDb, align 8
  %47 = load ptr, ptr %zDb, align 8
  %48 = load ptr, ptr %pTab, align 8
  %zName43 = getelementptr inbounds nuw %struct.Table, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %zName43, align 8
  %50 = load i32, ptr %iCol, align 4
  %51 = load ptr, ptr %zNew, align 8
  %52 = load i32, ptr %bQuote, align 4
  %53 = load i32, ptr %iSchema, align 4
  %cmp44 = icmp eq i32 %53, 1
  %conv45 = zext i1 %cmp44 to i32
  %54 = load ptr, ptr %pTab, align 8
  %zName46 = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %zName46, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %45, ptr noundef @.str.940, ptr noundef %46, ptr noundef @.str.320, ptr noundef %47, ptr noundef %49, i32 noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %conv45, ptr noundef %55)
  %56 = load ptr, ptr %pParse.addr, align 8
  %57 = load ptr, ptr %zDb, align 8
  %58 = load ptr, ptr %pTab, align 8
  %zName47 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zName47, align 8
  %60 = load i32, ptr %iCol, align 4
  %61 = load ptr, ptr %zNew, align 8
  %62 = load i32, ptr %bQuote, align 4
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %56, ptr noundef @.str.941, ptr noundef @.str.320, ptr noundef %57, ptr noundef %59, i32 noundef %60, ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %pParse.addr, align 8
  %64 = load i32, ptr %iSchema, align 4
  call void @renameReloadSchema(ptr noundef %63, i32 noundef %64)
  %65 = load ptr, ptr %pParse.addr, align 8
  %66 = load ptr, ptr %zDb, align 8
  %67 = load i32, ptr %iSchema, align 4
  %cmp48 = icmp eq i32 %67, 1
  %conv49 = zext i1 %cmp48 to i32
  call void @renameTestSchema(ptr noundef %65, ptr noundef %66, i32 noundef %conv49)
  br label %exit_rename_column

exit_rename_column:                               ; preds = %if.end38, %if.then37, %if.then33, %if.then17, %if.then13, %if.then7, %if.then3, %if.then
  %68 = load ptr, ptr %db, align 8
  %69 = load ptr, ptr %pSrc.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %db, align 8
  %71 = load ptr, ptr %zOld, align 8
  call void @sqlite3DbFree(ptr noundef %70, ptr noundef %71)
  %72 = load ptr, ptr %db, align 8
  %73 = load ptr, ptr %zNew, align 8
  call void @sqlite3DbFree(ptr noundef %72, ptr noundef %73)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isAlterableTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameReloadSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTestSchema(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isRealTable(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
