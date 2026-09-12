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

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmByteCodeExec(ptr noundef %pVm) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 57
  %1 = load i32, ptr %nMagic, align 8
  %cmp = icmp ne i32 %1, -366538107
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %nMagic1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 57
  %3 = load i32, ptr %nMagic1, align 8
  %cmp2 = icmp eq i32 %3, -889311827
  %4 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 -4, i32 -24
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pVm.addr, align 8
  %nMagic3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 57
  store i32 -889311827, ptr %nMagic3, align 8
  %6 = load ptr, ptr %pVm.addr, align 8
  %7 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pByteContainer, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pBase, align 8
  %10 = load ptr, ptr %pVm.addr, align 8
  %aOps = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %aOps, align 8
  %12 = load ptr, ptr %pVm.addr, align 8
  %sExec = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 27
  %call = call i32 @VmByteCodeExec(ptr noundef %6, ptr noundef %9, ptr noundef %11, i32 noundef -1, ptr noundef %sExec, ptr noundef null, i32 noundef 0)
  %13 = load ptr, ptr %pVm.addr, align 8
  call void @VmInvokeShutdownCallbacks(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmByteCodeExec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @VmInvokeShutdownCallbacks(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
