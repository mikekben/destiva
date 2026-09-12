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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlockList(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @disconnectAllVtab(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %pSchema = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %0)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %aDb, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %5, i64 %idxprom
  %pSchema1 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %7 = load ptr, ptr %pSchema1, align 8
  store ptr %7, ptr %pSchema, align 8
  %8 = load ptr, ptr %pSchema, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %9, i32 0, i32 2
  %first = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %10 = load ptr, ptr %first, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %11 = load ptr, ptr %p, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %12 = load ptr, ptr %p, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %data, align 8
  store ptr %13, ptr %pTab, align 8
  %14 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 16
  %15 = load i32, ptr %nModuleArg, align 4
  %tobool5 = icmp ne i32 %15, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body4
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pTab, align 8
  call void @sqlite3VtabDisconnect(ptr noundef %16, ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then6, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %next, align 8
  store ptr %19, ptr %p, align 8
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %if.end7

if.end7:                                          ; preds = %for.end, %for.body
  br label %for.inc8

for.inc8:                                         ; preds = %if.end7
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %21 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 68
  %first10 = getelementptr inbounds nuw %struct.Hash, ptr %aModule, i32 0, i32 2
  %22 = load ptr, ptr %first10, align 8
  store ptr %22, ptr %p, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end9
  %23 = load ptr, ptr %p, align 8
  %tobool12 = icmp ne ptr %23, null
  br i1 %tobool12, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond11
  %24 = load ptr, ptr %p, align 8
  %data14 = getelementptr inbounds nuw %struct.HashElem, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %data14, align 8
  store ptr %25, ptr %pMod, align 8
  %26 = load ptr, ptr %pMod, align 8
  %pEpoTab = getelementptr inbounds nuw %struct.Module, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pEpoTab, align 8
  %tobool15 = icmp ne ptr %27, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.body13
  %28 = load ptr, ptr %db.addr, align 8
  %29 = load ptr, ptr %pMod, align 8
  %pEpoTab17 = getelementptr inbounds nuw %struct.Module, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %pEpoTab17, align 8
  call void @sqlite3VtabDisconnect(ptr noundef %28, ptr noundef %30)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %31 = load ptr, ptr %p, align 8
  %next20 = getelementptr inbounds nuw %struct.HashElem, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %next20, align 8
  store ptr %32, ptr %p, align 8
  br label %for.cond11, !llvm.loop !9

for.end21:                                        ; preds = %for.cond11
  %33 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VtabUnlockList(ptr noundef %33)
  %34 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %34)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabDisconnect(ptr noundef, ptr noundef) #0

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
!9 = distinct !{!9, !7}
