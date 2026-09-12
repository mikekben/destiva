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
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.410 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.411 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.412 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.413 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.414 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3LocateTable(ptr noundef %pParse, i32 noundef %flags, ptr noundef %zName, ptr noundef %zDbase) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %zDbase.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %zMsg = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %zDbase, ptr %zDbase.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %3, 16
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %4)
  %cmp2 = icmp ne i32 0, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %zName.addr, align 8
  %7 = load ptr, ptr %zDbase.addr, align 8
  %call3 = call ptr @sqlite3FindTable(ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr %call3, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %cmp4 = icmp eq ptr %8, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %disableVtab = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 13
  %10 = load i8, ptr %disableVtab, align 1
  %conv = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end24

if.then8:                                         ; preds = %if.then5
  %11 = load ptr, ptr %db, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 68
  %12 = load ptr, ptr %zName.addr, align 8
  %call9 = call ptr @sqlite3HashFind(ptr noundef %aModule, ptr noundef %12)
  store ptr %call9, ptr %pMod, align 8
  %13 = load ptr, ptr %pMod, align 8
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %land.lhs.true12, label %if.end18

land.lhs.true12:                                  ; preds = %if.then8
  %14 = load ptr, ptr %zName.addr, align 8
  %call13 = call i32 @sqlite3_strnicmp(ptr noundef %14, ptr noundef @.str.410, i32 noundef 7)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %land.lhs.true12
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %zName.addr, align 8
  %call17 = call ptr @sqlite3PragmaVtabRegister(ptr noundef %15, ptr noundef %16)
  store ptr %call17, ptr %pMod, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true12, %if.then8
  %17 = load ptr, ptr %pMod, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %land.lhs.true19, label %if.end23

land.lhs.true19:                                  ; preds = %if.end18
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %pMod, align 8
  %call20 = call i32 @sqlite3VtabEponymousTableInit(ptr noundef %18, ptr noundef %19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true19
  %20 = load ptr, ptr %pMod, align 8
  %pEpoTab = getelementptr inbounds nuw %struct.Module, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pEpoTab, align 8
  store ptr %21, ptr %retval, align 8
  br label %return

if.end23:                                         ; preds = %land.lhs.true19, %if.end18
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then5
  %22 = load i32, ptr %flags.addr, align 4
  %and25 = and i32 %22, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store ptr null, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %if.end24
  %23 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  br label %if.end36

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %p, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 16
  %25 = load i32, ptr %nModuleArg, align 4
  %tobool29 = icmp ne i32 %25, 0
  br i1 %tobool29, label %land.lhs.true30, label %if.end35

land.lhs.true30:                                  ; preds = %if.else
  %26 = load ptr, ptr %pParse.addr, align 8
  %disableVtab31 = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 13
  %27 = load i8, ptr %disableVtab31, align 1
  %conv32 = zext i8 %27 to i32
  %tobool33 = icmp ne i32 %conv32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true30
  store ptr null, ptr %p, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %land.lhs.true30, %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end28
  %28 = load ptr, ptr %p, align 8
  %cmp37 = icmp eq ptr %28, null
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end36
  %29 = load i32, ptr %flags.addr, align 4
  %and40 = and i32 %29, 1
  %tobool41 = icmp ne i32 %and40, 0
  %30 = zext i1 %tobool41 to i64
  %cond = select i1 %tobool41, ptr @.str.411, ptr @.str.412
  store ptr %cond, ptr %zMsg, align 8
  %31 = load ptr, ptr %zDbase.addr, align 8
  %tobool42 = icmp ne ptr %31, null
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then39
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %zMsg, align 8
  %34 = load ptr, ptr %zDbase.addr, align 8
  %35 = load ptr, ptr %zName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %32, ptr noundef @.str.413, ptr noundef %33, ptr noundef %34, ptr noundef %35)
  br label %if.end45

if.else44:                                        ; preds = %if.then39
  %36 = load ptr, ptr %pParse.addr, align 8
  %37 = load ptr, ptr %zMsg, align 8
  %38 = load ptr, ptr %zName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %36, ptr noundef @.str.414, ptr noundef %37, ptr noundef %38)
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end36
  %39 = load ptr, ptr %p, align 8
  store ptr %39, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end46, %if.then27, %if.then22, %if.then
  %40 = load ptr, ptr %retval, align 8
  ret ptr %40
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PragmaVtabRegister(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabEponymousTableInit(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
