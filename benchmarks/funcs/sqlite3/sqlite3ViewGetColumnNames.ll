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
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.654 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ResultSetOfSelect(ptr noundef, ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListAssignCursors(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ViewGetColumnNames(ptr noundef %pParse, ptr noundef %pTable) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %pSelTab = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  %nErr = alloca i32, align 4
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xAuth = alloca ptr, align 8
  %eParseMode = alloca i8, align 1
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  store i32 0, ptr %nErr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %nSchemaLock = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 10
  %3 = load i32, ptr %nSchemaLock, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nSchemaLock, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pTable.addr, align 8
  %call = call i32 @sqlite3VtabCallConnect(ptr noundef %4, ptr noundef %5)
  store i32 %call, ptr %rc, align 4
  %6 = load ptr, ptr %db, align 8
  %nSchemaLock2 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 10
  %7 = load i32, ptr %nSchemaLock2, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %nSchemaLock2, align 8
  %8 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pTable.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %nModuleArg, align 4
  %tobool3 = icmp ne i32 %10, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %pTable.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 11
  %12 = load i16, ptr %nCol, align 2
  %conv = sext i16 %12 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %13 = load ptr, ptr %pTable.addr, align 8
  %nCol9 = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 11
  %14 = load i16, ptr %nCol9, align 2
  %conv10 = sext i16 %14 to i32
  %cmp11 = icmp slt i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pTable.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %15, ptr noundef @.str.654, ptr noundef %17)
  store i32 1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %pTable.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %pSelect, align 8
  %call15 = call ptr @sqlite3SelectDup(ptr noundef %18, ptr noundef %20, i32 noundef 0)
  store ptr %call15, ptr %pSel, align 8
  %21 = load ptr, ptr %pSel, align 8
  %tobool16 = icmp ne ptr %21, null
  br i1 %tobool16, label %if.then17, label %if.else62

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %pParse.addr, align 8
  %eParseMode18 = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 51
  %23 = load i8, ptr %eParseMode18, align 4
  store i8 %23, ptr %eParseMode, align 1
  %24 = load ptr, ptr %pParse.addr, align 8
  %eParseMode19 = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 51
  store i8 0, ptr %eParseMode19, align 4
  %25 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 17
  %26 = load i32, ptr %nTab, align 4
  store i32 %26, ptr %n, align 4
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %pSel, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %28, i32 0, i32 8
  %29 = load ptr, ptr %pSrc, align 8
  call void @sqlite3SrcListAssignCursors(ptr noundef %27, ptr noundef %29)
  %30 = load ptr, ptr %pTable.addr, align 8
  %nCol20 = getelementptr inbounds nuw %struct.Table, ptr %30, i32 0, i32 11
  store i16 -1, ptr %nCol20, align 2
  %31 = load ptr, ptr %db, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 0
  %32 = load i32, ptr %bDisable, align 8
  %inc21 = add i32 %32, 1
  store i32 %inc21, ptr %bDisable, align 8
  %33 = load ptr, ptr %db, align 8
  %xAuth22 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 62
  %34 = load ptr, ptr %xAuth22, align 8
  store ptr %34, ptr %xAuth, align 8
  %35 = load ptr, ptr %db, align 8
  %xAuth23 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 62
  store ptr null, ptr %xAuth23, align 8
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load ptr, ptr %pSel, align 8
  %call24 = call ptr @sqlite3ResultSetOfSelect(ptr noundef %36, ptr noundef %37, i8 noundef signext 64)
  store ptr %call24, ptr %pSelTab, align 8
  %38 = load ptr, ptr %xAuth, align 8
  %39 = load ptr, ptr %db, align 8
  %xAuth25 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 62
  store ptr %38, ptr %xAuth25, align 8
  %40 = load i32, ptr %n, align 4
  %41 = load ptr, ptr %pParse.addr, align 8
  %nTab26 = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 17
  store i32 %40, ptr %nTab26, align 4
  %42 = load ptr, ptr %pTable.addr, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %pCheck, align 8
  %tobool27 = icmp ne ptr %43, null
  br i1 %tobool27, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then17
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %pTable.addr, align 8
  %pCheck29 = getelementptr inbounds nuw %struct.Table, ptr %45, i32 0, i32 6
  %46 = load ptr, ptr %pCheck29, align 8
  %47 = load ptr, ptr %pTable.addr, align 8
  %nCol30 = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 11
  %48 = load ptr, ptr %pTable.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %48, i32 0, i32 1
  %call31 = call i32 @sqlite3ColumnsFromExprList(ptr noundef %44, ptr noundef %46, ptr noundef %nCol30, ptr noundef %aCol)
  %49 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %49, i32 0, i32 19
  %50 = load i8, ptr %mallocFailed, align 1
  %conv32 = zext i8 %50 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.then28
  %51 = load ptr, ptr %pParse.addr, align 8
  %nErr35 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 16
  %52 = load i32, ptr %nErr35, align 8
  %cmp36 = icmp eq i32 %52, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.end44

land.lhs.true38:                                  ; preds = %land.lhs.true
  %53 = load ptr, ptr %pTable.addr, align 8
  %nCol39 = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 11
  %54 = load i16, ptr %nCol39, align 2
  %conv40 = sext i16 %54 to i32
  %55 = load ptr, ptr %pSel, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %nExpr, align 8
  %cmp41 = icmp eq i32 %conv40, %57
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %land.lhs.true38
  %58 = load ptr, ptr %pParse.addr, align 8
  %59 = load ptr, ptr %pTable.addr, align 8
  %60 = load ptr, ptr %pSel, align 8
  call void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef %58, ptr noundef %59, ptr noundef %60, i8 noundef signext 64)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true38, %land.lhs.true, %if.then28
  br label %if.end57

if.else:                                          ; preds = %if.then17
  %61 = load ptr, ptr %pSelTab, align 8
  %tobool45 = icmp ne ptr %61, null
  br i1 %tobool45, label %if.then46, label %if.else53

if.then46:                                        ; preds = %if.else
  %62 = load ptr, ptr %pSelTab, align 8
  %nCol47 = getelementptr inbounds nuw %struct.Table, ptr %62, i32 0, i32 11
  %63 = load i16, ptr %nCol47, align 2
  %64 = load ptr, ptr %pTable.addr, align 8
  %nCol48 = getelementptr inbounds nuw %struct.Table, ptr %64, i32 0, i32 11
  store i16 %63, ptr %nCol48, align 2
  %65 = load ptr, ptr %pSelTab, align 8
  %aCol49 = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %aCol49, align 8
  %67 = load ptr, ptr %pTable.addr, align 8
  %aCol50 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 1
  store ptr %66, ptr %aCol50, align 8
  %68 = load ptr, ptr %pSelTab, align 8
  %nCol51 = getelementptr inbounds nuw %struct.Table, ptr %68, i32 0, i32 11
  store i16 0, ptr %nCol51, align 2
  %69 = load ptr, ptr %pSelTab, align 8
  %aCol52 = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 1
  store ptr null, ptr %aCol52, align 8
  br label %if.end56

if.else53:                                        ; preds = %if.else
  %70 = load ptr, ptr %pTable.addr, align 8
  %nCol54 = getelementptr inbounds nuw %struct.Table, ptr %70, i32 0, i32 11
  store i16 0, ptr %nCol54, align 2
  %71 = load i32, ptr %nErr, align 4
  %inc55 = add nsw i32 %71, 1
  store i32 %inc55, ptr %nErr, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then46
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end44
  %72 = load ptr, ptr %db, align 8
  %73 = load ptr, ptr %pSelTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %72, ptr noundef %73)
  %74 = load ptr, ptr %db, align 8
  %75 = load ptr, ptr %pSel, align 8
  call void @sqlite3SelectDelete(ptr noundef %74, ptr noundef %75)
  %76 = load ptr, ptr %db, align 8
  %lookaside58 = getelementptr inbounds nuw %struct.sqlite3, ptr %76, i32 0, i32 61
  %bDisable59 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside58, i32 0, i32 0
  %77 = load i32, ptr %bDisable59, align 8
  %dec60 = add i32 %77, -1
  store i32 %dec60, ptr %bDisable59, align 8
  %78 = load i8, ptr %eParseMode, align 1
  %79 = load ptr, ptr %pParse.addr, align 8
  %eParseMode61 = getelementptr inbounds nuw %struct.Parse, ptr %79, i32 0, i32 51
  store i8 %78, ptr %eParseMode61, align 4
  br label %if.end64

if.else62:                                        ; preds = %if.end14
  %80 = load i32, ptr %nErr, align 4
  %inc63 = add nsw i32 %80, 1
  store i32 %inc63, ptr %nErr, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.end57
  %81 = load ptr, ptr %pTable.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %81, i32 0, i32 20
  %82 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %82, i32 0, i32 9
  %83 = load i16, ptr %schemaFlags, align 2
  %conv65 = zext i16 %83 to i32
  %or = or i32 %conv65, 2
  %conv66 = trunc i32 %or to i16
  store i16 %conv66, ptr %schemaFlags, align 2
  %84 = load ptr, ptr %db, align 8
  %mallocFailed67 = getelementptr inbounds nuw %struct.sqlite3, ptr %84, i32 0, i32 19
  %85 = load i8, ptr %mallocFailed67, align 1
  %tobool68 = icmp ne i8 %85, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.end64
  %86 = load ptr, ptr %db, align 8
  %87 = load ptr, ptr %pTable.addr, align 8
  call void @sqlite3DeleteColumnNames(ptr noundef %86, ptr noundef %87)
  %88 = load ptr, ptr %pTable.addr, align 8
  %aCol70 = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 1
  store ptr null, ptr %aCol70, align 8
  %89 = load ptr, ptr %pTable.addr, align 8
  %nCol71 = getelementptr inbounds nuw %struct.Table, ptr %89, i32 0, i32 11
  store i16 0, ptr %nCol71, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end64
  %90 = load i32, ptr %nErr, align 4
  store i32 %90, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then13, %if.then7, %if.then4, %if.then
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ColumnsFromExprList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabCallConnect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
