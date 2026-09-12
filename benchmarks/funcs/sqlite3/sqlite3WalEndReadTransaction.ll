; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden void @walUnlockShared(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WalEndReadTransaction(ptr noundef %pWal) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %call = call i32 @sqlite3WalEndWriteTransaction(ptr noundef %0)
  %1 = load ptr, ptr %pWal.addr, align 8
  %readLock = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 9
  %2 = load i16, ptr %readLock, align 4
  %conv = sext i16 %2 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pWal.addr, align 8
  %4 = load ptr, ptr %pWal.addr, align 8
  %readLock2 = getelementptr inbounds nuw %struct.Wal, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %readLock2, align 4
  %conv3 = sext i16 %5 to i32
  %add = add nsw i32 3, %conv3
  call void @walUnlockShared(ptr noundef %3, i32 noundef %add)
  %6 = load ptr, ptr %pWal.addr, align 8
  %readLock4 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 9
  store i16 -1, ptr %readLock4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalEndWriteTransaction(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
