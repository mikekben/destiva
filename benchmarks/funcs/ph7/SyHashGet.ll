; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @SyHashGet(ptr noundef %pHash, ptr noundef %pKey, i32 noundef %nKeyLen) #0 {
entry:
  %retval = alloca ptr, align 8
  %pHash.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKeyLen.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nKeyLen, ptr %nKeyLen.addr, align 4
  %0 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nEntry, align 8
  %cmp = icmp ult i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %nKeyLen.addr, align 4
  %cmp1 = icmp ult i32 %2, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pHash.addr, align 8
  %4 = load ptr, ptr %pKey.addr, align 8
  %5 = load i32, ptr %nKeyLen.addr, align 4
  %call = call ptr @HashGetEntry(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  store ptr %call, ptr %pEntry, align 8
  %6 = load ptr, ptr %pEntry, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pEntry, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: nounwind uwtable
declare hidden ptr @HashGetEntry(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
