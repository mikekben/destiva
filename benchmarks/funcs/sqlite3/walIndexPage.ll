; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define hidden i32 @walIndexPage(ptr noundef %pWal, i32 noundef %iPage, ptr noundef %ppPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %nWiData = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nWiData, align 8
  %2 = load i32, ptr %iPage.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %apWiData, align 8
  %5 = load i32, ptr %iPage.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load ptr, ptr %ppPage.addr, align 8
  store ptr %6, ptr %7, align 8
  %cmp1 = icmp eq ptr %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load ptr, ptr %pWal.addr, align 8
  %9 = load i32, ptr %iPage.addr, align 4
  %10 = load ptr, ptr %ppPage.addr, align 8
  %call = call i32 @walIndexPageRealloc(ptr noundef %8, i32 noundef %9, ptr noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @walIndexPageRealloc(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
