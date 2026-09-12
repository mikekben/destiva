; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @SySetPeekCurrentEntry(ptr noundef %pSet) #0 {
entry:
  %retval = alloca ptr, align 8
  %pSet.addr = alloca ptr, align 8
  %zSrc = alloca ptr, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  %0 = load ptr, ptr %pSet.addr, align 8
  %nCursor = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nCursor, align 4
  %2 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nUsed, align 8
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pBase, align 8
  store ptr %5, ptr %zSrc, align 8
  %6 = load ptr, ptr %zSrc, align 8
  %7 = load ptr, ptr %pSet.addr, align 8
  %nCursor1 = getelementptr inbounds nuw %struct.SySet, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %nCursor1, align 4
  %9 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %eSize, align 8
  %mul = mul i32 %8, %10
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %6, i64 %idxprom
  store ptr %arrayidx, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
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
