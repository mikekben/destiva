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
%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFetch(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbeSorterExtendFile(ptr noundef %db, ptr noundef %pFd, i64 noundef %nByte) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pFd.addr = alloca ptr, align 8
  %nByte.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %chunksize = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  store i64 %nByte, ptr %nByte.addr, align 8
  %0 = load i64, ptr %nByte.addr, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %nMaxSorterMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 34
  %2 = load i32, ptr %nMaxSorterMmap, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp sle i64 %0, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pFd.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %iVersion, align 8
  %cmp2 = icmp sge i32 %5, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %p, align 8
  store i32 4096, ptr %chunksize, align 4
  %6 = load ptr, ptr %pFd.addr, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %6, i32 noundef 6, ptr noundef %chunksize)
  %7 = load ptr, ptr %pFd.addr, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %7, i32 noundef 5, ptr noundef %nByte.addr)
  %8 = load ptr, ptr %pFd.addr, align 8
  %9 = load i64, ptr %nByte.addr, align 8
  %conv4 = trunc i64 %9 to i32
  %call = call i32 @sqlite3OsFetch(ptr noundef %8, i64 noundef 0, i32 noundef %conv4, ptr noundef %p)
  %10 = load ptr, ptr %pFd.addr, align 8
  %11 = load ptr, ptr %p, align 8
  %call5 = call i32 @sqlite3OsUnfetch(ptr noundef %10, i64 noundef 0, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
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
