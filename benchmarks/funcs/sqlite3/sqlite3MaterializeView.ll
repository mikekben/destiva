; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
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
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectNew(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3MaterializeView(ptr noundef %pParse, ptr noundef %pView, ptr noundef %pWhere, ptr noundef %pOrderBy, ptr noundef %pLimit, i32 noundef %iCur) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pView.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pLimit.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %dest = alloca %struct.SelectDest, align 8
  %pSel = alloca ptr, align 8
  %pFrom = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pView, ptr %pView.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pLimit, ptr %pLimit.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pView.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 20
  %4 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %2, ptr noundef %4)
  store i32 %call, ptr %iDb, align 4
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pWhere.addr, align 8
  %call2 = call ptr @sqlite3ExprDup(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  store ptr %call2, ptr %pWhere.addr, align 8
  %7 = load ptr, ptr %pParse.addr, align 8
  %call3 = call ptr @sqlite3SrcListAppend(ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %call3, ptr %pFrom, align 8
  %8 = load ptr, ptr %pFrom, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %pView.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zName, align 8
  %call4 = call ptr @sqlite3DbStrDup(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %pFrom, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zName5 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 2
  store ptr %call4, ptr %zName5, align 8
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aDb, align 8
  %16 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds %struct.Db, ptr %15, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx6, i32 0, i32 0
  %17 = load ptr, ptr %zDbSName, align 8
  %call7 = call ptr @sqlite3DbStrDup(ptr noundef %13, ptr noundef %17)
  %18 = load ptr, ptr %pFrom, align 8
  %a8 = getelementptr inbounds nuw %struct.SrcList, ptr %18, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a8, i64 0, i64 0
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx9, i32 0, i32 1
  store ptr %call7, ptr %zDatabase, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pFrom, align 8
  %21 = load ptr, ptr %pWhere.addr, align 8
  %22 = load ptr, ptr %pOrderBy.addr, align 8
  %23 = load ptr, ptr %pLimit.addr, align 8
  %call10 = call ptr @sqlite3SelectNew(ptr noundef %19, ptr noundef null, ptr noundef %20, ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef %22, i32 noundef 131072, ptr noundef %23)
  store ptr %call10, ptr %pSel, align 8
  %24 = load i32, ptr %iCur.addr, align 4
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 12, i32 noundef %24)
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %pSel, align 8
  %call11 = call i32 @sqlite3Select(ptr noundef %25, ptr noundef %26, ptr noundef %dest)
  %27 = load ptr, ptr %db, align 8
  %28 = load ptr, ptr %pSel, align 8
  call void @sqlite3SelectDelete(ptr noundef %27, ptr noundef %28)
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
