; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_context_throw_error_format(ptr noundef %pCtx, i32 noundef %iErr, ptr noundef %zFormat, ...) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %iErr.addr = alloca i32, align 4
  %zFormat.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %iErr, ptr %iErr.addr, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %zFormat.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %3 = load ptr, ptr %pCtx.addr, align 8
  %pFunc = getelementptr inbounds nuw %struct.ph7_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_user_func, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iErr.addr, align 4
  %6 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @PH7_VmThrowErrorAp(ptr noundef %2, ptr noundef %sName, i32 noundef %5, ptr noundef %6, ptr noundef %arraydecay1)
  store i32 %call, ptr %rc, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay2)
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowErrorAp(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
