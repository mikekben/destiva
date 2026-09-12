; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmSlot = type { i32, ptr }
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
%struct.VmRefObj = type { %struct.SySet, %struct.SySet, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmRefObjExtract(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmUnsetMemObj(ptr noundef %pVm, i32 noundef %nObjIdx, i32 noundef %bForce) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %nObjIdx.addr = alloca i32, align 4
  %bForce.addr = alloca i32, align 4
  %pObj = alloca ptr, align 8
  %pRef = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %sFree = alloca %struct.VmSlot, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %nObjIdx, ptr %nObjIdx.addr, align 4
  store i32 %bForce, ptr %bForce.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %nObjIdx.addr, align 4
  %call = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %1)
  store ptr %call, ptr %pObj, align 8
  %2 = load ptr, ptr %pObj, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pObj, align 8
  %call1 = call i32 @PH7_MemObjRelease(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %pVm.addr, align 8
  %5 = load i32, ptr %nObjIdx.addr, align 4
  %call2 = call ptr @VmRefObjExtract(ptr noundef %4, i32 noundef %5)
  store ptr %call2, ptr %pRef, align 8
  %6 = load ptr, ptr %pRef, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pRef, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.VmRefObj, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %iFlags5, align 4
  store i32 %8, ptr %iFlags, align 4
  %9 = load ptr, ptr %pVm.addr, align 8
  %10 = load ptr, ptr %pRef, align 8
  %call6 = call i32 @VmRefObjUnlink(ptr noundef %9, ptr noundef %10)
  %11 = load i32, ptr %bForce.addr, align 4
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %12 = load i32, ptr %iFlags, align 4
  %and = and i32 %12, 1
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  %13 = load i32, ptr %nObjIdx.addr, align 4
  %nIdx = getelementptr inbounds nuw %struct.VmSlot, ptr %sFree, i32 0, i32 0
  store i32 %13, ptr %nIdx, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmSlot, ptr %sFree, i32 0, i32 1
  store ptr null, ptr %pUserData, align 8
  %14 = load ptr, ptr %pVm.addr, align 8
  %aFreeObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 9
  %call9 = call i32 @SySetPut(ptr noundef %aFreeObj, ptr noundef %sFree)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRefObjUnlink(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
