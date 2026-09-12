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
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_diff_uassoc(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pN1 = alloca ptr, align 8
  %pN2 = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pCallback = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
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
  %5 = load i32, ptr %nArg.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx2, align 8
  store ptr %6, ptr %pCallback, align 8
  %7 = load i32, ptr %nArg.addr, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @ph7_result_value(ptr noundef %8, ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call ptr @ph7_context_new_array(ptr noundef %11)
  store ptr %call8, ptr %pArray, align 8
  %12 = load ptr, ptr %pArray, align 8
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx13, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %x, align 8
  store ptr %16, ptr %pSrc, align 8
  %17 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pFirst, align 8
  store ptr %18, ptr %pEntry, align 8
  %19 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry, align 4
  store i32 %20, ptr %n, align 4
  store ptr null, ptr %pN2, align 8
  store ptr null, ptr %pN1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end54, %if.end12
  %21 = load i32, ptr %n, align 4
  %cmp14 = icmp ult i32 %21, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.cond
  br label %for.end55

if.end16:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.end16
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %nArg.addr, align 4
  %sub18 = sub nsw i32 %23, 1
  %cmp19 = icmp slt i32 %22, %sub18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond17
  %24 = load ptr, ptr %apArg.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %24, i64 %idxprom20
  %26 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @ph7_value_is_array(ptr noundef %26)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %for.body
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %27 = load ptr, ptr %apArg.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %27, i64 %idxprom26
  %29 = load ptr, ptr %arrayidx27, align 8
  %x28 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %x28, align 8
  store ptr %30, ptr %pMap, align 8
  %31 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %iType, align 8
  %cmp29 = icmp eq i32 %32, 1
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end25
  %33 = load ptr, ptr %pMap, align 8
  %34 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %xKey, align 8
  %call31 = call i32 @HashmapLookupIntKey(ptr noundef %33, i64 noundef %35, ptr noundef %pN1)
  store i32 %call31, ptr %rc, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end25
  %36 = load ptr, ptr %pMap, align 8
  %37 = load ptr, ptr %pEntry, align 8
  %xKey32 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %37, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey32, i32 0, i32 1
  %38 = load ptr, ptr %pBlob, align 8
  %39 = load ptr, ptr %pEntry, align 8
  %xKey33 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %39, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey33, i32 0, i32 2
  %40 = load i32, ptr %nByte, align 8
  %call34 = call i32 @HashmapLookupBlobKey(ptr noundef %36, ptr noundef %38, i32 noundef %40, ptr noundef %pN1)
  store i32 %call34, ptr %rc, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %41 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %41, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  br label %for.end

if.end38:                                         ; preds = %if.end35
  %42 = load ptr, ptr %pEntry, align 8
  %call39 = call ptr @HashmapExtractNodeValue(ptr noundef %42)
  store ptr %call39, ptr %pVal, align 8
  %43 = load ptr, ptr %pVal, align 8
  %tobool40 = icmp ne ptr %43, null
  br i1 %tobool40, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end38
  %44 = load ptr, ptr %pMap, align 8
  %45 = load ptr, ptr %pVal, align 8
  %46 = load ptr, ptr %pCallback, align 8
  %call42 = call i32 @HashmapFindValueByCallback(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %pN2)
  store i32 %call42, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %47, 0
  br i1 %cmp43, label %if.then46, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.then41
  %48 = load ptr, ptr %pN1, align 8
  %49 = load ptr, ptr %pN2, align 8
  %cmp45 = icmp ne ptr %48, %49
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false44, %if.then41
  br label %for.end

if.end47:                                         ; preds = %lor.lhs.false44
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end38
  br label %for.inc

for.inc:                                          ; preds = %if.end48, %if.then24
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond17, !llvm.loop !6

for.end:                                          ; preds = %if.then46, %if.then37, %for.cond17
  %51 = load i32, ptr %i, align 4
  %52 = load i32, ptr %nArg.addr, align 4
  %sub49 = sub nsw i32 %52, 1
  %cmp50 = icmp slt i32 %51, %sub49
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %for.end
  %53 = load ptr, ptr %pArray, align 8
  %x52 = getelementptr inbounds nuw %struct.ph7_value, ptr %53, i32 0, i32 1
  %54 = load ptr, ptr %x52, align 8
  %55 = load ptr, ptr %pEntry, align 8
  %call53 = call i32 @HashmapInsertNode(ptr noundef %54, ptr noundef %55, i32 noundef 1)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.end
  %56 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %56, i32 0, i32 7
  %57 = load ptr, ptr %pPrev, align 8
  store ptr %57, ptr %pEntry, align 8
  %58 = load i32, ptr %n, align 4
  %dec = add i32 %58, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end55:                                        ; preds = %if.then15
  %59 = load ptr, ptr %pCtx.addr, align 8
  %60 = load ptr, ptr %pArray, align 8
  %call56 = call i32 @ph7_result_value(ptr noundef %59, ptr noundef %60)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end55, %if.then10, %if.then4, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapFindValueByCallback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
