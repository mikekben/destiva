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
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_unique(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pNeedle = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %bStrict = alloca i32, align 4
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
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
  store i32 0, ptr %bStrict, align 4
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %5, 1
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %7)
  %cmp9 = icmp eq i32 %call8, 3
  %8 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, i32 1, i32 0
  store i32 %cond, ptr %bStrict, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx11, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %x, align 8
  store ptr %11, ptr %pSrc, align 8
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call ptr @ph7_context_new_array(ptr noundef %12)
  store ptr %call12, ptr %pArray, align 8
  %13 = load ptr, ptr %pArray, align 8
  %cmp13 = icmp eq ptr %13, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_null(ptr noundef %14)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %15 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pFirst, align 8
  store ptr %16, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %17 = load i32, ptr %n, align 4
  %18 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %nEntry, align 4
  %cmp17 = icmp ult i32 %17, %19
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %pEntry, align 8
  %call18 = call ptr @HashmapExtractNodeValue(ptr noundef %20)
  store ptr %call18, ptr %pNeedle, align 8
  store i32 -6, ptr %rc, align 4
  %21 = load ptr, ptr %pNeedle, align 8
  %tobool19 = icmp ne ptr %21, null
  br i1 %tobool19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %for.body
  %22 = load ptr, ptr %pArray, align 8
  %x21 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %x21, align 8
  %24 = load ptr, ptr %pNeedle, align 8
  %25 = load i32, ptr %bStrict, align 4
  %call22 = call i32 @HashmapFindValue(ptr noundef %23, ptr noundef %24, ptr noundef null, i32 noundef %25)
  store i32 %call22, ptr %rc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.body
  %26 = load i32, ptr %rc, align 4
  %cmp24 = icmp ne i32 %26, 0
  br i1 %cmp24, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end23
  %27 = load ptr, ptr %pArray, align 8
  %x26 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %x26, align 8
  %29 = load ptr, ptr %pEntry, align 8
  %call27 = call i32 @HashmapInsertNode(ptr noundef %28, ptr noundef %29, i32 noundef 1)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23
  %30 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %pPrev, align 8
  store ptr %31, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %32 = load i32, ptr %n, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %pCtx.addr, align 8
  %34 = load ptr, ptr %pArray, align 8
  %call29 = call i32 @ph7_result_value(ptr noundef %33, ptr noundef %34)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then14, %if.then2, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapFindValue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
