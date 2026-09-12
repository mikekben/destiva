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
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_fill_keys(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
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
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_is_array(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_null(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %x, align 8
  store ptr %7, ptr %pSrc, align 8
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_array(ptr noundef %8)
  store ptr %call6, ptr %pArray, align 8
  %9 = load ptr, ptr %pArray, align 8
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_null(ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pFirst, align 8
  store ptr %12, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %13 = load i32, ptr %n, align 4
  %14 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %nEntry, align 4
  %cmp11 = icmp ult i32 %13, %15
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pArray, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %call12 = call ptr @HashmapExtractNodeValue(ptr noundef %17)
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @ph7_array_add_elem(ptr noundef %16, ptr noundef %call12, ptr noundef %19)
  %20 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %pPrev, align 8
  store ptr %21, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %n, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %pArray, align 8
  %call15 = call i32 @ph7_result_value(ptr noundef %23, ptr noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then2, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
