; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_object(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmExtractClassFromValue(ptr noundef %pVm, ptr noundef %pArg) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %zClass = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  store ptr null, ptr %pClass, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  %call = call i32 @ph7_value_is_object(ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pArg.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %x, align 8
  %pClass1 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pClass1, align 8
  store ptr %3, ptr %pClass, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pArg.addr, align 8
  %call2 = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %pArg.addr, align 8
  %call5 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call5, ptr %zClass, align 8
  %6 = load i32, ptr %nLen, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.then4
  %7 = load ptr, ptr %pVm.addr, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %zClass, align 8
  %9 = load i32, ptr %nLen, align 4
  %call7 = call ptr @SyHashGet(ptr noundef %hClass, ptr noundef %8, i32 noundef %9)
  store ptr %call7, ptr %pEntry, align 8
  %10 = load ptr, ptr %pEntry, align 8
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %11 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pUserData, align 8
  store ptr %12, ptr %pClass, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %13 = load ptr, ptr %pClass, align 8
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
