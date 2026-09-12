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
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_property_exists(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %pClass = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %res, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @VmExtractClassFromValue(ptr noundef %2, ptr noundef %4)
  store ptr %call, ptr %pClass, align 8
  %5 = load ptr, ptr %pClass, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then1, label %if.end12

if.then1:                                         ; preds = %if.then
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %7, ptr noundef %nLen)
  store ptr %call3, ptr %zName, align 8
  %8 = load i32, ptr %nLen, align 4
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.then1
  %9 = load ptr, ptr %pClass, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %zName, align 8
  %11 = load i32, ptr %nLen, align 4
  %call6 = call ptr @SyHashGet(ptr noundef %hAttr, ptr noundef %10, i32 noundef %11)
  %cmp7 = icmp ne ptr %call6, null
  br i1 %cmp7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %12 = load ptr, ptr %pClass, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %zName, align 8
  %14 = load i32, ptr %nLen, align 4
  %call8 = call ptr @SyHashGet(ptr noundef %hMethod, ptr noundef %13, i32 noundef %14)
  %cmp9 = icmp ne ptr %call8, null
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then5
  store i32 1, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load i32, ptr %res, align 4
  %call14 = call i32 @ph7_result_bool(ptr noundef %15, i32 noundef %16)
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
