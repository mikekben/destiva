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
declare hidden i32 @HashmapLookupBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_intersect_key(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %pKey = alloca ptr, align 8
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

for.cond:                                         ; preds = %if.end39, %if.end11
  %18 = load i32, ptr %n, align 4
  %cmp13 = icmp ult i32 %18, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.cond
  br label %for.end40

if.end15:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.end15
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp slt i32 %19, %20
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond16
  %21 = load ptr, ptr %apArg.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %21, i64 %idxprom
  %23 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 @ph7_value_is_array(ptr noundef %23)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end22, label %if.then21

if.then21:                                        ; preds = %for.body
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %24 = load ptr, ptr %apArg.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %24, i64 %idxprom23
  %26 = load ptr, ptr %arrayidx24, align 8
  %x25 = getelementptr inbounds nuw %struct.ph7_value, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %x25, align 8
  store ptr %27, ptr %pMap, align 8
  %28 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %iType, align 8
  %cmp26 = icmp eq i32 %29, 2
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end22
  %30 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 2
  store ptr %xKey, ptr %pKey, align 8
  %31 = load ptr, ptr %pMap, align 8
  %32 = load ptr, ptr %pKey, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %pBlob, align 8
  %34 = load ptr, ptr %pKey, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %nByte, align 8
  %call28 = call i32 @HashmapLookupBlobKey(ptr noundef %31, ptr noundef %33, i32 noundef %35, ptr noundef null)
  store i32 %call28, ptr %rc, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end22
  %36 = load ptr, ptr %pMap, align 8
  %37 = load ptr, ptr %pEntry, align 8
  %xKey29 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %37, i32 0, i32 2
  %38 = load i64, ptr %xKey29, align 8
  %call30 = call i32 @HashmapLookupIntKey(ptr noundef %36, i64 noundef %38, ptr noundef null)
  store i32 %call30, ptr %rc, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then27
  %39 = load i32, ptr %rc, align 4
  %cmp32 = icmp ne i32 %39, 0
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end31
  br label %for.end

if.end34:                                         ; preds = %if.end31
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then21
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond16, !llvm.loop !6

for.end:                                          ; preds = %if.then33, %for.cond16
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %nArg.addr, align 4
  %cmp35 = icmp sge i32 %41, %42
  br i1 %cmp35, label %if.then36, label %if.end39

if.then36:                                        ; preds = %for.end
  %43 = load ptr, ptr %pArray, align 8
  %x37 = getelementptr inbounds nuw %struct.ph7_value, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %x37, align 8
  %45 = load ptr, ptr %pEntry, align 8
  %call38 = call i32 @HashmapInsertNode(ptr noundef %44, ptr noundef %45, i32 noundef 1)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.end
  %46 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %pPrev, align 8
  store ptr %47, ptr %pEntry, align 8
  %48 = load i32, ptr %n, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end40:                                        ; preds = %if.then14
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load ptr, ptr %pArray, align 8
  %call41 = call i32 @ph7_result_value(ptr noundef %49, ptr noundef %50)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end40, %if.then9, %if.then3, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
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
