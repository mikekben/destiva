; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.393 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vtabCallConstructor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabCallConnect(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zMod = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zModule = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3GetVTable(ptr noundef %4, ptr noundef %5)
  %tobool2 = icmp ne ptr %call, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pTab.addr, align 8
  %azModuleArg = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 17
  %7 = load ptr, ptr %azModuleArg, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx, align 8
  store ptr %8, ptr %zMod, align 8
  %9 = load ptr, ptr %db, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 68
  %10 = load ptr, ptr %zMod, align 8
  %call3 = call ptr @sqlite3HashFind(ptr noundef %aModule, ptr noundef %10)
  store ptr %call3, ptr %pMod, align 8
  %11 = load ptr, ptr %pMod, align 8
  %tobool4 = icmp ne ptr %11, null
  br i1 %tobool4, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %pTab.addr, align 8
  %azModuleArg6 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 17
  %13 = load ptr, ptr %azModuleArg6, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx7, align 8
  store ptr %14, ptr %zModule, align 8
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %zModule, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %15, ptr noundef @.str.393, ptr noundef %16)
  store i32 1, ptr %rc, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  store ptr null, ptr %zErr, align 8
  %17 = load ptr, ptr %db, align 8
  %18 = load ptr, ptr %pTab.addr, align 8
  %19 = load ptr, ptr %pMod, align 8
  %20 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pModule, align 8
  %xConnect = getelementptr inbounds nuw %struct.sqlite3_module, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %xConnect, align 8
  %call8 = call i32 @vtabCallConstructor(ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %22, ptr noundef %zErr)
  store i32 %call8, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %23, 0
  br i1 %cmp, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %zErr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %24, ptr noundef @.str.20, ptr noundef %25)
  %26 = load i32, ptr %rc, align 4
  %27 = load ptr, ptr %pParse.addr, align 8
  %rc10 = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 3
  store i32 %26, ptr %rc10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %28, ptr noundef %29)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then5
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
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
