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
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpenMalloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterOpenTempFile(ptr noundef %db, i64 noundef %nExtend, ptr noundef %ppFd) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %nExtend.addr = alloca i64, align 8
  %ppFd.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %max = alloca i64, align 8
  store ptr %db, ptr %db.addr, align 8
  store i64 %nExtend, ptr %nExtend.addr, align 8
  store ptr %ppFd, ptr %ppFd.addr, align 8
  %call = call i32 @sqlite3FaultSim(i32 noundef 202)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3338, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %db.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs, align 8
  %2 = load ptr, ptr %ppFd.addr, align 8
  %call1 = call i32 @sqlite3OsOpenMalloc(ptr noundef %1, ptr noundef null, ptr noundef %2, i32 noundef 4126, ptr noundef %rc)
  store i32 %call1, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  store i64 2147418112, ptr %max, align 8
  %4 = load ptr, ptr %ppFd.addr, align 8
  %5 = load ptr, ptr %4, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %5, i32 noundef 18, ptr noundef %max)
  %6 = load i64, ptr %nExtend.addr, align 8
  %cmp3 = icmp sgt i64 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %ppFd.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i64, ptr %nExtend.addr, align 8
  call void @vdbeSorterExtendFile(ptr noundef %7, ptr noundef %9, i64 noundef %10)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSorterExtendFile(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
