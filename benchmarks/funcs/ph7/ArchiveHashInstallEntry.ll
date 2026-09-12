; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @ArchiveHashInstallEntry(ptr noundef %pArch, ptr noundef %pEntry) #0 {
entry:
  %pArch.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  %nLoaded = getelementptr inbounds nuw %struct.SyArchive, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %nLoaded, align 8
  %2 = load ptr, ptr %pArch.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SyArchive, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nSize, align 8
  %mul = mul i32 %3, 3
  %cmp = icmp ugt i32 %1, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pArch.addr, align 8
  %call = call i32 @ArchiveHashGrowTable(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pArch.addr, align 8
  %xHash = getelementptr inbounds nuw %struct.SyArchive, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %xHash, align 8
  %7 = load ptr, ptr %pEntry.addr, align 8
  %sFileName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %7, i32 0, i32 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sFileName, i32 0, i32 0
  %8 = load ptr, ptr %zString, align 8
  %9 = load ptr, ptr %pEntry.addr, align 8
  %sFileName1 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %9, i32 0, i32 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sFileName1, i32 0, i32 1
  %10 = load i32, ptr %nByte, align 8
  %call2 = call i32 %6(ptr noundef %8, i32 noundef %10)
  %11 = load ptr, ptr %pEntry.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %11, i32 0, i32 15
  store i32 %call2, ptr %nHash, align 8
  %12 = load ptr, ptr %pArch.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.SyArchive, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %apHash, align 8
  %14 = load ptr, ptr %pEntry.addr, align 8
  %nHash3 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %14, i32 0, i32 15
  %15 = load i32, ptr %nHash3, align 8
  %16 = load ptr, ptr %pArch.addr, align 8
  %nSize4 = getelementptr inbounds nuw %struct.SyArchive, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %nSize4, align 8
  %sub = sub i32 %17, 1
  %and = and i32 %15, %sub
  %18 = load ptr, ptr %pEntry.addr, align 8
  call void @ArchiveHashBucketInstall(ptr noundef %13, i32 noundef %and, ptr noundef %18)
  %19 = load ptr, ptr %pArch.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyArchive, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pList, align 8
  %cmp5 = icmp eq ptr %20, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %21 = load ptr, ptr %pEntry.addr, align 8
  %22 = load ptr, ptr %pArch.addr, align 8
  %pList7 = getelementptr inbounds nuw %struct.SyArchive, ptr %22, i32 0, i32 2
  store ptr %21, ptr %pList7, align 8
  br label %if.end11

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %pArch.addr, align 8
  %pList8 = getelementptr inbounds nuw %struct.SyArchive, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pList8, align 8
  %25 = load ptr, ptr %pEntry.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %25, i32 0, i32 13
  store ptr %24, ptr %pNext, align 8
  %26 = load ptr, ptr %pEntry.addr, align 8
  %27 = load ptr, ptr %pArch.addr, align 8
  %pList9 = getelementptr inbounds nuw %struct.SyArchive, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pList9, align 8
  %pPrev = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %28, i32 0, i32 14
  store ptr %26, ptr %pPrev, align 8
  %29 = load ptr, ptr %pEntry.addr, align 8
  %30 = load ptr, ptr %pArch.addr, align 8
  %pList10 = getelementptr inbounds nuw %struct.SyArchive, ptr %30, i32 0, i32 2
  store ptr %29, ptr %pList10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then6
  %31 = load ptr, ptr %pArch.addr, align 8
  %nLoaded12 = getelementptr inbounds nuw %struct.SyArchive, ptr %31, i32 0, i32 8
  %32 = load i32, ptr %nLoaded12, align 8
  %inc = add i32 %32, 1
  store i32 %inc, ptr %nLoaded12, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ArchiveHashGrowTable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ArchiveHashBucketInstall(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
