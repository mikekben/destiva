; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @clearSelect(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3SelectNew(ptr noundef %pParse, ptr noundef %pEList, ptr noundef %pSrc, ptr noundef %pWhere, ptr noundef %pGroupBy, ptr noundef %pHaving, ptr noundef %pOrderBy, i32 noundef %selFlags, ptr noundef %pLimit) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %pGroupBy.addr = alloca ptr, align 8
  %pHaving.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %selFlags.addr = alloca i32, align 4
  %pLimit.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %standin = alloca %struct.Select, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store ptr %pGroupBy, ptr %pGroupBy.addr, align 8
  store ptr %pHaving, ptr %pHaving.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store i32 %selFlags, ptr %selFlags.addr, align 4
  store ptr %pLimit, ptr %pLimit.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %1, i64 noundef 128)
  store ptr %call, ptr %pNew, align 8
  %2 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr %standin, ptr %pNew, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %pEList.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pParse.addr, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db3, align 8
  %call4 = call ptr @sqlite3Expr(ptr noundef %6, i32 noundef 175, ptr noundef null)
  %call5 = call ptr @sqlite3ExprListAppend(ptr noundef %4, ptr noundef null, ptr noundef %call4)
  store ptr %call5, ptr %pEList.addr, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %pEList.addr, align 8
  %8 = load ptr, ptr %pNew, align 8
  %pEList7 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 0
  store ptr %7, ptr %pEList7, align 8
  %9 = load ptr, ptr %pNew, align 8
  %op = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 1
  store i8 -122, ptr %op, align 8
  %10 = load i32, ptr %selFlags.addr, align 4
  %11 = load ptr, ptr %pNew, align 8
  %selFlags8 = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 3
  store i32 %10, ptr %selFlags8, align 4
  %12 = load ptr, ptr %pNew, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 4
  store i32 0, ptr %iLimit, align 8
  %13 = load ptr, ptr %pNew, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 5
  store i32 0, ptr %iOffset, align 4
  %14 = load ptr, ptr %pParse.addr, align 8
  %nSelect = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 31
  %15 = load i32, ptr %nSelect, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %nSelect, align 4
  %16 = load ptr, ptr %pNew, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 6
  store i32 %inc, ptr %selId, align 8
  %17 = load ptr, ptr %pNew, align 8
  %addrOpenEphm = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 7
  %arrayidx = getelementptr inbounds [2 x i32], ptr %addrOpenEphm, i64 0, i64 0
  store i32 -1, ptr %arrayidx, align 4
  %18 = load ptr, ptr %pNew, align 8
  %addrOpenEphm9 = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 7
  %arrayidx10 = getelementptr inbounds [2 x i32], ptr %addrOpenEphm9, i64 0, i64 1
  store i32 -1, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %pNew, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 2
  store i16 0, ptr %nSelectRow, align 2
  %20 = load ptr, ptr %pSrc.addr, align 8
  %cmp11 = icmp eq ptr %20, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  %21 = load ptr, ptr %pParse.addr, align 8
  %db13 = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %db13, align 8
  %call14 = call ptr @sqlite3DbMallocZero(ptr noundef %22, i64 noundef 120)
  store ptr %call14, ptr %pSrc.addr, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6
  %23 = load ptr, ptr %pSrc.addr, align 8
  %24 = load ptr, ptr %pNew, align 8
  %pSrc16 = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 8
  store ptr %23, ptr %pSrc16, align 8
  %25 = load ptr, ptr %pWhere.addr, align 8
  %26 = load ptr, ptr %pNew, align 8
  %pWhere17 = getelementptr inbounds nuw %struct.Select, ptr %26, i32 0, i32 9
  store ptr %25, ptr %pWhere17, align 8
  %27 = load ptr, ptr %pGroupBy.addr, align 8
  %28 = load ptr, ptr %pNew, align 8
  %pGroupBy18 = getelementptr inbounds nuw %struct.Select, ptr %28, i32 0, i32 10
  store ptr %27, ptr %pGroupBy18, align 8
  %29 = load ptr, ptr %pHaving.addr, align 8
  %30 = load ptr, ptr %pNew, align 8
  %pHaving19 = getelementptr inbounds nuw %struct.Select, ptr %30, i32 0, i32 11
  store ptr %29, ptr %pHaving19, align 8
  %31 = load ptr, ptr %pOrderBy.addr, align 8
  %32 = load ptr, ptr %pNew, align 8
  %pOrderBy20 = getelementptr inbounds nuw %struct.Select, ptr %32, i32 0, i32 12
  store ptr %31, ptr %pOrderBy20, align 8
  %33 = load ptr, ptr %pNew, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %33, i32 0, i32 13
  store ptr null, ptr %pPrior, align 8
  %34 = load ptr, ptr %pNew, align 8
  %pNext = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 14
  store ptr null, ptr %pNext, align 8
  %35 = load ptr, ptr %pLimit.addr, align 8
  %36 = load ptr, ptr %pNew, align 8
  %pLimit21 = getelementptr inbounds nuw %struct.Select, ptr %36, i32 0, i32 15
  store ptr %35, ptr %pLimit21, align 8
  %37 = load ptr, ptr %pNew, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %37, i32 0, i32 16
  store ptr null, ptr %pWith, align 8
  %38 = load ptr, ptr %pNew, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %38, i32 0, i32 17
  store ptr null, ptr %pWin, align 8
  %39 = load ptr, ptr %pNew, align 8
  %pWinDefn = getelementptr inbounds nuw %struct.Select, ptr %39, i32 0, i32 18
  store ptr null, ptr %pWinDefn, align 8
  %40 = load ptr, ptr %pParse.addr, align 8
  %db22 = getelementptr inbounds nuw %struct.Parse, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %db22, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 19
  %42 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %42, 0
  br i1 %tobool, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end15
  %43 = load ptr, ptr %pParse.addr, align 8
  %db24 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %db24, align 8
  %45 = load ptr, ptr %pNew, align 8
  %46 = load ptr, ptr %pNew, align 8
  %cmp25 = icmp ne ptr %46, %standin
  %conv = zext i1 %cmp25 to i32
  call void @clearSelect(ptr noundef %44, ptr noundef %45, i32 noundef %conv)
  store ptr null, ptr %pNew, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end15
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then23
  %47 = load ptr, ptr %pNew, align 8
  ret ptr %47
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
