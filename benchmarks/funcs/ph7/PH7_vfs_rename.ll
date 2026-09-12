; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1218 = external hidden unnamed_addr constant [76 x i8], align 1

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
define hidden i32 @PH7_vfs_rename(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zOld = alloca ptr, align 8
  %zNew = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %5, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_user_data(ptr noundef %6)
  store ptr %call6, ptr %pVfs, align 8
  %7 = load ptr, ptr %pVfs, align 8
  %cmp7 = icmp eq ptr %7, null
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end
  %8 = load ptr, ptr %pVfs, align 8
  %xRename = getelementptr inbounds nuw %struct.ph7_vfs, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %xRename, align 8
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %lor.lhs.false8, %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call ptr @ph7_function_name(ptr noundef %11)
  %call12 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %10, i32 noundef 2, ptr noundef @.str.1218, ptr noundef %call11)
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_bool(ptr noundef %12, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false8
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx15, align 8
  %call16 = call ptr @ph7_value_to_string(ptr noundef %14, ptr noundef null)
  store ptr %call16, ptr %zOld, align 8
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %15, i64 1
  %16 = load ptr, ptr %arrayidx17, align 8
  %call18 = call ptr @ph7_value_to_string(ptr noundef %16, ptr noundef null)
  store ptr %call18, ptr %zNew, align 8
  %17 = load ptr, ptr %pVfs, align 8
  %xRename19 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %xRename19, align 8
  %19 = load ptr, ptr %zOld, align 8
  %20 = load ptr, ptr %zNew, align 8
  %call20 = call i32 %18(ptr noundef %19, ptr noundef %20)
  store i32 %call20, ptr %rc, align 4
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %22, 0
  %conv = zext i1 %cmp21 to i32
  %call22 = call i32 @ph7_result_bool(ptr noundef %21, i32 noundef %conv)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then10, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
