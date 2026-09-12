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
define hidden i32 @vm_builtin_get_parent_class(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_VmPeekTopClass(ptr noundef %2)
  store ptr %call, ptr %pClass, align 8
  %3 = load ptr, ptr %pClass, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %pClass, align 8
  %pBase = getelementptr inbounds nuw %struct.ph7_class, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pBase, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %pClass, align 8
  %pBase3 = getelementptr inbounds nuw %struct.ph7_class, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pBase3, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %7, i32 0, i32 2
  store ptr %sName, ptr %pName, align 8
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString, align 8
  %11 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %nByte, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %8, ptr noundef %10, i32 noundef %12)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end25

if.else6:                                         ; preds = %entry
  %14 = load ptr, ptr %pCtx.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_context, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pVm7, align 8
  %16 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 0
  %17 = load ptr, ptr %arrayidx, align 8
  %call8 = call ptr @VmExtractClassFromValue(ptr noundef %15, ptr noundef %17)
  store ptr %call8, ptr %pClass, align 8
  %18 = load ptr, ptr %pClass, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.then10, label %if.else22

if.then10:                                        ; preds = %if.else6
  %19 = load ptr, ptr %pClass, align 8
  %pBase11 = getelementptr inbounds nuw %struct.ph7_class, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pBase11, align 8
  %tobool12 = icmp ne ptr %20, null
  br i1 %tobool12, label %if.then13, label %if.else19

if.then13:                                        ; preds = %if.then10
  %21 = load ptr, ptr %pClass, align 8
  %pBase14 = getelementptr inbounds nuw %struct.ph7_class, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pBase14, align 8
  %sName15 = getelementptr inbounds nuw %struct.ph7_class, ptr %22, i32 0, i32 2
  store ptr %sName15, ptr %pName, align 8
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %pName, align 8
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString16, align 8
  %26 = load ptr, ptr %pName, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByte17, align 8
  %call18 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %25, i32 noundef %27)
  br label %if.end21

if.else19:                                        ; preds = %if.then10
  %28 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_bool(ptr noundef %28, i32 noundef 0)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then13
  br label %if.end24

if.else22:                                        ; preds = %if.else6
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_bool(ptr noundef %29, i32 noundef 0)
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.end21
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
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
