; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @ph7_array_fetch(ptr noundef %pArray, ptr noundef %zKey, i32 noundef %nByte) #0 {
entry:
  %retval = alloca ptr, align 8
  %pArray.addr = alloca ptr, align 8
  %zKey.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %skey = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pArray, ptr %pArray.addr, align 8
  store ptr %zKey, ptr %zKey.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %pArray.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 64
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %nByte.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %zKey.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %3)
  store i32 %call, ptr %nByte.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %pArray.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pVm, align 8
  %call4 = call i32 @PH7_MemObjInit(ptr noundef %5, ptr noundef %skey)
  %6 = load ptr, ptr %zKey.addr, align 8
  %7 = load i32, ptr %nByte.addr, align 4
  %call5 = call i32 @PH7_MemObjStringAppend(ptr noundef %skey, ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %pArray.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  %call6 = call i32 @PH7_HashmapLookup(ptr noundef %9, ptr noundef %skey, ptr noundef %pNode)
  store i32 %call6, ptr %rc, align 4
  %call7 = call i32 @PH7_MemObjRelease(ptr noundef %skey)
  %10 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %10, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end3
  store ptr null, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end3
  %11 = load ptr, ptr %pArray.addr, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pVm11, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pNode, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %nValIdx, align 8
  %call12 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %14)
  store ptr %call12, ptr %pValue, align 8
  %15 = load ptr, ptr %pValue, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapLookup(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
