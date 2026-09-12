; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @HashGetEntry(ptr noundef %pHash, ptr noundef %pKey, i32 noundef %nKeyLen) #0 {
entry:
  %retval = alloca ptr, align 8
  %pHash.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKeyLen.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %nHash = alloca i32, align 4
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nKeyLen, ptr %nKeyLen.addr, align 4
  %0 = load ptr, ptr %pHash.addr, align 8
  %xHash = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %xHash, align 8
  %2 = load ptr, ptr %pKey.addr, align 8
  %3 = load i32, ptr %nKeyLen.addr, align 4
  %call = call i32 %1(ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %nHash, align 4
  %4 = load ptr, ptr %pHash.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.SyHash, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %apBucket, align 8
  %6 = load i32, ptr %nHash, align 4
  %7 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %7, i32 0, i32 7
  %8 = load i32, ptr %nBucketSize, align 8
  %sub = sub i32 %8, 1
  %and = and i32 %6, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %5, i64 %idxprom
  %9 = load ptr, ptr %arrayidx, align 8
  store ptr %9, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %entry
  %10 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %11 = load ptr, ptr %pEntry, align 8
  %nHash1 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %nHash1, align 8
  %13 = load i32, ptr %nHash, align 4
  %cmp2 = icmp eq i32 %12, %13
  br i1 %cmp2, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %14 = load ptr, ptr %pEntry, align 8
  %nKeyLen3 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nKeyLen3, align 8
  %16 = load i32, ptr %nKeyLen.addr, align 4
  %cmp4 = icmp eq i32 %15, %16
  br i1 %cmp4, label %land.lhs.true5, label %if.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %pHash.addr, align 8
  %xCmp = getelementptr inbounds nuw %struct.SyHash, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %xCmp, align 8
  %19 = load ptr, ptr %pEntry, align 8
  %pKey6 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pKey6, align 8
  %21 = load ptr, ptr %pKey.addr, align 8
  %22 = load i32, ptr %nKeyLen.addr, align 4
  %call7 = call i32 %18(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true5
  %23 = load ptr, ptr %pEntry, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %24 = load ptr, ptr %pEntry, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %pNextCollide, align 8
  store ptr %25, ptr %pEntry, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then9
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
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
