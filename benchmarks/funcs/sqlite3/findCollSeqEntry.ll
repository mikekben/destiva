; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @findCollSeqEntry(ptr noundef %db, ptr noundef %zName, i32 noundef %create) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %create.addr = alloca i32, align 4
  %pColl = alloca ptr, align 8
  %nName = alloca i32, align 4
  %pDel = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %create, ptr %create.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aCollSeq = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 73
  %1 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @sqlite3HashFind(ptr noundef %aCollSeq, ptr noundef %1)
  store ptr %call, ptr %pColl, align 8
  %2 = load ptr, ptr %pColl, align 8
  %cmp = icmp eq ptr null, %2
  br i1 %cmp, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %create.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end30

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %zName.addr, align 8
  %call1 = call i32 @sqlite3Strlen30(ptr noundef %4)
  %add = add nsw i32 %call1, 1
  store i32 %add, ptr %nName, align 4
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load i32, ptr %nName, align 4
  %conv = sext i32 %6 to i64
  %add2 = add i64 120, %conv
  %call3 = call ptr @sqlite3DbMallocZero(ptr noundef %5, i64 noundef %add2)
  store ptr %call3, ptr %pColl, align 8
  %7 = load ptr, ptr %pColl, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.then5, label %if.end29

if.then5:                                         ; preds = %if.then
  store ptr null, ptr %pDel, align 8
  %8 = load ptr, ptr %pColl, align 8
  %arrayidx = getelementptr inbounds %struct.CollSeq, ptr %8, i64 3
  %9 = load ptr, ptr %pColl, align 8
  %arrayidx6 = getelementptr inbounds %struct.CollSeq, ptr %9, i64 0
  %zName7 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx6, i32 0, i32 0
  store ptr %arrayidx, ptr %zName7, align 8
  %10 = load ptr, ptr %pColl, align 8
  %arrayidx8 = getelementptr inbounds %struct.CollSeq, ptr %10, i64 0
  %enc = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx8, i32 0, i32 1
  store i8 1, ptr %enc, align 8
  %11 = load ptr, ptr %pColl, align 8
  %arrayidx9 = getelementptr inbounds %struct.CollSeq, ptr %11, i64 3
  %12 = load ptr, ptr %pColl, align 8
  %arrayidx10 = getelementptr inbounds %struct.CollSeq, ptr %12, i64 1
  %zName11 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx10, i32 0, i32 0
  store ptr %arrayidx9, ptr %zName11, align 8
  %13 = load ptr, ptr %pColl, align 8
  %arrayidx12 = getelementptr inbounds %struct.CollSeq, ptr %13, i64 1
  %enc13 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx12, i32 0, i32 1
  store i8 2, ptr %enc13, align 8
  %14 = load ptr, ptr %pColl, align 8
  %arrayidx14 = getelementptr inbounds %struct.CollSeq, ptr %14, i64 3
  %15 = load ptr, ptr %pColl, align 8
  %arrayidx15 = getelementptr inbounds %struct.CollSeq, ptr %15, i64 2
  %zName16 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx15, i32 0, i32 0
  store ptr %arrayidx14, ptr %zName16, align 8
  %16 = load ptr, ptr %pColl, align 8
  %arrayidx17 = getelementptr inbounds %struct.CollSeq, ptr %16, i64 2
  %enc18 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx17, i32 0, i32 1
  store i8 3, ptr %enc18, align 8
  %17 = load ptr, ptr %pColl, align 8
  %arrayidx19 = getelementptr inbounds %struct.CollSeq, ptr %17, i64 0
  %zName20 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx19, i32 0, i32 0
  %18 = load ptr, ptr %zName20, align 8
  %19 = load ptr, ptr %zName.addr, align 8
  %20 = load i32, ptr %nName, align 4
  %conv21 = sext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %conv21, i1 false)
  %21 = load ptr, ptr %db.addr, align 8
  %aCollSeq22 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 73
  %22 = load ptr, ptr %pColl, align 8
  %arrayidx23 = getelementptr inbounds %struct.CollSeq, ptr %22, i64 0
  %zName24 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx23, i32 0, i32 0
  %23 = load ptr, ptr %zName24, align 8
  %24 = load ptr, ptr %pColl, align 8
  %call25 = call ptr @sqlite3HashInsert(ptr noundef %aCollSeq22, ptr noundef %23, ptr noundef %24)
  store ptr %call25, ptr %pDel, align 8
  %25 = load ptr, ptr %pDel, align 8
  %cmp26 = icmp ne ptr %25, null
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then5
  %26 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %26)
  %27 = load ptr, ptr %db.addr, align 8
  %28 = load ptr, ptr %pDel, align 8
  call void @sqlite3DbFree(ptr noundef %27, ptr noundef %28)
  store ptr null, ptr %pColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then5
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %entry
  %29 = load ptr, ptr %pColl, align 8
  ret ptr %29
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
