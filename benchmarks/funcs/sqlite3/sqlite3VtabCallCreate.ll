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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.393 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabCallCreate(ptr noundef %db, i32 noundef %iDb, ptr noundef %zTab, ptr noundef %pzErr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zTab.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %zMod = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zTab.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %4 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %zDbSName, align 8
  %call = call ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  store ptr %call, ptr %pTab, align 8
  %6 = load ptr, ptr %pTab, align 8
  %azModuleArg = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 17
  %7 = load ptr, ptr %azModuleArg, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx1, align 8
  store ptr %8, ptr %zMod, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 68
  %10 = load ptr, ptr %zMod, align 8
  %call2 = call ptr @sqlite3HashFind(ptr noundef %aModule, ptr noundef %10)
  store ptr %call2, ptr %pMod, align 8
  %11 = load ptr, ptr %pMod, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pModule, align 8
  %xCreate = getelementptr inbounds nuw %struct.sqlite3_module, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %xCreate, align 8
  %cmp3 = icmp eq ptr %14, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pMod, align 8
  %pModule5 = getelementptr inbounds nuw %struct.Module, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pModule5, align 8
  %xDestroy = getelementptr inbounds nuw %struct.sqlite3_module, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %xDestroy, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %zMod, align 8
  %call7 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %18, ptr noundef @.str.393, ptr noundef %19)
  %20 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call7, ptr %20, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false4
  %21 = load ptr, ptr %db.addr, align 8
  %22 = load ptr, ptr %pTab, align 8
  %23 = load ptr, ptr %pMod, align 8
  %24 = load ptr, ptr %pMod, align 8
  %pModule8 = getelementptr inbounds nuw %struct.Module, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pModule8, align 8
  %xCreate9 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %xCreate9, align 8
  %27 = load ptr, ptr %pzErr.addr, align 8
  %call10 = call i32 @vtabCallConstructor(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %26, ptr noundef %27)
  store i32 %call10, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %28, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %pTab, align 8
  %call12 = call ptr @sqlite3GetVTable(ptr noundef %29, ptr noundef %30)
  %tobool = icmp ne ptr %call12, null
  br i1 %tobool, label %if.then13, label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  %31 = load ptr, ptr %db.addr, align 8
  %call14 = call i32 @growVTrans(ptr noundef %31)
  store i32 %call14, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %32, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.then13
  %33 = load ptr, ptr %db.addr, align 8
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %pTab, align 8
  %call17 = call ptr @sqlite3GetVTable(ptr noundef %34, ptr noundef %35)
  call void @addToVTrans(ptr noundef %33, ptr noundef %call17)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %if.end
  %36 = load i32, ptr %rc, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @growVTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addToVTrans(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vtabCallConstructor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
