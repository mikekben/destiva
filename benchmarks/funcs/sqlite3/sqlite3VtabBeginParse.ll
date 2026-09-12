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

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addModuleArgument(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StartTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabBeginParse(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2, ptr noundef %pModuleName, i32 noundef %ifNotExists) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %pModuleName.addr = alloca ptr, align 8
  %ifNotExists.addr = alloca i32, align 4
  %pTable = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store ptr %pModuleName, ptr %pModuleName.addr, align 8
  store i32 %ifNotExists, ptr %ifNotExists.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pName1.addr, align 8
  %2 = load ptr, ptr %pName2.addr, align 8
  %3 = load i32, ptr %ifNotExists.addr, align 4
  call void @sqlite3StartTable(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef %3)
  %4 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 58
  %5 = load ptr, ptr %pNewTable, align 8
  store ptr %5, ptr %pTable, align 8
  %6 = load ptr, ptr %pTable, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end15

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %db1, align 8
  store ptr %8, ptr %db, align 8
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pTable, align 8
  %11 = load ptr, ptr %db, align 8
  %12 = load ptr, ptr %pModuleName.addr, align 8
  %call = call ptr @sqlite3NameFromToken(ptr noundef %11, ptr noundef %12)
  call void @addModuleArgument(ptr noundef %9, ptr noundef %10, ptr noundef %call)
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pTable, align 8
  call void @addModuleArgument(ptr noundef %13, ptr noundef %14, ptr noundef null)
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pTable, align 8
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %pTable, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  %call2 = call ptr @sqlite3DbStrDup(ptr noundef %17, ptr noundef %19)
  call void @addModuleArgument(ptr noundef %15, ptr noundef %16, ptr noundef %call2)
  %20 = load ptr, ptr %pModuleName.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %z, align 8
  %22 = load ptr, ptr %pModuleName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %n, align 8
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom
  %24 = load ptr, ptr %pParse.addr, align 8
  %sNameToken = getelementptr inbounds nuw %struct.Parse, ptr %24, i32 0, i32 46
  %z3 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken, i32 0, i32 0
  %25 = load ptr, ptr %z3, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %26 = load ptr, ptr %pParse.addr, align 8
  %sNameToken4 = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 46
  %n5 = getelementptr inbounds nuw %struct.Token, ptr %sNameToken4, i32 0, i32 1
  store i32 %conv, ptr %n5, align 8
  %27 = load ptr, ptr %pTable, align 8
  %azModuleArg = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 17
  %28 = load ptr, ptr %azModuleArg, align 8
  %tobool = icmp ne ptr %28, null
  br i1 %tobool, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pTable, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %30, i32 0, i32 20
  %31 = load ptr, ptr %pSchema, align 8
  %call7 = call i32 @sqlite3SchemaToIndex(ptr noundef %29, ptr noundef %31)
  store i32 %call7, ptr %iDb, align 4
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %pTable, align 8
  %zName8 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zName8, align 8
  %35 = load ptr, ptr %pTable, align 8
  %azModuleArg9 = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %azModuleArg9, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %36, i64 0
  %37 = load ptr, ptr %arrayidx10, align 8
  %38 = load ptr, ptr %pParse.addr, align 8
  %db11 = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %db11, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 4
  %40 = load ptr, ptr %aDb, align 8
  %41 = load i32, ptr %iDb, align 4
  %idxprom12 = sext i32 %41 to i64
  %arrayidx13 = getelementptr inbounds %struct.Db, ptr %40, i64 %idxprom12
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx13, i32 0, i32 0
  %42 = load ptr, ptr %zDbSName, align 8
  %call14 = call i32 @sqlite3AuthCheck(ptr noundef %32, i32 noundef 29, ptr noundef %34, ptr noundef %37, ptr noundef %42)
  br label %if.end15

if.end15:                                         ; preds = %if.then6, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
