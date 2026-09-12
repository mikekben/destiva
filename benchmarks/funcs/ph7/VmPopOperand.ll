; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmPopOperand(ptr noundef %ppTos, i32 noundef %nPop) #0 {
entry:
  %ppTos.addr = alloca ptr, align 8
  %nPop.addr = alloca i32, align 4
  %pTos = alloca ptr, align 8
  store ptr %ppTos, ptr %ppTos.addr, align 8
  store i32 %nPop, ptr %nPop.addr, align 4
  %0 = load ptr, ptr %ppTos.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %pTos, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %nPop.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %pTos, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %3)
  %4 = load ptr, ptr %pTos, align 8
  %incdec.ptr = getelementptr inbounds %struct.ph7_value, ptr %4, i32 -1
  store ptr %incdec.ptr, ptr %pTos, align 8
  %5 = load i32, ptr %nPop.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %nPop.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %pTos, align 8
  %7 = load ptr, ptr %ppTos.addr, align 8
  store ptr %6, ptr %7, align 8
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
