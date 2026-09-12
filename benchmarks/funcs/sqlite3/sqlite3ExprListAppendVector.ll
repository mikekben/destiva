; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.565 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprListAppendVector(ptr noundef %pParse, ptr noundef %pList, ptr noundef %pColumns, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %pColumns.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %iFirst = alloca i32, align 4
  %pSubExpr = alloca ptr, align 8
  %pFirst = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %pColumns, ptr %pColumns.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pList.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %iFirst, align 4
  %5 = load ptr, ptr %pColumns.addr, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %vector_append_error

if.end:                                           ; preds = %cond.end
  %6 = load ptr, ptr %pExpr.addr, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %vector_append_error

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %op, align 8
  %conv = zext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv, 134
  br i1 %cmp5, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %9 = load ptr, ptr %pColumns.addr, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nId, align 8
  %11 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprVectorSize(ptr noundef %11)
  store i32 %call, ptr %n, align 4
  %cmp7 = icmp ne i32 %10, %call
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pColumns.addr, align 8
  %nId10 = getelementptr inbounds nuw %struct.IdList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nId10, align 8
  %15 = load i32, ptr %n, align 4
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.565, i32 noundef %14, i32 noundef %15)
  br label %vector_append_error

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %pColumns.addr, align 8
  %nId12 = getelementptr inbounds nuw %struct.IdList, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %nId12, align 8
  %cmp13 = icmp slt i32 %16, %18
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pExpr.addr, align 8
  %21 = load i32, ptr %i, align 4
  %call15 = call ptr @sqlite3ExprForVectorField(ptr noundef %19, ptr noundef %20, i32 noundef %21)
  store ptr %call15, ptr %pSubExpr, align 8
  %22 = load ptr, ptr %pSubExpr, align 8
  %cmp16 = icmp eq ptr %22, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %23 = load ptr, ptr %pColumns.addr, align 8
  %nId20 = getelementptr inbounds nuw %struct.IdList, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nId20, align 8
  %25 = load ptr, ptr %pSubExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 8
  store i32 %24, ptr %iTable, align 4
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %pList.addr, align 8
  %28 = load ptr, ptr %pSubExpr, align 8
  %call21 = call ptr @sqlite3ExprListAppend(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  store ptr %call21, ptr %pList.addr, align 8
  %29 = load ptr, ptr %pList.addr, align 8
  %tobool22 = icmp ne ptr %29, null
  br i1 %tobool22, label %if.then23, label %if.end33

if.then23:                                        ; preds = %if.end19
  %30 = load ptr, ptr %pColumns.addr, align 8
  %a = getelementptr inbounds nuw %struct.IdList, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %a, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds %struct.IdList_item, ptr %31, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx, i32 0, i32 0
  %33 = load ptr, ptr %zName, align 8
  %34 = load ptr, ptr %pList.addr, align 8
  %a24 = getelementptr inbounds nuw %struct.ExprList, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %pList.addr, align 8
  %nExpr25 = getelementptr inbounds nuw %struct.ExprList, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nExpr25, align 8
  %sub = sub nsw i32 %36, 1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a24, i64 0, i64 %idxprom26
  %zName28 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx27, i32 0, i32 1
  store ptr %33, ptr %zName28, align 8
  %37 = load ptr, ptr %pColumns.addr, align 8
  %a29 = getelementptr inbounds nuw %struct.IdList, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %a29, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %39 to i64
  %arrayidx31 = getelementptr inbounds %struct.IdList_item, ptr %38, i64 %idxprom30
  %zName32 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx31, i32 0, i32 0
  store ptr null, ptr %zName32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %if.end19
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.then18
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 19
  %42 = load i8, ptr %mallocFailed, align 1
  %tobool34 = icmp ne i8 %42, 0
  br i1 %tobool34, label %if.end50, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %for.end
  %43 = load ptr, ptr %pExpr.addr, align 8
  %op36 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 0
  %44 = load i8, ptr %op36, align 8
  %conv37 = zext i8 %44 to i32
  %cmp38 = icmp eq i32 %conv37, 134
  br i1 %cmp38, label %land.lhs.true40, label %if.end50

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %45 = load ptr, ptr %pList.addr, align 8
  %cmp41 = icmp ne ptr %45, null
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %land.lhs.true40
  %46 = load ptr, ptr %pList.addr, align 8
  %a44 = getelementptr inbounds nuw %struct.ExprList, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %iFirst, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a44, i64 0, i64 %idxprom45
  %pExpr47 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx46, i32 0, i32 0
  %48 = load ptr, ptr %pExpr47, align 8
  store ptr %48, ptr %pFirst, align 8
  %49 = load ptr, ptr %pExpr.addr, align 8
  %50 = load ptr, ptr %pFirst, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 5
  store ptr %49, ptr %pRight, align 8
  store ptr null, ptr %pExpr.addr, align 8
  %51 = load ptr, ptr %pColumns.addr, align 8
  %nId48 = getelementptr inbounds nuw %struct.IdList, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %nId48, align 8
  %53 = load ptr, ptr %pFirst, align 8
  %iTable49 = getelementptr inbounds nuw %struct.Expr, ptr %53, i32 0, i32 8
  store i32 %52, ptr %iTable49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then43, %land.lhs.true40, %land.lhs.true35, %for.end
  br label %vector_append_error

vector_append_error:                              ; preds = %if.end50, %if.then9, %if.then3, %if.then
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprUnmapAndDelete(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %db, align 8
  %57 = load ptr, ptr %pColumns.addr, align 8
  call void @sqlite3IdListDelete(ptr noundef %56, ptr noundef %57)
  %58 = load ptr, ptr %pList.addr, align 8
  ret ptr %58
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprUnmapAndDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprVectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprForVectorField(ptr noundef, ptr noundef, i32 noundef) #0

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
