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

@.str.907 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Reindex(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %db = alloca ptr, align 8
  %pObjName = alloca ptr, align 8
  %zColl = alloca ptr, align 8
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
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pName1.addr, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %pParse.addr, align 8
  call void @reindexDatabases(ptr noundef %4, ptr noundef null)
  br label %return

if.else:                                          ; preds = %if.end
  %5 = load ptr, ptr %pName2.addr, align 8
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %6 = load ptr, ptr %pName2.addr, align 8
  %z5 = getelementptr inbounds nuw %struct.Token, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %z5, align 8
  %cmp6 = icmp eq ptr %7, null
  br i1 %cmp6, label %if.then7, label %if.end16

if.then7:                                         ; preds = %lor.lhs.false, %if.else
  %8 = load ptr, ptr %pParse.addr, align 8
  %db8 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db8, align 8
  %10 = load ptr, ptr %pName1.addr, align 8
  %call9 = call ptr @sqlite3NameFromToken(ptr noundef %9, ptr noundef %10)
  store ptr %call9, ptr %zColl, align 8
  %11 = load ptr, ptr %zColl, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.then7
  br label %return

if.end11:                                         ; preds = %if.then7
  %12 = load ptr, ptr %db, align 8
  %13 = load ptr, ptr %db, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 16
  %14 = load i8, ptr %enc, align 2
  %15 = load ptr, ptr %zColl, align 8
  %call12 = call ptr @sqlite3FindCollSeq(ptr noundef %12, i8 noundef zeroext %14, ptr noundef %15, i32 noundef 0)
  store ptr %call12, ptr %pColl, align 8
  %16 = load ptr, ptr %pColl, align 8
  %tobool13 = icmp ne ptr %16, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %zColl, align 8
  call void @reindexDatabases(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %zColl, align 8
  call void @sqlite3DbFree(ptr noundef %19, ptr noundef %20)
  br label %return

if.end15:                                         ; preds = %if.end11
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %zColl, align 8
  call void @sqlite3DbFree(ptr noundef %21, ptr noundef %22)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %lor.lhs.false
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pName1.addr, align 8
  %25 = load ptr, ptr %pName2.addr, align 8
  %call18 = call i32 @sqlite3TwoPartName(ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef %pObjName)
  store i32 %call18, ptr %iDb, align 4
  %26 = load i32, ptr %iDb, align 4
  %cmp19 = icmp slt i32 %26, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  br label %return

if.end21:                                         ; preds = %if.end17
  %27 = load ptr, ptr %db, align 8
  %28 = load ptr, ptr %pObjName, align 8
  %call22 = call ptr @sqlite3NameFromToken(ptr noundef %27, ptr noundef %28)
  store ptr %call22, ptr %z, align 8
  %29 = load ptr, ptr %z, align 8
  %cmp23 = icmp eq ptr %29, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  br label %return

if.end25:                                         ; preds = %if.end21
  %30 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %aDb, align 8
  %32 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %31, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %33 = load ptr, ptr %zDbSName, align 8
  store ptr %33, ptr %zDb, align 8
  %34 = load ptr, ptr %db, align 8
  %35 = load ptr, ptr %z, align 8
  %36 = load ptr, ptr %zDb, align 8
  %call26 = call ptr @sqlite3FindTable(ptr noundef %34, ptr noundef %35, ptr noundef %36)
  store ptr %call26, ptr %pTab, align 8
  %37 = load ptr, ptr %pTab, align 8
  %tobool27 = icmp ne ptr %37, null
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end25
  %38 = load ptr, ptr %pParse.addr, align 8
  %39 = load ptr, ptr %pTab, align 8
  call void @reindexTable(ptr noundef %38, ptr noundef %39, ptr noundef null)
  %40 = load ptr, ptr %db, align 8
  %41 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %40, ptr noundef %41)
  br label %return

if.end29:                                         ; preds = %if.end25
  %42 = load ptr, ptr %db, align 8
  %43 = load ptr, ptr %z, align 8
  %44 = load ptr, ptr %zDb, align 8
  %call30 = call ptr @sqlite3FindIndex(ptr noundef %42, ptr noundef %43, ptr noundef %44)
  store ptr %call30, ptr %pIndex, align 8
  %45 = load ptr, ptr %db, align 8
  %46 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %pIndex, align 8
  %tobool31 = icmp ne ptr %47, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  %48 = load ptr, ptr %pParse.addr, align 8
  %49 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %48, i32 noundef 0, i32 noundef %49)
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pIndex, align 8
  call void @sqlite3RefillIndex(ptr noundef %50, ptr noundef %51, i32 noundef -1)
  br label %return

if.end33:                                         ; preds = %if.end29
  %52 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %52, ptr noundef @.str.907)
  br label %return

return:                                           ; preds = %if.end33, %if.then32, %if.then28, %if.then24, %if.then20, %if.then14, %if.then10, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RefillIndex(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @reindexDatabases(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @reindexTable(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
