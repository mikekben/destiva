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

@.str.1121 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1122 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_intkey_elem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_each(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
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
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
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
  %pCur6 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pCur6, align 8
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pMap, align 8
  %pCur11 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pCur11, align 8
  store ptr %12, ptr %pCur, align 8
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call ptr @ph7_context_new_array(ptr noundef %13)
  store ptr %call12, ptr %pArray, align 8
  %14 = load ptr, ptr %pArray, align 8
  %cmp13 = icmp eq ptr %14, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %15, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %16 = load ptr, ptr %pCur, align 8
  %call17 = call ptr @HashmapExtractNodeValue(ptr noundef %16)
  store ptr %call17, ptr %pVal, align 8
  %17 = load ptr, ptr %pArray, align 8
  %18 = load ptr, ptr %pVal, align 8
  %call18 = call i32 @ph7_array_add_intkey_elem(ptr noundef %17, i32 noundef 1, ptr noundef %18)
  %19 = load ptr, ptr %pArray, align 8
  %20 = load ptr, ptr %pVal, align 8
  %call19 = call i32 @ph7_array_add_strkey_elem(ptr noundef %19, ptr noundef @.str.1122, ptr noundef %20)
  %21 = load ptr, ptr %pCur, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %iType, align 8
  %cmp20 = icmp eq i32 %22, 1
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  %23 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pVm, align 8
  %25 = load ptr, ptr %pCur, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %xKey, align 8
  %call22 = call i32 @PH7_MemObjInitFromInt(ptr noundef %24, ptr noundef %sKey, i64 noundef %26)
  br label %if.end28

if.else:                                          ; preds = %if.end16
  %27 = load ptr, ptr %pMap, align 8
  %pVm23 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pVm23, align 8
  %call24 = call i32 @PH7_MemObjInitFromString(ptr noundef %28, ptr noundef %sKey, ptr noundef null)
  %29 = load ptr, ptr %pCur, align 8
  %xKey25 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey25, i32 0, i32 1
  %30 = load ptr, ptr %pBlob, align 8
  %31 = load ptr, ptr %pCur, align 8
  %xKey26 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey26, i32 0, i32 2
  %32 = load i32, ptr %nByte, align 8
  %call27 = call i32 @PH7_MemObjStringAppend(ptr noundef %sKey, ptr noundef %30, i32 noundef %32)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %33 = load ptr, ptr %pArray, align 8
  %call29 = call i32 @ph7_array_add_intkey_elem(ptr noundef %33, i32 noundef 0, ptr noundef %sKey)
  %34 = load ptr, ptr %pArray, align 8
  %call30 = call i32 @ph7_array_add_strkey_elem(ptr noundef %34, ptr noundef @.str.1121, ptr noundef %sKey)
  %call31 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %35 = load ptr, ptr %pCur, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %pPrev, align 8
  %37 = load ptr, ptr %pMap, align 8
  %pCur32 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 4
  store ptr %36, ptr %pCur32, align 8
  %38 = load ptr, ptr %pCtx.addr, align 8
  %39 = load ptr, ptr %pArray, align 8
  %call33 = call i32 @ph7_result_value(ptr noundef %38, ptr noundef %39)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then14, %if.then8, %if.then2, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
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
