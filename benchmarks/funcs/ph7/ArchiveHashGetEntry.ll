; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @ArchiveHashGetEntry(ptr noundef %pArch, ptr noundef %zName, i32 noundef %nLen, ptr noundef %ppEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %ppEntry.addr = alloca ptr, align 8
  %pBucketEntry = alloca ptr, align 8
  %sEntry = alloca %struct.SyString, align 8
  %nHash = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %ppEntry, ptr %ppEntry.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  %xHash = getelementptr inbounds nuw %struct.SyArchive, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %xHash, align 8
  %2 = load ptr, ptr %zName.addr, align 8
  %3 = load i32, ptr %nLen.addr, align 4
  %call = call i32 %1(ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %nHash, align 4
  %4 = load ptr, ptr %pArch.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.SyArchive, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %apHash, align 8
  %6 = load i32, ptr %nHash, align 4
  %7 = load ptr, ptr %pArch.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SyArchive, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %nSize, align 8
  %sub = sub i32 %8, 1
  %and = and i32 %6, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  store ptr %9, ptr %pBucketEntry, align 8
  %10 = load ptr, ptr %zName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 0
  store ptr %10, ptr %zString, align 8
  %11 = load i32, ptr %nLen.addr, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sEntry, i32 0, i32 1
  store i32 %11, ptr %nByte, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %12 = load ptr, ptr %pBucketEntry, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %13 = load i32, ptr %nHash, align 4
  %14 = load ptr, ptr %pBucketEntry, align 8
  %nHash1 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %14, i32 0, i32 15
  %15 = load i32, ptr %nHash1, align 8
  %cmp2 = icmp eq i32 %13, %15
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %16 = load ptr, ptr %pArch.addr, align 8
  %xCmp = getelementptr inbounds nuw %struct.SyArchive, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %xCmp, align 8
  %18 = load ptr, ptr %pBucketEntry, align 8
  %sFileName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %18, i32 0, i32 8
  %call3 = call i32 %17(ptr noundef %sEntry, ptr noundef %sFileName)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  %19 = load ptr, ptr %ppEntry.addr, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then5
  %20 = load ptr, ptr %pBucketEntry, align 8
  %21 = load ptr, ptr %ppEntry.addr, align 8
  store ptr %20, ptr %21, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %22 = load ptr, ptr %pBucketEntry, align 8
  %pNextHash = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %pNextHash, align 8
  store ptr %23, ptr %pBucketEntry, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end7
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
