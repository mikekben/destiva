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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.VmSlot = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmLeaveFrame(ptr noundef %pVm) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %aSlot = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFrame1, align 8
  store ptr %1, ptr %pFrame, align 8
  %2 = load ptr, ptr %pFrame, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pParent, align 8
  %5 = load ptr, ptr %pVm.addr, align 8
  %pFrame2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 4
  store ptr %4, ptr %pFrame2, align 8
  %6 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pParent3, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %iFlags, align 8
  %and = and i32 %9, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %pFrame, align 8
  %sLocal = getelementptr inbounds nuw %struct.VmFrame, ptr %10, i32 0, i32 3
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sLocal, i32 0, i32 1
  %11 = load ptr, ptr %pBase, align 8
  store ptr %11, ptr %aSlot, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %pFrame, align 8
  %sLocal6 = getelementptr inbounds nuw %struct.VmFrame, ptr %13, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sLocal6, i32 0, i32 2
  %14 = load i32, ptr %nUsed, align 8
  %cmp7 = icmp ult i32 %12, %14
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pVm.addr, align 8
  %16 = load ptr, ptr %aSlot, align 8
  %17 = load i32, ptr %n, align 4
  %idxprom = zext i32 %17 to i64
  %arrayidx = getelementptr inbounds nuw %struct.VmSlot, ptr %16, i64 %idxprom
  %nIdx = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx, i32 0, i32 0
  %18 = load i32, ptr %nIdx, align 8
  %call = call i32 @PH7_VmUnsetMemObj(ptr noundef %15, i32 noundef %18, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %n, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pFrame, align 8
  %sRef = getelementptr inbounds nuw %struct.VmFrame, ptr %20, i32 0, i32 7
  %pBase8 = getelementptr inbounds nuw %struct.SySet, ptr %sRef, i32 0, i32 1
  %21 = load ptr, ptr %pBase8, align 8
  store ptr %21, ptr %aSlot, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc20, %for.end
  %22 = load i32, ptr %n, align 4
  %23 = load ptr, ptr %pFrame, align 8
  %sRef10 = getelementptr inbounds nuw %struct.VmFrame, ptr %23, i32 0, i32 7
  %nUsed11 = getelementptr inbounds nuw %struct.SySet, ptr %sRef10, i32 0, i32 2
  %24 = load i32, ptr %nUsed11, align 8
  %cmp12 = icmp ult i32 %22, %24
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond9
  %25 = load ptr, ptr %pVm.addr, align 8
  %26 = load ptr, ptr %aSlot, align 8
  %27 = load i32, ptr %n, align 4
  %idxprom14 = zext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds nuw %struct.VmSlot, ptr %26, i64 %idxprom14
  %nIdx16 = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx15, i32 0, i32 0
  %28 = load i32, ptr %nIdx16, align 8
  %29 = load ptr, ptr %aSlot, align 8
  %30 = load i32, ptr %n, align 4
  %idxprom17 = zext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds nuw %struct.VmSlot, ptr %29, i64 %idxprom17
  %pUserData = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx18, i32 0, i32 1
  %31 = load ptr, ptr %pUserData, align 8
  %call19 = call i32 @PH7_VmRefObjRemove(ptr noundef %25, i32 noundef %28, ptr noundef %31, ptr noundef null)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %32 = load i32, ptr %n, align 4
  %inc21 = add i32 %32, 1
  store i32 %inc21, ptr %n, align 4
  br label %for.cond9, !llvm.loop !8

for.end22:                                        ; preds = %for.cond9
  br label %if.end

if.end:                                           ; preds = %for.end22, %land.lhs.true, %if.then
  %33 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %33, i32 0, i32 5
  %call23 = call i32 @SyHashRelease(ptr noundef %hVar)
  %34 = load ptr, ptr %pFrame, align 8
  %sArg = getelementptr inbounds nuw %struct.VmFrame, ptr %34, i32 0, i32 6
  %call24 = call i32 @SySetRelease(ptr noundef %sArg)
  %35 = load ptr, ptr %pFrame, align 8
  %sLocal25 = getelementptr inbounds nuw %struct.VmFrame, ptr %35, i32 0, i32 3
  %call26 = call i32 @SySetRelease(ptr noundef %sLocal25)
  %36 = load ptr, ptr %pFrame, align 8
  %sRef27 = getelementptr inbounds nuw %struct.VmFrame, ptr %36, i32 0, i32 7
  %call28 = call i32 @SySetRelease(ptr noundef %sRef27)
  %37 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pFrame, align 8
  %call29 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %38)
  br label %if.end30

if.end30:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjRemove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmUnsetMemObj(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashRelease(ptr noundef) #0

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
!8 = distinct !{!8, !7}
