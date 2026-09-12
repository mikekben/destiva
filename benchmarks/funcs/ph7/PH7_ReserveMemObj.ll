; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmSlot = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmReserveMemObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_ReserveMemObj(ptr noundef %pVm) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pSlot = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr null, ptr %pObj, align 8
  store i32 -1, ptr %nIdx, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %aFreeObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 9
  %call = call ptr @SySetPop(ptr noundef %aFreeObj)
  store ptr %call, ptr %pSlot, align 8
  %1 = load ptr, ptr %pSlot, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %pSlot, align 8
  %nIdx1 = getelementptr inbounds nuw %struct.VmSlot, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nIdx1, align 8
  %call2 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %4)
  store ptr %call2, ptr %pObj, align 8
  %5 = load ptr, ptr %pSlot, align 8
  %nIdx3 = getelementptr inbounds nuw %struct.VmSlot, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nIdx3, align 8
  store i32 %6, ptr %nIdx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then4, label %if.end9

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pVm.addr, align 8
  %call5 = call ptr @VmReserveMemObj(ptr noundef %8, ptr noundef %nIdx)
  store ptr %call5, ptr %pObj, align 8
  %9 = load ptr, ptr %pObj, align 8
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then4
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.then4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end
  %10 = load ptr, ptr %pVm.addr, align 8
  %11 = load ptr, ptr %pObj, align 8
  %call10 = call i32 @PH7_MemObjInit(ptr noundef %10, ptr noundef %11)
  %12 = load i32, ptr %nIdx, align 4
  %13 = load ptr, ptr %pObj, align 8
  %nIdx11 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 5
  store i32 %12, ptr %nIdx11, align 8
  %14 = load ptr, ptr %pObj, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then7
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
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
