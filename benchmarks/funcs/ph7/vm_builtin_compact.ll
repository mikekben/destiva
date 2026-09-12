; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.compact_data = type { ptr, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapWalk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractMemObj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_compact(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %sVar = alloca %struct.SyString, align 8
  %i = alloca i32, align 4
  %nLen = alloca i32, align 4
  %sData = alloca %struct.compact_data, align 8
  %pMap = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_array(ptr noundef %4)
  store ptr %call2, ptr %pArray, align 8
  %5 = load ptr, ptr %pArray, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_context_throw_error(ptr noundef %6, i32 noundef 1, ptr noundef @.str.209)
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_null(ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %apArg.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  %call9 = call i32 @ph7_value_is_string(ptr noundef %12)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  %13 = load ptr, ptr %apArg.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 %idxprom11
  %15 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @ph7_value_is_array(ptr noundef %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.then10
  %16 = load ptr, ptr %apArg.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %16, i64 %idxprom16
  %18 = load ptr, ptr %arrayidx17, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %x, align 8
  store ptr %19, ptr %pMap, align 8
  %nRecCount = getelementptr inbounds nuw %struct.compact_data, ptr %sData, i32 0, i32 1
  store i32 0, ptr %nRecCount, align 8
  %20 = load ptr, ptr %pArray, align 8
  %pArray18 = getelementptr inbounds nuw %struct.compact_data, ptr %sData, i32 0, i32 0
  store ptr %20, ptr %pArray18, align 8
  %21 = load ptr, ptr %pMap, align 8
  %call19 = call i32 @PH7_HashmapWalk(ptr noundef %21, ptr noundef @VmCompactCallback, ptr noundef %sData)
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then10
  br label %if.end34

if.else:                                          ; preds = %for.body
  %22 = load ptr, ptr %apArg.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 %idxprom21
  %24 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @ph7_value_to_string(ptr noundef %24, ptr noundef %nLen)
  store ptr %call23, ptr %zName, align 8
  %25 = load i32, ptr %nLen, align 4
  %cmp24 = icmp sgt i32 %25, 0
  br i1 %cmp24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.else
  %26 = load ptr, ptr %zName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 0
  store ptr %26, ptr %zString, align 8
  %27 = load i32, ptr %nLen, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %27, ptr %nByte, align 8
  %28 = load ptr, ptr %pVm, align 8
  %call26 = call ptr @VmExtractMemObj(ptr noundef %28, ptr noundef %sVar, i32 noundef 0, i32 noundef 0)
  store ptr %call26, ptr %pObj, align 8
  %29 = load ptr, ptr %pObj, align 8
  %tobool27 = icmp ne ptr %29, null
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then25
  %30 = load ptr, ptr %pArray, align 8
  %31 = load ptr, ptr %apArg.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %31, i64 %idxprom29
  %33 = load ptr, ptr %arrayidx30, align 8
  %34 = load ptr, ptr %pObj, align 8
  %call31 = call i32 @ph7_array_add_elem(ptr noundef %30, ptr noundef %33, ptr noundef %34)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %35 = load i32, ptr %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %pCtx.addr, align 8
  %37 = load ptr, ptr %pArray, align 8
  %call35 = call i32 @ph7_result_value(ptr noundef %36, ptr noundef %37)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmCompactCallback(ptr noundef, ptr noundef, ptr noundef) #0

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
