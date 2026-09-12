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
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_search(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %sNeedle = alloca %struct.ph7_value, align 8
  %pMap = alloca ptr, align 8
  %sVal = alloca %struct.ph7_value, align 8
  %bStrict = alloca i32, align 4
  %n = alloca i32, align 4
  %rc = alloca i32, align 4
  %pKey = alloca ptr, align 8
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
  store i32 0, ptr %bStrict, align 4
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
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
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %5, 2
  br i1 %cmp5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 2
  %7 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_is_bool(ptr noundef %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %8, i64 2
  %9 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @ph7_value_to_bool(ptr noundef %9)
  store i32 %call11, ptr %bStrict, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %if.end4
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx13, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %x, align 8
  store ptr %12, ptr %pMap, align 8
  %13 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVm, align 8
  %call14 = call i32 @PH7_MemObjInit(ptr noundef %14, ptr noundef %sVal)
  %15 = load ptr, ptr %pMap, align 8
  %pVm15 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pVm15, align 8
  %call16 = call i32 @PH7_MemObjInit(ptr noundef %16, ptr noundef %sNeedle)
  %17 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pFirst, align 8
  store ptr %18, ptr %pEntry, align 8
  %19 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry, align 4
  store i32 %20, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %if.end12
  %21 = load i32, ptr %n, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %for.cond
  br label %for.end

if.end19:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pEntry, align 8
  %call20 = call ptr @HashmapExtractNodeValue(ptr noundef %22)
  store ptr %call20, ptr %pVal, align 8
  %23 = load ptr, ptr %pVal, align 8
  %tobool21 = icmp ne ptr %23, null
  br i1 %tobool21, label %if.then22, label %if.end38

if.then22:                                        ; preds = %if.end19
  %24 = load ptr, ptr %pVal, align 8
  %call23 = call i32 @PH7_MemObjLoad(ptr noundef %24, ptr noundef %sVal)
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @PH7_MemObjLoad(ptr noundef %26, ptr noundef %sNeedle)
  %27 = load i32, ptr %bStrict, align 4
  %call26 = call i32 @PH7_MemObjCmp(ptr noundef %sNeedle, ptr noundef %sVal, i32 noundef %27, i32 noundef 0)
  store i32 %call26, ptr %rc, align 4
  %call27 = call i32 @PH7_MemObjRelease(ptr noundef %sVal)
  %call28 = call i32 @PH7_MemObjRelease(ptr noundef %sNeedle)
  %28 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %28, 0
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.then22
  %29 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %iType, align 8
  %cmp31 = icmp eq i32 %30, 1
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then30
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %32, i32 0, i32 2
  %33 = load i64, ptr %xKey, align 8
  %call33 = call i32 @ph7_result_int64(ptr noundef %31, i64 noundef %33)
  br label %if.end36

if.else:                                          ; preds = %if.then30
  %34 = load ptr, ptr %pEntry, align 8
  %xKey34 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %34, i32 0, i32 2
  store ptr %xKey34, ptr %pKey, align 8
  %35 = load ptr, ptr %pCtx.addr, align 8
  %36 = load ptr, ptr %pKey, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pBlob, align 8
  %38 = load ptr, ptr %pKey, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %nByte, align 8
  %call35 = call i32 @ph7_result_string(ptr noundef %35, ptr noundef %37, i32 noundef %39)
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then32
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then22
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end19
  %40 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %40, i32 0, i32 7
  %41 = load ptr, ptr %pPrev, align 8
  store ptr %41, ptr %pEntry, align 8
  %42 = load i32, ptr %n, align 4
  %dec = add i32 %42, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then18
  %43 = load ptr, ptr %pCtx.addr, align 8
  %call39 = call i32 @ph7_result_bool(ptr noundef %43, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end36, %if.then2, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
