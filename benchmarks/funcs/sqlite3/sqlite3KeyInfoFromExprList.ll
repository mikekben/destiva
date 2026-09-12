; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoAlloc(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef %pParse, ptr noundef %pList, i32 noundef %iStart, i32 noundef %nExtra) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %iStart.addr = alloca i32, align 4
  %nExtra.addr = alloca i32, align 4
  %nExpr = alloca i32, align 4
  %pInfo = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %iStart, ptr %iStart.addr, align 4
  store i32 %nExtra, ptr %nExtra.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pList.addr, align 8
  %nExpr2 = getelementptr inbounds nuw %struct.ExprList, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nExpr2, align 8
  store i32 %3, ptr %nExpr, align 4
  %4 = load ptr, ptr %db, align 8
  %5 = load i32, ptr %nExpr, align 4
  %6 = load i32, ptr %iStart.addr, align 4
  %sub = sub nsw i32 %5, %6
  %7 = load i32, ptr %nExtra.addr, align 4
  %add = add nsw i32 %7, 1
  %call = call ptr @sqlite3KeyInfoAlloc(ptr noundef %4, i32 noundef %sub, i32 noundef %add)
  store ptr %call, ptr %pInfo, align 8
  %8 = load ptr, ptr %pInfo, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %iStart.addr, align 4
  store i32 %9, ptr %i, align 4
  %10 = load ptr, ptr %pList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %10, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %11 = load i32, ptr %iStart.addr, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.ExprList_item, ptr %arraydecay, i64 %idx.ext
  store ptr %add.ptr, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %nExpr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pItem, align 8
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pExpr, align 8
  %call3 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %pInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %iStart.addr, align 4
  %sub4 = sub nsw i32 %18, %19
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom
  store ptr %call3, ptr %arrayidx, align 8
  %20 = load ptr, ptr %pItem, align 8
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %20, i32 0, i32 3
  %21 = load i8, ptr %sortFlags, align 8
  %22 = load ptr, ptr %pInfo, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %22, i32 0, i32 5
  %23 = load ptr, ptr %aSortFlags, align 8
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %iStart.addr, align 4
  %sub5 = sub nsw i32 %24, %25
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %23, i64 %idxprom6
  store i8 %21, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  %27 = load ptr, ptr %pItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %27, i32 1
  store ptr %incdec.ptr, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %28 = load ptr, ptr %pInfo, align 8
  ret ptr %28
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

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
