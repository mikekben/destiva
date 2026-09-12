; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBlock = type { ptr, ptr }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMemMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @MemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @MemBackendRealloc(ptr noundef %pBackend, ptr noundef %pOld, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pBackend.addr = alloca ptr, align 8
  %pOld.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pBlock = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pPrev = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %nRetry = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pOld, ptr %pOld.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 0, ptr %nRetry, align 4
  %0 = load ptr, ptr %pOld.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBackend.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %call = call ptr @MemBackendAlloc(ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pOld.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 -16
  store ptr %add.ptr, ptr %pBlock, align 8
  %4 = load i32, ptr %nByte.addr, align 4
  %conv = zext i32 %4 to i64
  %add = add i64 %conv, 16
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, ptr %nByte.addr, align 4
  %5 = load ptr, ptr %pBlock, align 8
  %pPrev2 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pPrev2, align 8
  store ptr %6, ptr %pPrev, align 8
  %7 = load ptr, ptr %pBlock, align 8
  %pNext3 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pNext3, align 8
  store ptr %8, ptr %pNext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %if.end
  %9 = load ptr, ptr %pBackend.addr, align 8
  %pMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pMethods, align 8
  %xRealloc = getelementptr inbounds nuw %struct.SyMemMethods, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %xRealloc, align 8
  %12 = load ptr, ptr %pBlock, align 8
  %13 = load i32, ptr %nByte.addr, align 4
  %call4 = call ptr %11(ptr noundef %12, i32 noundef %13)
  store ptr %call4, ptr %pNew, align 8
  %14 = load ptr, ptr %pNew, align 8
  %cmp5 = icmp ne ptr %14, null
  br i1 %cmp5, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load ptr, ptr %pBackend.addr, align 8
  %xMemError = getelementptr inbounds nuw %struct.SyMemBackend, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %xMemError, align 8
  %cmp7 = icmp eq ptr %16, null
  br i1 %cmp7, label %if.then17, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %17 = load i32, ptr %nRetry, align 4
  %cmp10 = icmp ugt i32 %17, 3
  br i1 %cmp10, label %if.then17, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %18 = load ptr, ptr %pBackend.addr, align 8
  %xMemError13 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %xMemError13, align 8
  %20 = load ptr, ptr %pBackend.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyMemBackend, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pUserData, align 8
  %call14 = call i32 %19(ptr noundef %21)
  %cmp15 = icmp ne i32 -33, %call14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false, %for.cond
  br label %for.end

if.end18:                                         ; preds = %lor.lhs.false12
  %22 = load i32, ptr %nRetry, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %nRetry, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then17
  %23 = load ptr, ptr %pNew, align 8
  %cmp19 = icmp eq ptr %23, null
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %for.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end22:                                         ; preds = %for.end
  %24 = load ptr, ptr %pNew, align 8
  %25 = load ptr, ptr %pBlock, align 8
  %cmp23 = icmp ne ptr %24, %25
  br i1 %cmp23, label %if.then25, label %if.end34

if.then25:                                        ; preds = %if.end22
  %26 = load ptr, ptr %pPrev, align 8
  %cmp26 = icmp eq ptr %26, null
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then25
  %27 = load ptr, ptr %pNew, align 8
  %28 = load ptr, ptr %pBackend.addr, align 8
  %pBlocks = getelementptr inbounds nuw %struct.SyMemBackend, ptr %28, i32 0, i32 2
  store ptr %27, ptr %pBlocks, align 8
  br label %if.end30

if.else:                                          ; preds = %if.then25
  %29 = load ptr, ptr %pNew, align 8
  %30 = load ptr, ptr %pPrev, align 8
  %pNext29 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %30, i32 0, i32 0
  store ptr %29, ptr %pNext29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %31 = load ptr, ptr %pNext, align 8
  %tobool = icmp ne ptr %31, null
  br i1 %tobool, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end30
  %32 = load ptr, ptr %pNew, align 8
  %33 = load ptr, ptr %pNext, align 8
  %pPrev32 = getelementptr inbounds nuw %struct.SyMemBlock, ptr %33, i32 0, i32 1
  store ptr %32, ptr %pPrev32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end30
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22
  %34 = load ptr, ptr %pNew, align 8
  %arrayidx = getelementptr inbounds %struct.SyMemBlock, ptr %34, i64 1
  store ptr %arrayidx, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end34, %if.then21, %if.then
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
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
