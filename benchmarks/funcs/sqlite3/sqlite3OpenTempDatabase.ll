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

@.str.92 = external hidden unnamed_addr constant [70 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPageSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3OpenTempDatabase(ptr noundef %pParse) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBt2 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 1
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %4 = load ptr, ptr %pBt, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 50
  %6 = load i8, ptr %explain, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVfs, align 8
  %9 = load ptr, ptr %db, align 8
  %call = call i32 @sqlite3BtreeOpen(ptr noundef %8, ptr noundef null, ptr noundef %9, ptr noundef %pBt2, i32 noundef 0, i32 noundef 542)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %11, ptr noundef @.str.92)
  %12 = load i32, ptr %rc, align 4
  %13 = load ptr, ptr %pParse.addr, align 8
  %rc5 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 3
  store i32 %12, ptr %rc5, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %pBt2, align 8
  %15 = load ptr, ptr %db, align 8
  %aDb6 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %aDb6, align 8
  %arrayidx7 = getelementptr inbounds %struct.Db, ptr %16, i64 1
  %pBt8 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx7, i32 0, i32 1
  store ptr %14, ptr %pBt8, align 8
  %17 = load ptr, ptr %pBt2, align 8
  %18 = load ptr, ptr %db, align 8
  %nextPagesize = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 29
  %19 = load i32, ptr %nextPagesize, align 4
  %call9 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %17, i32 noundef %19, i32 noundef -1, i32 noundef 0)
  %cmp10 = icmp eq i32 7, %call9
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  %20 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %20)
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then4
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
