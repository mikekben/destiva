; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
declare hidden i32 @walFramePage(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walFramePgno(ptr noundef %pWal, i32 noundef %iFrame) #0 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %iFrame.addr = alloca i32, align 4
  %iHash = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iFrame, ptr %iFrame.addr, align 4
  %0 = load i32, ptr %iFrame.addr, align 4
  %call = call i32 @walFramePage(i32 noundef %0)
  store i32 %call, ptr %iHash, align 4
  %1 = load i32, ptr %iHash, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pWal.addr, align 8
  %apWiData = getelementptr inbounds nuw %struct.Wal, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %apWiData, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i32, ptr %iFrame.addr, align 4
  %conv = zext i32 %5 to i64
  %add = add i64 34, %conv
  %sub = sub i64 %add, 1
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %4, i64 %sub
  %6 = load volatile i32, ptr %arrayidx1, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pWal.addr, align 8
  %apWiData2 = getelementptr inbounds nuw %struct.Wal, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %apWiData2, align 8
  %9 = load i32, ptr %iHash, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx3, align 8
  %11 = load i32, ptr %iFrame.addr, align 4
  %sub4 = sub i32 %11, 1
  %conv5 = zext i32 %sub4 to i64
  %sub6 = sub i64 %conv5, 4062
  %rem = urem i64 %sub6, 4096
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %10, i64 %rem
  %12 = load volatile i32, ptr %arrayidx7, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
