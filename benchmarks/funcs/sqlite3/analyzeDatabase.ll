; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.HashElem = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @analyzeDatabase(ptr noundef %pParse, i32 noundef %iDb) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %pSchema = alloca ptr, align 8
  %k = alloca ptr, align 8
  %iStatCur = alloca i32, align 4
  %iMem = alloca i32, align 4
  %iTab = alloca i32, align 4
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %4 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 %idxprom
  %pSchema2 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %5 = load ptr, ptr %pSchema2, align 8
  store ptr %5, ptr %pSchema, align 8
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %6, i32 noundef 0, i32 noundef %7)
  %8 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 17
  %9 = load i32, ptr %nTab, align 4
  store i32 %9, ptr %iStatCur, align 4
  %10 = load ptr, ptr %pParse.addr, align 8
  %nTab3 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 17
  %11 = load i32, ptr %nTab3, align 4
  %add = add nsw i32 %11, 3
  store i32 %add, ptr %nTab3, align 4
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load i32, ptr %iDb.addr, align 4
  %14 = load i32, ptr %iStatCur, align 4
  call void @openStatTable(ptr noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef null, ptr noundef null)
  %15 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 18
  %16 = load i32, ptr %nMem, align 8
  %add4 = add nsw i32 %16, 1
  store i32 %add4, ptr %iMem, align 4
  %17 = load ptr, ptr %pParse.addr, align 8
  %nTab5 = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 17
  %18 = load i32, ptr %nTab5, align 4
  store i32 %18, ptr %iTab, align 4
  %19 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %19, i32 0, i32 2
  %first = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %20 = load ptr, ptr %first, align 8
  store ptr %20, ptr %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load ptr, ptr %k, align 8
  %tobool = icmp ne ptr %21, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %k, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %data, align 8
  store ptr %23, ptr %pTab, align 8
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pTab, align 8
  %26 = load i32, ptr %iStatCur, align 4
  %27 = load i32, ptr %iMem, align 4
  %28 = load i32, ptr %iTab, align 4
  call void @analyzeOneTable(ptr noundef %24, ptr noundef %25, ptr noundef null, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load ptr, ptr %k, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %next, align 8
  store ptr %30, ptr %k, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load i32, ptr %iDb.addr, align 4
  call void @loadAnalysis(ptr noundef %31, i32 noundef %32)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @openStatTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @analyzeOneTable(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @loadAnalysis(ptr noundef, i32 noundef) #0

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
