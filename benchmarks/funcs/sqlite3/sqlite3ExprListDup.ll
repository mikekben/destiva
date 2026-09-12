; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprListDup(ptr noundef %db, ptr noundef %p, i32 noundef %flags) #1 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pOldItem = alloca ptr, align 8
  %i = alloca i32, align 4
  %pPriorSelectCol = alloca ptr, align 8
  %pOldExpr = alloca ptr, align 8
  %pNewExpr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr null, ptr %pPriorSelectCol, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3DbMallocSize(ptr noundef %2, ptr noundef %3)
  %conv = sext i32 %call to i64
  %call1 = call ptr @sqlite3DbMallocRawNN(ptr noundef %1, i64 noundef %conv)
  store ptr %call1, ptr %pNew, align 8
  %4 = load ptr, ptr %pNew, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %7 = load ptr, ptr %pNew, align 8
  %nExpr6 = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 0
  store i32 %6, ptr %nExpr6, align 8
  %8 = load ptr, ptr %pNew, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %8, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %a7 = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a7, i64 0, i64 0
  store ptr %arraydecay8, ptr %pOldItem, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %nExpr9 = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nExpr9, align 8
  %cmp10 = icmp slt i32 %10, %12
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pOldItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pExpr, align 8
  store ptr %14, ptr %pOldExpr, align 8
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %pOldExpr, align 8
  %17 = load i32, ptr %flags.addr, align 4
  %call12 = call ptr @sqlite3ExprDup(ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %pItem, align 8
  %pExpr13 = getelementptr inbounds nuw %struct.ExprList_item, ptr %18, i32 0, i32 0
  store ptr %call12, ptr %pExpr13, align 8
  %19 = load ptr, ptr %pOldExpr, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %for.body
  %20 = load ptr, ptr %pOldExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 0
  %21 = load i8, ptr %op, align 8
  %conv14 = zext i8 %21 to i32
  %cmp15 = icmp eq i32 %conv14, 173
  br i1 %cmp15, label %land.lhs.true17, label %if.end28

land.lhs.true17:                                  ; preds = %land.lhs.true
  %22 = load ptr, ptr %pItem, align 8
  %pExpr18 = getelementptr inbounds nuw %struct.ExprList_item, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pExpr18, align 8
  store ptr %23, ptr %pNewExpr, align 8
  %cmp19 = icmp ne ptr %23, null
  br i1 %cmp19, label %if.then21, label %if.end28

if.then21:                                        ; preds = %land.lhs.true17
  %24 = load ptr, ptr %pNewExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 9
  %25 = load i16, ptr %iColumn, align 8
  %conv22 = sext i16 %25 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then21
  %26 = load ptr, ptr %pNewExpr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pRight, align 8
  %28 = load ptr, ptr %pNewExpr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %28, i32 0, i32 4
  store ptr %27, ptr %pLeft, align 8
  store ptr %27, ptr %pPriorSelectCol, align 8
  br label %if.end27

if.else:                                          ; preds = %if.then21
  %29 = load ptr, ptr %pPriorSelectCol, align 8
  %30 = load ptr, ptr %pNewExpr, align 8
  %pLeft26 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 4
  store ptr %29, ptr %pLeft26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then25
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %land.lhs.true17, %land.lhs.true, %for.body
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %pOldItem, align 8
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %zName, align 8
  %call29 = call ptr @sqlite3DbStrDup(ptr noundef %31, ptr noundef %33)
  %34 = load ptr, ptr %pItem, align 8
  %zName30 = getelementptr inbounds nuw %struct.ExprList_item, ptr %34, i32 0, i32 1
  store ptr %call29, ptr %zName30, align 8
  %35 = load ptr, ptr %db.addr, align 8
  %36 = load ptr, ptr %pOldItem, align 8
  %zSpan = getelementptr inbounds nuw %struct.ExprList_item, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %zSpan, align 8
  %call31 = call ptr @sqlite3DbStrDup(ptr noundef %35, ptr noundef %37)
  %38 = load ptr, ptr %pItem, align 8
  %zSpan32 = getelementptr inbounds nuw %struct.ExprList_item, ptr %38, i32 0, i32 2
  store ptr %call31, ptr %zSpan32, align 8
  %39 = load ptr, ptr %pOldItem, align 8
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %39, i32 0, i32 3
  %40 = load i8, ptr %sortFlags, align 8
  %41 = load ptr, ptr %pItem, align 8
  %sortFlags33 = getelementptr inbounds nuw %struct.ExprList_item, ptr %41, i32 0, i32 3
  store i8 %40, ptr %sortFlags33, align 8
  %42 = load ptr, ptr %pItem, align 8
  %done = getelementptr inbounds nuw %struct.ExprList_item, ptr %42, i32 0, i32 4
  %bf.load = load i8, ptr %done, align 1
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 0
  store i8 %bf.set, ptr %done, align 1
  %43 = load ptr, ptr %pOldItem, align 8
  %bNulls = getelementptr inbounds nuw %struct.ExprList_item, ptr %43, i32 0, i32 4
  %bf.load34 = load i8, ptr %bNulls, align 1
  %bf.lshr = lshr i8 %bf.load34, 4
  %bf.clear35 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear35 to i32
  %44 = load ptr, ptr %pItem, align 8
  %bNulls36 = getelementptr inbounds nuw %struct.ExprList_item, ptr %44, i32 0, i32 4
  %45 = trunc i32 %bf.cast to i8
  %bf.load37 = load i8, ptr %bNulls36, align 1
  %bf.value = and i8 %45, 1
  %bf.shl = shl i8 %bf.value, 4
  %bf.clear38 = and i8 %bf.load37, -17
  %bf.set39 = or i8 %bf.clear38, %bf.shl
  store i8 %bf.set39, ptr %bNulls36, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  %46 = load ptr, ptr %pOldItem, align 8
  %bSpanIsTab = getelementptr inbounds nuw %struct.ExprList_item, ptr %46, i32 0, i32 4
  %bf.load40 = load i8, ptr %bSpanIsTab, align 1
  %bf.lshr41 = lshr i8 %bf.load40, 1
  %bf.clear42 = and i8 %bf.lshr41, 1
  %bf.cast43 = zext i8 %bf.clear42 to i32
  %47 = load ptr, ptr %pItem, align 8
  %bSpanIsTab44 = getelementptr inbounds nuw %struct.ExprList_item, ptr %47, i32 0, i32 4
  %48 = trunc i32 %bf.cast43 to i8
  %bf.load45 = load i8, ptr %bSpanIsTab44, align 1
  %bf.value46 = and i8 %48, 1
  %bf.shl47 = shl i8 %bf.value46, 1
  %bf.clear48 = and i8 %bf.load45, -3
  %bf.set49 = or i8 %bf.clear48, %bf.shl47
  store i8 %bf.set49, ptr %bSpanIsTab44, align 1
  %bf.result.cast50 = zext i8 %bf.value46 to i32
  %49 = load ptr, ptr %pOldItem, align 8
  %bSorterRef = getelementptr inbounds nuw %struct.ExprList_item, ptr %49, i32 0, i32 4
  %bf.load51 = load i8, ptr %bSorterRef, align 1
  %bf.lshr52 = lshr i8 %bf.load51, 3
  %bf.clear53 = and i8 %bf.lshr52, 1
  %bf.cast54 = zext i8 %bf.clear53 to i32
  %50 = load ptr, ptr %pItem, align 8
  %bSorterRef55 = getelementptr inbounds nuw %struct.ExprList_item, ptr %50, i32 0, i32 4
  %51 = trunc i32 %bf.cast54 to i8
  %bf.load56 = load i8, ptr %bSorterRef55, align 1
  %bf.value57 = and i8 %51, 1
  %bf.shl58 = shl i8 %bf.value57, 3
  %bf.clear59 = and i8 %bf.load56, -9
  %bf.set60 = or i8 %bf.clear59, %bf.shl58
  store i8 %bf.set60, ptr %bSorterRef55, align 1
  %bf.result.cast61 = zext i8 %bf.value57 to i32
  %52 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %52, i32 0, i32 5
  %53 = load ptr, ptr %pOldItem, align 8
  %u62 = getelementptr inbounds nuw %struct.ExprList_item, ptr %53, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %u, ptr align 4 %u62, i64 4, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %54 = load i32, ptr %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %i, align 4
  %55 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  %56 = load ptr, ptr %pOldItem, align 8
  %incdec.ptr63 = getelementptr inbounds nuw %struct.ExprList_item, ptr %56, i32 1
  store ptr %incdec.ptr63, ptr %pOldItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %57 = load ptr, ptr %pNew, align 8
  store ptr %57, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %58 = load ptr, ptr %retval, align 8
  ret ptr %58
}

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
