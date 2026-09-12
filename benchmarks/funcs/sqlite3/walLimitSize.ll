; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

@.str.101 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @walLimitSize(ptr noundef %pWal, i64 noundef %nMax) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %nMax.addr = alloca i64, align 8
  %sz = alloca i64, align 8
  %rx = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i64 %nMax, ptr %nMax.addr, align 8
  call void @sqlite3BeginBenignMalloc()
  %0 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pWalFd, align 8
  %call = call i32 @sqlite3OsFileSize(ptr noundef %1, ptr noundef %sz)
  store i32 %call, ptr %rx, align 4
  %2 = load i32, ptr %rx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, ptr %sz, align 8
  %4 = load i64, ptr %nMax.addr, align 8
  %cmp1 = icmp sgt i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %pWal.addr, align 8
  %pWalFd2 = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pWalFd2, align 8
  %7 = load i64, ptr %nMax.addr, align 8
  %call3 = call i32 @sqlite3OsTruncate(ptr noundef %6, i64 noundef %7)
  store i32 %call3, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @sqlite3EndBenignMalloc()
  %8 = load i32, ptr %rx, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load i32, ptr %rx, align 4
  %10 = load ptr, ptr %pWal.addr, align 8
  %zWalName = getelementptr inbounds nuw %struct.Wal, ptr %10, i32 0, i32 22
  %11 = load ptr, ptr %zWalName, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %9, ptr noundef @.str.101, ptr noundef %11)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
