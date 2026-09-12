; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.AutoincInfo = type { ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @autoIncBegin(ptr noundef %pParse, i32 noundef %iDb, ptr noundef %pTab) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %memId = alloca i32, align 4
  %pToplevel = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %pSeqTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 0, ptr %memId, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 9
  %1 = load i32, ptr %tabFlags, align 8
  %and = and i32 %1, 8
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %mDbFlags, align 4
  %and1 = and i32 %4, 4
  %cmp2 = icmp eq i32 %and1, 0
  br i1 %cmp2, label %if.then, label %if.end40

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %pParse.addr, align 8
  %pToplevel3 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 35
  %6 = load ptr, ptr %pToplevel3, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load ptr, ptr %pParse.addr, align 8
  %pToplevel4 = getelementptr inbounds nuw %struct.Parse, ptr %7, i32 0, i32 35
  %8 = load ptr, ptr %pToplevel4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %9, %cond.false ]
  store ptr %cond, ptr %pToplevel, align 8
  %10 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db5, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %aDb, align 8
  %13 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %12, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %14 = load ptr, ptr %pSchema, align 8
  %pSeqTab6 = getelementptr inbounds nuw %struct.Schema, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %pSeqTab6, align 8
  store ptr %15, ptr %pSeqTab, align 8
  %16 = load ptr, ptr %pSeqTab, align 8
  %cmp7 = icmp eq ptr %16, null
  br i1 %cmp7, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %17 = load ptr, ptr %pSeqTab, align 8
  %tabFlags8 = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %tabFlags8, align 8
  %and9 = and i32 %18, 32
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %lor.lhs.false11, label %if.then16

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %19 = load ptr, ptr %pSeqTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 16
  %20 = load i32, ptr %nModuleArg, align 4
  %tobool12 = icmp ne i32 %20, 0
  br i1 %tobool12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %21 = load ptr, ptr %pSeqTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 11
  %22 = load i16, ptr %nCol, align 2
  %conv = sext i16 %22 to i32
  %cmp14 = icmp ne i32 %conv, 2
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false, %cond.end
  %23 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 16
  %24 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %nErr, align 8
  %25 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 3
  store i32 523, ptr %rc, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false13
  %26 = load ptr, ptr %pToplevel, align 8
  %pAinc = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 34
  %27 = load ptr, ptr %pAinc, align 8
  store ptr %27, ptr %pInfo, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %28 = load ptr, ptr %pInfo, align 8
  %tobool17 = icmp ne ptr %28, null
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load ptr, ptr %pInfo, align 8
  %pTab18 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %pTab18, align 8
  %31 = load ptr, ptr %pTab.addr, align 8
  %cmp19 = icmp ne ptr %30, %31
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %32 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load ptr, ptr %pInfo, align 8
  %pNext = getelementptr inbounds nuw %struct.AutoincInfo, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pNext, align 8
  store ptr %34, ptr %pInfo, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %35 = load ptr, ptr %pInfo, align 8
  %cmp21 = icmp eq ptr %35, null
  br i1 %cmp21, label %if.then23, label %if.end38

if.then23:                                        ; preds = %while.end
  %36 = load ptr, ptr %pParse.addr, align 8
  %db24 = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %db24, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %37, i64 noundef 24)
  store ptr %call, ptr %pInfo, align 8
  %38 = load ptr, ptr %pInfo, align 8
  %cmp25 = icmp eq ptr %38, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then23
  %39 = load ptr, ptr %pToplevel, align 8
  %pAinc29 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 34
  %40 = load ptr, ptr %pAinc29, align 8
  %41 = load ptr, ptr %pInfo, align 8
  %pNext30 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %41, i32 0, i32 0
  store ptr %40, ptr %pNext30, align 8
  %42 = load ptr, ptr %pInfo, align 8
  %43 = load ptr, ptr %pToplevel, align 8
  %pAinc31 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 34
  store ptr %42, ptr %pAinc31, align 8
  %44 = load ptr, ptr %pTab.addr, align 8
  %45 = load ptr, ptr %pInfo, align 8
  %pTab32 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %45, i32 0, i32 1
  store ptr %44, ptr %pTab32, align 8
  %46 = load i32, ptr %iDb.addr, align 4
  %47 = load ptr, ptr %pInfo, align 8
  %iDb33 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %47, i32 0, i32 2
  store i32 %46, ptr %iDb33, align 8
  %48 = load ptr, ptr %pToplevel, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %48, i32 0, i32 18
  %49 = load i32, ptr %nMem, align 8
  %inc34 = add nsw i32 %49, 1
  store i32 %inc34, ptr %nMem, align 8
  %50 = load ptr, ptr %pToplevel, align 8
  %nMem35 = getelementptr inbounds nuw %struct.Parse, ptr %50, i32 0, i32 18
  %51 = load i32, ptr %nMem35, align 8
  %inc36 = add nsw i32 %51, 1
  store i32 %inc36, ptr %nMem35, align 8
  %52 = load ptr, ptr %pInfo, align 8
  %regCtr = getelementptr inbounds nuw %struct.AutoincInfo, ptr %52, i32 0, i32 3
  store i32 %inc36, ptr %regCtr, align 4
  %53 = load ptr, ptr %pToplevel, align 8
  %nMem37 = getelementptr inbounds nuw %struct.Parse, ptr %53, i32 0, i32 18
  %54 = load i32, ptr %nMem37, align 8
  %add = add nsw i32 %54, 2
  store i32 %add, ptr %nMem37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end28, %while.end
  %55 = load ptr, ptr %pInfo, align 8
  %regCtr39 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %55, i32 0, i32 3
  %56 = load i32, ptr %regCtr39, align 4
  store i32 %56, ptr %memId, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %land.lhs.true, %entry
  %57 = load i32, ptr %memId, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then27, %if.then16
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
