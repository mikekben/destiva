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
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.145 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.541 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.542 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.543 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.544 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.545 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPeekTopClass(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmMiniBacktrace(ptr noundef %pVm, ptr noundef %pOut) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFrame1, align 8
  store ptr %1, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %4, i32 0, i32 8
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, 1
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParent3, align 8
  store ptr %8, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %pFrame, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmFrame, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pUserData, align 8
  store ptr %10, ptr %pFunc, align 8
  %11 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @SyBlobAppend(ptr noundef %11, ptr noundef @.str.145, i32 noundef 1)
  %12 = load ptr, ptr %pFrame, align 8
  %pParent4 = getelementptr inbounds nuw %struct.VmFrame, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pParent4, align 8
  %tobool5 = icmp ne ptr %13, null
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %14 = load ptr, ptr %pFunc, align 8
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %pOut.addr, align 8
  %call7 = call i32 @SyBlobAppend(ptr noundef %15, ptr noundef @.str.541, i32 noundef 17)
  %16 = load ptr, ptr %pOut.addr, align 8
  %17 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %17, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %18 = load ptr, ptr %zString, align 8
  %19 = load ptr, ptr %pFunc, align 8
  %sName8 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %19, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName8, i32 0, i32 1
  %20 = load i32, ptr %nByte, align 8
  %call9 = call i32 @SyBlobAppend(ptr noundef %16, ptr noundef %18, i32 noundef %20)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.end
  %21 = load ptr, ptr %pOut.addr, align 8
  %call10 = call i32 @SyBlobAppend(ptr noundef %21, ptr noundef @.str.542, i32 noundef 12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load ptr, ptr %pOut.addr, align 8
  %call11 = call i32 @SyBlobAppend(ptr noundef %22, ptr noundef @.str.543, i32 noundef 1)
  %23 = load ptr, ptr %pVm.addr, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 19
  %call12 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call12, ptr %pFile, align 8
  %24 = load ptr, ptr %pFile, align 8
  %tobool13 = icmp ne ptr %24, null
  br i1 %tobool13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end
  %25 = load ptr, ptr %pOut.addr, align 8
  %call15 = call i32 @SyBlobAppend(ptr noundef %25, ptr noundef @.str.145, i32 noundef 1)
  %26 = load ptr, ptr %pOut.addr, align 8
  %call16 = call i32 @SyBlobAppend(ptr noundef %26, ptr noundef @.str.544, i32 noundef 16)
  %27 = load ptr, ptr %pOut.addr, align 8
  %28 = load ptr, ptr %pFile, align 8
  %zString17 = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zString17, align 8
  %30 = load ptr, ptr %pFile, align 8
  %nByte18 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nByte18, align 8
  %call19 = call i32 @SyBlobAppend(ptr noundef %27, ptr noundef %29, i32 noundef %31)
  %32 = load ptr, ptr %pOut.addr, align 8
  %call20 = call i32 @SyBlobAppend(ptr noundef %32, ptr noundef @.str.543, i32 noundef 1)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end
  %33 = load ptr, ptr %pVm.addr, align 8
  %call22 = call ptr @PH7_VmPeekTopClass(ptr noundef %33)
  store ptr %call22, ptr %pClass, align 8
  %34 = load ptr, ptr %pClass, align 8
  %tobool23 = icmp ne ptr %34, null
  br i1 %tobool23, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end21
  %35 = load ptr, ptr %pOut.addr, align 8
  %call25 = call i32 @SyBlobAppend(ptr noundef %35, ptr noundef @.str.145, i32 noundef 1)
  %36 = load ptr, ptr %pOut.addr, align 8
  %call26 = call i32 @SyBlobAppend(ptr noundef %36, ptr noundef @.str.545, i32 noundef 7)
  %37 = load ptr, ptr %pOut.addr, align 8
  %38 = load ptr, ptr %pClass, align 8
  %sName27 = getelementptr inbounds nuw %struct.ph7_class, ptr %38, i32 0, i32 2
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sName27, i32 0, i32 0
  %39 = load ptr, ptr %zString28, align 8
  %40 = load ptr, ptr %pClass, align 8
  %sName29 = getelementptr inbounds nuw %struct.ph7_class, ptr %40, i32 0, i32 2
  %nByte30 = getelementptr inbounds nuw %struct.SyString, ptr %sName29, i32 0, i32 1
  %41 = load i32, ptr %nByte30, align 8
  %call31 = call i32 @SyBlobAppend(ptr noundef %37, ptr noundef %39, i32 noundef %41)
  %42 = load ptr, ptr %pOut.addr, align 8
  %call32 = call i32 @SyBlobAppend(ptr noundef %42, ptr noundef @.str.543, i32 noundef 1)
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.end21
  %43 = load ptr, ptr %pOut.addr, align 8
  %call34 = call i32 @SyBlobAppend(ptr noundef %43, ptr noundef @.str.47, i32 noundef 1)
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
