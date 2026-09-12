; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeValue(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapNodeCmp(ptr noundef %pLeft, ptr noundef %pRight, i32 noundef %bStrict) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %sObj1 = alloca %struct.ph7_value, align 8
  %sObj2 = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  %0 = load ptr, ptr %pLeft.addr, align 8
  %1 = load ptr, ptr %pRight.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pLeft.addr, align 8
  %pMap = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %4, ptr noundef %sObj1)
  %5 = load ptr, ptr %pLeft.addr, align 8
  %pMap1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pMap1, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm2, align 8
  %call3 = call i32 @PH7_MemObjInit(ptr noundef %7, ptr noundef %sObj2)
  %8 = load ptr, ptr %pLeft.addr, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %8, ptr noundef %sObj1, i32 noundef 0)
  %9 = load ptr, ptr %pRight.addr, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %9, ptr noundef %sObj2, i32 noundef 0)
  %10 = load i32, ptr %bStrict.addr, align 4
  %call4 = call i32 @PH7_MemObjCmp(ptr noundef %sObj1, ptr noundef %sObj2, i32 noundef %10, i32 noundef 0)
  store i32 %call4, ptr %rc, align 4
  %call5 = call i32 @PH7_MemObjRelease(ptr noundef %sObj1)
  %call6 = call i32 @PH7_MemObjRelease(ptr noundef %sObj2)
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
