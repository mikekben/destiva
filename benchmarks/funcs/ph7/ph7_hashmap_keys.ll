; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
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
declare dso_local i32 @ph7_value_compare(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_keys(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sObj = alloca %struct.ph7_value, align 8
  %sVal = alloca %struct.ph7_value, align 8
  %sKey = alloca %struct.SyString, align 8
  %bStrict = alloca i32, align 4
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %pValue = alloca ptr, align 8
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
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %x, align 8
  store ptr %7, ptr %pMap, align 8
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
  store i32 0, ptr %bStrict, align 4
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %11, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end10
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @ph7_value_is_bool(ptr noundef %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 @ph7_value_to_bool(ptr noundef %15)
  store i32 %call17, ptr %bStrict, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true, %if.end10
  %16 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pFirst, align 8
  store ptr %17, ptr %pNode, align 8
  %18 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm, align 8
  %call19 = call i32 @PH7_MemObjInit(ptr noundef %19, ptr noundef %sVal)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %20 = load i32, ptr %n, align 4
  %21 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %nEntry, align 4
  %cmp20 = icmp ult i32 %20, %22
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %pNode, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %iType, align 8
  %cmp21 = icmp eq i32 %24, 1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %for.body
  %25 = load ptr, ptr %pMap, align 8
  %pVm23 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pVm23, align 8
  %27 = load ptr, ptr %pNode, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %27, i32 0, i32 2
  %28 = load i64, ptr %xKey, align 8
  %call24 = call i32 @PH7_MemObjInitFromInt(ptr noundef %26, ptr noundef %sObj, i64 noundef %28)
  br label %if.end30

if.else:                                          ; preds = %for.body
  %29 = load ptr, ptr %pNode, align 8
  %xKey25 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey25, i32 0, i32 1
  %30 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sKey, i32 0, i32 0
  store ptr %30, ptr %zString, align 8
  %31 = load ptr, ptr %pNode, align 8
  %xKey26 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey26, i32 0, i32 2
  %32 = load i32, ptr %nByte, align 8
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %sKey, i32 0, i32 1
  store i32 %32, ptr %nByte27, align 8
  %33 = load ptr, ptr %pMap, align 8
  %pVm28 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %pVm28, align 8
  %call29 = call i32 @PH7_MemObjInitFromString(ptr noundef %34, ptr noundef %sObj, ptr noundef %sKey)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then22
  store i32 0, ptr %rc, align 4
  %35 = load i32, ptr %nArg.addr, align 4
  %cmp31 = icmp sgt i32 %35, 1
  br i1 %cmp31, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end30
  %36 = load ptr, ptr %pNode, align 8
  %call33 = call ptr @HashmapExtractNodeValue(ptr noundef %36)
  store ptr %call33, ptr %pValue, align 8
  %37 = load ptr, ptr %pValue, align 8
  %tobool34 = icmp ne ptr %37, null
  br i1 %tobool34, label %if.then35, label %if.end40

if.then35:                                        ; preds = %if.then32
  %38 = load ptr, ptr %pValue, align 8
  %call36 = call i32 @PH7_MemObjLoad(ptr noundef %38, ptr noundef %sVal)
  %39 = load ptr, ptr %apArg.addr, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %39, i64 1
  %40 = load ptr, ptr %arrayidx37, align 8
  %41 = load i32, ptr %bStrict, align 4
  %call38 = call i32 @ph7_value_compare(ptr noundef %sVal, ptr noundef %40, i32 noundef %41)
  store i32 %call38, ptr %rc, align 4
  %42 = load ptr, ptr %pValue, align 8
  %call39 = call i32 @PH7_MemObjRelease(ptr noundef %42)
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30
  %43 = load i32, ptr %rc, align 4
  %cmp42 = icmp eq i32 %43, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %44 = load ptr, ptr %pArray, align 8
  %call44 = call i32 @ph7_array_add_elem(ptr noundef %44, ptr noundef null, ptr noundef %sObj)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %call46 = call i32 @PH7_MemObjRelease(ptr noundef %sObj)
  %45 = load ptr, ptr %pNode, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %45, i32 0, i32 7
  %46 = load ptr, ptr %pPrev, align 8
  store ptr %46, ptr %pNode, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %47 = load i32, ptr %n, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %pCtx.addr, align 8
  %49 = load ptr, ptr %pArray, align 8
  %call47 = call i32 @ph7_result_value(ptr noundef %48, ptr noundef %49)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then2, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
