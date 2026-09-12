; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ArchiveReleaseEntry(ptr noundef %pAllocator, ptr noundef %pEntry) #0 {
entry:
  %pAllocator.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %pNextDup = alloca ptr, align 8
  store ptr %pAllocator, ptr %pAllocator.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %pNextName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pNextName, align 8
  store ptr %1, ptr %pDup, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load ptr, ptr %pEntry.addr, align 8
  %nDup = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %nDup, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pDup, align 8
  %pNextName1 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pNextName1, align 8
  store ptr %5, ptr %pNextDup, align 8
  %6 = load ptr, ptr %pDup, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %6, i32 0, i32 17
  store i32 9825, ptr %nMagic, align 8
  %7 = load ptr, ptr %pAllocator.addr, align 8
  %8 = load ptr, ptr %pDup, align 8
  %sFileName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %8, i32 0, i32 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sFileName, i32 0, i32 0
  %9 = load ptr, ptr %zString, align 8
  %call = call i32 @SyMemBackendFree(ptr noundef %7, ptr noundef %9)
  %10 = load ptr, ptr %pAllocator.addr, align 8
  %11 = load ptr, ptr %pDup, align 8
  %call2 = call i32 @SyMemBackendPoolFree(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %pNextDup, align 8
  store ptr %12, ptr %pDup, align 8
  %13 = load ptr, ptr %pEntry.addr, align 8
  %nDup3 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %13, i32 0, i32 9
  %14 = load i32, ptr %nDup3, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %nDup3, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %15 = load ptr, ptr %pEntry.addr, align 8
  %nMagic4 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %15, i32 0, i32 17
  store i32 9825, ptr %nMagic4, align 8
  %16 = load ptr, ptr %pAllocator.addr, align 8
  %17 = load ptr, ptr %pEntry.addr, align 8
  %sFileName5 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %17, i32 0, i32 8
  %zString6 = getelementptr inbounds nuw %struct.SyString, ptr %sFileName5, i32 0, i32 0
  %18 = load ptr, ptr %zString6, align 8
  %call7 = call i32 @SyMemBackendFree(ptr noundef %16, ptr noundef %18)
  %19 = load ptr, ptr %pAllocator.addr, align 8
  %20 = load ptr, ptr %pEntry.addr, align 8
  %call8 = call i32 @SyMemBackendPoolFree(ptr noundef %19, ptr noundef %20)
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
