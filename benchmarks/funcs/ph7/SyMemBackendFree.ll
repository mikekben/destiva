; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyMutexMethods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemBackendFree(ptr noundef %pBackend, ptr noundef %pChunk) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %pChunk.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pChunk, ptr %pChunk.addr, align 8
  %0 = load ptr, ptr %pChunk.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods = getelementptr inbounds nuw %struct.SyMemBackend, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMutexMethods, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end7

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %pBackend.addr, align 8
  %pMutex = getelementptr inbounds nuw %struct.SyMemBackend, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %pMutex, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods4 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pMutexMethods4, align 8
  %xEnter = getelementptr inbounds nuw %struct.SyMutexMethods, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %xEnter, align 8
  %8 = load ptr, ptr %pBackend.addr, align 8
  %pMutex5 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pMutex5, align 8
  call void %7(ptr noundef %9)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then1
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %pBackend.addr, align 8
  %11 = load ptr, ptr %pChunk.addr, align 8
  %call = call i32 @MemBackendFree(ptr noundef %10, ptr noundef %11)
  store i32 %call, ptr %rc, align 4
  %12 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods8 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pMutexMethods8, align 8
  %tobool9 = icmp ne ptr %13, null
  br i1 %tobool9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %14 = load ptr, ptr %pBackend.addr, align 8
  %pMutex11 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %pMutex11, align 8
  %tobool12 = icmp ne ptr %15, null
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  %16 = load ptr, ptr %pBackend.addr, align 8
  %pMutexMethods14 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pMutexMethods14, align 8
  %xLeave = getelementptr inbounds nuw %struct.SyMutexMethods, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %xLeave, align 8
  %19 = load ptr, ptr %pBackend.addr, align 8
  %pMutex15 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %pMutex15, align 8
  call void %18(ptr noundef %20)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end7
  %21 = load i32, ptr %rc, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @MemBackendFree(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
