; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @MemObjCallClassCastMethod(ptr noundef %pVm, ptr noundef %pThis, ptr noundef %zMethod, i32 noundef %nLen, ptr noundef %pResult) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %zMethod.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pResult.addr = alloca ptr, align 8
  %pMethod = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %zMethod, ptr %zMethod.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pResult, ptr %pResult.addr, align 8
  %0 = load ptr, ptr %pThis.addr, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pClass, align 8
  %2 = load ptr, ptr %zMethod.addr, align 8
  %3 = load i32, ptr %nLen.addr, align 4
  %call = call ptr @PH7_ClassExtractMethod(ptr noundef %1, ptr noundef %2, i32 noundef %3)
  store ptr %call, ptr %pMethod, align 8
  %4 = load ptr, ptr %pMethod, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pVm.addr, align 8
  %6 = load ptr, ptr %pThis.addr, align 8
  %7 = load ptr, ptr %pMethod, align 8
  %8 = load ptr, ptr %pResult.addr, align 8
  %call1 = call i32 @PH7_VmCallClassMethod(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef 0, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
