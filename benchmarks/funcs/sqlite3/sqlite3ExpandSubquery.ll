; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.652 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExpandSubquery(ptr noundef %pParse, ptr noundef %pFrom) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pFrom.addr = alloca ptr, align 8
  %pSel = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pFrom, ptr %pFrom.addr, align 8
  %0 = load ptr, ptr %pFrom.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pSelect, align 8
  store ptr %1, ptr %pSel, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %3, i64 noundef 128)
  store ptr %call, ptr %pTab, align 8
  %4 = load ptr, ptr %pFrom.addr, align 8
  %pTab1 = getelementptr inbounds nuw %struct.SrcList_item, ptr %4, i32 0, i32 4
  store ptr %call, ptr %pTab1, align 8
  %5 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %7 = load ptr, ptr %pFrom.addr, align 8
  %zAlias = getelementptr inbounds nuw %struct.SrcList_item, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %zAlias, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db3, align 8
  %11 = load ptr, ptr %pFrom.addr, align 8
  %zAlias4 = getelementptr inbounds nuw %struct.SrcList_item, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %zAlias4, align 8
  %call5 = call ptr @sqlite3DbStrDup(ptr noundef %10, ptr noundef %12)
  %13 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 0
  store ptr %call5, ptr %zName, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  %14 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %db6, align 8
  %16 = load ptr, ptr %pSel, align 8
  %selId = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %selId, align 8
  %call7 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %15, ptr noundef @.str.652, i32 noundef %17)
  %18 = load ptr, ptr %pTab, align 8
  %zName8 = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 0
  store ptr %call7, ptr %zName8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %19 = load ptr, ptr %pSel, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pPrior, align 8
  %tobool10 = icmp ne ptr %20, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %pSel, align 8
  %pPrior11 = getelementptr inbounds nuw %struct.Select, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %pPrior11, align 8
  store ptr %22, ptr %pSel, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pSel, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pEList, align 8
  %26 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 1
  %call12 = call i32 @sqlite3ColumnsFromExprList(ptr noundef %23, ptr noundef %25, ptr noundef %nCol, ptr noundef %aCol)
  %28 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 10
  store i16 -1, ptr %iPKey, align 4
  %29 = load ptr, ptr %pTab, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 12
  store i16 200, ptr %nRowLogEst, align 8
  %30 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %30, i32 0, i32 9
  %31 = load i32, ptr %tabFlags, align 8
  %or = or i32 %31, 2
  store i32 %or, ptr %tabFlags, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 16
  %33 = load i32, ptr %nErr, align 8
  %tobool13 = icmp ne i32 %33, 0
  %34 = zext i1 %tobool13 to i64
  %cond = select i1 %tobool13, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ColumnsFromExprList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
