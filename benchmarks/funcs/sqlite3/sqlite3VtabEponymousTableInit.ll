; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vtabCallConstructor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabEponymousTableInit(ptr noundef %pParse, ptr noundef %pMod) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pMod.addr = alloca ptr, align 8
  %pModule = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pMod, ptr %pMod.addr, align 8
  %0 = load ptr, ptr %pMod.addr, align 8
  %pModule1 = getelementptr inbounds nuw %struct.Module, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pModule1, align 8
  store ptr %1, ptr %pModule, align 8
  store ptr null, ptr %zErr, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pMod.addr, align 8
  %pEpoTab = getelementptr inbounds nuw %struct.Module, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pEpoTab, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pModule, align 8
  %xCreate = getelementptr inbounds nuw %struct.sqlite3_module, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %xCreate, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %pModule, align 8
  %xCreate3 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %xCreate3, align 8
  %10 = load ptr, ptr %pModule, align 8
  %xConnect = getelementptr inbounds nuw %struct.sqlite3_module, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %xConnect, align 8
  %cmp4 = icmp ne ptr %9, %11
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %land.lhs.true, %if.end
  %12 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %12, i64 noundef 128)
  store ptr %call, ptr %pTab, align 8
  %13 = load ptr, ptr %pTab, align 8
  %cmp7 = icmp eq ptr %13, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end6
  %14 = load ptr, ptr %db, align 8
  %15 = load ptr, ptr %pMod.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Module, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %zName, align 8
  %call10 = call ptr @sqlite3DbStrDup(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %pTab, align 8
  %zName11 = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 0
  store ptr %call10, ptr %zName11, align 8
  %18 = load ptr, ptr %pTab, align 8
  %zName12 = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName12, align 8
  %cmp13 = icmp eq ptr %19, null
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pTab, align 8
  call void @sqlite3DbFree(ptr noundef %20, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end9
  %22 = load ptr, ptr %pTab, align 8
  %23 = load ptr, ptr %pMod.addr, align 8
  %pEpoTab16 = getelementptr inbounds nuw %struct.Module, ptr %23, i32 0, i32 5
  store ptr %22, ptr %pEpoTab16, align 8
  %24 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %25 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %26, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %27 = load ptr, ptr %pSchema, align 8
  %28 = load ptr, ptr %pTab, align 8
  %pSchema17 = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 20
  store ptr %27, ptr %pSchema17, align 8
  %29 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 10
  store i16 -1, ptr %iPKey, align 4
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pTab, align 8
  %32 = load ptr, ptr %db, align 8
  %33 = load ptr, ptr %pTab, align 8
  %zName18 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zName18, align 8
  %call19 = call ptr @sqlite3DbStrDup(ptr noundef %32, ptr noundef %34)
  call void @addModuleArgument(ptr noundef %30, ptr noundef %31, ptr noundef %call19)
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pTab, align 8
  call void @addModuleArgument(ptr noundef %35, ptr noundef %36, ptr noundef null)
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load ptr, ptr %pTab, align 8
  %39 = load ptr, ptr %db, align 8
  %40 = load ptr, ptr %pTab, align 8
  %zName20 = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %zName20, align 8
  %call21 = call ptr @sqlite3DbStrDup(ptr noundef %39, ptr noundef %41)
  call void @addModuleArgument(ptr noundef %37, ptr noundef %38, ptr noundef %call21)
  %42 = load ptr, ptr %db, align 8
  %43 = load ptr, ptr %pTab, align 8
  %44 = load ptr, ptr %pMod.addr, align 8
  %45 = load ptr, ptr %pModule, align 8
  %xConnect22 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %45, i32 0, i32 2
  %46 = load ptr, ptr %xConnect22, align 8
  %call23 = call i32 @vtabCallConstructor(ptr noundef %42, ptr noundef %43, ptr noundef %44, ptr noundef %46, ptr noundef %zErr)
  store i32 %call23, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %tobool24 = icmp ne i32 %47, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end15
  %48 = load ptr, ptr %pParse.addr, align 8
  %49 = load ptr, ptr %zErr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %48, ptr noundef @.str.20, ptr noundef %49)
  %50 = load ptr, ptr %db, align 8
  %51 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %50, ptr noundef %51)
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %pMod.addr, align 8
  call void @sqlite3VtabEponymousTableClear(ptr noundef %52, ptr noundef %53)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end15
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then14, %if.then8, %if.then5, %if.then
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabEponymousTableClear(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addModuleArgument(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
