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

@.str.817 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetName(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @parserAddExprIdListTerm(ptr noundef %pParse, ptr noundef %pPrior, ptr noundef %pIdToken, i32 noundef %hasCollate, i32 noundef %sortOrder) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pPrior.addr = alloca ptr, align 8
  %pIdToken.addr = alloca ptr, align 8
  %hasCollate.addr = alloca i32, align 4
  %sortOrder.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pPrior, ptr %pPrior.addr, align 8
  store ptr %pIdToken, ptr %pIdToken.addr, align 8
  store i32 %hasCollate, ptr %hasCollate.addr, align 4
  store i32 %sortOrder, ptr %sortOrder.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pPrior.addr, align 8
  %call = call ptr @sqlite3ExprListAppend(ptr noundef %0, ptr noundef %1, ptr noundef null)
  store ptr %call, ptr %p, align 8
  %2 = load i32, ptr %hasCollate.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %sortOrder.addr, align 4
  %cmp = icmp ne i32 %3, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %6 = load i8, ptr %busy, align 1
  %conv = zext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pParse.addr, align 8
  %8 = load ptr, ptr %pIdToken.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %n, align 8
  %10 = load ptr, ptr %pIdToken.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %7, ptr noundef @.str.817, i32 noundef %9, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %12 = load ptr, ptr %pParse.addr, align 8
  %13 = load ptr, ptr %p, align 8
  %14 = load ptr, ptr %pIdToken.addr, align 8
  call void @sqlite3ExprListSetName(ptr noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef 1)
  %15 = load ptr, ptr %p, align 8
  ret ptr %15
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
