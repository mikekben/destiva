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
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.937 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.938 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.939 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AlterBeginAddColumn(ptr noundef %pParse, ptr noundef %pSrc) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %i = alloca i32, align 4
  %nAlloc = alloca i32, align 4
  %db = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
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
  br label %exit_begin_add_column

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pSrc.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %call = call ptr @sqlite3LocateTableItem(ptr noundef %4, i32 noundef 0, ptr noundef %arrayidx)
  store ptr %call, ptr %pTab, align 8
  %6 = load ptr, ptr %pTab, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %exit_begin_add_column

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 16
  %8 = load i32, ptr %nModuleArg, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %9, ptr noundef @.str.937)
  br label %exit_begin_add_column

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pSelect, align 8
  %tobool8 = icmp ne ptr %11, null
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %12 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.938)
  br label %exit_begin_add_column

if.end10:                                         ; preds = %if.end7
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pTab, align 8
  %call11 = call i32 @isAlterableTable(ptr noundef %13, ptr noundef %14)
  %cmp = icmp ne i32 0, %call11
  br i1 %cmp, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  br label %exit_begin_add_column

if.end13:                                         ; preds = %if.end10
  %15 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %15)
  %16 = load ptr, ptr %db, align 8
  %17 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 20
  %18 = load ptr, ptr %pSchema, align 8
  %call14 = call i32 @sqlite3SchemaToIndex(ptr noundef %16, ptr noundef %18)
  store i32 %call14, ptr %iDb, align 4
  %19 = load ptr, ptr %db, align 8
  %call15 = call ptr @sqlite3DbMallocZero(ptr noundef %19, i64 noundef 128)
  store ptr %call15, ptr %pNew, align 8
  %20 = load ptr, ptr %pNew, align 8
  %tobool16 = icmp ne ptr %20, null
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end13
  br label %exit_begin_add_column

if.end18:                                         ; preds = %if.end13
  %21 = load ptr, ptr %pNew, align 8
  %22 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 58
  store ptr %21, ptr %pNewTable, align 8
  %23 = load ptr, ptr %pNew, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %24 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 11
  %25 = load i16, ptr %nCol, align 2
  %26 = load ptr, ptr %pNew, align 8
  %nCol19 = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 11
  store i16 %25, ptr %nCol19, align 2
  %27 = load ptr, ptr %pNew, align 8
  %nCol20 = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 11
  %28 = load i16, ptr %nCol20, align 2
  %conv = sext i16 %28 to i32
  %sub = sub nsw i32 %conv, 1
  %div = sdiv i32 %sub, 8
  %mul = mul nsw i32 %div, 8
  %add = add nsw i32 %mul, 8
  store i32 %add, ptr %nAlloc, align 4
  %29 = load ptr, ptr %db, align 8
  %30 = load i32, ptr %nAlloc, align 4
  %conv21 = sext i32 %30 to i64
  %mul22 = mul i64 32, %conv21
  %call23 = call ptr @sqlite3DbMallocZero(ptr noundef %29, i64 noundef %mul22)
  %31 = load ptr, ptr %pNew, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 1
  store ptr %call23, ptr %aCol, align 8
  %32 = load ptr, ptr %db, align 8
  %33 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zName, align 8
  %call24 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %32, ptr noundef @.str.939, ptr noundef %34)
  %35 = load ptr, ptr %pNew, align 8
  %zName25 = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 0
  store ptr %call24, ptr %zName25, align 8
  %36 = load ptr, ptr %pNew, align 8
  %aCol26 = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %aCol26, align 8
  %tobool27 = icmp ne ptr %37, null
  br i1 %tobool27, label %lor.lhs.false, label %if.then30

lor.lhs.false:                                    ; preds = %if.end18
  %38 = load ptr, ptr %pNew, align 8
  %zName28 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %zName28, align 8
  %tobool29 = icmp ne ptr %39, null
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %lor.lhs.false, %if.end18
  br label %exit_begin_add_column

if.end31:                                         ; preds = %lor.lhs.false
  %40 = load ptr, ptr %pNew, align 8
  %aCol32 = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aCol32, align 8
  %42 = load ptr, ptr %pTab, align 8
  %aCol33 = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %aCol33, align 8
  %44 = load ptr, ptr %pNew, align 8
  %nCol34 = getelementptr inbounds nuw %struct.Table, ptr %44, i32 0, i32 11
  %45 = load i16, ptr %nCol34, align 2
  %conv35 = sext i16 %45 to i64
  %mul36 = mul i64 32, %conv35
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %41, ptr align 8 %43, i64 %mul36, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end31
  %46 = load i32, ptr %i, align 4
  %47 = load ptr, ptr %pNew, align 8
  %nCol37 = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 11
  %48 = load i16, ptr %nCol37, align 2
  %conv38 = sext i16 %48 to i32
  %cmp39 = icmp slt i32 %46, %conv38
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load ptr, ptr %pNew, align 8
  %aCol41 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %aCol41, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom = sext i32 %51 to i64
  %arrayidx42 = getelementptr inbounds %struct.Column, ptr %50, i64 %idxprom
  store ptr %arrayidx42, ptr %pCol, align 8
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %pCol, align 8
  %zName43 = getelementptr inbounds nuw %struct.Column, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zName43, align 8
  %call44 = call ptr @sqlite3DbStrDup(ptr noundef %52, ptr noundef %54)
  %55 = load ptr, ptr %pCol, align 8
  %zName45 = getelementptr inbounds nuw %struct.Column, ptr %55, i32 0, i32 0
  store ptr %call44, ptr %zName45, align 8
  %56 = load ptr, ptr %pCol, align 8
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %56, i32 0, i32 2
  store ptr null, ptr %zColl, align 8
  %57 = load ptr, ptr %pCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %57, i32 0, i32 1
  store ptr null, ptr %pDflt, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %58 = load i32, ptr %i, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %aDb, align 8
  %61 = load i32, ptr %iDb, align 4
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds %struct.Db, ptr %60, i64 %idxprom46
  %pSchema48 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx47, i32 0, i32 4
  %62 = load ptr, ptr %pSchema48, align 8
  %63 = load ptr, ptr %pNew, align 8
  %pSchema49 = getelementptr inbounds nuw %struct.Table, ptr %63, i32 0, i32 20
  store ptr %62, ptr %pSchema49, align 8
  %64 = load ptr, ptr %pTab, align 8
  %addColOffset = getelementptr inbounds nuw %struct.Table, ptr %64, i32 0, i32 15
  %65 = load i32, ptr %addColOffset, align 8
  %66 = load ptr, ptr %pNew, align 8
  %addColOffset50 = getelementptr inbounds nuw %struct.Table, ptr %66, i32 0, i32 15
  store i32 %65, ptr %addColOffset50, align 8
  %67 = load ptr, ptr %pNew, align 8
  %nTabRef51 = getelementptr inbounds nuw %struct.Table, ptr %67, i32 0, i32 8
  store i32 1, ptr %nTabRef51, align 4
  br label %exit_begin_add_column

exit_begin_add_column:                            ; preds = %for.end, %if.then30, %if.then17, %if.then12, %if.then9, %if.then6, %if.then3, %if.then
  %68 = load ptr, ptr %db, align 8
  %69 = load ptr, ptr %pSrc.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %68, ptr noundef %69)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @isAlterableTable(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
