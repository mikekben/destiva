; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3FindCollSeq(ptr noundef %db, i8 noundef zeroext %enc, ptr noundef %zName, i32 noundef %create) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %enc.addr = alloca i8, align 1
  %zName.addr = alloca ptr, align 8
  %create.addr = alloca i32, align 4
  %pColl = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i8 %enc, ptr %enc.addr, align 1
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %create, ptr %create.addr, align 4
  %0 = load ptr, ptr %zName.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %zName.addr, align 8
  %3 = load i32, ptr %create.addr, align 4
  %call = call ptr @findCollSeqEntry(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %pColl, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pDfltColl, align 8
  store ptr %5, ptr %pColl, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %pColl, align 8
  %tobool1 = icmp ne ptr %6, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, 1
  %8 = load ptr, ptr %pColl, align 8
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.CollSeq, ptr %8, i64 %idx.ext
  store ptr %add.ptr, ptr %pColl, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %pColl, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
declare hidden ptr @findCollSeqEntry(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
