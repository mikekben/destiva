; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHashFuncStep(ptr noundef %pEntry, ptr noundef %pUserData) #0 {
entry:
  %pEntry.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sName = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pArray, align 8
  %1 = load ptr, ptr %pArray, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInitFromString(ptr noundef %2, ptr noundef %sName, ptr noundef null)
  %3 = load ptr, ptr %pEntry.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.SyHashEntry, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pKey, align 8
  %5 = load ptr, ptr %pEntry.addr, align 8
  %nKeyLen = getelementptr inbounds nuw %struct.SyHashEntry, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nKeyLen, align 8
  %call1 = call i32 @PH7_MemObjStringAppend(ptr noundef %sName, ptr noundef %4, i32 noundef %6)
  %7 = load ptr, ptr %pArray, align 8
  %call2 = call i32 @ph7_array_add_elem(ptr noundef %7, ptr noundef null, ptr noundef %sName)
  store i32 %call2, ptr %rc, align 4
  %call3 = call i32 @PH7_MemObjRelease(ptr noundef %sName)
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
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
