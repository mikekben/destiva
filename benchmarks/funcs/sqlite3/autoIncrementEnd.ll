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
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

@autoIncrementEnd.autoIncEnd = external hidden constant [5 x %struct.VdbeOpList], align 16

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAddOpList(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @autoIncrementEnd(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %aOp = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %iRec = alloca i32, align 4
  %memId = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
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
  %call = call i32 @sqlite3GetTempReg(ptr noundef %13)
  store i32 %call, ptr %iRec, align 4
  %14 = load ptr, ptr %v, align 8
  %15 = load i32, ptr %memId, align 4
  %add = add nsw i32 %15, 2
  %16 = load ptr, ptr %v, align 8
  %call2 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %16)
  %add3 = add nsw i32 %call2, 7
  %17 = load i32, ptr %memId, align 4
  %call4 = call i32 @sqlite3VdbeAddOp3(ptr noundef %14, i32 noundef 55, i32 noundef %add, i32 noundef %add3, i32 noundef %17)
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %iDb5 = getelementptr inbounds nuw %struct.AutoincInfo, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %iDb5, align 8
  %21 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pSchema, align 8
  %pSeqTab = getelementptr inbounds nuw %struct.Schema, ptr %22, i32 0, i32 6
  %23 = load ptr, ptr %pSeqTab, align 8
  call void @sqlite3OpenTable(ptr noundef %18, i32 noundef 0, i32 noundef %20, ptr noundef %23, i32 noundef 98)
  %24 = load ptr, ptr %v, align 8
  %call6 = call ptr @sqlite3VdbeAddOpList(ptr noundef %24, i32 noundef 5, ptr noundef @autoIncrementEnd.autoIncEnd, i32 noundef 0)
  store ptr %call6, ptr %aOp, align 8
  %25 = load ptr, ptr %aOp, align 8
  %cmp = icmp eq ptr %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %26 = load i32, ptr %memId, align 4
  %add7 = add nsw i32 %26, 1
  %27 = load ptr, ptr %aOp, align 8
  %arrayidx8 = getelementptr inbounds %struct.VdbeOp, ptr %27, i64 0
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx8, i32 0, i32 3
  store i32 %add7, ptr %p1, align 4
  %28 = load i32, ptr %memId, align 4
  %add9 = add nsw i32 %28, 1
  %29 = load ptr, ptr %aOp, align 8
  %arrayidx10 = getelementptr inbounds %struct.VdbeOp, ptr %29, i64 1
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx10, i32 0, i32 4
  store i32 %add9, ptr %p2, align 8
  %30 = load i32, ptr %memId, align 4
  %sub = sub nsw i32 %30, 1
  %31 = load ptr, ptr %aOp, align 8
  %arrayidx11 = getelementptr inbounds %struct.VdbeOp, ptr %31, i64 2
  %p112 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx11, i32 0, i32 3
  store i32 %sub, ptr %p112, align 4
  %32 = load i32, ptr %iRec, align 4
  %33 = load ptr, ptr %aOp, align 8
  %arrayidx13 = getelementptr inbounds %struct.VdbeOp, ptr %33, i64 2
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx13, i32 0, i32 5
  store i32 %32, ptr %p3, align 4
  %34 = load i32, ptr %iRec, align 4
  %35 = load ptr, ptr %aOp, align 8
  %arrayidx14 = getelementptr inbounds %struct.VdbeOp, ptr %35, i64 3
  %p215 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx14, i32 0, i32 4
  store i32 %34, ptr %p215, align 8
  %36 = load i32, ptr %memId, align 4
  %add16 = add nsw i32 %36, 1
  %37 = load ptr, ptr %aOp, align 8
  %arrayidx17 = getelementptr inbounds %struct.VdbeOp, ptr %37, i64 3
  %p318 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx17, i32 0, i32 5
  store i32 %add16, ptr %p318, align 4
  %38 = load ptr, ptr %aOp, align 8
  %arrayidx19 = getelementptr inbounds %struct.VdbeOp, ptr %38, i64 3
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx19, i32 0, i32 2
  store i16 8, ptr %p5, align 2
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load i32, ptr %iRec, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %39, i32 noundef %40)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.AutoincInfo, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %pNext, align 8
  store ptr %42, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
