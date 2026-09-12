; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyArchiveRelease(ptr noundef %pArch) #0 {
entry:
  %pArch.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pArch, ptr %pArch.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyArchive, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pList, align 8
  store ptr %1, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %entry
  %2 = load ptr, ptr %pArch.addr, align 8
  %nLoaded = getelementptr inbounds nuw %struct.SyArchive, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %nLoaded, align 8
  %cmp = icmp ult i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pEntry, align 8
  %pNext1 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pNext1, align 8
  store ptr %5, ptr %pNext, align 8
  %6 = load ptr, ptr %pArch.addr, align 8
  %pList2 = getelementptr inbounds nuw %struct.SyArchive, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pList2, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %cmp3 = icmp eq ptr %7, %8
  br i1 %cmp3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pArch.addr, align 8
  %pList5 = getelementptr inbounds nuw %struct.SyArchive, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pList5, align 8
  %pNext6 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %10, i32 0, i32 13
  %11 = load ptr, ptr %pNext6, align 8
  %12 = load ptr, ptr %pArch.addr, align 8
  %pList7 = getelementptr inbounds nuw %struct.SyArchive, ptr %12, i32 0, i32 2
  store ptr %11, ptr %pList7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end
  %13 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %13, i32 0, i32 14
  %14 = load ptr, ptr %pPrev, align 8
  %tobool = icmp ne ptr %14, null
  br i1 %tobool, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end8
  %15 = load ptr, ptr %pEntry, align 8
  %pNext10 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %pNext10, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %pPrev11 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %17, i32 0, i32 14
  %18 = load ptr, ptr %pPrev11, align 8
  %pNext12 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %18, i32 0, i32 13
  store ptr %16, ptr %pNext12, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end8
  %19 = load ptr, ptr %pEntry, align 8
  %pNext14 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pNext14, align 8
  %tobool15 = icmp ne ptr %20, null
  br i1 %tobool15, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %21 = load ptr, ptr %pEntry, align 8
  %pPrev17 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %pPrev17, align 8
  %23 = load ptr, ptr %pEntry, align 8
  %pNext18 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %pNext18, align 8
  %pPrev19 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %24, i32 0, i32 14
  store ptr %22, ptr %pPrev19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13
  %25 = load ptr, ptr %pArch.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyArchive, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pAllocator, align 8
  %27 = load ptr, ptr %pEntry, align 8
  %call = call i32 @ArchiveReleaseEntry(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %pNext, align 8
  store ptr %28, ptr %pEntry, align 8
  %29 = load ptr, ptr %pArch.addr, align 8
  %nLoaded21 = getelementptr inbounds nuw %struct.SyArchive, ptr %29, i32 0, i32 8
  %30 = load i32, ptr %nLoaded21, align 8
  %dec = add i32 %30, -1
  store i32 %dec, ptr %nLoaded21, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %31 = load ptr, ptr %pArch.addr, align 8
  %pAllocator22 = getelementptr inbounds nuw %struct.SyArchive, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pAllocator22, align 8
  %33 = load ptr, ptr %pArch.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.SyArchive, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %apHash, align 8
  %call23 = call i32 @SyMemBackendFree(ptr noundef %32, ptr noundef %34)
  %35 = load ptr, ptr %pArch.addr, align 8
  %pCursor = getelementptr inbounds nuw %struct.SyArchive, ptr %35, i32 0, i32 1
  store ptr null, ptr %pCursor, align 8
  %36 = load ptr, ptr %pArch.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchive, ptr %36, i32 0, i32 12
  store i32 9766, ptr %nMagic, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ArchiveReleaseEntry(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
