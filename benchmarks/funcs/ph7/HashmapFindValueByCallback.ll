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
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapFindValueByCallback(ptr noundef %pMap, ptr noundef %pNeedle, ptr noundef %pCallback, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pNeedle.addr = alloca ptr, align 8
  %pCallback.addr = alloca ptr, align 8
  %ppNode.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pVal = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pNeedle, ptr %pNeedle.addr, align 8
  store ptr %pCallback, ptr %pCallback.addr, align 8
  store ptr %ppNode, ptr %ppNode.addr, align 8
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
  %call = call i32 @PH7_MemObjInit(ptr noundef %5, ptr noundef %sResult)
  %6 = load ptr, ptr %pNeedle.addr, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %6, ptr %arrayidx, align 16
  br label %for.cond

for.cond:                                         ; preds = %if.end21, %entry
  %7 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %pEntry, align 8
  %call1 = call ptr @HashmapExtractNodeValue(ptr noundef %8)
  store ptr %call1, ptr %pVal, align 8
  %9 = load ptr, ptr %pVal, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then2, label %if.end21

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %pVal, align 8
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 1
  store ptr %10, ptr %arrayidx3, align 8
  %11 = load ptr, ptr %pMap.addr, align 8
  %pVm4 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pVm4, align 8
  %13 = load ptr, ptr %pCallback.addr, align 8
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call5 = call i32 @PH7_VmCallUserFunction(ptr noundef %12, ptr noundef %13, i32 noundef 2, ptr noundef %arraydecay, ptr noundef %sResult)
  store i32 %call5, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.then2
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %15 = load i32, ptr %iFlags, align 8
  %and = and i32 %15, 2
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.then7
  %call10 = call i32 @PH7_MemObjToInteger(ptr noundef %sResult)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then7
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %16 = load i64, ptr %x, align 8
  %conv = trunc i64 %16 to i32
  store i32 %conv, ptr %rc, align 4
  %call12 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %17 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  %18 = load ptr, ptr %ppNode.addr, align 8
  %tobool16 = icmp ne ptr %18, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then15
  %19 = load ptr, ptr %pEntry, align 8
  %20 = load ptr, ptr %ppNode.addr, align 8
  store ptr %19, ptr %20, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then15
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end11
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then2
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  %21 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %pPrev, align 8
  store ptr %22, ptr %pEntry, align 8
  %23 = load i32, ptr %n, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end18
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
