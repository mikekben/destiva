; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_HashmapGetNextEntry(ptr noundef %pMap) #0 {
entry:
  %retval = alloca ptr, align 8
  %pMap.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  store ptr %pMap, ptr %pMap.addr, align 8
  %0 = load ptr, ptr %pMap.addr, align 8
  %pCur1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pCur1, align 8
  store ptr %1, ptr %pCur, align 8
  %2 = load ptr, ptr %pCur, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pCur, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %pPrev, align 8
  %5 = load ptr, ptr %pMap.addr, align 8
  %pCur2 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 4
  store ptr %4, ptr %pCur2, align 8
  %6 = load ptr, ptr %pCur, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
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
