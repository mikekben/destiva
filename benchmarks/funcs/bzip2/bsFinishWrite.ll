; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EState = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }

; Function Attrs: nounwind uwtable
define hidden void @bsFinishWrite(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %bsLive = getelementptr inbounds nuw %struct.EState, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %bsLive, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8
  %bsBuff = getelementptr inbounds nuw %struct.EState, ptr %2, i32 0, i32 24
  %3 = load i32, ptr %bsBuff, align 8
  %shr = lshr i32 %3, 24
  %conv = trunc i32 %shr to i8
  %4 = load ptr, ptr %s.addr, align 8
  %zbits = getelementptr inbounds nuw %struct.EState, ptr %4, i32 0, i32 11
  %5 = load ptr, ptr %zbits, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %numZ = getelementptr inbounds nuw %struct.EState, ptr %6, i32 0, i32 19
  %7 = load i32, ptr %numZ, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %8 = load ptr, ptr %s.addr, align 8
  %numZ1 = getelementptr inbounds nuw %struct.EState, ptr %8, i32 0, i32 19
  %9 = load i32, ptr %numZ1, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %numZ1, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %bsBuff2 = getelementptr inbounds nuw %struct.EState, ptr %10, i32 0, i32 24
  %11 = load i32, ptr %bsBuff2, align 8
  %shl = shl i32 %11, 8
  store i32 %shl, ptr %bsBuff2, align 8
  %12 = load ptr, ptr %s.addr, align 8
  %bsLive3 = getelementptr inbounds nuw %struct.EState, ptr %12, i32 0, i32 25
  %13 = load i32, ptr %bsLive3, align 4
  %sub = sub nsw i32 %13, 8
  store i32 %sub, ptr %bsLive3, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
