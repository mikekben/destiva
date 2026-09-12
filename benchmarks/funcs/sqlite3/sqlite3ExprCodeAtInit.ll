; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCodeAtInit(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %regDest) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %regDest.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %i = alloca i32, align 4
  %pItem12 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %regDest, ptr %regDest.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pConstExpr = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 24
  %1 = load ptr, ptr %pConstExpr, align 8
  store ptr %1, ptr %p, align 8
  %2 = load i32, ptr %regDest.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %p, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  %5 = load ptr, ptr %p, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, ptr %i, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pItem, align 8
  %reusable = getelementptr inbounds nuw %struct.ExprList_item, ptr %8, i32 0, i32 4
  %bf.load = load i8, ptr %reusable, align 1
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %for.body
  %9 = load ptr, ptr %pItem, align 8
  %pExpr4 = getelementptr inbounds nuw %struct.ExprList_item, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pExpr4, align 8
  %11 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %10, ptr noundef %11, i32 noundef -1)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %land.lhs.true3
  %12 = load ptr, ptr %pItem, align 8
  %u = getelementptr inbounds nuw %struct.ExprList_item, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %u, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  %15 = load i32, ptr %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end7

if.end7:                                          ; preds = %for.end, %land.lhs.true, %entry
  %16 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %pExpr.addr, align 8
  %call8 = call ptr @sqlite3ExprDup(ptr noundef %17, ptr noundef %18, i32 noundef 0)
  store ptr %call8, ptr %pExpr.addr, align 8
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %p, align 8
  %21 = load ptr, ptr %pExpr.addr, align 8
  %call9 = call ptr @sqlite3ExprListAppend(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  store ptr %call9, ptr %p, align 8
  %22 = load ptr, ptr %p, align 8
  %tobool10 = icmp ne ptr %22, null
  br i1 %tobool10, label %if.then11, label %if.end24

if.then11:                                        ; preds = %if.end7
  %23 = load ptr, ptr %p, align 8
  %a13 = getelementptr inbounds nuw %struct.ExprList, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %p, align 8
  %nExpr14 = getelementptr inbounds nuw %struct.ExprList, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nExpr14, align 8
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a13, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pItem12, align 8
  %26 = load i32, ptr %regDest.addr, align 4
  %cmp15 = icmp slt i32 %26, 0
  %conv = zext i1 %cmp15 to i32
  %27 = load ptr, ptr %pItem12, align 8
  %reusable16 = getelementptr inbounds nuw %struct.ExprList_item, ptr %27, i32 0, i32 4
  %28 = trunc i32 %conv to i8
  %bf.load17 = load i8, ptr %reusable16, align 1
  %bf.value = and i8 %28, 1
  %bf.shl = shl i8 %bf.value, 2
  %bf.clear18 = and i8 %bf.load17, -5
  %bf.set = or i8 %bf.clear18, %bf.shl
  store i8 %bf.set, ptr %reusable16, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  %29 = load i32, ptr %regDest.addr, align 4
  %cmp19 = icmp slt i32 %29, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then11
  %30 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %30, i32 0, i32 18
  %31 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regDest.addr, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then11
  %32 = load i32, ptr %regDest.addr, align 4
  %33 = load ptr, ptr %pItem12, align 8
  %u23 = getelementptr inbounds nuw %struct.ExprList_item, ptr %33, i32 0, i32 5
  store i32 %32, ptr %u23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end7
  %34 = load ptr, ptr %p, align 8
  %35 = load ptr, ptr %pParse.addr, align 8
  %pConstExpr25 = getelementptr inbounds nuw %struct.Parse, ptr %35, i32 0, i32 24
  store ptr %34, ptr %pConstExpr25, align 8
  %36 = load i32, ptr %regDest.addr, align 4
  store i32 %36, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then6
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
