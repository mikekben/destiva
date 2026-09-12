; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define hidden void @walUnlockExclusive(ptr noundef %pWal, i32 noundef %lockIdx, i32 noundef %n) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %lockIdx.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %lockIdx, ptr %lockIdx.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %pWal.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 11
  %1 = load i8, ptr %exclusiveMode, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %pDbFd = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pDbFd, align 8
  %4 = load i32, ptr %lockIdx.addr, align 4
  %5 = load i32, ptr %n.addr, align 4
  %call = call i32 @sqlite3OsShmLock(ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsShmLock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
