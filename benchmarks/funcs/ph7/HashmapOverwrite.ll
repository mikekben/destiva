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
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapOverwrite(ptr noundef %pSrc, ptr noundef %pDest) #0 {
entry:
  %retval = alloca i32, align 4
  %pSrc.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %1 = load ptr, ptr %pDest.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pSrc.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pFirst, align 8
  store ptr %3, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pSrc.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %nEntry, align 4
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pEntry, align 8
  %call = call ptr @HashmapExtractNodeValue(ptr noundef %7)
  store ptr %call, ptr %pVal, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %iType, align 8
  %cmp2 = icmp eq i32 %9, 2
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %10 = load ptr, ptr %pDest.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm, align 8
  %call4 = call i32 @PH7_MemObjInitFromString(ptr noundef %11, ptr noundef %sKey, ptr noundef null)
  %12 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey, i32 0, i32 1
  %13 = load ptr, ptr %pBlob, align 8
  %14 = load ptr, ptr %pEntry, align 8
  %xKey5 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey5, i32 0, i32 2
  %15 = load i32, ptr %nByte, align 8
  %call6 = call i32 @PH7_MemObjStringAppend(ptr noundef %sKey, ptr noundef %13, i32 noundef %15)
  br label %if.end10

if.else:                                          ; preds = %for.body
  %16 = load ptr, ptr %pDest.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm7, align 8
  %18 = load ptr, ptr %pEntry, align 8
  %xKey8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 2
  %19 = load i64, ptr %xKey8, align 8
  %call9 = call i32 @PH7_MemObjInitFromInt(ptr noundef %17, ptr noundef %sKey, i64 noundef %19)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3
  %20 = load ptr, ptr %pDest.addr, align 8
  %21 = load ptr, ptr %pVal, align 8
  %call11 = call i32 @PH7_HashmapInsert(ptr noundef %20, ptr noundef %sKey, ptr noundef %21)
  store i32 %call11, ptr %rc, align 4
  %call12 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %22 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %22, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  %23 = load i32, ptr %rc, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %24 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %24, i32 0, i32 7
  %25 = load ptr, ptr %pPrev, align 8
  store ptr %25, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %26 = load i32, ptr %n, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then14, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
