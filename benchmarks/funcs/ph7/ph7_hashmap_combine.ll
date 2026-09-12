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
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_combine(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pKe = alloca ptr, align 8
  %pVe = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_is_array(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_array(ptr noundef %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx8, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pKey, align 8
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx9, align 8
  %x10 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %x10, align 8
  store ptr %12, ptr %pValue, align 8
  %13 = load ptr, ptr %pKey, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nEntry, align 4
  %15 = load ptr, ptr %pValue, align 8
  %nEntry11 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry11, align 4
  %cmp12 = icmp ne i32 %14, %16
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end7
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_bool(ptr noundef %17, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end7
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call ptr @ph7_context_new_array(ptr noundef %18)
  store ptr %call16, ptr %pArray, align 8
  %19 = load ptr, ptr %pArray, align 8
  %cmp17 = icmp eq ptr %19, null
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end15
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end15
  %21 = load ptr, ptr %pKey, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pFirst, align 8
  store ptr %22, ptr %pKe, align 8
  %23 = load ptr, ptr %pValue, align 8
  %pFirst21 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pFirst21, align 8
  store ptr %24, ptr %pVe, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %25 = load i32, ptr %n, align 4
  %26 = load ptr, ptr %pKey, align 8
  %nEntry22 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %nEntry22, align 4
  %cmp23 = icmp ult i32 %25, %27
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %pArray, align 8
  %29 = load ptr, ptr %pKe, align 8
  %call24 = call ptr @HashmapExtractNodeValue(ptr noundef %29)
  %30 = load ptr, ptr %pVe, align 8
  %call25 = call ptr @HashmapExtractNodeValue(ptr noundef %30)
  %call26 = call i32 @ph7_array_add_elem(ptr noundef %28, ptr noundef %call24, ptr noundef %call25)
  %31 = load ptr, ptr %pKe, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %pPrev, align 8
  store ptr %32, ptr %pKe, align 8
  %33 = load ptr, ptr %pVe, align 8
  %pPrev27 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %33, i32 0, i32 7
  %34 = load ptr, ptr %pPrev27, align 8
  store ptr %34, ptr %pVe, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %n, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %pCtx.addr, align 8
  %37 = load ptr, ptr %pArray, align 8
  %call28 = call i32 @ph7_result_value(ptr noundef %36, ptr noundef %37)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then18, %if.then13, %if.then5, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
