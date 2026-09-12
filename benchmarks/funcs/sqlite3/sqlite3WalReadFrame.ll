; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalReadFrame(ptr noundef %pWal, i32 noundef %iRead, i32 noundef %nOut, ptr noundef %pOut) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %iRead.addr = alloca i32, align 4
  %nOut.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %sz = alloca i32, align 4
  %iOffset = alloca i64, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iRead, ptr %iRead.addr, align 4
  store i32 %nOut, ptr %nOut.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %szPage = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 5
  %1 = load i16, ptr %szPage, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %sz, align 4
  %2 = load i32, ptr %sz, align 4
  %and = and i32 %2, 65024
  %3 = load i32, ptr %sz, align 4
  %and1 = and i32 %3, 1
  %shl = shl i32 %and1, 16
  %add = add nsw i32 %and, %shl
  store i32 %add, ptr %sz, align 4
  %4 = load i32, ptr %iRead.addr, align 4
  %sub = sub i32 %4, 1
  %conv2 = zext i32 %sub to i64
  %5 = load i32, ptr %sz, align 4
  %add3 = add nsw i32 %5, 24
  %conv4 = sext i32 %add3 to i64
  %mul = mul nsw i64 %conv2, %conv4
  %add5 = add nsw i64 32, %mul
  %add6 = add nsw i64 %add5, 24
  store i64 %add6, ptr %iOffset, align 8
  %6 = load ptr, ptr %pWal.addr, align 8
  %pWalFd = getelementptr inbounds nuw %struct.Wal, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pWalFd, align 8
  %8 = load ptr, ptr %pOut.addr, align 8
  %9 = load i32, ptr %nOut.addr, align 4
  %10 = load i32, ptr %sz, align 4
  %cmp = icmp sgt i32 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i32, ptr %sz, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i32, ptr %nOut.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  %13 = load i64, ptr %iOffset, align 8
  %call = call i32 @sqlite3OsRead(ptr noundef %7, ptr noundef %8, i32 noundef %cond, i64 noundef %13)
  ret i32 %call
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
