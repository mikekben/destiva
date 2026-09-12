; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SySetAlloc(ptr noundef %pSet, i32 noundef %nItem) #0 {
entry:
  %retval = alloca i32, align 4
  %pSet.addr = alloca ptr, align 8
  %nItem.addr = alloca i32, align 4
  store ptr %pSet, ptr %pSet.addr, align 8
  store i32 %nItem, ptr %nItem.addr, align 4
  %0 = load ptr, ptr %pSet.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %nSize, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nItem.addr, align 4
  %cmp1 = icmp slt i32 %2, 8
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 8, ptr %nItem.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr %pSet.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SySet, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pAllocator, align 8
  %5 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %5, i32 0, i32 4
  %6 = load i32, ptr %eSize, align 8
  %7 = load i32, ptr %nItem.addr, align 4
  %mul = mul i32 %6, %7
  %call = call ptr @SyMemBackendAlloc(ptr noundef %4, i32 noundef %mul)
  %8 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %8, i32 0, i32 1
  store ptr %call, ptr %pBase, align 8
  %9 = load ptr, ptr %pSet.addr, align 8
  %pBase4 = getelementptr inbounds nuw %struct.SySet, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pBase4, align 8
  %cmp5 = icmp eq ptr %10, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = load i32, ptr %nItem.addr, align 4
  %12 = load ptr, ptr %pSet.addr, align 8
  %nSize8 = getelementptr inbounds nuw %struct.SySet, ptr %12, i32 0, i32 3
  store i32 %11, ptr %nSize8, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
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
