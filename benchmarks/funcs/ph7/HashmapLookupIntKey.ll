; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapLookupIntKey(ptr noundef %pMap, i64 noundef %iKey, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %iKey.addr = alloca i64, align 8
  %ppNode.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %nHash = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store i64 %iKey, ptr %iKey.addr, align 8
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
  %xIntHash = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %xIntHash, align 8
  %4 = load i64, ptr %iKey.addr, align 8
  %call = call i32 %3(i64 noundef %4)
  store i32 %call, ptr %nHash, align 4
  %5 = load ptr, ptr %pMap.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %apBucket, align 8
  %7 = load i32, ptr %nHash, align 4
  %8 = load ptr, ptr %pMap.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nSize, align 8
  %sub = sub i32 %9, 1
  %and = and i32 %7, %sub
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %6, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %pNode, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %if.end
  %11 = load ptr, ptr %pNode, align 8
  %cmp1 = icmp eq ptr %11, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.cond
  br label %for.end

if.end3:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pNode, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %iType, align 8
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end3
  %14 = load ptr, ptr %pNode, align 8
  %nHash5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %nHash5, align 4
  %16 = load i32, ptr %nHash, align 4
  %cmp6 = icmp eq i32 %15, %16
  br i1 %cmp6, label %land.lhs.true7, label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %pNode, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %17, i32 0, i32 2
  %18 = load i64, ptr %xKey, align 8
  %19 = load i64, ptr %iKey.addr, align 8
  %cmp8 = icmp eq i64 %18, %19
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true7
  %20 = load ptr, ptr %ppNode.addr, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then9
  %21 = load ptr, ptr %pNode, align 8
  %22 = load ptr, ptr %ppNode.addr, align 8
  store ptr %21, ptr %22, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %land.lhs.true7, %land.lhs.true, %if.end3
  %23 = load ptr, ptr %pNode, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 8
  %24 = load ptr, ptr %pNextCollide, align 8
  store ptr %24, ptr %pNode, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then2
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end11, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
