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
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.628 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3AuthRead(ptr noundef %pParse, ptr noundef %pExpr, ptr noundef %pSchema, ptr noundef %pTabList) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pSchema.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %zCol = alloca ptr, align 8
  %iSrc = alloca i32, align 4
  %iDb = alloca i32, align 4
  %iCol = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pSchema, ptr %pSchema.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pTab, align 8
  %2 = load ptr, ptr %db, align 8
  %xAuth = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 62
  %3 = load ptr, ptr %xAuth, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end49

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db2, align 8
  %6 = load ptr, ptr %pSchema.addr, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %5, ptr noundef %6)
  store i32 %call, ptr %iDb, align 4
  %7 = load i32, ptr %iDb, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %if.end49

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 0
  %9 = load i8, ptr %op, align 8
  %conv = zext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv, 77
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %10 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 36
  %11 = load ptr, ptr %pTriggerTab, align 8
  store ptr %11, ptr %pTab, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end5
  store i32 0, ptr %iSrc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %12 = load i32, ptr %iSrc, align 4
  %13 = load ptr, ptr %pTabList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %nSrc, align 8
  %cmp9 = icmp slt i32 %12, %14
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %iTable, align 4
  %17 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %iSrc, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %19 = load i32, ptr %iCursor, align 8
  %cmp11 = icmp eq i32 %16, %19
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %for.body
  %20 = load ptr, ptr %pTabList.addr, align 8
  %a14 = getelementptr inbounds nuw %struct.SrcList, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %iSrc, align 4
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a14, i64 0, i64 %idxprom15
  %pTab17 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx16, i32 0, i32 4
  %22 = load ptr, ptr %pTab17, align 8
  store ptr %22, ptr %pTab, align 8
  br label %for.end

if.end18:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %23 = load i32, ptr %iSrc, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %iSrc, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then13, %for.cond
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then8
  %24 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 9
  %25 = load i16, ptr %iColumn, align 8
  %conv20 = sext i16 %25 to i32
  store i32 %conv20, ptr %iCol, align 4
  %26 = load ptr, ptr %pTab, align 8
  %cmp21 = icmp eq ptr %26, null
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %if.end49

if.end24:                                         ; preds = %if.end19
  %27 = load i32, ptr %iCol, align 4
  %cmp25 = icmp sge i32 %27, 0
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.end24
  %28 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %aCol, align 8
  %30 = load i32, ptr %iCol, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds %struct.Column, ptr %29, i64 %idxprom28
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx29, i32 0, i32 0
  %31 = load ptr, ptr %zName, align 8
  store ptr %31, ptr %zCol, align 8
  br label %if.end42

if.else30:                                        ; preds = %if.end24
  %32 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 10
  %33 = load i16, ptr %iPKey, align 4
  %conv31 = sext i16 %33 to i32
  %cmp32 = icmp sge i32 %conv31, 0
  br i1 %cmp32, label %if.then34, label %if.else40

if.then34:                                        ; preds = %if.else30
  %34 = load ptr, ptr %pTab, align 8
  %aCol35 = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %aCol35, align 8
  %36 = load ptr, ptr %pTab, align 8
  %iPKey36 = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 10
  %37 = load i16, ptr %iPKey36, align 4
  %idxprom37 = sext i16 %37 to i64
  %arrayidx38 = getelementptr inbounds %struct.Column, ptr %35, i64 %idxprom37
  %zName39 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx38, i32 0, i32 0
  %38 = load ptr, ptr %zName39, align 8
  store ptr %38, ptr %zCol, align 8
  br label %if.end41

if.else40:                                        ; preds = %if.else30
  store ptr @.str.628, ptr %zCol, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %if.then34
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then27
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load ptr, ptr %pTab, align 8
  %zName43 = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %zName43, align 8
  %42 = load ptr, ptr %zCol, align 8
  %43 = load i32, ptr %iDb, align 4
  %call44 = call i32 @sqlite3AuthReadCol(ptr noundef %39, ptr noundef %41, ptr noundef %42, i32 noundef %43)
  %cmp45 = icmp eq i32 2, %call44
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end42
  %44 = load ptr, ptr %pExpr.addr, align 8
  %op48 = getelementptr inbounds nuw %struct.Expr, ptr %44, i32 0, i32 0
  store i8 117, ptr %op48, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end42, %if.then23, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthReadCol(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
