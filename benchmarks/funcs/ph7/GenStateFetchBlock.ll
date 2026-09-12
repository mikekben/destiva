; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @GenStateFetchBlock(ptr noundef %pCurrent, i32 noundef %iBlockType, i32 noundef %iCount) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCurrent.addr = alloca ptr, align 8
  %iBlockType.addr = alloca i32, align 4
  %iCount.addr = alloca i32, align 4
  %pBlock = alloca ptr, align 8
  store ptr %pCurrent, ptr %pCurrent.addr, align 8
  store i32 %iBlockType, ptr %iBlockType.addr, align 4
  store i32 %iCount, ptr %iCount.addr, align 4
  %0 = load ptr, ptr %pCurrent.addr, align 8
  store ptr %0, ptr %pBlock, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %1 = load ptr, ptr %pBlock, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %iFlags, align 4
  %3 = load i32, ptr %iBlockType.addr, align 4
  %and = and i32 %2, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end2

if.then:                                          ; preds = %for.cond
  %4 = load i32, ptr %iCount.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %iCount.addr, align 4
  %5 = load i32, ptr %iCount.addr, align 4
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %6 = load ptr, ptr %pBlock, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %for.cond
  %7 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pParent, align 8
  store ptr %8, ptr %pBlock, align 8
  %9 = load ptr, ptr %pBlock, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %10 = load ptr, ptr %pBlock, align 8
  %iFlags4 = getelementptr inbounds nuw %struct.GenBlock, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %iFlags4, align 4
  %and5 = and i32 %11, 10
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false, %if.end2
  br label %for.end

if.end8:                                          ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then7
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then1
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
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
