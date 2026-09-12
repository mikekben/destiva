; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @ArchiveHashBucketInstall(ptr noundef %apTable, i32 noundef %nBucket, ptr noundef %pEntry) #0 {
entry:
  %apTable.addr = alloca ptr, align 8
  %nBucket.addr = alloca i32, align 4
  %pEntry.addr = alloca ptr, align 8
  store ptr %apTable, ptr %apTable.addr, align 8
  store i32 %nBucket, ptr %nBucket.addr, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %apTable.addr, align 8
  %1 = load i32, ptr %nBucket.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load ptr, ptr %pEntry.addr, align 8
  %pNextHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %3, i32 0, i32 10
  store ptr %2, ptr %pNextHash, align 8
  %4 = load ptr, ptr %apTable.addr, align 8
  %5 = load i32, ptr %nBucket.addr, align 4
  %idxprom1 = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom1
  %6 = load ptr, ptr %arrayidx2, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pEntry.addr, align 8
  %8 = load ptr, ptr %apTable.addr, align 8
  %9 = load i32, ptr %nBucket.addr, align 4
  %idxprom3 = zext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds nuw ptr, ptr %8, i64 %idxprom3
  %10 = load ptr, ptr %arrayidx4, align 8
  %pPrevHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %10, i32 0, i32 11
  store ptr %7, ptr %pPrevHash, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %pEntry.addr, align 8
  %12 = load ptr, ptr %apTable.addr, align 8
  %13 = load i32, ptr %nBucket.addr, align 4
  %idxprom5 = zext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds nuw ptr, ptr %12, i64 %idxprom5
  store ptr %11, ptr %arrayidx6, align 8
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
