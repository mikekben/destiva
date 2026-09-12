; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden void @walCleanupHash(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalSavepointUndo(ptr noundef %pWal, ptr noundef %aWalData) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %aWalData.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %aWalData, ptr %aWalData.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 3
  %1 = load i32, ptr %arrayidx, align 4
  %2 = load ptr, ptr %pWal.addr, align 8
  %nCkpt = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 23
  %3 = load i32, ptr %nCkpt, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 0
  store i32 0, ptr %arrayidx1, align 4
  %5 = load ptr, ptr %pWal.addr, align 8
  %nCkpt2 = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 23
  %6 = load i32, ptr %nCkpt2, align 8
  %7 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 3
  store i32 %6, ptr %arrayidx3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 0
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %10, i32 0, i32 19
  %mxFrame = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 6
  %11 = load i32, ptr %mxFrame, align 8
  %cmp5 = icmp ult i32 %9, %11
  br i1 %cmp5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %if.end
  %12 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 0
  %13 = load i32, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %pWal.addr, align 8
  %hdr8 = getelementptr inbounds nuw %struct.Wal, ptr %14, i32 0, i32 19
  %mxFrame9 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr8, i32 0, i32 6
  store i32 %13, ptr %mxFrame9, align 8
  %15 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 1
  %16 = load i32, ptr %arrayidx10, align 4
  %17 = load ptr, ptr %pWal.addr, align 8
  %hdr11 = getelementptr inbounds nuw %struct.Wal, ptr %17, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr11, i32 0, i32 8
  %arrayidx12 = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store i32 %16, ptr %arrayidx12, align 8
  %18 = load ptr, ptr %aWalData.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 2
  %19 = load i32, ptr %arrayidx13, align 4
  %20 = load ptr, ptr %pWal.addr, align 8
  %hdr14 = getelementptr inbounds nuw %struct.Wal, ptr %20, i32 0, i32 19
  %aFrameCksum15 = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr14, i32 0, i32 8
  %arrayidx16 = getelementptr inbounds [2 x i32], ptr %aFrameCksum15, i64 0, i64 1
  store i32 %19, ptr %arrayidx16, align 4
  %21 = load ptr, ptr %pWal.addr, align 8
  call void @walCleanupHash(ptr noundef %21)
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.end
  %22 = load i32, ptr %rc, align 4
  ret i32 %22
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
