; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.944 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.945 = external hidden unnamed_addr constant [88 x i8], align 1
@.str.946 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabFinishParse(ptr noundef %pParse, ptr noundef %pEnd) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zStmt = alloca ptr, align 8
  %zWhere = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %iReg = alloca i32, align 4
  %v = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %pSchema23 = alloca ptr, align 8
  %zName25 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 58
  %1 = load ptr, ptr %pNewTable, align 8
  store ptr %1, ptr %pTab, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end32

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  call void @addArgumentToVtab(ptr noundef %5)
  %6 = load ptr, ptr %pParse.addr, align 8
  %sArg = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 62
  %z = getelementptr inbounds nuw %struct.Token, ptr %sArg, i32 0, i32 0
  store ptr null, ptr %z, align 8
  %7 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 16
  %8 = load i32, ptr %nModuleArg, align 4
  %cmp2 = icmp slt i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %if.end32

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %10 = load i8, ptr %busy, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pEnd.addr, align 8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.then5
  %12 = load ptr, ptr %pEnd.addr, align 8
  %z8 = getelementptr inbounds nuw %struct.Token, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %z8, align 8
  %14 = load ptr, ptr %pParse.addr, align 8
  %sNameToken = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 46
  %z9 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken, i32 0, i32 0
  %15 = load ptr, ptr %z9, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %16 = load ptr, ptr %pEnd.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %n, align 8
  %add = add i32 %conv, %17
  %18 = load ptr, ptr %pParse.addr, align 8
  %sNameToken10 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 46
  %n11 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken10, i32 0, i32 1
  store i32 %add, ptr %n11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.then5
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %sNameToken13 = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 46
  %call = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %19, ptr noundef @.str.944, ptr noundef %sNameToken13)
  store ptr %call, ptr %zStmt, align 8
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 20
  %23 = load ptr, ptr %pSchema, align 8
  %call14 = call i32 @sqlite3SchemaToIndex(ptr noundef %21, ptr noundef %23)
  store i32 %call14, ptr %iDb, align 4
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %aDb, align 8
  %27 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %26, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %28 = load ptr, ptr %zDbSName, align 8
  %29 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %zName, align 8
  %31 = load ptr, ptr %pTab, align 8
  %zName15 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %zName15, align 8
  %33 = load ptr, ptr %zStmt, align 8
  %34 = load ptr, ptr %pParse.addr, align 8
  %regRowid = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 28
  %35 = load i32, ptr %regRowid, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %24, ptr noundef @.str.945, ptr noundef %28, ptr noundef @.str.320, ptr noundef %30, ptr noundef %32, ptr noundef %33, i32 noundef %35)
  %36 = load ptr, ptr %db, align 8
  %37 = load ptr, ptr %zStmt, align 8
  call void @sqlite3DbFree(ptr noundef %36, ptr noundef %37)
  %38 = load ptr, ptr %pParse.addr, align 8
  %call16 = call ptr @sqlite3GetVdbe(ptr noundef %38)
  store ptr %call16, ptr %v, align 8
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %v, align 8
  %call17 = call i32 @sqlite3VdbeAddOp0(ptr noundef %41, i32 noundef 158)
  %42 = load ptr, ptr %db, align 8
  %43 = load ptr, ptr %pTab, align 8
  %zName18 = getelementptr inbounds nuw %struct.Table, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %zName18, align 8
  %call19 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %42, ptr noundef @.str.946, ptr noundef %44)
  store ptr %call19, ptr %zWhere, align 8
  %45 = load ptr, ptr %v, align 8
  %46 = load i32, ptr %iDb, align 4
  %47 = load ptr, ptr %zWhere, align 8
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %45, i32 noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %48, i32 0, i32 18
  %49 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %iReg, align 4
  %50 = load ptr, ptr %v, align 8
  %51 = load i32, ptr %iReg, align 4
  %52 = load ptr, ptr %pTab, align 8
  %zName20 = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %zName20, align 8
  %call21 = call i32 @sqlite3VdbeLoadString(ptr noundef %50, i32 noundef %51, ptr noundef %53)
  %54 = load ptr, ptr %v, align 8
  %55 = load i32, ptr %iDb, align 4
  %56 = load i32, ptr %iReg, align 4
  %call22 = call i32 @sqlite3VdbeAddOp2(ptr noundef %54, i32 noundef 161, i32 noundef %55, i32 noundef %56)
  br label %if.end32

if.else:                                          ; preds = %if.end4
  %57 = load ptr, ptr %pTab, align 8
  %pSchema24 = getelementptr inbounds nuw %struct.Table, ptr %57, i32 0, i32 20
  %58 = load ptr, ptr %pSchema24, align 8
  store ptr %58, ptr %pSchema23, align 8
  %59 = load ptr, ptr %pTab, align 8
  %zName26 = getelementptr inbounds nuw %struct.Table, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %zName26, align 8
  store ptr %60, ptr %zName25, align 8
  %61 = load ptr, ptr %pSchema23, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %zName25, align 8
  %63 = load ptr, ptr %pTab, align 8
  %call27 = call ptr @sqlite3HashInsert(ptr noundef %tblHash, ptr noundef %62, ptr noundef %63)
  store ptr %call27, ptr %pOld, align 8
  %64 = load ptr, ptr %pOld, align 8
  %tobool28 = icmp ne ptr %64, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  %65 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %65)
  br label %if.end32

if.end30:                                         ; preds = %if.else
  %66 = load ptr, ptr %pParse.addr, align 8
  %pNewTable31 = getelementptr inbounds nuw %struct.Parse, ptr %66, i32 0, i32 58
  store ptr null, ptr %pNewTable31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.then29, %if.end12, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAddParseSchemaOp(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addArgumentToVtab(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
