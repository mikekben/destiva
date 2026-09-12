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

@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.629 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.630 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqliteAuthBadReturnCode(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3AuthReadCol(ptr noundef %pParse, ptr noundef %zTab, ptr noundef %zCol, i32 noundef %iDb) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %zTab.addr = alloca ptr, align 8
  %zCol.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %rc = alloca i32, align 4
  %z = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zTab, ptr %zTab.addr, align 8
  store ptr %zCol, ptr %zCol.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
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
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %zDbSName, align 8
  store ptr %5, ptr %zDb, align 8
  %6 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %7 = load i8, ptr %busy, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %db, align 8
  %xAuth = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 62
  %9 = load ptr, ptr %xAuth, align 8
  %10 = load ptr, ptr %db, align 8
  %pAuthArg = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 63
  %11 = load ptr, ptr %pAuthArg, align 8
  %12 = load ptr, ptr %zTab.addr, align 8
  %13 = load ptr, ptr %zCol.addr, align 8
  %14 = load ptr, ptr %zDb, align 8
  %15 = load ptr, ptr %pParse.addr, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 61
  %16 = load ptr, ptr %zAuthContext, align 8
  %call = call i32 %9(ptr noundef %11, i32 noundef 20, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %16)
  store i32 %call, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %18 = load ptr, ptr %zTab.addr, align 8
  %19 = load ptr, ptr %zCol.addr, align 8
  %call3 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.530, ptr noundef %18, ptr noundef %19)
  store ptr %call3, ptr %z, align 8
  %20 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %nDb, align 8
  %cmp4 = icmp sgt i32 %21, 2
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then2
  %22 = load i32, ptr %iDb.addr, align 4
  %cmp5 = icmp ne i32 %22, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.then2
  %23 = load ptr, ptr %zDb, align 8
  %24 = load ptr, ptr %z, align 8
  %call7 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.629, ptr noundef %23, ptr noundef %24)
  store ptr %call7, ptr %z, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %lor.lhs.false
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %25, ptr noundef @.str.630, ptr noundef %26)
  %27 = load ptr, ptr %pParse.addr, align 8
  %rc9 = getelementptr inbounds nuw %struct.Parse, ptr %27, i32 0, i32 3
  store i32 23, ptr %rc9, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %28 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %28, 2
  br i1 %cmp10, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.else
  %29 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %29, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %pParse.addr, align 8
  call void @sqliteAuthBadReturnCode(ptr noundef %30)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end8
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
