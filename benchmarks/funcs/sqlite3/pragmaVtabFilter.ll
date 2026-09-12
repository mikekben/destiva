; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.PragmaVtab = type { %struct.sqlite3_vtab, ptr, ptr, i8, i8 }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }
%struct.PragmaVtabCursor = type { %struct.sqlite3_vtab_cursor, ptr, i64, [2 x ptr] }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.521 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.522 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.523 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendall(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_prepare_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_errmsg(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pragmaVtabFilter(ptr noundef %pVtabCursor, i32 noundef %idxNum, ptr noundef %idxStr, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %pVtabCursor.addr = alloca ptr, align 8
  %idxNum.addr = alloca i32, align 4
  %idxStr.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pCsr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %acc = alloca %struct.sqlite3_str, align 8
  %zSql = alloca ptr, align 8
  %zText = alloca ptr, align 8
  store ptr %pVtabCursor, ptr %pVtabCursor.addr, align 8
  store i32 %idxNum, ptr %idxNum.addr, align 4
  store ptr %idxStr, ptr %idxStr.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %pVtabCursor.addr, align 8
  store ptr %0, ptr %pCsr, align 8
  %1 = load ptr, ptr %pVtabCursor.addr, align 8
  %pVtab = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVtab, align 8
  store ptr %2, ptr %pTab, align 8
  %3 = load i32, ptr %idxNum.addr, align 4
  %4 = load ptr, ptr %idxStr.addr, align 8
  %5 = load ptr, ptr %pCsr, align 8
  call void @pragmaVtabCursorClear(ptr noundef %5)
  %6 = load ptr, ptr %pTab, align 8
  %pName = getelementptr inbounds nuw %struct.PragmaVtab, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pName, align 8
  %mPragFlg = getelementptr inbounds nuw %struct.PragmaName, ptr %7, i32 0, i32 2
  %8 = load i8, ptr %mPragFlg, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 32
  %cmp = icmp ne i32 %and, 0
  %9 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 1
  store i32 %cond, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %argv.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %14)
  store ptr %call, ptr %zText, align 8
  %15 = load ptr, ptr %zText, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %16 = load ptr, ptr %zText, align 8
  %call4 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %16)
  %17 = load ptr, ptr %pCsr, align 8
  %azArg = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %18 to i64
  %arrayidx6 = getelementptr inbounds [2 x ptr], ptr %azArg, i64 0, i64 %idxprom5
  store ptr %call4, ptr %arrayidx6, align 8
  %19 = load ptr, ptr %pCsr, align 8
  %azArg7 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds [2 x ptr], ptr %azArg7, i64 0, i64 %idxprom8
  %21 = load ptr, ptr %arrayidx9, align 8
  %cmp10 = icmp eq ptr %21, null
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  %23 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %pTab, align 8
  %db = getelementptr inbounds nuw %struct.PragmaVtab, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 33
  %arrayidx15 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 1
  %26 = load i32, ptr %arrayidx15, align 4
  call void @sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %26)
  call void @sqlite3_str_appendall(ptr noundef %acc, ptr noundef @.str.521)
  %27 = load ptr, ptr %pCsr, align 8
  %azArg16 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %27, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [2 x ptr], ptr %azArg16, i64 0, i64 1
  %28 = load ptr, ptr %arrayidx17, align 8
  %tobool18 = icmp ne ptr %28, null
  br i1 %tobool18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.end
  %29 = load ptr, ptr %pCsr, align 8
  %azArg20 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %29, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %azArg20, i64 0, i64 1
  %30 = load ptr, ptr %arrayidx21, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.522, ptr noundef %30)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.end
  %31 = load ptr, ptr %pTab, align 8
  %pName23 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pName23, align 8
  %zName = getelementptr inbounds nuw %struct.PragmaName, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %zName, align 8
  call void @sqlite3_str_appendall(ptr noundef %acc, ptr noundef %33)
  %34 = load ptr, ptr %pCsr, align 8
  %azArg24 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %34, i32 0, i32 3
  %arrayidx25 = getelementptr inbounds [2 x ptr], ptr %azArg24, i64 0, i64 0
  %35 = load ptr, ptr %arrayidx25, align 8
  %tobool26 = icmp ne ptr %35, null
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  %36 = load ptr, ptr %pCsr, align 8
  %azArg28 = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %36, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [2 x ptr], ptr %azArg28, i64 0, i64 0
  %37 = load ptr, ptr %arrayidx29, align 8
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %acc, ptr noundef @.str.523, ptr noundef %37)
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end22
  %call31 = call ptr @sqlite3StrAccumFinish(ptr noundef %acc)
  store ptr %call31, ptr %zSql, align 8
  %38 = load ptr, ptr %zSql, align 8
  %cmp32 = icmp eq ptr %38, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  store i32 7, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  %39 = load ptr, ptr %pTab, align 8
  %db36 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %db36, align 8
  %41 = load ptr, ptr %zSql, align 8
  %42 = load ptr, ptr %pCsr, align 8
  %pPragma = getelementptr inbounds nuw %struct.PragmaVtabCursor, ptr %42, i32 0, i32 1
  %call37 = call i32 @sqlite3_prepare_v2(ptr noundef %40, ptr noundef %41, i32 noundef -1, ptr noundef %pPragma, ptr noundef null)
  store i32 %call37, ptr %rc, align 4
  %43 = load ptr, ptr %zSql, align 8
  call void @sqlite3_free(ptr noundef %43)
  %44 = load i32, ptr %rc, align 4
  %cmp38 = icmp ne i32 %44, 0
  br i1 %cmp38, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end35
  %45 = load ptr, ptr %pTab, align 8
  %db41 = getelementptr inbounds nuw %struct.PragmaVtab, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %db41, align 8
  %call42 = call ptr @sqlite3_errmsg(ptr noundef %46)
  %call43 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %call42)
  %47 = load ptr, ptr %pTab, align 8
  %base = getelementptr inbounds nuw %struct.PragmaVtab, ptr %47, i32 0, i32 0
  %zErrMsg = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %base, i32 0, i32 2
  store ptr %call43, ptr %zErrMsg, align 8
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end35
  %49 = load ptr, ptr %pVtabCursor.addr, align 8
  %call45 = call i32 @pragmaVtabNext(ptr noundef %49)
  store i32 %call45, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then40, %if.then34, %if.then12
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pragmaVtabNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pragmaVtabCursorClear(ptr noundef) #0

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
