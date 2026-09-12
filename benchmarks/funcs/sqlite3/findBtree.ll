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

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.91 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden ptr @findBtree(ptr noundef %pErrorDb, ptr noundef %pDb, ptr noundef %zDb) #0 {
entry:
  %retval = alloca ptr, align 8
  %pErrorDb.addr = alloca ptr, align 8
  %pDb.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sParse = alloca %struct.Parse, align 8
  %rc = alloca i32, align 4
  store ptr %pErrorDb, ptr %pErrorDb.addr, align 8
  store ptr %pDb, ptr %pDb.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  %0 = load ptr, ptr %pDb.addr, align 8
  %1 = load ptr, ptr %zDb.addr, align 8
  %call = call i32 @sqlite3FindDbName(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sParse, i8 0, i64 416, i1 false)
  %3 = load ptr, ptr %pDb.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 0
  store ptr %3, ptr %db, align 8
  %call1 = call i32 @sqlite3OpenTempDatabase(ptr noundef %sParse)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pErrorDb.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %5 = load i32, ptr %rc3, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %6 = load ptr, ptr %zErrMsg, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %4, i32 noundef %5, ptr noundef @.str.20, ptr noundef %6)
  store i32 1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load ptr, ptr %pErrorDb.addr, align 8
  %zErrMsg4 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %8 = load ptr, ptr %zErrMsg4, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %8)
  call void @sqlite3ParserReset(ptr noundef %sParse)
  %9 = load i32, ptr %rc, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %10 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %11 = load ptr, ptr %pErrorDb.addr, align 8
  %12 = load ptr, ptr %zDb.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %11, i32 noundef 1, ptr noundef @.str.91, ptr noundef %12)
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end8
  %13 = load ptr, ptr %pDb.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %aDb, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %14, i64 %idxprom
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %16 = load ptr, ptr %pBt, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then6
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OpenTempDatabase(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
