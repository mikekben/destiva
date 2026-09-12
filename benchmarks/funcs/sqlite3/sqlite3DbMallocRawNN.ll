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
define hidden ptr @sqlite3DbMallocRawNN(ptr noundef %db, i64 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %pBuf = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 0
  %1 = load i32, ptr %bDisable, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else35

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8
  %3 = load ptr, ptr %db.addr, align 8
  %lookaside1 = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 61
  %sz = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside1, i32 0, i32 1
  %4 = load i16, ptr %sz, align 4
  %conv = zext i16 %4 to i64
  %cmp2 = icmp ugt i64 %2, %conv
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %db.addr, align 8
  %lookaside5 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 61
  %anStat = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x i32], ptr %anStat, i64 0, i64 1
  %6 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end34

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %db.addr, align 8
  %lookaside6 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 61
  %pFree = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside6, i32 0, i32 6
  %8 = load ptr, ptr %pFree, align 8
  store ptr %8, ptr %pBuf, align 8
  %cmp7 = icmp ne ptr %8, null
  br i1 %cmp7, label %if.then9, label %if.else16

if.then9:                                         ; preds = %if.else
  %9 = load ptr, ptr %pBuf, align 8
  %pNext = getelementptr inbounds nuw %struct.LookasideSlot, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pNext, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %lookaside10 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 61
  %pFree11 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside10, i32 0, i32 6
  store ptr %10, ptr %pFree11, align 8
  %12 = load ptr, ptr %db.addr, align 8
  %lookaside12 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 61
  %anStat13 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside12, i32 0, i32 4
  %arrayidx14 = getelementptr inbounds [3 x i32], ptr %anStat13, i64 0, i64 0
  %13 = load i32, ptr %arrayidx14, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, ptr %arrayidx14, align 4
  %14 = load ptr, ptr %pBuf, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

if.else16:                                        ; preds = %if.else
  %15 = load ptr, ptr %db.addr, align 8
  %lookaside17 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 61
  %pInit = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside17, i32 0, i32 5
  %16 = load ptr, ptr %pInit, align 8
  store ptr %16, ptr %pBuf, align 8
  %cmp18 = icmp ne ptr %16, null
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.else16
  %17 = load ptr, ptr %pBuf, align 8
  %pNext21 = getelementptr inbounds nuw %struct.LookasideSlot, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pNext21, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %lookaside22 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 61
  %pInit23 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside22, i32 0, i32 5
  store ptr %18, ptr %pInit23, align 8
  %20 = load ptr, ptr %db.addr, align 8
  %lookaside24 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 61
  %anStat25 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside24, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [3 x i32], ptr %anStat25, i64 0, i64 0
  %21 = load i32, ptr %arrayidx26, align 4
  %inc27 = add i32 %21, 1
  store i32 %inc27, ptr %arrayidx26, align 4
  %22 = load ptr, ptr %pBuf, align 8
  store ptr %22, ptr %retval, align 8
  br label %return

if.else28:                                        ; preds = %if.else16
  %23 = load ptr, ptr %db.addr, align 8
  %lookaside29 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 61
  %anStat30 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside29, i32 0, i32 4
  %arrayidx31 = getelementptr inbounds [3 x i32], ptr %anStat30, i64 0, i64 2
  %24 = load i32, ptr %arrayidx31, align 4
  %inc32 = add i32 %24, 1
  store i32 %inc32, ptr %arrayidx31, align 4
  br label %if.end

if.end:                                           ; preds = %if.else28
  br label %if.end33

if.end33:                                         ; preds = %if.end
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then4
  br label %if.end38

if.else35:                                        ; preds = %entry
  %25 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 19
  %26 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %26, 0
  br i1 %tobool, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else35
  store ptr null, ptr %retval, align 8
  br label %return

if.end37:                                         ; preds = %if.else35
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end34
  %27 = load ptr, ptr %db.addr, align 8
  %28 = load i64, ptr %n.addr, align 8
  %call = call ptr @dbMallocRawFinish(ptr noundef %27, i64 noundef %28)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end38, %if.then36, %if.then20, %if.then9
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
declare hidden ptr @dbMallocRawFinish(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
