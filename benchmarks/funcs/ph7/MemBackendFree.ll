; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMemBlock = type { ptr, ptr }
%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @MemBackendFree(ptr noundef %pBackend, ptr noundef %pChunk) #0 {
entry:
  %pBackend.addr = alloca ptr, align 8
  %pChunk.addr = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pChunk, ptr %pChunk.addr, align 8
  %0 = load ptr, ptr %pChunk.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr %add.ptr, ptr %pBlock, align 8
  %1 = load ptr, ptr %pBackend.addr, align 8
  %nBlock = getelementptr inbounds nuw %struct.SyMemBackend, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nBlock, align 8
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks = getelementptr inbounds nuw %struct.SyMemBackend, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pBlocks, align 8
  %5 = load ptr, ptr %pBlock, align 8
  %cmp1 = icmp eq ptr %4, %5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks3 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pBlocks3, align 8
  %pNext = getelementptr inbounds nuw %struct.SyMemBlock, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pNext, align 8
  %9 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks4 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %9, i32 0, i32 2
  store ptr %8, ptr %pBlocks4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %10 = load ptr, ptr %pBlock, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyMemBlock, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pPrev, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %pBlock, align 8
  %pNext6 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pNext6, align 8
  %14 = load ptr, ptr %pBlock, align 8
  %pPrev7 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %pPrev7, align 8
  %pNext8 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %15, i32 0, i32 0
  store ptr %13, ptr %pNext8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %16 = load ptr, ptr %pBlock, align 8
  %pNext10 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pNext10, align 8
  %tobool11 = icmp ne ptr %17, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  %18 = load ptr, ptr %pBlock, align 8
  %pPrev13 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pPrev13, align 8
  %20 = load ptr, ptr %pBlock, align 8
  %pNext14 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pNext14, align 8
  %pPrev15 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %21, i32 0, i32 1
  store ptr %19, ptr %pPrev15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %22 = load ptr, ptr %pBackend.addr, align 8
  %nBlock17 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %nBlock17, align 8
  %dec = add i32 %23, -1
  store i32 %dec, ptr %nBlock17, align 8
  %24 = load ptr, ptr %pBackend.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %pMethods, align 8
  %xFree = getelementptr inbounds nuw %struct.SyMemMethods, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %xFree, align 8
  %27 = load ptr, ptr %pBlock, align 8
  call void %26(ptr noundef %27)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %entry
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
