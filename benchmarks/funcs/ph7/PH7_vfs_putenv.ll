; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1218 = external hidden unnamed_addr constant [76 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_vm_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_vfs_putenv(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %zValue = alloca ptr, align 8
  %zSettings = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %rc = alloca i32, align 4
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
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %iLen)
  store ptr %call3, ptr %zSettings, align 8
  %6 = load i32, ptr %iLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %zSettings, align 8
  %9 = load i32, ptr %iLen, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store ptr %arrayidx8, ptr %zEnd, align 8
  store ptr null, ptr %zValue, align 8
  %10 = load ptr, ptr %zSettings, align 8
  store ptr %10, ptr %zName, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end7
  %11 = load ptr, ptr %zSettings, align 8
  %12 = load ptr, ptr %zEnd, align 8
  %cmp9 = icmp ult ptr %11, %12
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %zSettings, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx10, align 1
  %conv = sext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv, 61
  br i1 %cmp11, label %if.then13, label %if.end16

if.then13:                                        ; preds = %while.body
  %15 = load ptr, ptr %zSettings, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %15, i64 0
  store i8 0, ptr %arrayidx14, align 1
  %16 = load ptr, ptr %zSettings, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %arrayidx15, ptr %zValue, align 8
  br label %while.end

if.end16:                                         ; preds = %while.body
  %17 = load ptr, ptr %zSettings, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %zSettings, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then13, %while.cond
  %18 = load ptr, ptr %zValue, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then30, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %while.end
  %19 = load ptr, ptr %zName, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %20 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %if.then30, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %21 = load ptr, ptr %zValue, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp25 = icmp uge ptr %21, %22
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %23 = load ptr, ptr %zName, align 8
  %24 = load ptr, ptr %zValue, align 8
  %cmp28 = icmp uge ptr %23, %24
  br i1 %cmp28, label %if.then30, label %if.end37

if.then30:                                        ; preds = %lor.lhs.false27, %lor.lhs.false24, %lor.lhs.false19, %while.end
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call31 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef 0)
  %26 = load ptr, ptr %zSettings, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %cmp32 = icmp ult ptr %26, %27
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then30
  %28 = load ptr, ptr %zSettings, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %28, i64 0
  store i8 61, ptr %arrayidx35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false27
  %29 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %pVm, align 8
  %31 = load ptr, ptr %zName, align 8
  %32 = load ptr, ptr %zValue, align 8
  %33 = load ptr, ptr %zEnd, align 8
  %34 = load ptr, ptr %zValue, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv38 = trunc i64 %sub.ptr.sub to i32
  %call39 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %30, i32 noundef 11, ptr noundef %31, ptr noundef %32, i32 noundef %conv38)
  %35 = load ptr, ptr %pCtx.addr, align 8
  %call40 = call ptr @ph7_context_user_data(ptr noundef %35)
  store ptr %call40, ptr %pVfs, align 8
  %36 = load ptr, ptr %pVfs, align 8
  %cmp41 = icmp eq ptr %36, null
  br i1 %cmp41, label %if.then46, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.end37
  %37 = load ptr, ptr %pVfs, align 8
  %xSetenv = getelementptr inbounds nuw %struct.ph7_vfs, ptr %37, i32 0, i32 31
  %38 = load ptr, ptr %xSetenv, align 8
  %cmp44 = icmp eq ptr %38, null
  br i1 %cmp44, label %if.then46, label %if.end51

if.then46:                                        ; preds = %lor.lhs.false43, %if.end37
  %39 = load ptr, ptr %pCtx.addr, align 8
  %40 = load ptr, ptr %pCtx.addr, align 8
  %call47 = call ptr @ph7_function_name(ptr noundef %40)
  %call48 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %39, i32 noundef 2, ptr noundef @.str.1218, ptr noundef %call47)
  %41 = load ptr, ptr %pCtx.addr, align 8
  %call49 = call i32 @ph7_result_bool(ptr noundef %41, i32 noundef 0)
  %42 = load ptr, ptr %zSettings, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %42, i64 0
  store i8 61, ptr %arrayidx50, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %lor.lhs.false43
  %43 = load ptr, ptr %pVfs, align 8
  %xSetenv52 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %43, i32 0, i32 31
  %44 = load ptr, ptr %xSetenv52, align 8
  %45 = load ptr, ptr %zName, align 8
  %46 = load ptr, ptr %zValue, align 8
  %call53 = call i32 %44(ptr noundef %45, ptr noundef %46)
  store i32 %call53, ptr %rc, align 4
  %47 = load ptr, ptr %pCtx.addr, align 8
  %48 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %48, 0
  %conv55 = zext i1 %cmp54 to i32
  %call56 = call i32 @ph7_result_bool(ptr noundef %47, i32 noundef %conv55)
  %49 = load ptr, ptr %zSettings, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %49, i64 0
  store i8 61, ptr %arrayidx57, align 1
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then46, %if.end36, %if.then5, %if.then
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
