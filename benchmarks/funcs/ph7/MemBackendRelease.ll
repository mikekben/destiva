; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMemBlock = type { ptr, ptr }
%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @MemBackendRelease(ptr noundef %pBackend) #0 {
entry:
  %pBackend.addr = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pBackend, ptr %pBackend.addr, align 8
  %0 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks = getelementptr inbounds nuw %struct.SyMemBackend, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pBlocks, align 8
  store ptr %1, ptr %pBlock, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %entry
  %2 = load ptr, ptr %pBackend.addr, align 8
  %nBlock = getelementptr inbounds nuw %struct.SyMemBackend, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nBlock, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pBlock, align 8
  %pNext1 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pNext1, align 8
  store ptr %5, ptr %pNext, align 8
  %6 = load ptr, ptr %pBackend.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pMethods, align 8
  %xFree = getelementptr inbounds nuw %struct.SyMemMethods, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %xFree, align 8
  %9 = load ptr, ptr %pBlock, align 8
  call void %8(ptr noundef %9)
  %10 = load ptr, ptr %pNext, align 8
  store ptr %10, ptr %pBlock, align 8
  %11 = load ptr, ptr %pBackend.addr, align 8
  %nBlock2 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %nBlock2, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %nBlock2, align 8
  %13 = load ptr, ptr %pBackend.addr, align 8
  %nBlock3 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nBlock3, align 8
  %cmp4 = icmp eq i32 %14, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %for.end

if.end6:                                          ; preds = %if.end
  %15 = load ptr, ptr %pBlock, align 8
  %pNext7 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pNext7, align 8
  store ptr %16, ptr %pNext, align 8
  %17 = load ptr, ptr %pBackend.addr, align 8
  %pMethods8 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pMethods8, align 8
  %xFree9 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %xFree9, align 8
  %20 = load ptr, ptr %pBlock, align 8
  call void %19(ptr noundef %20)
  %21 = load ptr, ptr %pNext, align 8
  store ptr %21, ptr %pBlock, align 8
  %22 = load ptr, ptr %pBackend.addr, align 8
  %nBlock10 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %nBlock10, align 8
  %dec11 = add i32 %23, -1
  store i32 %dec11, ptr %nBlock10, align 8
  %24 = load ptr, ptr %pBackend.addr, align 8
  %nBlock12 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %nBlock12, align 8
  %cmp13 = icmp eq i32 %25, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end6
  br label %for.end

if.end15:                                         ; preds = %if.end6
  %26 = load ptr, ptr %pBlock, align 8
  %pNext16 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pNext16, align 8
  store ptr %27, ptr %pNext, align 8
  %28 = load ptr, ptr %pBackend.addr, align 8
  %pMethods17 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %pMethods17, align 8
  %xFree18 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %xFree18, align 8
  %31 = load ptr, ptr %pBlock, align 8
  call void %30(ptr noundef %31)
  %32 = load ptr, ptr %pNext, align 8
  store ptr %32, ptr %pBlock, align 8
  %33 = load ptr, ptr %pBackend.addr, align 8
  %nBlock19 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %nBlock19, align 8
  %dec20 = add i32 %34, -1
  store i32 %dec20, ptr %nBlock19, align 8
  %35 = load ptr, ptr %pBackend.addr, align 8
  %nBlock21 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %nBlock21, align 8
  %cmp22 = icmp eq i32 %36, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end15
  br label %for.end

if.end24:                                         ; preds = %if.end15
  %37 = load ptr, ptr %pBlock, align 8
  %pNext25 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pNext25, align 8
  store ptr %38, ptr %pNext, align 8
  %39 = load ptr, ptr %pBackend.addr, align 8
  %pMethods26 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %pMethods26, align 8
  %xFree27 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %xFree27, align 8
  %42 = load ptr, ptr %pBlock, align 8
  call void %41(ptr noundef %42)
  %43 = load ptr, ptr %pNext, align 8
  store ptr %43, ptr %pBlock, align 8
  %44 = load ptr, ptr %pBackend.addr, align 8
  %nBlock28 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %nBlock28, align 8
  %dec29 = add i32 %45, -1
  store i32 %dec29, ptr %nBlock28, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then23, %if.then14, %if.then5, %if.then
  %46 = load ptr, ptr %pBackend.addr, align 8
  %pMethods30 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %pMethods30, align 8
  %xRelease = getelementptr inbounds nuw %struct.SyMemMethods, ptr %47, i32 0, i32 5
  %48 = load ptr, ptr %xRelease, align 8
  %tobool = icmp ne ptr %48, null
  br i1 %tobool, label %if.then31, label %if.end35

if.then31:                                        ; preds = %for.end
  %49 = load ptr, ptr %pBackend.addr, align 8
  %pMethods32 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %pMethods32, align 8
  %xRelease33 = getelementptr inbounds nuw %struct.SyMemMethods, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %xRelease33, align 8
  %52 = load ptr, ptr %pBackend.addr, align 8
  %pMethods34 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %pMethods34, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyMemMethods, ptr %53, i32 0, i32 6
  %54 = load ptr, ptr %pUserData, align 8
  call void %51(ptr noundef %54)
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %for.end
  %55 = load ptr, ptr %pBackend.addr, align 8
  %pMethods36 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %55, i32 0, i32 1
  store ptr null, ptr %pMethods36, align 8
  %56 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks37 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %56, i32 0, i32 2
  store ptr null, ptr %pBlocks37, align 8
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
