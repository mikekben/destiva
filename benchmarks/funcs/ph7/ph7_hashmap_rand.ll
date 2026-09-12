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
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRandomNum(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_rand(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %nItem = alloca i32, align 4
  %nEntry17 = alloca i32, align 4
  %sKey = alloca %struct.ph7_value, align 8
  %pArray = alloca ptr, align 8
  %pDest = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 1, ptr %nItem, align 4
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
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %x, align 8
  store ptr %7, ptr %pMap, align 8
  %8 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %nEntry, align 4
  %cmp6 = icmp ult i32 %9, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_result_null(ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end4
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp10 = icmp sgt i32 %11, 1
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end9
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @ph7_value_to_int(ptr noundef %13)
  store i32 %call13, ptr %nItem, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9
  %14 = load i32, ptr %nItem, align 4
  %cmp15 = icmp slt i32 %14, 2
  br i1 %cmp15, label %if.then16, label %if.else45

if.then16:                                        ; preds = %if.end14
  %15 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVm, align 8
  %call18 = call i32 @PH7_VmRandomNum(ptr noundef %16)
  %17 = load ptr, ptr %pMap, align 8
  %nEntry19 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nEntry19, align 4
  %rem = urem i32 %call18, %18
  store i32 %rem, ptr %nEntry17, align 4
  %19 = load i32, ptr %nEntry17, align 4
  %20 = load ptr, ptr %pMap, align 8
  %nEntry20 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %nEntry20, align 4
  %div = udiv i32 %21, 2
  %cmp21 = icmp ugt i32 %19, %div
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then16
  %22 = load ptr, ptr %pMap, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pLast, align 8
  store ptr %23, ptr %pNode, align 8
  %24 = load ptr, ptr %pMap, align 8
  %nEntry23 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %24, i32 0, i32 6
  %25 = load i32, ptr %nEntry23, align 4
  %26 = load i32, ptr %nEntry17, align 4
  %sub = sub i32 %25, %26
  store i32 %sub, ptr %nEntry17, align 4
  %27 = load i32, ptr %nEntry17, align 4
  %cmp24 = icmp ugt i32 %27, 1
  br i1 %cmp24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.then22
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %if.then25
  %28 = load i32, ptr %nEntry17, align 4
  %cmp26 = icmp eq i32 %28, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.cond
  br label %for.end

if.end28:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pNode, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %pNext, align 8
  store ptr %30, ptr %pNode, align 8
  %31 = load i32, ptr %nEntry17, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %nEntry17, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then27
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end36

if.else:                                          ; preds = %if.then16
  %32 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %pFirst, align 8
  store ptr %33, ptr %pNode, align 8
  br label %for.cond30

for.cond30:                                       ; preds = %if.end33, %if.else
  %34 = load i32, ptr %nEntry17, align 4
  %cmp31 = icmp eq i32 %34, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.cond30
  br label %for.end35

if.end33:                                         ; preds = %for.cond30
  %35 = load ptr, ptr %pNode, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %pPrev, align 8
  store ptr %36, ptr %pNode, align 8
  %37 = load i32, ptr %nEntry17, align 4
  %dec34 = add i32 %37, -1
  store i32 %dec34, ptr %nEntry17, align 4
  br label %for.cond30

for.end35:                                        ; preds = %if.then32
  br label %if.end36

if.end36:                                         ; preds = %for.end35, %if.end29
  %38 = load ptr, ptr %pNode, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %iType, align 8
  %cmp37 = icmp eq i32 %39, 1
  br i1 %cmp37, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.end36
  %40 = load ptr, ptr %pCtx.addr, align 8
  %41 = load ptr, ptr %pNode, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %xKey, align 8
  %call39 = call i32 @ph7_result_int64(ptr noundef %40, i64 noundef %42)
  br label %if.end44

if.else40:                                        ; preds = %if.end36
  %43 = load ptr, ptr %pCtx.addr, align 8
  %44 = load ptr, ptr %pNode, align 8
  %xKey41 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %44, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey41, i32 0, i32 1
  %45 = load ptr, ptr %pBlob, align 8
  %46 = load ptr, ptr %pNode, align 8
  %xKey42 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %46, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey42, i32 0, i32 2
  %47 = load i32, ptr %nByte, align 8
  %call43 = call i32 @ph7_result_string(ptr noundef %43, ptr noundef %45, i32 noundef %47)
  br label %if.end44

if.end44:                                         ; preds = %if.else40, %if.then38
  br label %if.end67

if.else45:                                        ; preds = %if.end14
  %48 = load ptr, ptr %pCtx.addr, align 8
  %call46 = call ptr @ph7_context_new_array(ptr noundef %48)
  store ptr %call46, ptr %pArray, align 8
  %49 = load ptr, ptr %pArray, align 8
  %cmp47 = icmp eq ptr %49, null
  br i1 %cmp47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else45
  %50 = load ptr, ptr %pCtx.addr, align 8
  %call49 = call i32 @ph7_result_null(ptr noundef %50)
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.else45
  %51 = load ptr, ptr %pArray, align 8
  %x51 = getelementptr inbounds nuw %struct.ph7_value, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %x51, align 8
  store ptr %52, ptr %pDest, align 8
  %53 = load ptr, ptr %pDest, align 8
  %pVm52 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %pVm52, align 8
  %call53 = call i32 @PH7_MemObjInit(ptr noundef %54, ptr noundef %sKey)
  %55 = load ptr, ptr %pMap, align 8
  %pFirst54 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %pFirst54, align 8
  store ptr %56, ptr %pNode, align 8
  %57 = load i32, ptr %nItem, align 4
  %58 = load ptr, ptr %pMap, align 8
  %nEntry55 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %58, i32 0, i32 6
  %59 = load i32, ptr %nEntry55, align 4
  %cmp56 = icmp sgt i32 %57, %59
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end50
  %60 = load ptr, ptr %pMap, align 8
  %nEntry58 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %60, i32 0, i32 6
  %61 = load i32, ptr %nEntry58, align 4
  store i32 %61, ptr %nItem, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end50
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end59
  %62 = load i32, ptr %nItem, align 4
  %cmp60 = icmp sgt i32 %62, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %63 = load ptr, ptr %pNode, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %63, ptr noundef %sKey)
  %64 = load ptr, ptr %pDest, align 8
  %call61 = call i32 @PH7_HashmapInsert(ptr noundef %64, ptr noundef null, ptr noundef %sKey)
  %call62 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %65 = load ptr, ptr %pNode, align 8
  %pPrev63 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %65, i32 0, i32 7
  %66 = load ptr, ptr %pPrev63, align 8
  store ptr %66, ptr %pNode, align 8
  %67 = load i32, ptr %nItem, align 4
  %dec64 = add nsw i32 %67, -1
  store i32 %dec64, ptr %nItem, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %68 = load ptr, ptr %pDest, align 8
  %call65 = call i32 @HashmapMergeSort(ptr noundef %68, ptr noundef @HashmapCmpCallback7, ptr noundef null)
  %69 = load ptr, ptr %pDest, align 8
  call void @HashmapSortRehash(ptr noundef %69)
  %70 = load ptr, ptr %pCtx.addr, align 8
  %71 = load ptr, ptr %pArray, align 8
  %call66 = call i32 @ph7_result_value(ptr noundef %70, ptr noundef %71)
  br label %if.end67

if.end67:                                         ; preds = %while.end, %if.end44
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then48, %if.then7, %if.then2, %if.then
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapMergeSort(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapCmpCallback7(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @HashmapSortRehash(ptr noundef) #0

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
