; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.510 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.650 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @generateColumnNames(ptr noundef %pParse, ptr noundef %pSelect) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pTabList = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %db = alloca ptr, align 8
  %fullName = alloca i32, align 4
  %srcName = alloca i32, align 4
  %p = alloca ptr, align 8
  %zName22 = alloca ptr, align 8
  %zCol = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %zName48 = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 50
  %5 = load i8, ptr %explain, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pParse.addr, align 8
  %colNamesSet = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %colNamesSet, align 4
  %tobool2 = icmp ne i8 %7, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 13
  %9 = load ptr, ptr %pPrior, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %pSelect.addr, align 8
  %pPrior6 = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 13
  %11 = load ptr, ptr %pPrior6, align 8
  store ptr %11, ptr %pSelect.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %pSelect.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %pSrc, align 8
  store ptr %13, ptr %pTabList, align 8
  %14 = load ptr, ptr %pSelect.addr, align 8
  %pEList7 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pEList7, align 8
  store ptr %15, ptr %pEList, align 8
  %16 = load ptr, ptr %pParse.addr, align 8
  %colNamesSet8 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 4
  store i8 1, ptr %colNamesSet8, align 4
  %17 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 7
  %18 = load i64, ptr %flags, align 8
  %and = and i64 %18, 4
  %cmp = icmp ne i64 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %fullName, align 4
  %19 = load ptr, ptr %db, align 8
  %flags9 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 7
  %20 = load i64, ptr %flags9, align 8
  %and10 = and i64 %20, 64
  %cmp11 = icmp ne i64 %and10, 0
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.end
  %21 = load i32, ptr %fullName, align 4
  %tobool13 = icmp ne i32 %21, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.end
  %22 = phi i1 [ true, %while.end ], [ %tobool13, %lor.rhs ]
  %lor.ext = zext i1 %22 to i32
  store i32 %lor.ext, ptr %srcName, align 4
  %23 = load ptr, ptr %v, align 8
  %24 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nExpr, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %23, i32 noundef %25)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end
  %26 = load i32, ptr %i, align 4
  %27 = load ptr, ptr %pEList, align 8
  %nExpr14 = getelementptr inbounds nuw %struct.ExprList, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %nExpr14, align 8
  %cmp15 = icmp slt i32 %26, %28
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %31 = load ptr, ptr %pExpr, align 8
  store ptr %31, ptr %p, align 8
  %32 = load ptr, ptr %pEList, align 8
  %a17 = getelementptr inbounds nuw %struct.ExprList, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %33 to i64
  %arrayidx19 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a17, i64 0, i64 %idxprom18
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx19, i32 0, i32 1
  %34 = load ptr, ptr %zName, align 8
  %tobool20 = icmp ne ptr %34, null
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %for.body
  %35 = load ptr, ptr %pEList, align 8
  %a23 = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a23, i64 0, i64 %idxprom24
  %zName26 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx25, i32 0, i32 1
  %37 = load ptr, ptr %zName26, align 8
  store ptr %37, ptr %zName22, align 8
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %i, align 4
  %40 = load ptr, ptr %zName22, align 8
  %call = call i32 @sqlite3VdbeSetColName(ptr noundef %38, i32 noundef %39, i32 noundef 0, ptr noundef %40, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end65

if.else:                                          ; preds = %for.body
  %41 = load i32, ptr %srcName, align 4
  %tobool27 = icmp ne i32 %41, 0
  br i1 %tobool27, label %land.lhs.true, label %if.else55

land.lhs.true:                                    ; preds = %if.else
  %42 = load ptr, ptr %p, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 0
  %43 = load i8, ptr %op, align 8
  %conv28 = zext i8 %43 to i32
  %cmp29 = icmp eq i32 %conv28, 162
  br i1 %cmp29, label %if.then31, label %if.else55

if.then31:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %p, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %44, i32 0, i32 9
  %45 = load i16, ptr %iColumn, align 8
  %conv32 = sext i16 %45 to i32
  store i32 %conv32, ptr %iCol, align 4
  %46 = load ptr, ptr %p, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 14
  %47 = load ptr, ptr %y, align 8
  store ptr %47, ptr %pTab, align 8
  %48 = load i32, ptr %iCol, align 4
  %cmp33 = icmp slt i32 %48, 0
  br i1 %cmp33, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.then31
  %49 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 10
  %50 = load i16, ptr %iPKey, align 4
  %conv36 = sext i16 %50 to i32
  store i32 %conv36, ptr %iCol, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then31
  %51 = load i32, ptr %iCol, align 4
  %cmp38 = icmp slt i32 %51, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end37
  store ptr @.str.510, ptr %zCol, align 8
  br label %if.end45

if.else41:                                        ; preds = %if.end37
  %52 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %aCol, align 8
  %54 = load i32, ptr %iCol, align 4
  %idxprom42 = sext i32 %54 to i64
  %arrayidx43 = getelementptr inbounds %struct.Column, ptr %53, i64 %idxprom42
  %zName44 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx43, i32 0, i32 0
  %55 = load ptr, ptr %zName44, align 8
  store ptr %55, ptr %zCol, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then40
  %56 = load i32, ptr %fullName, align 4
  %tobool46 = icmp ne i32 %56, 0
  br i1 %tobool46, label %if.then47, label %if.else52

if.then47:                                        ; preds = %if.end45
  store ptr null, ptr %zName48, align 8
  %57 = load ptr, ptr %db, align 8
  %58 = load ptr, ptr %pTab, align 8
  %zName49 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zName49, align 8
  %60 = load ptr, ptr %zCol, align 8
  %call50 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %57, ptr noundef @.str.530, ptr noundef %59, ptr noundef %60)
  store ptr %call50, ptr %zName48, align 8
  %61 = load ptr, ptr %v, align 8
  %62 = load i32, ptr %i, align 4
  %63 = load ptr, ptr %zName48, align 8
  %call51 = call i32 @sqlite3VdbeSetColName(ptr noundef %61, i32 noundef %62, i32 noundef 0, ptr noundef %63, ptr noundef @sqlite3MallocSize)
  br label %if.end54

if.else52:                                        ; preds = %if.end45
  %64 = load ptr, ptr %v, align 8
  %65 = load i32, ptr %i, align 4
  %66 = load ptr, ptr %zCol, align 8
  %call53 = call i32 @sqlite3VdbeSetColName(ptr noundef %64, i32 noundef %65, i32 noundef 0, ptr noundef %66, ptr noundef inttoptr (i64 -1 to ptr))
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then47
  br label %if.end64

if.else55:                                        ; preds = %land.lhs.true, %if.else
  %67 = load ptr, ptr %pEList, align 8
  %a56 = getelementptr inbounds nuw %struct.ExprList, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %68 to i64
  %arrayidx58 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a56, i64 0, i64 %idxprom57
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx58, i32 0, i32 2
  %69 = load ptr, ptr %zSpan, align 8
  store ptr %69, ptr %z, align 8
  %70 = load ptr, ptr %z, align 8
  %cmp59 = icmp eq ptr %70, null
  br i1 %cmp59, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else55
  %71 = load ptr, ptr %db, align 8
  %72 = load i32, ptr %i, align 4
  %add = add nsw i32 %72, 1
  %call61 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %71, ptr noundef @.str.650, i32 noundef %add)
  br label %cond.end

cond.false:                                       ; preds = %if.else55
  %73 = load ptr, ptr %db, align 8
  %74 = load ptr, ptr %z, align 8
  %call62 = call ptr @sqlite3DbStrDup(ptr noundef %73, ptr noundef %74)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call61, %cond.true ], [ %call62, %cond.false ]
  store ptr %cond, ptr %z, align 8
  %75 = load ptr, ptr %v, align 8
  %76 = load i32, ptr %i, align 4
  %77 = load ptr, ptr %z, align 8
  %call63 = call i32 @sqlite3VdbeSetColName(ptr noundef %75, i32 noundef %76, i32 noundef 0, ptr noundef %77, ptr noundef @sqlite3MallocSize)
  br label %if.end64

if.end64:                                         ; preds = %cond.end, %if.end54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then21
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %78 = load i32, ptr %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %79 = load ptr, ptr %pParse.addr, align 8
  %80 = load ptr, ptr %pTabList, align 8
  %81 = load ptr, ptr %pEList, align 8
  call void @generateColumnTypes(ptr noundef %79, ptr noundef %80, ptr noundef %81)
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @generateColumnTypes(ptr noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
