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
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjIsEmpty(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_filter(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pValue = alloca ptr, align 8
  %rc = alloca i32, align 4
  %keep = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
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
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pMap, align 8
  %10 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pFirst, align 8
  store ptr %11, ptr %pEntry, align 8
  %12 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm, align 8
  %call8 = call i32 @PH7_MemObjInit(ptr noundef %13, ptr noundef %sResult)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
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
  %18 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %18, 1
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %19 = load ptr, ptr %pValue, align 8
  %tobool12 = icmp ne ptr %19, null
  br i1 %tobool12, label %if.then13, label %if.else

if.then13:                                        ; preds = %land.lhs.true
  store i32 0, ptr %keep, align 4
  %20 = load ptr, ptr %pMap, align 8
  %pVm14 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pVm14, align 8
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @PH7_VmCallUserFunction(ptr noundef %21, ptr noundef %23, i32 noundef 1, ptr noundef %pValue, ptr noundef %sResult)
  store i32 %call16, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then13
  %call19 = call i32 @ph7_value_to_bool(ptr noundef %sResult)
  store i32 %call19, ptr %keep, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then13
  %call21 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true, %for.body
  %25 = load ptr, ptr %pValue, align 8
  %call22 = call i32 @PH7_MemObjIsEmpty(ptr noundef %25)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot = xor i1 %tobool23, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %keep, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end20
  %26 = load i32, ptr %keep, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end24
  %27 = load ptr, ptr %pArray, align 8
  %x27 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %x27, align 8
  %29 = load ptr, ptr %pEntry, align 8
  %call28 = call i32 @HashmapInsertNode(ptr noundef %28, ptr noundef %29, i32 noundef 1)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24
  %30 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %pPrev, align 8
  store ptr %31, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %32 = load i32, ptr %n, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load ptr, ptr %pArray, align 8
  %call30 = call i32 @ph7_result_value(ptr noundef %33, ptr noundef %34)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

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
