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
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_intersect(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
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
  %4 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @ph7_result_value(ptr noundef %5, ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call ptr @ph7_context_new_array(ptr noundef %8)
  store ptr %call7, ptr %pArray, align 8
  %9 = load ptr, ptr %pArray, align 8
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_null(ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 0
  %12 = load ptr, ptr %arrayidx12, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %x, align 8
  store ptr %13, ptr %pSrc, align 8
  %14 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pFirst, align 8
  store ptr %15, ptr %pEntry, align 8
  %16 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %nEntry, align 4
  store i32 %17, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %if.end11
  %18 = load i32, ptr %n, align 4
  %cmp13 = icmp ult i32 %18, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.cond
  br label %for.end39

if.end15:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pEntry, align 8
  %call16 = call ptr @HashmapExtractNodeValue(ptr noundef %19)
  store ptr %call16, ptr %pVal, align 8
  %20 = load ptr, ptr %pVal, align 8
  %tobool17 = icmp ne ptr %20, null
  br i1 %tobool17, label %if.then18, label %if.end38

if.then18:                                        ; preds = %if.end15
  store i32 1, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.then18
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp slt i32 %21, %22
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond19
  %23 = load ptr, ptr %apArg.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %23, i64 %idxprom
  %25 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @ph7_value_is_array(ptr noundef %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %for.body
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %26 = load ptr, ptr %apArg.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %26, i64 %idxprom26
  %28 = load ptr, ptr %arrayidx27, align 8
  %x28 = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %x28, align 8
  store ptr %29, ptr %pMap, align 8
  %30 = load ptr, ptr %pMap, align 8
  %31 = load ptr, ptr %pVal, align 8
  %call29 = call i32 @HashmapFindValue(ptr noundef %30, ptr noundef %31, ptr noundef null, i32 noundef 1)
  store i32 %call29, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp30 = icmp ne i32 %32, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  br label %for.end

if.end32:                                         ; preds = %if.end25
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %if.then24
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond19, !llvm.loop !6

for.end:                                          ; preds = %if.then31, %for.cond19
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nArg.addr, align 4
  %cmp33 = icmp sge i32 %34, %35
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %for.end
  %36 = load ptr, ptr %pArray, align 8
  %x35 = getelementptr inbounds nuw %struct.ph7_value, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %x35, align 8
  %38 = load ptr, ptr %pEntry, align 8
  %call36 = call i32 @HashmapInsertNode(ptr noundef %37, ptr noundef %38, i32 noundef 1)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %for.end
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end15
  %39 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %pPrev, align 8
  store ptr %40, ptr %pEntry, align 8
  %41 = load i32, ptr %n, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end39:                                        ; preds = %if.then14
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load ptr, ptr %pArray, align 8
  %call40 = call i32 @ph7_result_value(ptr noundef %42, ptr noundef %43)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end39, %if.then9, %if.then3, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
