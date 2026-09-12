; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @HashmapRehashIntNode(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @HashmapSortRehash(ptr noundef %pMap) #0 {
entry:
  %pMap.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  %0 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %p, align 8
  store ptr %1, ptr %pLast, align 8
  %2 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 9
  store i64 0, ptr %iNextIdx, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nEntry, align 4
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %6 = load ptr, ptr %pLast, align 8
  %7 = load ptr, ptr %pMap.addr, align 8
  %pLast1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 3
  store ptr %6, ptr %pLast1, align 8
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %p, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %iType, align 8
  %cmp2 = icmp eq i32 %9, 2
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %p, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 2
  %call = call i32 @SyBlobRelease(ptr noundef %xKey)
  %11 = load ptr, ptr %p, align 8
  %iType4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %11, i32 0, i32 1
  store i32 1, ptr %iType4, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %12 = load ptr, ptr %p, align 8
  call void @HashmapRehashIntNode(ptr noundef %12)
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  %14 = load ptr, ptr %p, align 8
  store ptr %14, ptr %pLast, align 8
  %15 = load ptr, ptr %p, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %pPrev, align 8
  store ptr %16, ptr %p, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  ret void
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
