; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_context_throw_error(ptr noundef %pCtx, i32 noundef %iErr, ptr noundef %zErr) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %iErr.addr = alloca i32, align 4
  %zErr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %iErr, ptr %iErr.addr, align 4
  store ptr %zErr, ptr %zErr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %zErr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %3 = load ptr, ptr %pCtx.addr, align 8
  %pFunc = getelementptr inbounds nuw %struct.ph7_context, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_user_func, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iErr.addr, align 4
  %6 = load ptr, ptr %zErr.addr, align 8
  %call = call i32 @PH7_VmThrowError(ptr noundef %2, ptr noundef %sName, i32 noundef %5, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %rc, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
