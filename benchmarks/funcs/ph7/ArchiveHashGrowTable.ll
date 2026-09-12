; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ArchiveHashGrowTable(ptr noundef %pArch) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %nNewSize = alloca i32, align 4
  %apNew = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SyArchive, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %nSize, align 8
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %nNewSize, align 4
  %2 = load ptr, ptr %pArch.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyArchive, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pAllocator, align 8
  %4 = load i32, ptr %nNewSize, align 4
  %conv = zext i32 %4 to i64
  %mul1 = mul i64 %conv, 8
  %conv2 = trunc i64 %mul1 to i32
  %call = call ptr @SyMemBackendAlloc(ptr noundef %3, i32 noundef %conv2)
  store ptr %call, ptr %apNew, align 8
  %5 = load ptr, ptr %apNew, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %apNew, align 8
  %7 = load i32, ptr %nNewSize, align 4
  %conv4 = zext i32 %7 to i64
  %mul5 = mul i64 %conv4, 8
  %conv6 = trunc i64 %mul5 to i32
  call void @SyZero(ptr noundef %6, i32 noundef %conv6)
  store i32 0, ptr %n, align 4
  %8 = load ptr, ptr %pArch.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyArchive, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pList, align 8
  store ptr %9, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %n, align 4
  %11 = load ptr, ptr %pArch.addr, align 8
  %nLoaded = getelementptr inbounds nuw %struct.SyArchive, ptr %11, i32 0, i32 8
  %12 = load i32, ptr %nLoaded, align 8
  %cmp7 = icmp ult i32 %10, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pEntry, align 8
  %pPrevHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %13, i32 0, i32 11
  store ptr null, ptr %pPrevHash, align 8
  %14 = load ptr, ptr %pEntry, align 8
  %pNextHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %14, i32 0, i32 10
  store ptr null, ptr %pNextHash, align 8
  %15 = load ptr, ptr %apNew, align 8
  %16 = load ptr, ptr %pEntry, align 8
  %nHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %16, i32 0, i32 15
  %17 = load i32, ptr %nHash, align 8
  %18 = load i32, ptr %nNewSize, align 4
  %sub = sub i32 %18, 1
  %and = and i32 %17, %sub
  %19 = load ptr, ptr %pEntry, align 8
  call void @ArchiveHashBucketInstall(ptr noundef %15, i32 noundef %and, ptr noundef %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %n, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %n, align 4
  %21 = load ptr, ptr %pEntry, align 8
  %pNext = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %21, i32 0, i32 13
  %22 = load ptr, ptr %pNext, align 8
  store ptr %22, ptr %pEntry, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %pArch.addr, align 8
  %pAllocator9 = getelementptr inbounds nuw %struct.SyArchive, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pAllocator9, align 8
  %25 = load ptr, ptr %pArch.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.SyArchive, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %apHash, align 8
  %call10 = call i32 @SyMemBackendFree(ptr noundef %24, ptr noundef %26)
  %27 = load ptr, ptr %apNew, align 8
  %28 = load ptr, ptr %pArch.addr, align 8
  %apHash11 = getelementptr inbounds nuw %struct.SyArchive, ptr %28, i32 0, i32 3
  store ptr %27, ptr %apHash11, align 8
  %29 = load i32, ptr %nNewSize, align 4
  %30 = load ptr, ptr %pArch.addr, align 8
  %nSize12 = getelementptr inbounds nuw %struct.SyArchive, ptr %30, i32 0, i32 6
  store i32 %29, ptr %nSize12, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
