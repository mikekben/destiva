; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getopt_long_opt = type { ptr, ptr, ptr, ptr, ptr }
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

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.610 = external hidden unnamed_addr constant [33 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_count(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_getopt(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zArg = alloca ptr, align 8
  %zArgIn = alloca ptr, align 8
  %zArgEnd = alloca ptr, align 8
  %sLong = alloca %struct.getopt_long_opt, align 8
  %pArray = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %c = alloca i32, align 4
  %need_val = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 1, ptr noundef @.str.610)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nByte)
  store ptr %call4, ptr %zIn, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %nByte, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 %idxprom
  store ptr %arrayidx5, ptr %zEnd, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pVm, align 8
  %sArgv = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 18
  store ptr %sArgv, ptr %pArg, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_array(ptr noundef %11)
  store ptr %call6, ptr %pArray, align 8
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call ptr @ph7_context_new_scalar(ptr noundef %12)
  store ptr %call7, ptr %pWorker, align 8
  %13 = load ptr, ptr %pArray, align 8
  %cmp8 = icmp eq ptr %13, null
  br i1 %cmp8, label %if.then11, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %14 = load ptr, ptr %pWorker, align 8
  %cmp10 = icmp eq ptr %14, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false9, %if.end
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_context_throw_error(ptr noundef %15, i32 noundef 1, ptr noundef @.str.536)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false9
  %17 = load ptr, ptr %pArg, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyBlob, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nByte15, align 8
  %cmp16 = icmp ult i32 %18, 1
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %pArray, align 8
  %call18 = call i32 @ph7_result_value(ptr noundef %19, ptr noundef %20)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %21 = load ptr, ptr %pArg, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pBlob, align 8
  store ptr %22, ptr %zArgIn, align 8
  %23 = load ptr, ptr %zArgIn, align 8
  %24 = load ptr, ptr %pArg, align 8
  %nByte20 = getelementptr inbounds nuw %struct.SyBlob, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nByte20, align 8
  %idxprom21 = zext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %23, i64 %idxprom21
  store ptr %arrayidx22, ptr %zArgEnd, align 8
  %26 = load ptr, ptr %pArray, align 8
  %pArray23 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %sLong, i32 0, i32 3
  store ptr %26, ptr %pArray23, align 8
  %27 = load ptr, ptr %pWorker, align 8
  %pWorker24 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %sLong, i32 0, i32 2
  store ptr %27, ptr %pWorker24, align 8
  %28 = load ptr, ptr %zArgIn, align 8
  %zArgIn25 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %sLong, i32 0, i32 0
  store ptr %28, ptr %zArgIn25, align 8
  %29 = load ptr, ptr %zArgEnd, align 8
  %zArgEnd26 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %sLong, i32 0, i32 1
  store ptr %29, ptr %zArgEnd26, align 8
  %30 = load ptr, ptr %pCtx.addr, align 8
  %pCtx27 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %sLong, i32 0, i32 4
  store ptr %30, ptr %pCtx27, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end60, %if.then59, %if.then35, %if.end19
  %31 = load ptr, ptr %zIn, align 8
  %32 = load ptr, ptr %zEnd, align 8
  %cmp28 = icmp ult ptr %31, %32
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load ptr, ptr %zIn, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx29, align 1
  %conv = sext i8 %34 to i32
  store i32 %conv, ptr %c, align 4
  store i32 0, ptr %need_val, align 4
  %35 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %call30 = call ptr @__ctype_b_loc() #2
  %36 = load ptr, ptr %call30, align 8
  %37 = load i32, ptr %c, align 4
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %36, i64 %idxprom31
  %38 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %38 to i32
  %and = and i32 %conv33, 8
  %tobool34 = icmp ne i32 %and, 0
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end36:                                         ; preds = %while.body
  %39 = load ptr, ptr %zIn, align 8
  %40 = load ptr, ptr %zEnd, align 8
  %cmp37 = icmp ult ptr %39, %40
  br i1 %cmp37, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.end36
  %41 = load ptr, ptr %zIn, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx39, align 1
  %conv40 = sext i8 %42 to i32
  %cmp41 = icmp eq i32 %conv40, 58
  br i1 %cmp41, label %if.then43, label %if.end55

if.then43:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %zIn, align 8
  %incdec.ptr44 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %incdec.ptr44, ptr %zIn, align 8
  store i32 1, ptr %need_val, align 4
  %44 = load ptr, ptr %zIn, align 8
  %45 = load ptr, ptr %zEnd, align 8
  %cmp45 = icmp ult ptr %44, %45
  br i1 %cmp45, label %land.lhs.true47, label %if.end54

land.lhs.true47:                                  ; preds = %if.then43
  %46 = load ptr, ptr %zIn, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %47 to i32
  %cmp50 = icmp eq i32 %conv49, 58
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %land.lhs.true47
  %48 = load ptr, ptr %zIn, align 8
  %incdec.ptr53 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr53, ptr %zIn, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true47, %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %land.lhs.true, %if.end36
  %49 = load i32, ptr %c, align 4
  %50 = load ptr, ptr %zArgIn, align 8
  %51 = load ptr, ptr %zArgEnd, align 8
  %call56 = call ptr @VmFindShortOpt(i32 noundef %49, ptr noundef %50, ptr noundef %51)
  store ptr %call56, ptr %zArg, align 8
  %52 = load ptr, ptr %zArg, align 8
  %cmp57 = icmp eq ptr %52, null
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.end55
  br label %while.cond, !llvm.loop !6

if.end60:                                         ; preds = %if.end55
  %53 = load ptr, ptr %pArray, align 8
  %54 = load ptr, ptr %pWorker, align 8
  %55 = load ptr, ptr %zArg, align 8
  %56 = load ptr, ptr %zArgEnd, align 8
  %57 = load i32, ptr %need_val, align 4
  %58 = load ptr, ptr %pCtx.addr, align 8
  call void @VmExtractOptArgValue(ptr noundef %53, ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57, ptr noundef %58, ptr noundef %c)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %59 = load i32, ptr %nArg.addr, align 4
  %cmp61 = icmp sgt i32 %59, 1
  br i1 %cmp61, label %land.lhs.true63, label %if.end75

land.lhs.true63:                                  ; preds = %while.end
  %60 = load ptr, ptr %apArg.addr, align 8
  %arrayidx64 = getelementptr inbounds ptr, ptr %60, i64 1
  %61 = load ptr, ptr %arrayidx64, align 8
  %call65 = call i32 @ph7_value_is_array(ptr noundef %61)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true67, label %if.end75

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %62 = load ptr, ptr %apArg.addr, align 8
  %arrayidx68 = getelementptr inbounds ptr, ptr %62, i64 1
  %63 = load ptr, ptr %arrayidx68, align 8
  %call69 = call i32 @ph7_array_count(ptr noundef %63)
  %cmp70 = icmp ugt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %land.lhs.true67
  %64 = load ptr, ptr %apArg.addr, align 8
  %arrayidx73 = getelementptr inbounds ptr, ptr %64, i64 1
  %65 = load ptr, ptr %arrayidx73, align 8
  %call74 = call i32 @ph7_array_walk(ptr noundef %65, ptr noundef @VmProcessLongOpt, ptr noundef %sLong)
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %land.lhs.true67, %land.lhs.true63, %while.end
  %66 = load ptr, ptr %pCtx.addr, align 8
  %67 = load ptr, ptr %pArray, align 8
  %call76 = call i32 @ph7_result_value(ptr noundef %66, ptr noundef %67)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end75, %if.then17, %if.then11, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmFindShortOpt(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @VmExtractOptArgValue(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @VmProcessLongOpt(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
