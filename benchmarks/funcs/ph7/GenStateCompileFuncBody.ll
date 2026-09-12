; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SyString = type { ptr, i32 }

@.str.230 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileFuncBody(ptr noundef %pGen, ptr noundef %pFunc) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %pInstrContainer = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %nGotoOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %1 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmInstrLength(ptr noundef %2)
  %3 = load ptr, ptr %pFunc.addr, align 8
  %call1 = call i32 @GenStateEnterBlock(ptr noundef %0, i32 noundef 10, i32 noundef %call, ptr noundef %3, ptr noundef %pBlock)
  store i32 %call1, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pGen.addr, align 8
  %call2 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %5, i32 noundef 1, i32 noundef 1, ptr noundef @.str.230)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pGen.addr, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %6, i32 0, i32 9
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aGoto, i32 0, i32 2
  %7 = load i32, ptr %nUsed, align 8
  store i32 %7, ptr %nGotoOfft, align 4
  %8 = load ptr, ptr %pGen.addr, align 8
  %pVm3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm3, align 8
  %call4 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %9)
  store ptr %call4, ptr %pInstrContainer, align 8
  %10 = load ptr, ptr %pGen.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm5, align 8
  %12 = load ptr, ptr %pFunc.addr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %12, i32 0, i32 3
  %call6 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %11, ptr noundef %aByteCode)
  %13 = load ptr, ptr %pGen.addr, align 8
  %call7 = call i32 @PH7_CompileBlock(ptr noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pCurrent, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %pVm8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm8, align 8
  %call9 = call i32 @PH7_VmInstrLength(ptr noundef %17)
  %call10 = call i32 @GenStateFixJumps(ptr noundef %15, i32 noundef 82, i32 noundef %call9)
  %18 = load ptr, ptr %pGen.addr, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm11, align 8
  %call12 = call i32 @PH7_VmEmitInstr(ptr noundef %19, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load i32, ptr %nGotoOfft, align 4
  %call13 = call i32 @GenStateFixGoto(ptr noundef %20, i32 noundef %21)
  %cmp14 = icmp eq i32 -10, %call13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store i32 -10, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end
  %22 = load ptr, ptr %pGen.addr, align 8
  %aGoto17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 9
  %23 = load i32, ptr %nGotoOfft, align 4
  %call18 = call i32 @SySetTruncate(ptr noundef %aGoto17, i32 noundef %23)
  %24 = load ptr, ptr %pGen.addr, align 8
  %pVm19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pVm19, align 8
  %26 = load ptr, ptr %pInstrContainer, align 8
  %call20 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %25, ptr noundef %26)
  %27 = load ptr, ptr %pGen.addr, align 8
  %call21 = call i32 @GenStateLeaveBlock(ptr noundef %27, ptr noundef null)
  %28 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %28, -10
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end16
  store i32 -10, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then23, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetTruncate(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
