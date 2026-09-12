; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeOpList = type { i8, i8, i8, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.AutoincInfo = type { ptr, ptr, i32, i32 }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

@sqlite3AutoincrementBegin.autoInc = external hidden constant [12 x %struct.VdbeOpList], align 16

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAddOpList(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AutoincrementBegin(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %memId = alloca i32, align 4
  %v = alloca ptr, align 8
  %aOp = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %pAinc = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 34
  %5 = load ptr, ptr %pAinc, align 8
  store ptr %5, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load ptr, ptr %p, align 8
  %iDb = getelementptr inbounds nuw %struct.AutoincInfo, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %iDb, align 8
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %8, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %11 = load ptr, ptr %p, align 8
  %regCtr = getelementptr inbounds nuw %struct.AutoincInfo, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %regCtr, align 4
  store i32 %12, ptr %memId, align 4
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %p, align 8
  %iDb2 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %iDb2, align 8
  %16 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pSchema, align 8
  %pSeqTab = getelementptr inbounds nuw %struct.Schema, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %pSeqTab, align 8
  call void @sqlite3OpenTable(ptr noundef %13, i32 noundef 0, i32 noundef %15, ptr noundef %18, i32 noundef 97)
  %19 = load ptr, ptr %v, align 8
  %20 = load i32, ptr %memId, align 4
  %sub = sub nsw i32 %20, 1
  %21 = load ptr, ptr %p, align 8
  %pTab = getelementptr inbounds nuw %struct.AutoincInfo, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName, align 8
  %call = call i32 @sqlite3VdbeLoadString(ptr noundef %19, i32 noundef %sub, ptr noundef %23)
  %24 = load ptr, ptr %v, align 8
  %call3 = call ptr @sqlite3VdbeAddOpList(ptr noundef %24, i32 noundef 12, ptr noundef @sqlite3AutoincrementBegin.autoInc, i32 noundef 0)
  store ptr %call3, ptr %aOp, align 8
  %25 = load ptr, ptr %aOp, align 8
  %cmp = icmp eq ptr %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %26 = load i32, ptr %memId, align 4
  %27 = load ptr, ptr %aOp, align 8
  %arrayidx4 = getelementptr inbounds %struct.VdbeOp, ptr %27, i64 0
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx4, i32 0, i32 4
  store i32 %26, ptr %p2, align 8
  %28 = load i32, ptr %memId, align 4
  %add = add nsw i32 %28, 2
  %29 = load ptr, ptr %aOp, align 8
  %arrayidx5 = getelementptr inbounds %struct.VdbeOp, ptr %29, i64 0
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx5, i32 0, i32 5
  store i32 %add, ptr %p3, align 4
  %30 = load i32, ptr %memId, align 4
  %31 = load ptr, ptr %aOp, align 8
  %arrayidx6 = getelementptr inbounds %struct.VdbeOp, ptr %31, i64 2
  %p37 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx6, i32 0, i32 5
  store i32 %30, ptr %p37, align 4
  %32 = load i32, ptr %memId, align 4
  %sub8 = sub nsw i32 %32, 1
  %33 = load ptr, ptr %aOp, align 8
  %arrayidx9 = getelementptr inbounds %struct.VdbeOp, ptr %33, i64 3
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx9, i32 0, i32 3
  store i32 %sub8, ptr %p1, align 4
  %34 = load i32, ptr %memId, align 4
  %35 = load ptr, ptr %aOp, align 8
  %arrayidx10 = getelementptr inbounds %struct.VdbeOp, ptr %35, i64 3
  %p311 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx10, i32 0, i32 5
  store i32 %34, ptr %p311, align 4
  %36 = load ptr, ptr %aOp, align 8
  %arrayidx12 = getelementptr inbounds %struct.VdbeOp, ptr %36, i64 3
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx12, i32 0, i32 2
  store i16 16, ptr %p5, align 2
  %37 = load i32, ptr %memId, align 4
  %add13 = add nsw i32 %37, 1
  %38 = load ptr, ptr %aOp, align 8
  %arrayidx14 = getelementptr inbounds %struct.VdbeOp, ptr %38, i64 4
  %p215 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx14, i32 0, i32 4
  store i32 %add13, ptr %p215, align 8
  %39 = load i32, ptr %memId, align 4
  %40 = load ptr, ptr %aOp, align 8
  %arrayidx16 = getelementptr inbounds %struct.VdbeOp, ptr %40, i64 5
  %p317 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx16, i32 0, i32 5
  store i32 %39, ptr %p317, align 4
  %41 = load i32, ptr %memId, align 4
  %42 = load ptr, ptr %aOp, align 8
  %arrayidx18 = getelementptr inbounds %struct.VdbeOp, ptr %42, i64 6
  %p119 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx18, i32 0, i32 3
  store i32 %41, ptr %p119, align 4
  %43 = load i32, ptr %memId, align 4
  %add20 = add nsw i32 %43, 2
  %44 = load ptr, ptr %aOp, align 8
  %arrayidx21 = getelementptr inbounds %struct.VdbeOp, ptr %44, i64 7
  %p222 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx21, i32 0, i32 4
  store i32 %add20, ptr %p222, align 8
  %45 = load i32, ptr %memId, align 4
  %46 = load ptr, ptr %aOp, align 8
  %arrayidx23 = getelementptr inbounds %struct.VdbeOp, ptr %46, i64 7
  %p124 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx23, i32 0, i32 3
  store i32 %45, ptr %p124, align 4
  %47 = load i32, ptr %memId, align 4
  %48 = load ptr, ptr %aOp, align 8
  %arrayidx25 = getelementptr inbounds %struct.VdbeOp, ptr %48, i64 10
  %p226 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx25, i32 0, i32 4
  store i32 %47, ptr %p226, align 8
  %49 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %49, i32 0, i32 17
  %50 = load i32, ptr %nTab, align 4
  %cmp27 = icmp eq i32 %50, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end
  %51 = load ptr, ptr %pParse.addr, align 8
  %nTab29 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 17
  store i32 1, ptr %nTab29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %52 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.AutoincInfo, ptr %52, i32 0, i32 0
  %53 = load ptr, ptr %pNext, align 8
  store ptr %53, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

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
