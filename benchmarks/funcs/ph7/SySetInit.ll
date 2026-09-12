; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SySetInit(ptr noundef %pSet, ptr noundef %pAllocator, i32 noundef %ElemSize) #0 {
entry:
  %pSet.addr = alloca ptr, align 8
  %pAllocator.addr = alloca ptr, align 8
  %ElemSize.addr = alloca i32, align 4
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %pAllocator, ptr %pAllocator.addr, align 8
  store i32 %ElemSize, ptr %ElemSize.addr, align 4
  %0 = load ptr, ptr %pSet.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 3
  store i32 0, ptr %nSize, align 4
  %1 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %1, i32 0, i32 2
  store i32 0, ptr %nUsed, align 8
  %2 = load ptr, ptr %pSet.addr, align 8
  %nCursor = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 5
  store i32 0, ptr %nCursor, align 4
  %3 = load i32, ptr %ElemSize.addr, align 4
  %4 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %4, i32 0, i32 4
  store i32 %3, ptr %eSize, align 8
  %5 = load ptr, ptr %pAllocator.addr, align 8
  %6 = load ptr, ptr %pSet.addr, align 8
  %pAllocator1 = getelementptr inbounds nuw %struct.SySet, ptr %6, i32 0, i32 0
  store ptr %5, ptr %pAllocator1, align 8
  %7 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %7, i32 0, i32 1
  store ptr null, ptr %pBase, align 8
  %8 = load ptr, ptr %pSet.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SySet, ptr %8, i32 0, i32 6
  store ptr null, ptr %pUserData, align 8
  ret i32 0
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
