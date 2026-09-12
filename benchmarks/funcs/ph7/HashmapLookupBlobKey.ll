; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapLookupBlobKey(ptr noundef %pMap, ptr noundef %pKey, i32 noundef %nKeyLen, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKeyLen.addr = alloca i32, align 4
  %ppNode.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %nHash = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nKeyLen, ptr %nKeyLen.addr, align 4
  store ptr %ppNode, ptr %ppNode.addr, align 8
  %0 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %nEntry, align 4
  %cmp = icmp ult i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pMap.addr, align 8
  %xBlobHash = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %xBlobHash, align 8
  %4 = load ptr, ptr %pKey.addr, align 8
  %5 = load i32, ptr %nKeyLen.addr, align 4
  %call = call i32 %3(ptr noundef %4, i32 noundef %5)
  store i32 %call, ptr %nHash, align 4
  %6 = load ptr, ptr %pMap.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %apBucket, align 8
  %8 = load i32, ptr %nHash, align 4
  %9 = load ptr, ptr %pMap.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %nSize, align 8
  %sub = sub i32 %10, 1
  %and = and i32 %8, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %7, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  store ptr %11, ptr %pNode, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %if.end
  %12 = load ptr, ptr %pNode, align 8
  %cmp1 = icmp eq ptr %12, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.cond
  br label %for.end

if.end3:                                          ; preds = %for.cond
  %13 = load ptr, ptr %pNode, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iType, align 8
  %cmp4 = icmp eq i32 %14, 2
  br i1 %cmp4, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %15 = load ptr, ptr %pNode, align 8
  %nHash5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 4
  %16 = load i32, ptr %nHash5, align 4
  %17 = load i32, ptr %nHash, align 4
  %cmp6 = icmp eq i32 %16, %17
  br i1 %cmp6, label %land.lhs.true7, label %if.end16

land.lhs.true7:                                   ; preds = %land.lhs.true
  %18 = load ptr, ptr %pNode, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey, i32 0, i32 2
  %19 = load i32, ptr %nByte, align 8
  %20 = load i32, ptr %nKeyLen.addr, align 4
  %cmp8 = icmp eq i32 %19, %20
  br i1 %cmp8, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %21 = load ptr, ptr %pNode, align 8
  %xKey10 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey10, i32 0, i32 1
  %22 = load ptr, ptr %pBlob, align 8
  %23 = load ptr, ptr %pKey.addr, align 8
  %24 = load i32, ptr %nKeyLen.addr, align 4
  %call11 = call i32 @SyMemcmp(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %land.lhs.true9
  %25 = load ptr, ptr %ppNode.addr, align 8
  %tobool = icmp ne ptr %25, null
  br i1 %tobool, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then13
  %26 = load ptr, ptr %pNode, align 8
  %27 = load ptr, ptr %ppNode.addr, align 8
  store ptr %26, ptr %27, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then13
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %if.end3
  %28 = load ptr, ptr %pNode, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 8
  %29 = load ptr, ptr %pNextCollide, align 8
  store ptr %29, ptr %pNode, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then2
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end15, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
