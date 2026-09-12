; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1219 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_vfs_umask(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %iOld = alloca i32, align 4
  %iNew = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_context_user_data(ptr noundef %0)
  store ptr %call, ptr %pVfs, align 8
  %1 = load ptr, ptr %pVfs, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %pVfs, align 8
  %xUmask = getelementptr inbounds nuw %struct.ph7_vfs, ptr %2, i32 0, i32 36
  %3 = load ptr, ptr %xUmask, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pCtx.addr, align 8
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_function_name(ptr noundef %5)
  %call3 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %4, i32 noundef 2, ptr noundef @.str.1219, ptr noundef %call2)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_int(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %iNew, align 4
  %7 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  %call7 = call i32 @ph7_value_to_int(ptr noundef %9)
  store i32 %call7, ptr %iNew, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %10 = load ptr, ptr %pVfs, align 8
  %xUmask9 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %10, i32 0, i32 36
  %11 = load ptr, ptr %xUmask9, align 8
  %12 = load i32, ptr %iNew, align 4
  %call10 = call i32 %11(i32 noundef %12)
  store i32 %call10, ptr %iOld, align 4
  %13 = load ptr, ptr %pCtx.addr, align 8
  %14 = load i32, ptr %iOld, align 4
  %call11 = call i32 @ph7_result_int(ptr noundef %13, i32 noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
