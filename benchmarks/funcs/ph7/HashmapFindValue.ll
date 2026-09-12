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
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapFindValue(ptr noundef %pMap, ptr noundef %pNeedle, ptr noundef %ppNode, i32 noundef %bStrict) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pNeedle.addr = alloca ptr, align 8
  %ppNode.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %sVal = alloca %struct.ph7_value, align 8
  %pVal = alloca ptr, align 8
  %sNeedle = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %iF1 = alloca i32, align 4
  %iF2 = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pNeedle, ptr %pNeedle.addr, align 8
  store ptr %ppNode, ptr %ppNode.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %pEntry, align 8
  %2 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nEntry, align 4
  store i32 %3, ptr %n, align 4
  %4 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %5, ptr noundef %sVal)
  %6 = load ptr, ptr %pMap.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVm1, align 8
  %call2 = call i32 @PH7_MemObjInit(ptr noundef %7, ptr noundef %sNeedle)
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %8 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %9 = load ptr, ptr %pEntry, align 8
  %call3 = call ptr @HashmapExtractNodeValue(ptr noundef %9)
  store ptr %call3, ptr %pVal, align 8
  %10 = load ptr, ptr %pVal, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then4, label %if.end30

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %pVal, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %iFlags, align 8
  %13 = load ptr, ptr %pNeedle.addr, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iFlags5, align 8
  %or = or i32 %12, %14
  %and = and i32 %or, 32
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then4
  %15 = load ptr, ptr %pVal, align 8
  %iFlags8 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iFlags8, align 8
  %and9 = and i32 %16, -1025
  store i32 %and9, ptr %iF1, align 4
  %17 = load ptr, ptr %pNeedle.addr, align 8
  %iFlags10 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %iFlags10, align 8
  %and11 = and i32 %18, -1025
  store i32 %and11, ptr %iF2, align 4
  %19 = load i32, ptr %iF1, align 4
  %20 = load i32, ptr %iF2, align 4
  %cmp12 = icmp eq i32 %19, %20
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.then7
  %21 = load ptr, ptr %ppNode.addr, align 8
  %tobool14 = icmp ne ptr %21, null
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then13
  %22 = load ptr, ptr %pEntry, align 8
  %23 = load ptr, ptr %ppNode.addr, align 8
  store ptr %22, ptr %23, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then7
  br label %if.end29

if.else:                                          ; preds = %if.then4
  %24 = load ptr, ptr %pVal, align 8
  %call18 = call i32 @PH7_MemObjLoad(ptr noundef %24, ptr noundef %sVal)
  %25 = load ptr, ptr %pNeedle.addr, align 8
  %call19 = call i32 @PH7_MemObjLoad(ptr noundef %25, ptr noundef %sNeedle)
  %26 = load i32, ptr %bStrict.addr, align 4
  %call20 = call i32 @PH7_MemObjCmp(ptr noundef %sNeedle, ptr noundef %sVal, i32 noundef %26, i32 noundef 0)
  store i32 %call20, ptr %rc, align 4
  %call21 = call i32 @PH7_MemObjRelease(ptr noundef %sVal)
  %call22 = call i32 @PH7_MemObjRelease(ptr noundef %sNeedle)
  %27 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %27, 0
  br i1 %cmp23, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.else
  %28 = load ptr, ptr %ppNode.addr, align 8
  %tobool25 = icmp ne ptr %28, null
  br i1 %tobool25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then24
  %29 = load ptr, ptr %pEntry, align 8
  %30 = load ptr, ptr %ppNode.addr, align 8
  store ptr %29, ptr %30, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.then24
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end
  %31 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %pPrev, align 8
  store ptr %32, ptr %pEntry, align 8
  %33 = load i32, ptr %n, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end27, %if.end16
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
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
