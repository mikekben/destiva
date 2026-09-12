; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @SyHashGetNextEntry(ptr noundef %pHash) #0 {
entry:
  %retval = alloca ptr, align 8
  %pHash.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pCurrent, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nEntry, align 8
  %cmp1 = icmp ule i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pHash.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyHash, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pList, align 8
  %6 = load ptr, ptr %pHash.addr, align 8
  %pCurrent2 = getelementptr inbounds nuw %struct.SyHash, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pCurrent2, align 8
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pHash.addr, align 8
  %pCurrent3 = getelementptr inbounds nuw %struct.SyHash, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pCurrent3, align 8
  store ptr %8, ptr %pEntry, align 8
  %9 = load ptr, ptr %pEntry, align 8
  %pNext = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pNext, align 8
  %11 = load ptr, ptr %pHash.addr, align 8
  %pCurrent4 = getelementptr inbounds nuw %struct.SyHash, ptr %11, i32 0, i32 4
  store ptr %10, ptr %pCurrent4, align 8
  %12 = load ptr, ptr %pEntry, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
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
