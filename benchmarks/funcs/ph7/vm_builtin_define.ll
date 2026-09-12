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

@.str.336 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.497 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.498 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.499 = external hidden unnamed_addr constant [49 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_create_constant(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_define(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %rc = alloca i32, align 4
  %zCur = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %nLen, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_context_throw_error(ptr noundef %1, i32 noundef 3, ptr noundef @.str.497)
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_bool(ptr noundef %2, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_context_throw_error(ptr noundef %5, i32 noundef 3, ptr noundef @.str.336)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %8, ptr noundef %nLen)
  store ptr %call8, ptr %zName, align 8
  %9 = load i32, ptr %nLen, align 4
  %cmp9 = icmp slt i32 %9, 1
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_context_throw_error(ptr noundef %10, i32 noundef 3, ptr noundef @.str.498)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  %12 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 0
  %call14 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 72)
  store ptr %call14, ptr %pValue, align 8
  %14 = load ptr, ptr %pValue, align 8
  %cmp15 = icmp eq ptr %14, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call i32 @ph7_context_throw_error(ptr noundef %15, i32 noundef 3, ptr noundef @.str.499)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  %17 = load ptr, ptr %pCtx.addr, align 8
  %pVm20 = getelementptr inbounds nuw %struct.ph7_context, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pVm20, align 8
  %19 = load ptr, ptr %pValue, align 8
  %call21 = call i32 @PH7_MemObjInit(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %pVm22 = getelementptr inbounds nuw %struct.ph7_context, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pVm22, align 8
  %22 = load ptr, ptr %zName, align 8
  %23 = load ptr, ptr %pValue, align 8
  %call23 = call i32 @ph7_create_constant(ptr noundef %21, ptr noundef %22, ptr noundef @VmExpandUserConstant, ptr noundef %23)
  store i32 %call23, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end19
  %25 = load ptr, ptr %pCtx.addr, align 8
  %pVm26 = getelementptr inbounds nuw %struct.ph7_context, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %pVm26, align 8
  %sAllocator27 = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pValue, align 8
  %call28 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator27, ptr noundef %27)
  %28 = load ptr, ptr %pCtx.addr, align 8
  %call29 = call i32 @ph7_context_throw_error(ptr noundef %28, i32 noundef 3, ptr noundef @.str.499)
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_result_bool(ptr noundef %29, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end19
  %30 = load ptr, ptr %apArg.addr, align 8
  %arrayidx32 = getelementptr inbounds ptr, ptr %30, i64 1
  %31 = load ptr, ptr %arrayidx32, align 8
  %32 = load ptr, ptr %pValue, align 8
  %call33 = call i32 @PH7_MemObjStore(ptr noundef %31, ptr noundef %32)
  %33 = load i32, ptr %nArg.addr, align 4
  %cmp34 = icmp eq i32 %33, 3
  br i1 %cmp34, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %if.end31
  %34 = load ptr, ptr %apArg.addr, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %34, i64 2
  %35 = load ptr, ptr %arrayidx35, align 8
  %call36 = call i32 @ph7_value_is_bool(ptr noundef %35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true38, label %if.end80

land.lhs.true38:                                  ; preds = %land.lhs.true
  %36 = load ptr, ptr %apArg.addr, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %36, i64 2
  %37 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i32 @ph7_value_to_bool(ptr noundef %37)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end80

if.then42:                                        ; preds = %land.lhs.true38
  %38 = load ptr, ptr %zName, align 8
  store ptr %38, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end75, %while.end, %if.then42
  %39 = load ptr, ptr %zCur, align 8
  %40 = load ptr, ptr %zName, align 8
  %41 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %40, i64 %idxprom
  %cmp44 = icmp ult ptr %39, %arrayidx43
  br i1 %cmp44, label %while.body, label %while.end77

while.body:                                       ; preds = %while.cond
  %42 = load ptr, ptr %zCur, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx45, align 1
  %conv = zext i8 %43 to i32
  %cmp46 = icmp sge i32 %conv, 192
  br i1 %cmp46, label %if.then48, label %if.end60

if.then48:                                        ; preds = %while.body
  %44 = load ptr, ptr %zCur, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %zCur, align 8
  br label %while.cond49

while.cond49:                                     ; preds = %while.body58, %if.then48
  %45 = load ptr, ptr %zCur, align 8
  %46 = load ptr, ptr %zName, align 8
  %47 = load i32, ptr %nLen, align 4
  %idxprom50 = sext i32 %47 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %46, i64 %idxprom50
  %cmp52 = icmp ult ptr %45, %arrayidx51
  br i1 %cmp52, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond49
  %48 = load ptr, ptr %zCur, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %49 to i32
  %and = and i32 %conv55, 192
  %cmp56 = icmp eq i32 %and, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond49
  %50 = phi i1 [ false, %while.cond49 ], [ %cmp56, %land.rhs ]
  br i1 %50, label %while.body58, label %while.end

while.body58:                                     ; preds = %land.end
  %51 = load ptr, ptr %zCur, align 8
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr59, ptr %zCur, align 8
  br label %while.cond49, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond, !llvm.loop !8

if.end60:                                         ; preds = %while.body
  %call61 = call ptr @__ctype_b_loc() #3
  %52 = load ptr, ptr %call61, align 8
  %53 = load ptr, ptr %zCur, align 8
  %arrayidx62 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx62, align 1
  %conv63 = sext i8 %54 to i32
  %idxprom64 = sext i32 %conv63 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %52, i64 %idxprom64
  %55 = load i16, ptr %arrayidx65, align 2
  %conv66 = zext i16 %55 to i32
  %and67 = and i32 %conv66, 256
  %tobool68 = icmp ne i32 %and67, 0
  br i1 %tobool68, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.end60
  %56 = load ptr, ptr %zCur, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %57 to i32
  %call72 = call i32 @tolower(i32 noundef %conv71) #4
  store i32 %call72, ptr %c, align 4
  %58 = load i32, ptr %c, align 4
  %conv73 = trunc i32 %58 to i8
  %59 = load ptr, ptr %zCur, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %59, i64 0
  store i8 %conv73, ptr %arrayidx74, align 1
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %if.end60
  %60 = load ptr, ptr %zCur, align 8
  %incdec.ptr76 = getelementptr inbounds nuw i8, ptr %60, i32 1
  store ptr %incdec.ptr76, ptr %zCur, align 8
  br label %while.cond, !llvm.loop !8

while.end77:                                      ; preds = %while.cond
  %61 = load ptr, ptr %pCtx.addr, align 8
  %pVm78 = getelementptr inbounds nuw %struct.ph7_context, ptr %61, i32 0, i32 4
  %62 = load ptr, ptr %pVm78, align 8
  %63 = load ptr, ptr %zName, align 8
  %64 = load ptr, ptr %pValue, align 8
  %call79 = call i32 @ph7_create_constant(ptr noundef %62, ptr noundef %63, ptr noundef @VmExpandUserConstant, ptr noundef %64)
  br label %if.end80

if.end80:                                         ; preds = %while.end77, %land.lhs.true38, %land.lhs.true, %if.end31
  %65 = load ptr, ptr %pCtx.addr, align 8
  %call81 = call i32 @ph7_result_bool(ptr noundef %65, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end80, %if.then25, %if.then16, %if.then10, %if.then3, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: nounwind uwtable
declare hidden void @VmExpandUserConstant(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !7}
