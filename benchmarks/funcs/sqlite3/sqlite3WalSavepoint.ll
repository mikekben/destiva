; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WalSavepoint(ptr noundef %pWal, ptr noundef %aWalData) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %aWalData.addr = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %aWalData, ptr %aWalData.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %1 = load i32, ptr %mxFrame, align 8
  %2 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  store i32 %1, ptr %arrayidx, align 4
  %3 = load ptr, ptr %pWal.addr, align 8
  %hdr1 = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr1, i32 0, i32 8
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 8
  %5 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 %4, ptr %arrayidx3, align 4
  %6 = load ptr, ptr %pWal.addr, align 8
  %hdr4 = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 19
  %aFrameCksum5 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr4, i32 0, i32 8
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %aFrameCksum5, i64 0, i64 1
  %7 = load i32, ptr %arrayidx6, align 4
  %8 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 2
  store i32 %7, ptr %arrayidx7, align 4
  %9 = load ptr, ptr %pWal.addr, align 8
  %nCkpt = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 23
  %10 = load i32, ptr %nCkpt, align 8
  %11 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 3
  store i32 %10, ptr %arrayidx8, align 4
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
