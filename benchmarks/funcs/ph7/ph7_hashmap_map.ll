; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_map(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pEntry = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %n = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_array(ptr noundef %4)
  store ptr %call2, ptr %pArray, align 8
  %5 = load ptr, ptr %pArray, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx7, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pMap, align 8
  %10 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm, align 8
  %call8 = call i32 @PH7_MemObjInit(ptr noundef %11, ptr noundef %sResult)
  %12 = load ptr, ptr %pMap, align 8
  %pVm9 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm9, align 8
  %call10 = call i32 @PH7_MemObjInit(ptr noundef %13, ptr noundef %sKey)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %nIdx11 = getelementptr inbounds nuw %struct.ph7_value, ptr %sKey, i32 0, i32 5
  store i32 -1, ptr %nIdx11, align 8
  %14 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pFirst, align 8
  store ptr %15, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %16 = load i32, ptr %n, align 4
  %17 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nEntry, align 4
  %cmp12 = icmp ult i32 %16, %18
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pEntry, align 8
  %call13 = call ptr @HashmapExtractNodeValue(ptr noundef %19)
  store ptr %call13, ptr %pValue, align 8
  %20 = load ptr, ptr %pValue, align 8
  %tobool14 = icmp ne ptr %20, null
  br i1 %tobool14, label %if.then15, label %if.end26

if.then15:                                        ; preds = %for.body
  %21 = load ptr, ptr %pMap, align 8
  %pVm16 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pVm16, align 8
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %23, i64 0
  %24 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @PH7_VmCallUserFunction(ptr noundef %22, ptr noundef %24, i32 noundef 1, ptr noundef %pValue, ptr noundef %sResult)
  store i32 %call18, ptr %rc, align 4
  %25 = load ptr, ptr %pEntry, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %25, ptr noundef %sKey)
  %26 = load i32, ptr %rc, align 4
  %cmp19 = icmp ne i32 %26, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  %27 = load ptr, ptr %pArray, align 8
  %28 = load ptr, ptr %pValue, align 8
  %call21 = call i32 @ph7_array_add_elem(ptr noundef %27, ptr noundef %sKey, ptr noundef %28)
  br label %if.end23

if.else:                                          ; preds = %if.then15
  %29 = load ptr, ptr %pArray, align 8
  %call22 = call i32 @ph7_array_add_elem(ptr noundef %29, ptr noundef %sKey, ptr noundef %sResult)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then20
  %call24 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %call25 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %for.body
  %30 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %pPrev, align 8
  store ptr %31, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %32 = load i32, ptr %n, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load ptr, ptr %pArray, align 8
  %call27 = call i32 @ph7_result_value(ptr noundef %33, ptr noundef %34)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
