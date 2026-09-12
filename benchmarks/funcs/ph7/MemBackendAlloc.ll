; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyMemBlock = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @MemBackendAlloc(ptr noundef %pBackend, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pBackend.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pBlock = alloca ptr, align 8
  %nRetry = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 0, ptr %nRetry, align 4
  %0 = load i32, ptr %nByte.addr, align 4
  %conv = zext i32 %0 to i64
  %add = add i64 %conv, 16
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %nByte.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load ptr, ptr %pBackend.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pMethods, align 8
  %xAlloc = getelementptr inbounds nuw %struct.SyMemMethods, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %xAlloc, align 8
  %4 = load i32, ptr %nByte.addr, align 4
  %call = call ptr %3(i32 noundef %4)
  store ptr %call, ptr %pBlock, align 8
  %5 = load ptr, ptr %pBlock, align 8
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %6 = load ptr, ptr %pBackend.addr, align 8
  %xMemError = getelementptr inbounds nuw %struct.SyMemBackend, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %xMemError, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %nRetry, align 4
  %cmp6 = icmp sgt i32 %8, 3
  br i1 %cmp6, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %pBackend.addr, align 8
  %xMemError9 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %xMemError9, align 8
  %11 = load ptr, ptr %pBackend.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyMemBackend, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pUserData, align 8
  %call10 = call i32 %10(ptr noundef %12)
  %cmp11 = icmp ne i32 -33, %call10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false5, %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false8
  %13 = load i32, ptr %nRetry, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %nRetry, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %14 = load ptr, ptr %pBlock, align 8
  %cmp13 = icmp eq ptr %14, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %for.end
  %15 = load ptr, ptr %pBlock, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyMemBlock, ptr %15, i32 0, i32 1
  store ptr null, ptr %pPrev, align 8
  %16 = load ptr, ptr %pBlock, align 8
  %pNext = getelementptr inbounds nuw %struct.SyMemBlock, ptr %16, i32 0, i32 0
  store ptr null, ptr %pNext, align 8
  %17 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks = getelementptr inbounds nuw %struct.SyMemBackend, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pBlocks, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  %19 = load ptr, ptr %pBlock, align 8
  %20 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks20 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %20, i32 0, i32 2
  store ptr %19, ptr %pBlocks20, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end16
  %21 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks21 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pBlocks21, align 8
  %23 = load ptr, ptr %pBlock, align 8
  %pNext22 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %23, i32 0, i32 0
  store ptr %22, ptr %pNext22, align 8
  %24 = load ptr, ptr %pBlock, align 8
  %25 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks23 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %pBlocks23, align 8
  %pPrev24 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %26, i32 0, i32 1
  store ptr %24, ptr %pPrev24, align 8
  %27 = load ptr, ptr %pBlock, align 8
  %28 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks25 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %28, i32 0, i32 2
  store ptr %27, ptr %pBlocks25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  %29 = load ptr, ptr %pBackend.addr, align 8
  %nBlock = getelementptr inbounds nuw %struct.SyMemBackend, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %nBlock, align 8
  %inc27 = add i32 %30, 1
  store i32 %inc27, ptr %nBlock, align 8
  %31 = load ptr, ptr %pBlock, align 8
  %arrayidx = getelementptr inbounds %struct.SyMemBlock, ptr %31, i64 1
  store ptr %arrayidx, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end26, %if.then15
  %32 = load ptr, ptr %retval, align 8
  ret ptr %32
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
