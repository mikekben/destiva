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
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_VmExtractClass(ptr noundef %pVm, ptr noundef %zName, i32 noundef %nByte, i32 noundef %iLoadable, i32 noundef %iNest) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %iLoadable.addr = alloca i32, align 4
  %iNest.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 %iLoadable, ptr %iLoadable.addr, align 4
  store i32 %iNest, ptr %iNest.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %zName.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %call = call ptr @SyHashGet(ptr noundef %hClass, ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %pEntry, align 8
  %3 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %iNest.addr, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pUserData, align 8
  store ptr %5, ptr %pClass, align 8
  %6 = load i32, ptr %iLoadable.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %7 = load ptr, ptr %pClass, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.else
  %8 = load ptr, ptr %pClass, align 8
  %tobool2 = icmp ne ptr %8, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pClass, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %iFlags, align 8
  %and = and i32 %10, 6
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.body
  %11 = load ptr, ptr %pClass, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %while.body
  %12 = load ptr, ptr %pClass, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_class, ptr %12, i32 0, i32 8
  %13 = load ptr, ptr %pNextName, align 8
  store ptr %13, ptr %pClass, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end6

if.end6:                                          ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then4, %if.then1, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

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
