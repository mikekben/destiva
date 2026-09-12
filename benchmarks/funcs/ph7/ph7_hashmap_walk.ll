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
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunctionAp(ptr noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_walk(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pUserData = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %pEntry = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
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
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp sgt i32 %4, 2
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx3, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %pUserData, align 8
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pMap, align 8
  %10 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm, align 8
  %call5 = call i32 @PH7_MemObjInit(ptr noundef %11, ptr noundef %sKey)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sKey, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %12 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pFirst, align 8
  store ptr %13, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, ptr %n, align 4
  %15 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry, align 4
  %cmp6 = icmp ult i32 %14, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pEntry, align 8
  %call7 = call ptr @HashmapExtractNodeValue(ptr noundef %17)
  store ptr %call7, ptr %pValue, align 8
  %18 = load ptr, ptr %pValue, align 8
  %tobool8 = icmp ne ptr %18, null
  br i1 %tobool8, label %if.then9, label %if.end18

if.then9:                                         ; preds = %for.body
  %19 = load ptr, ptr %pEntry, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %19, ptr noundef %sKey)
  %20 = load ptr, ptr %pMap, align 8
  %pVm10 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pVm10, align 8
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx11, align 8
  %24 = load ptr, ptr %pValue, align 8
  %25 = load ptr, ptr %pUserData, align 8
  %call12 = call i32 (ptr, ptr, ptr, ...) @PH7_VmCallUserFunctionAp(ptr noundef %21, ptr noundef %23, ptr noundef null, ptr noundef %24, ptr noundef %sKey, ptr noundef %25, i32 noundef 0)
  store i32 %call12, ptr %rc, align 4
  %call13 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %26 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %26, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.then9
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %for.body
  %28 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %pPrev, align 8
  store ptr %29, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %30 = load i32, ptr %n, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_bool(ptr noundef %31, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
