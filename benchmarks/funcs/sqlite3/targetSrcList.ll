; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListAppend(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @targetSrcList(ptr noundef %pParse, ptr noundef %pStep) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pStep.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pSrc = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pStep, ptr %pStep.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3SrcListAppend(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  store ptr %call, ptr %pSrc, align 8
  %3 = load ptr, ptr %pSrc, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pStep.addr, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %zTarget, align 8
  %call2 = call ptr @sqlite3DbStrDup(ptr noundef %4, ptr noundef %6)
  %7 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %nSrc, align 8
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 2
  store ptr %call2, ptr %zName, align 8
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %pStep.addr, align 8
  %pTrig = getelementptr inbounds nuw %struct.TriggerStep, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pTrig, align 8
  %pSchema = getelementptr inbounds nuw %struct.Trigger, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pSchema, align 8
  %call3 = call i32 @sqlite3SchemaToIndex(ptr noundef %10, ptr noundef %13)
  store i32 %call3, ptr %iDb, align 4
  %14 = load i32, ptr %iDb, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %15 = load i32, ptr %iDb, align 4
  %cmp4 = icmp sge i32 %15, 2
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %16 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %aDb, align 8
  %18 = load i32, ptr %iDb, align 4
  %idxprom6 = sext i32 %18 to i64
  %arrayidx7 = getelementptr inbounds %struct.Db, ptr %17, i64 %idxprom6
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx7, i32 0, i32 0
  %19 = load ptr, ptr %zDbSName, align 8
  store ptr %19, ptr %zDb, align 8
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %zDb, align 8
  %call8 = call ptr @sqlite3DbStrDup(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %pSrc, align 8
  %a9 = getelementptr inbounds nuw %struct.SrcList, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pSrc, align 8
  %nSrc10 = getelementptr inbounds nuw %struct.SrcList, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %nSrc10, align 8
  %sub11 = sub nsw i32 %24, 1
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a9, i64 0, i64 %idxprom12
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx13, i32 0, i32 1
  store ptr %call8, ptr %zDatabase, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %25 = load ptr, ptr %pSrc, align 8
  ret ptr %25
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
