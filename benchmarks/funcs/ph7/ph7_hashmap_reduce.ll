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
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunctionAp(ptr noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_reduce(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
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
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pMap, align 8
  %7 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %call3 = call i32 @PH7_MemObjInit(ptr noundef %8, ptr noundef %sResult)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %9 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %9, 2
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @PH7_MemObjLoad(ptr noundef %11, ptr noundef %sResult)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  %12 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pFirst, align 8
  store ptr %13, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %14 = load i32, ptr %n, align 4
  %15 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry, align 4
  %cmp9 = icmp ult i32 %14, %16
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %pEntry, align 8
  %call10 = call ptr @HashmapExtractNodeValue(ptr noundef %17)
  store ptr %call10, ptr %pValue, align 8
  %18 = load ptr, ptr %pMap, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm11, align 8
  %20 = load ptr, ptr %apArg.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx12, align 8
  %22 = load ptr, ptr %pValue, align 8
  %call13 = call i32 (ptr, ptr, ptr, ...) @PH7_VmCallUserFunctionAp(ptr noundef %19, ptr noundef %21, ptr noundef %sResult, ptr noundef %sResult, ptr noundef %22, i32 noundef 0)
  %23 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 7
  %24 = load ptr, ptr %pPrev, align 8
  store ptr %24, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, ptr %n, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_value(ptr noundef %26, ptr noundef %sResult)
  %call15 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
