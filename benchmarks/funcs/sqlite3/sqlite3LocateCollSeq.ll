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
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3LocateCollSeq(ptr noundef %pParse, ptr noundef %zName) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %enc = alloca i8, align 1
  %initbusy = alloca i8, align 1
  %pColl = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %enc2 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 16
  %3 = load i8, ptr %enc2, align 2
  store i8 %3, ptr %enc, align 1
  %4 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %5 = load i8, ptr %busy, align 1
  store i8 %5, ptr %initbusy, align 1
  %6 = load ptr, ptr %db, align 8
  %7 = load i8, ptr %enc, align 1
  %8 = load ptr, ptr %zName.addr, align 8
  %9 = load i8, ptr %initbusy, align 1
  %conv = zext i8 %9 to i32
  %call = call ptr @sqlite3FindCollSeq(ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %conv)
  store ptr %call, ptr %pColl, align 8
  %10 = load i8, ptr %initbusy, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %11 = load ptr, ptr %pColl, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load ptr, ptr %pColl, align 8
  %xCmp = getelementptr inbounds nuw %struct.CollSeq, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %xCmp, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load i8, ptr %enc, align 1
  %16 = load ptr, ptr %pColl, align 8
  %17 = load ptr, ptr %zName.addr, align 8
  %call5 = call ptr @sqlite3GetCollSeq(ptr noundef %14, i8 noundef zeroext %15, ptr noundef %16, ptr noundef %17)
  store ptr %call5, ptr %pColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  %18 = load ptr, ptr %pColl, align 8
  ret ptr %18
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
