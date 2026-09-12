; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmInstr = type { i8, i32, i32, ptr }
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

@.str.36 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmEmitInstr(ptr noundef %pVm, i32 noundef %iOp, i32 noundef %iP1, i32 noundef %iP2, ptr noundef %p3, ptr noundef %pIndex) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %iOp.addr = alloca i32, align 4
  %iP1.addr = alloca i32, align 4
  %iP2.addr = alloca i32, align 4
  %p3.addr = alloca ptr, align 8
  %pIndex.addr = alloca ptr, align 8
  %sInstr = alloca %struct.VmInstr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %iOp, ptr %iOp.addr, align 4
  store i32 %iP1, ptr %iP1.addr, align 4
  store i32 %iP2, ptr %iP2.addr, align 4
  store ptr %p3, ptr %p3.addr, align 8
  store ptr %pIndex, ptr %pIndex.addr, align 8
  %0 = load i32, ptr %iOp.addr, align 4
  %conv = trunc i32 %0 to i8
  %iOp1 = getelementptr inbounds nuw %struct.VmInstr, ptr %sInstr, i32 0, i32 0
  store i8 %conv, ptr %iOp1, align 8
  %1 = load i32, ptr %iP1.addr, align 4
  %iP12 = getelementptr inbounds nuw %struct.VmInstr, ptr %sInstr, i32 0, i32 1
  store i32 %1, ptr %iP12, align 4
  %2 = load i32, ptr %iP2.addr, align 4
  %iP23 = getelementptr inbounds nuw %struct.VmInstr, ptr %sInstr, i32 0, i32 2
  store i32 %2, ptr %iP23, align 8
  %3 = load ptr, ptr %p3.addr, align 8
  %p34 = getelementptr inbounds nuw %struct.VmInstr, ptr %sInstr, i32 0, i32 3
  store ptr %3, ptr %p34, align 8
  %4 = load ptr, ptr %pIndex.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pByteContainer, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nUsed, align 8
  %8 = load ptr, ptr %pIndex.addr, align 8
  store i32 %7, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pByteContainer5, align 8
  %call = call i32 @SySetPut(ptr noundef %10, ptr noundef %sInstr)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %pVm.addr, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 54
  %call8 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %sCodeGen, i32 noundef 1, i32 noundef 1, ptr noundef @.str.36)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
