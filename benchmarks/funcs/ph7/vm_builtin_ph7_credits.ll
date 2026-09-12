; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.546 = external hidden unnamed_addr constant [1987 x i8], align 1
@.str.547 = external hidden unnamed_addr constant [1635 x i8], align 1
@.str.548 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.549 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.550 = external hidden unnamed_addr constant [2810 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_version() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_signature() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_lib_ident() #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_output(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_output_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_ph7_credits(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_context_output(ptr noundef %2, ptr noundef @.str.546, i32 noundef 1986)
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_lib_version()
  %call3 = call ptr @ph7_lib_signature()
  %call4 = call ptr @ph7_lib_ident()
  %4 = load ptr, ptr %pVm, align 8
  %pEngine = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pEngine, align 8
  %pVfs = getelementptr inbounds nuw %struct.ph7, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pVfs, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %pVm, align 8
  %pEngine5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pEngine5, align 8
  %pVfs6 = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pVfs6, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_vfs, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ @.str.548, %cond.false ]
  %11 = load ptr, ptr %pVm, align 8
  %hFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 13
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %hFunction, i32 0, i32 5
  %12 = load i32, ptr %nEntry, align 8
  %13 = load ptr, ptr %pVm, align 8
  %hHostFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 12
  %nEntry7 = getelementptr inbounds nuw %struct.SyHash, ptr %hHostFunction, i32 0, i32 5
  %14 = load i32, ptr %nEntry7, align 8
  %add = add i32 %12, %14
  %15 = load ptr, ptr %pVm, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 10
  %nEntry8 = getelementptr inbounds nuw %struct.SyHash, ptr %hClass, i32 0, i32 5
  %16 = load i32, ptr %nEntry8, align 8
  %call9 = call i32 (ptr, ptr, ...) @ph7_context_output_format(ptr noundef %3, ptr noundef @.str.547, ptr noundef %call2, ptr noundef %call3, ptr noundef %call4, ptr noundef %cond, i32 noundef %add, i32 noundef %16, ptr noundef @.str.549)
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_context_output(ptr noundef %17, ptr noundef @.str.550, i32 noundef 2809)
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
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
