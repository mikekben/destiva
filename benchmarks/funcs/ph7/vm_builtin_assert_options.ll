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

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_callable(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_assert_options(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %iOld = alloca i32, align 4
  %iNew = alloca i32, align 4
  %iValue = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_int(ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pVm, align 8
  %iAssertFlags = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 44
  %7 = load i32, ptr %iAssertFlags, align 8
  store i32 %7, ptr %iOld, align 4
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_to_int(ptr noundef %9)
  store i32 %call4, ptr %iNew, align 4
  %10 = load i32, ptr %iNew, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %pVm, align 8
  %iAssertFlags7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 44
  %12 = load i32, ptr %iAssertFlags7, align 8
  %and = and i32 %12, -2
  store i32 %and, ptr %iAssertFlags7, align 8
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp sgt i32 %13, 1
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.then6
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @ph7_value_to_bool(ptr noundef %15)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %iValue, align 4
  %16 = load i32, ptr %iValue, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then9
  %17 = load ptr, ptr %pVm, align 8
  %iAssertFlags15 = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 44
  %18 = load i32, ptr %iAssertFlags15, align 8
  %or = or i32 %18, 1
  store i32 %or, ptr %iAssertFlags15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then6
  br label %if.end65

if.else:                                          ; preds = %if.end
  %19 = load i32, ptr %iNew, align 4
  %cmp18 = icmp eq i32 %19, 2
  br i1 %cmp18, label %if.then19, label %if.else32

if.then19:                                        ; preds = %if.else
  %20 = load ptr, ptr %pVm, align 8
  %iAssertFlags20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 44
  %21 = load i32, ptr %iAssertFlags20, align 8
  %and21 = and i32 %21, -3
  store i32 %and21, ptr %iAssertFlags20, align 8
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp22 = icmp sgt i32 %22, 1
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.then19
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @ph7_value_to_bool(ptr noundef %24)
  store i32 %call25, ptr %iValue, align 4
  %25 = load i32, ptr %iValue, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.then23
  %26 = load ptr, ptr %pVm, align 8
  %iAssertFlags28 = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 44
  %27 = load i32, ptr %iAssertFlags28, align 8
  %or29 = or i32 %27, 2
  store i32 %or29, ptr %iAssertFlags28, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then19
  br label %if.end64

if.else32:                                        ; preds = %if.else
  %28 = load i32, ptr %iNew, align 4
  %cmp33 = icmp eq i32 %28, 4
  br i1 %cmp33, label %if.then34, label %if.else47

if.then34:                                        ; preds = %if.else32
  %29 = load ptr, ptr %pVm, align 8
  %iAssertFlags35 = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 44
  %30 = load i32, ptr %iAssertFlags35, align 8
  %and36 = and i32 %30, -5
  store i32 %and36, ptr %iAssertFlags35, align 8
  %31 = load i32, ptr %nArg.addr, align 4
  %cmp37 = icmp sgt i32 %31, 1
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.then34
  %32 = load ptr, ptr %apArg.addr, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %32, i64 1
  %33 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i32 @ph7_value_to_bool(ptr noundef %33)
  store i32 %call40, ptr %iValue, align 4
  %34 = load i32, ptr %iValue, align 4
  %tobool41 = icmp ne i32 %34, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.then38
  %35 = load ptr, ptr %pVm, align 8
  %iAssertFlags43 = getelementptr inbounds nuw %struct.ph7_vm, ptr %35, i32 0, i32 44
  %36 = load i32, ptr %iAssertFlags43, align 8
  %or44 = or i32 %36, 4
  store i32 %or44, ptr %iAssertFlags43, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.then38
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then34
  br label %if.end63

if.else47:                                        ; preds = %if.else32
  %37 = load i32, ptr %iNew, align 4
  %cmp48 = icmp eq i32 %37, 16
  br i1 %cmp48, label %if.then49, label %if.end62

if.then49:                                        ; preds = %if.else47
  %38 = load ptr, ptr %pVm, align 8
  %iAssertFlags50 = getelementptr inbounds nuw %struct.ph7_vm, ptr %38, i32 0, i32 44
  %39 = load i32, ptr %iAssertFlags50, align 8
  %and51 = and i32 %39, -17
  store i32 %and51, ptr %iAssertFlags50, align 8
  %40 = load i32, ptr %nArg.addr, align 4
  %cmp52 = icmp sgt i32 %40, 1
  br i1 %cmp52, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %if.then49
  %41 = load ptr, ptr %apArg.addr, align 8
  %arrayidx53 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %arrayidx53, align 8
  %call54 = call i32 @ph7_value_is_callable(ptr noundef %42)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %apArg.addr, align 8
  %arrayidx57 = getelementptr inbounds ptr, ptr %43, i64 1
  %44 = load ptr, ptr %arrayidx57, align 8
  %45 = load ptr, ptr %pVm, align 8
  %sAssertCallback = getelementptr inbounds nuw %struct.ph7_vm, ptr %45, i32 0, i32 45
  %call58 = call i32 @PH7_MemObjStore(ptr noundef %44, ptr noundef %sAssertCallback)
  %46 = load ptr, ptr %pVm, align 8
  %iAssertFlags59 = getelementptr inbounds nuw %struct.ph7_vm, ptr %46, i32 0, i32 44
  %47 = load i32, ptr %iAssertFlags59, align 8
  %or60 = or i32 %47, 16
  store i32 %or60, ptr %iAssertFlags59, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %land.lhs.true, %if.then49
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.else47
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end46
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end31
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end17
  %48 = load ptr, ptr %pCtx.addr, align 8
  %49 = load i32, ptr %iOld, align 4
  %call66 = call i32 @ph7_result_int(ptr noundef %48, i32 noundef %49)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
