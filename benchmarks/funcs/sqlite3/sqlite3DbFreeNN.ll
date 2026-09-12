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
%struct.LookasideSlot = type { ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DbFreeNN(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pBuf = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 82
  %2 = load ptr, ptr %pnBytesFreed, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p.addr, align 8
  call void @measureAllocationSize(ptr noundef %3, ptr noundef %4)
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %call = call i32 @isLookaside(ptr noundef %5, ptr noundef %6)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  store ptr %7, ptr %pBuf, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 61
  %pFree = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 6
  %9 = load ptr, ptr %pFree, align 8
  %10 = load ptr, ptr %pBuf, align 8
  %pNext = getelementptr inbounds nuw %struct.LookasideSlot, ptr %10, i32 0, i32 0
  store ptr %9, ptr %pNext, align 8
  %11 = load ptr, ptr %pBuf, align 8
  %12 = load ptr, ptr %db.addr, align 8
  %lookaside5 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 61
  %pFree6 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside5, i32 0, i32 6
  store ptr %11, ptr %pFree6, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %13 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %13)
  br label %return

return:                                           ; preds = %if.end8, %if.then4, %if.then2
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @measureAllocationSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isLookaside(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
