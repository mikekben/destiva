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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.714 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.715 = external hidden unnamed_addr constant [56 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CodeDropTable(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %iDb, i32 noundef %isView) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %isView.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTrigger = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store i32 %isView, ptr %isView.addr, align 4
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
  store ptr %arrayidx, ptr %pDb, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %5)
  store ptr %call, ptr %v, align 8
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %6, i32 noundef 1, i32 noundef %7)
  %8 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %v, align 8
  %call2 = call i32 @sqlite3VdbeAddOp0(ptr noundef %10, i32 noundef 160)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pTab.addr, align 8
  %call3 = call ptr @sqlite3TriggerList(ptr noundef %11, ptr noundef %12)
  store ptr %call3, ptr %pTrigger, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %13 = load ptr, ptr %pTrigger, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pTrigger, align 8
  call void @sqlite3DropTriggerPtr(ptr noundef %14, ptr noundef %15)
  %16 = load ptr, ptr %pTrigger, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %16, i32 0, i32 9
  %17 = load ptr, ptr %pNext, align 8
  store ptr %17, ptr %pTrigger, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 9
  %19 = load i32, ptr %tabFlags, align 8
  %and = and i32 %19, 8
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.end
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zDbSName, align 8
  %23 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %20, ptr noundef @.str.714, ptr noundef %22, ptr noundef %24)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.end
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %pDb, align 8
  %zDbSName8 = getelementptr inbounds nuw %struct.Db, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %zDbSName8, align 8
  %28 = load ptr, ptr %pTab.addr, align 8
  %zName9 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zName9, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %25, ptr noundef @.str.715, ptr noundef %27, ptr noundef @.str.320, ptr noundef %29)
  %30 = load i32, ptr %isView.addr, align 4
  %tobool10 = icmp ne i32 %30, 0
  br i1 %tobool10, label %if.end14, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  %31 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg11 = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 16
  %32 = load i32, ptr %nModuleArg11, align 4
  %tobool12 = icmp ne i32 %32, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pTab.addr, align 8
  call void @destroyTable(ptr noundef %33, ptr noundef %34)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true, %if.end7
  %35 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg15 = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 16
  %36 = load i32, ptr %nModuleArg15, align 4
  %tobool16 = icmp ne i32 %36, 0
  br i1 %tobool16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %37 = load ptr, ptr %v, align 8
  %38 = load i32, ptr %iDb.addr, align 4
  %39 = load ptr, ptr %pTab.addr, align 8
  %zName18 = getelementptr inbounds nuw %struct.Table, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zName18, align 8
  %call19 = call i32 @sqlite3VdbeAddOp4(ptr noundef %37, i32 noundef 162, i32 noundef %38, i32 noundef 0, i32 noundef 0, ptr noundef %40, i32 noundef 0)
  %41 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %41)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %iDb.addr, align 4
  %44 = load ptr, ptr %pTab.addr, align 8
  %zName21 = getelementptr inbounds nuw %struct.Table, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %zName21, align 8
  %call22 = call i32 @sqlite3VdbeAddOp4(ptr noundef %42, i32 noundef 143, i32 noundef %43, i32 noundef 0, i32 noundef 0, ptr noundef %45, i32 noundef 0)
  %46 = load ptr, ptr %pParse.addr, align 8
  %47 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3ChangeCookie(ptr noundef %46, i32 noundef %47)
  %48 = load ptr, ptr %db, align 8
  %49 = load i32, ptr %iDb.addr, align 4
  call void @sqliteViewResetAll(ptr noundef %48, i32 noundef %49)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggerList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DropTriggerPtr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @destroyTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqliteViewResetAll(ptr noundef, i32 noundef) #0

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
