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

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3LookasideUsed(ptr noundef %db, ptr noundef %pHighwater) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pHighwater.addr = alloca ptr, align 8
  %nInit = alloca i32, align 4
  %nFree = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pHighwater, ptr %pHighwater.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 61
  %pInit = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 5
  %1 = load ptr, ptr %pInit, align 8
  %call = call i32 @countLookasideSlots(ptr noundef %1)
  store i32 %call, ptr %nInit, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %lookaside1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 61
  %pFree = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside1, i32 0, i32 6
  %3 = load ptr, ptr %pFree, align 8
  %call2 = call i32 @countLookasideSlots(ptr noundef %3)
  store i32 %call2, ptr %nFree, align 4
  %4 = load ptr, ptr %pHighwater.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %lookaside3 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 61
  %nSlot = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside3, i32 0, i32 3
  %6 = load i32, ptr %nSlot, align 8
  %7 = load i32, ptr %nInit, align 4
  %sub = sub i32 %6, %7
  %8 = load ptr, ptr %pHighwater.addr, align 8
  store i32 %sub, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %db.addr, align 8
  %lookaside4 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 61
  %nSlot5 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside4, i32 0, i32 3
  %10 = load i32, ptr %nSlot5, align 8
  %11 = load i32, ptr %nInit, align 4
  %12 = load i32, ptr %nFree, align 4
  %add = add i32 %11, %12
  %sub6 = sub i32 %10, %add
  ret i32 %sub6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @countLookasideSlots(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
