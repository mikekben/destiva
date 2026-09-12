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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmRefObjInstall(ptr noundef %pVm, i32 noundef %nIdx, ptr noundef %pEntry, ptr noundef %pMapEntry, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %nIdx.addr = alloca i32, align 4
  %pEntry.addr = alloca ptr, align 8
  %pMapEntry.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %pFrame = alloca ptr, align 8
  %pRef = alloca ptr, align 8
  %sRef = alloca %struct.VmSlot, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %nIdx, ptr %nIdx.addr, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pMapEntry, ptr %pMapEntry.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFrame1, align 8
  store ptr %1, ptr %pFrame, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %3 = load i32, ptr %nIdx.addr, align 4
  %call = call ptr @VmRefObjExtract(ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %pRef, align 8
  %4 = load ptr, ptr %pRef, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pVm.addr, align 8
  %6 = load i32, ptr %nIdx.addr, align 4
  %call2 = call ptr @VmNewRefObj(ptr noundef %5, i32 noundef %6)
  store ptr %call2, ptr %pRef, align 8
  %7 = load ptr, ptr %pRef, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %iFlags.addr, align 4
  %9 = load ptr, ptr %pRef, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.VmRefObj, ptr %9, i32 0, i32 3
  store i32 %8, ptr %iFlags5, align 4
  %10 = load ptr, ptr %pVm.addr, align 8
  %11 = load ptr, ptr %pRef, align 8
  %call6 = call i32 @VmRefObjInsert(ptr noundef %10, ptr noundef %11)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %12 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %pFrame, align 8
  %iFlags8 = getelementptr inbounds nuw %struct.VmFrame, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %iFlags8, align 8
  %and = and i32 %15, 1
  %tobool9 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %16 = phi i1 [ false, %while.cond ], [ %tobool9, %land.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %17 = load ptr, ptr %pFrame, align 8
  %pParent10 = getelementptr inbounds nuw %struct.VmFrame, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pParent10, align 8
  store ptr %18, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %19 = load ptr, ptr %pFrame, align 8
  %pParent11 = getelementptr inbounds nuw %struct.VmFrame, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pParent11, align 8
  %cmp12 = icmp ne ptr %20, null
  br i1 %cmp12, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %while.end
  %21 = load ptr, ptr %pEntry.addr, align 8
  %tobool13 = icmp ne ptr %21, null
  br i1 %tobool13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %land.lhs.true
  %22 = load i32, ptr %nIdx.addr, align 4
  %nIdx15 = getelementptr inbounds nuw %struct.VmSlot, ptr %sRef, i32 0, i32 0
  store i32 %22, ptr %nIdx15, align 8
  %23 = load ptr, ptr %pEntry.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmSlot, ptr %sRef, i32 0, i32 1
  store ptr %23, ptr %pUserData, align 8
  %24 = load ptr, ptr %pFrame, align 8
  %sRef16 = getelementptr inbounds nuw %struct.VmFrame, ptr %24, i32 0, i32 7
  %call17 = call i32 @SySetPut(ptr noundef %sRef16, ptr noundef %sRef)
  %cmp18 = icmp ne i32 0, %call17
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then14
  store ptr null, ptr %pEntry.addr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %while.end
  %25 = load ptr, ptr %pEntry.addr, align 8
  %tobool22 = icmp ne ptr %25, null
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end21
  %26 = load ptr, ptr %pRef, align 8
  %aReference = getelementptr inbounds nuw %struct.VmRefObj, ptr %26, i32 0, i32 0
  %call24 = call i32 @SySetPut(ptr noundef %aReference, ptr noundef %pEntry.addr)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21
  %27 = load ptr, ptr %pMapEntry.addr, align 8
  %tobool26 = icmp ne ptr %27, null
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end25
  %28 = load ptr, ptr %pRef, align 8
  %aArrEntries = getelementptr inbounds nuw %struct.VmRefObj, ptr %28, i32 0, i32 1
  %call28 = call i32 @SySetPut(ptr noundef %aArrEntries, ptr noundef %pMapEntry.addr)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then4
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmRefObjExtract(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmNewRefObj(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRefObjInsert(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
