; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm_func_arg = type { %struct.SyString, %struct.SySet, i32, %struct.SyString, i32 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateProcessArgValue(ptr noundef %pGen, ptr noundef %pArg, ptr noundef %pIn, ptr noundef %pEnd) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %pTmpIn = alloca ptr, align 8
  %pTmpEnd = alloca ptr, align 8
  %pInstrContainer = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn1, align 8
  store ptr %1, ptr %pTmpIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pEnd2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 13
  %3 = load ptr, ptr %pEnd2, align 8
  store ptr %3, ptr %pTmpEnd, align 8
  %4 = load ptr, ptr %pIn.addr, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  store ptr %4, ptr %pIn3, align 8
  %6 = load ptr, ptr %pEnd.addr, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  store ptr %6, ptr %pEnd4, align 8
  %8 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %9)
  store ptr %call, ptr %pInstrContainer, align 8
  %10 = load ptr, ptr %pGen.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm5, align 8
  %12 = load ptr, ptr %pArg.addr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %12, i32 0, i32 1
  %call6 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %11, ptr noundef %aByteCode)
  %13 = load ptr, ptr %pGen.addr, align 8
  %call7 = call i32 @PH7_CompileExpr(ptr noundef %13, i32 noundef 0, ptr noundef null)
  store i32 %call7, ptr %rc, align 4
  %14 = load ptr, ptr %pGen.addr, align 8
  %pVm8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pVm8, align 8
  %16 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %16, -3
  %17 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %call9 = call i32 @PH7_VmEmitInstr(ptr noundef %15, i32 noundef 1, i32 noundef %cond, i32 noundef 0, ptr noundef null, ptr noundef null)
  %18 = load ptr, ptr %pGen.addr, align 8
  %pVm10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm10, align 8
  %20 = load ptr, ptr %pInstrContainer, align 8
  %call11 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %pTmpIn, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  store ptr %21, ptr %pIn12, align 8
  %23 = load ptr, ptr %pTmpEnd, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pEnd13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 13
  store ptr %23, ptr %pEnd13, align 8
  %25 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %25, -10
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
