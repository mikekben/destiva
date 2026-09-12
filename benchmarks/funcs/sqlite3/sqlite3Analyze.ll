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
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Analyze(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %i = alloca i32, align 4
  %z = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pTableName = alloca ptr, align 8
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %2)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end41

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pName1.addr, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nDb, align 8
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load i32, ptr %i, align 4
  call void @analyzeDatabase(ptr noundef %8, i32 noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then6
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end32

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %pName2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %n, align 8
  %cmp8 = icmp eq i32 %12, 0
  br i1 %cmp8, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %if.else
  %13 = load ptr, ptr %db, align 8
  %14 = load ptr, ptr %pName1.addr, align 8
  %call9 = call i32 @sqlite3FindDb(ptr noundef %13, ptr noundef %14)
  store i32 %call9, ptr %iDb, align 4
  %cmp10 = icmp sge i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load i32, ptr %iDb, align 4
  call void @analyzeDatabase(ptr noundef %15, i32 noundef %16)
  br label %if.end31

if.else12:                                        ; preds = %land.lhs.true, %if.else
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pName1.addr, align 8
  %19 = load ptr, ptr %pName2.addr, align 8
  %call13 = call i32 @sqlite3TwoPartName(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %pTableName)
  store i32 %call13, ptr %iDb, align 4
  %20 = load i32, ptr %iDb, align 4
  %cmp14 = icmp sge i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end30

if.then15:                                        ; preds = %if.else12
  %21 = load ptr, ptr %pName2.addr, align 8
  %n16 = getelementptr inbounds nuw %struct.Token, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %n16, align 8
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then15
  %23 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %aDb, align 8
  %25 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %24, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %26 = load ptr, ptr %zDbSName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %26, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zDb, align 8
  %27 = load ptr, ptr %db, align 8
  %28 = load ptr, ptr %pTableName, align 8
  %call17 = call ptr @sqlite3NameFromToken(ptr noundef %27, ptr noundef %28)
  store ptr %call17, ptr %z, align 8
  %29 = load ptr, ptr %z, align 8
  %tobool18 = icmp ne ptr %29, null
  br i1 %tobool18, label %if.then19, label %if.end29

if.then19:                                        ; preds = %cond.end
  %30 = load ptr, ptr %db, align 8
  %31 = load ptr, ptr %z, align 8
  %32 = load ptr, ptr %zDb, align 8
  %call20 = call ptr @sqlite3FindIndex(ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store ptr %call20, ptr %pIdx, align 8
  %cmp21 = icmp ne ptr %call20, null
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.then19
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pIdx, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %pTable, align 8
  %36 = load ptr, ptr %pIdx, align 8
  call void @analyzeTable(ptr noundef %33, ptr noundef %35, ptr noundef %36)
  br label %if.end28

if.else23:                                        ; preds = %if.then19
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load ptr, ptr %z, align 8
  %39 = load ptr, ptr %zDb, align 8
  %call24 = call ptr @sqlite3LocateTable(ptr noundef %37, i32 noundef 0, ptr noundef %38, ptr noundef %39)
  store ptr %call24, ptr %pTab, align 8
  %cmp25 = icmp ne ptr %call24, null
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else23
  %40 = load ptr, ptr %pParse.addr, align 8
  %41 = load ptr, ptr %pTab, align 8
  call void @analyzeTable(ptr noundef %40, ptr noundef %41, ptr noundef null)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else23
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then22
  %42 = load ptr, ptr %db, align 8
  %43 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %42, ptr noundef %43)
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %cond.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.else12
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then11
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %for.end
  %44 = load ptr, ptr %db, align 8
  %nSqlExec = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 28
  %45 = load i8, ptr %nSqlExec, align 2
  %conv = zext i8 %45 to i32
  %cmp33 = icmp eq i32 %conv, 0
  br i1 %cmp33, label %land.lhs.true35, label %if.end41

land.lhs.true35:                                  ; preds = %if.end32
  %46 = load ptr, ptr %pParse.addr, align 8
  %call36 = call ptr @sqlite3GetVdbe(ptr noundef %46)
  store ptr %call36, ptr %v, align 8
  %cmp37 = icmp ne ptr %call36, null
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %land.lhs.true35
  %47 = load ptr, ptr %v, align 8
  %call40 = call i32 @sqlite3VdbeAddOp0(ptr noundef %47, i32 noundef 158)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true35, %if.end32, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDb(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @analyzeDatabase(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @analyzeTable(ptr noundef, ptr noundef, ptr noundef) #0

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
