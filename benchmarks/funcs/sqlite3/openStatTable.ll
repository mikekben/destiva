; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.22 = type { ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.713 = external hidden unnamed_addr constant [30 x i8], align 1
@openStatTable.aTable = external hidden constant [3 x %struct.anon.22], align 16
@.str.911 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @openStatTable(ptr noundef %pParse, i32 noundef %iDb, i32 noundef %iStatCur, ptr noundef %zWhere, ptr noundef %zWhereType) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %iStatCur.addr = alloca i32, align 4
  %zWhere.addr = alloca ptr, align 8
  %zWhereType.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %db = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %v = alloca ptr, align 8
  %aRoot = alloca [3 x i32], align 4
  %aCreateTbl = alloca [3 x i8], align 1
  %zTab = alloca ptr, align 8
  %pStat = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store i32 %iStatCur, ptr %iStatCur.addr, align 4
  store ptr %zWhere, ptr %zWhere.addr, align 8
  store ptr %zWhereType, ptr %zWhereType.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end48

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %aDb, align 8
  %6 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %7, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [3 x %struct.anon.22], ptr @openStatTable.aTable, i64 0, i64 %idxprom3
  %zName = getelementptr inbounds nuw %struct.anon.22, ptr %arrayidx4, i32 0, i32 0
  %9 = load ptr, ptr %zName, align 16
  store ptr %9, ptr %zTab, align 8
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %zTab, align 8
  %12 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zDbSName, align 8
  %call5 = call ptr @sqlite3FindTable(ptr noundef %10, ptr noundef %11, ptr noundef %13)
  store ptr %call5, ptr %pStat, align 8
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [3 x %struct.anon.22], ptr @openStatTable.aTable, i64 0, i64 %idxprom8
  %zCols = getelementptr inbounds nuw %struct.anon.22, ptr %arrayidx9, i32 0, i32 1
  %15 = load ptr, ptr %zCols, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then10, label %if.end19

if.then10:                                        ; preds = %if.then7
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pDb, align 8
  %zDbSName11 = getelementptr inbounds nuw %struct.Db, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zDbSName11, align 8
  %19 = load ptr, ptr %zTab, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds [3 x %struct.anon.22], ptr @openStatTable.aTable, i64 0, i64 %idxprom12
  %zCols14 = getelementptr inbounds nuw %struct.anon.22, ptr %arrayidx13, i32 0, i32 1
  %21 = load ptr, ptr %zCols14, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %16, ptr noundef @.str.911, ptr noundef %18, ptr noundef %19, ptr noundef %21)
  %22 = load ptr, ptr %pParse.addr, align 8
  %regRoot = getelementptr inbounds nuw %struct.Parse, ptr %22, i32 0, i32 29
  %23 = load i32, ptr %regRoot, align 4
  %24 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [3 x i32], ptr %aRoot, i64 0, i64 %idxprom15
  store i32 %23, ptr %arrayidx16, align 4
  %25 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [3 x i8], ptr %aCreateTbl, i64 0, i64 %idxprom17
  store i8 16, ptr %arrayidx18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then10, %if.then7
  br label %if.end34

if.else:                                          ; preds = %for.body
  %26 = load ptr, ptr %pStat, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 7
  %27 = load i32, ptr %tnum, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds [3 x i32], ptr %aRoot, i64 0, i64 %idxprom20
  store i32 %27, ptr %arrayidx21, align 4
  %29 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [3 x i8], ptr %aCreateTbl, i64 0, i64 %idxprom22
  store i8 0, ptr %arrayidx23, align 1
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load i32, ptr %iDb.addr, align 4
  %32 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds [3 x i32], ptr %aRoot, i64 0, i64 %idxprom24
  %33 = load i32, ptr %arrayidx25, align 4
  %34 = load ptr, ptr %zTab, align 8
  call void @sqlite3TableLock(ptr noundef %30, i32 noundef %31, i32 noundef %33, i8 noundef zeroext 1, ptr noundef %34)
  %35 = load ptr, ptr %zWhere.addr, align 8
  %tobool26 = icmp ne ptr %35, null
  br i1 %tobool26, label %if.then27, label %if.else29

if.then27:                                        ; preds = %if.else
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load ptr, ptr %pDb, align 8
  %zDbSName28 = getelementptr inbounds nuw %struct.Db, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zDbSName28, align 8
  %39 = load ptr, ptr %zTab, align 8
  %40 = load ptr, ptr %zWhereType.addr, align 8
  %41 = load ptr, ptr %zWhere.addr, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %36, ptr noundef @.str.713, ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef %41)
  br label %if.end33

if.else29:                                        ; preds = %if.else
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %43 to i64
  %arrayidx31 = getelementptr inbounds [3 x i32], ptr %aRoot, i64 0, i64 %idxprom30
  %44 = load i32, ptr %arrayidx31, align 4
  %45 = load i32, ptr %iDb.addr, align 4
  %call32 = call i32 @sqlite3VdbeAddOp2(ptr noundef %42, i32 noundef 137, i32 noundef %44, i32 noundef %45)
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end19
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %46 = load i32, ptr %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end
  %47 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds [3 x %struct.anon.22], ptr @openStatTable.aTable, i64 0, i64 %idxprom36
  %zCols38 = getelementptr inbounds nuw %struct.anon.22, ptr %arrayidx37, i32 0, i32 1
  %48 = load ptr, ptr %zCols38, align 8
  %tobool39 = icmp ne ptr %48, null
  br i1 %tobool39, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond35
  %49 = load ptr, ptr %v, align 8
  %50 = load i32, ptr %iStatCur.addr, align 4
  %51 = load i32, ptr %i, align 4
  %add = add nsw i32 %50, %51
  %52 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %52 to i64
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %aRoot, i64 0, i64 %idxprom41
  %53 = load i32, ptr %arrayidx42, align 4
  %54 = load i32, ptr %iDb.addr, align 4
  %call43 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %49, i32 noundef 98, i32 noundef %add, i32 noundef %53, i32 noundef %54, i32 noundef 3)
  %55 = load ptr, ptr %v, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %56 to i64
  %arrayidx45 = getelementptr inbounds [3 x i8], ptr %aCreateTbl, i64 0, i64 %idxprom44
  %57 = load i8, ptr %arrayidx45, align 1
  %conv = zext i8 %57 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %55, i16 noundef zeroext %conv)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %58 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %58, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond35, !llvm.loop !8

for.end48:                                        ; preds = %for.cond35, %if.then
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
!8 = distinct !{!8, !7}
