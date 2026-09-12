; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmInstallClass(ptr noundef %pVm, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pLink = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  %0 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 2
  store ptr %sName, ptr %pName, align 8
  %1 = load ptr, ptr %pVm.addr, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %4 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hClass, ptr noundef %3, i32 noundef %5)
  store ptr %call, ptr %pEntry, align 8
  %6 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pUserData, align 8
  store ptr %8, ptr %pLink, align 8
  %9 = load ptr, ptr %pLink, align 8
  %10 = load ptr, ptr %pClass.addr, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_class, ptr %10, i32 0, i32 8
  store ptr %9, ptr %pNextName, align 8
  %11 = load ptr, ptr %pClass.addr, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %pUserData1 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %12, i32 0, i32 2
  store ptr %11, ptr %pUserData1, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %pClass.addr, align 8
  %pNextName2 = getelementptr inbounds nuw %struct.ph7_class, ptr %13, i32 0, i32 8
  store ptr null, ptr %pNextName2, align 8
  %14 = load ptr, ptr %pVm.addr, align 8
  %hClass3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 10
  %15 = load ptr, ptr %pName, align 8
  %zString4 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zString4, align 8
  %17 = load ptr, ptr %pName, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %nByte5, align 8
  %19 = load ptr, ptr %pClass.addr, align 8
  %call6 = call i32 @SyHashInsert(ptr noundef %hClass3, ptr noundef %16, i32 noundef %18, ptr noundef %19)
  store i32 %call6, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
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
