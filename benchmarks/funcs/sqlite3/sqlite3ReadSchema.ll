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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ReadSchema(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %3 = load i8, ptr %busy, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 1
  %call = call i32 @sqlite3Init(ptr noundef %4, ptr noundef %zErrMsg)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load i32, ptr %rc, align 4
  %8 = load ptr, ptr %pParse.addr, align 8
  %rc3 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 3
  store i32 %7, ptr %rc3, align 8
  %9 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %nErr, align 8
  br label %if.end6

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %db, align 8
  %noSharedCache = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 27
  %12 = load i8, ptr %noSharedCache, align 1
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %13 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %mDbFlags, align 4
  %or = or i32 %14, 16
  store i32 %or, ptr %mDbFlags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
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
