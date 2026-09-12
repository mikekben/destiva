; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_get_class(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pName = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_VmPeekTopClass(ptr noundef %2)
  store ptr %call, ptr %pClass, align 8
  %3 = load ptr, ptr %pClass, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pClass, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %4, i32 0, i32 2
  store ptr %sName, ptr %pName, align 8
  %5 = load ptr, ptr %pCtx.addr, align 8
  %6 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zString, align 8
  %8 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte, align 8
  %call2 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef %7, i32 noundef %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end16

if.else4:                                         ; preds = %entry
  %11 = load ptr, ptr %pCtx.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_context, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pVm5, align 8
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx, align 8
  %call6 = call ptr @VmExtractClassFromValue(ptr noundef %12, ptr noundef %14)
  store ptr %call6, ptr %pClass, align 8
  %15 = load ptr, ptr %pClass, align 8
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %if.then8, label %if.else13

if.then8:                                         ; preds = %if.else4
  %16 = load ptr, ptr %pClass, align 8
  %sName9 = getelementptr inbounds nuw %struct.ph7_class, ptr %16, i32 0, i32 2
  store ptr %sName9, ptr %pName, align 8
  %17 = load ptr, ptr %pCtx.addr, align 8
  %18 = load ptr, ptr %pName, align 8
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zString10, align 8
  %20 = load ptr, ptr %pName, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nByte11, align 8
  %call12 = call i32 @ph7_result_string(ptr noundef %17, ptr noundef %19, i32 noundef %21)
  br label %if.end15

if.else13:                                        ; preds = %if.else4
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_bool(ptr noundef %22, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPeekTopClass(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
