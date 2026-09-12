; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHashmapInsert(ptr noundef %pMap, ptr noundef %zKey, i32 noundef %nKeylen, ptr noundef %zData, i32 noundef %nLen) #0 {
entry:
  %pMap.addr = alloca ptr, align 8
  %zKey.addr = alloca ptr, align 8
  %nKeylen.addr = alloca i32, align 4
  %zData.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %sKey = alloca %struct.ph7_value, align 8
  %sValue = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %zKey, ptr %zKey.addr, align 8
  store i32 %nKeylen, ptr %nKeylen.addr, align 4
  store ptr %zData, ptr %zData.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInitFromString(ptr noundef %1, ptr noundef %sKey, ptr noundef null)
  %2 = load ptr, ptr %pMap.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm1, align 8
  %call2 = call i32 @PH7_MemObjInitFromString(ptr noundef %3, ptr noundef %sValue, ptr noundef null)
  %4 = load ptr, ptr %zKey.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %nKeylen.addr, align 4
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %zKey.addr, align 8
  %call4 = call i32 @SyStrlen(ptr noundef %6)
  store i32 %call4, ptr %nKeylen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %7 = load ptr, ptr %zKey.addr, align 8
  %8 = load i32, ptr %nKeylen.addr, align 4
  %call5 = call i32 @PH7_MemObjStringAppend(ptr noundef %sKey, ptr noundef %7, i32 noundef %8)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %zData.addr, align 8
  %tobool7 = icmp ne ptr %9, null
  br i1 %tobool7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  %10 = load i32, ptr %nLen.addr, align 4
  %cmp9 = icmp slt i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %11 = load ptr, ptr %zData.addr, align 8
  %call11 = call i32 @SyStrlen(ptr noundef %11)
  store i32 %call11, ptr %nLen.addr, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  %12 = load ptr, ptr %zData.addr, align 8
  %13 = load i32, ptr %nLen.addr, align 4
  %call13 = call i32 @PH7_MemObjStringAppend(ptr noundef %sValue, ptr noundef %12, i32 noundef %13)
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end6
  %14 = load ptr, ptr %pMap.addr, align 8
  %call15 = call i32 @PH7_HashmapInsert(ptr noundef %14, ptr noundef %sKey, ptr noundef %sValue)
  store i32 %call15, ptr %rc, align 4
  %call16 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %call17 = call i32 @PH7_MemObjRelease(ptr noundef %sValue)
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
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
