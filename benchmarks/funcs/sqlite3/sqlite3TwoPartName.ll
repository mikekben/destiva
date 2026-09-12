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

@.str.589 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.590 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3TwoPartName(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2, ptr noundef %pUnqual) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %pUnqual.addr = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store ptr %pUnqual, ptr %pUnqual.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pName2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %n, align 8
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %5 = load i8, ptr %busy, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %6, ptr noundef @.str.589)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pName2.addr, align 8
  %8 = load ptr, ptr %pUnqual.addr, align 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %pName1.addr, align 8
  %call = call i32 @sqlite3FindDb(ptr noundef %9, ptr noundef %10)
  store i32 %call, ptr %iDb, align 4
  %11 = load i32, ptr %iDb, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %pName1.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %12, ptr noundef @.str.590, ptr noundef %13)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %if.end8

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %db, align 8
  %init6 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 35
  %iDb7 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init6, i32 0, i32 1
  %15 = load i8, ptr %iDb7, align 4
  %conv = zext i8 %15 to i32
  store i32 %conv, ptr %iDb, align 4
  %16 = load ptr, ptr %pName1.addr, align 8
  %17 = load ptr, ptr %pUnqual.addr, align 8
  store ptr %16, ptr %17, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end5
  %18 = load i32, ptr %iDb, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then4, %if.then2
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDb(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
