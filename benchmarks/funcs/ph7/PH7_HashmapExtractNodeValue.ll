; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_HashmapExtractNodeValue(ptr noundef %pNode, ptr noundef %pValue, i32 noundef %bStore) #0 {
entry:
  %pNode.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %bStore.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 %bStore, ptr %bStore.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %call = call ptr @HashmapExtractNodeValue(ptr noundef %0)
  store ptr %call, ptr %pEntry, align 8
  %1 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %bStore.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %pEntry, align 8
  %4 = load ptr, ptr %pValue.addr, align 8
  %call3 = call i32 @PH7_MemObjStore(ptr noundef %3, ptr noundef %4)
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %pEntry, align 8
  %6 = load ptr, ptr %pValue.addr, align 8
  %call4 = call i32 @PH7_MemObjLoad(ptr noundef %5, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7

if.else5:                                         ; preds = %entry
  %7 = load ptr, ptr %pValue.addr, align 8
  %call6 = call i32 @PH7_MemObjRelease(ptr noundef %7)
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
