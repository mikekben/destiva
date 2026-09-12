; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @HashmapCount(ptr noundef %pMap, i32 noundef %bRecursive, i32 noundef %iRecCount) #0 {
entry:
  %retval = alloca i64, align 8
  %pMap.addr = alloca ptr, align 8
  %bRecursive.addr = alloca i32, align 4
  %iRecCount.addr = alloca i32, align 4
  %iCount = alloca i64, align 8
  %pEntry = alloca ptr, align 8
  %pElem = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store i32 %bRecursive, ptr %bRecursive.addr, align 4
  store i32 %iRecCount, ptr %iRecCount.addr, align 4
  store i64 0, ptr %iCount, align 8
  %0 = load i32, ptr %bRecursive.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %nEntry, align 4
  %conv = zext i32 %2 to i64
  store i64 %conv, ptr %iCount, align 8
  br label %if.end19

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pMap.addr, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pLast, align 8
  store ptr %4, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %if.else
  %5 = load i32, ptr %n, align 4
  %6 = load ptr, ptr %pMap.addr, align 8
  %nEntry1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %nEntry1, align 4
  %cmp = icmp uge i32 %5, %7
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %pEntry, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nValIdx, align 8
  %call = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %11)
  store ptr %call, ptr %pElem, align 8
  %12 = load ptr, ptr %pElem, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.end
  %13 = load ptr, ptr %pElem, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iFlags, align 8
  %and = and i32 %14, 64
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %if.then5
  %15 = load i32, ptr %iRecCount.addr, align 4
  %cmp8 = icmp sgt i32 %15, 31
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %16 = load i64, ptr %iCount, align 8
  store i64 %16, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.then7
  %17 = load i32, ptr %iRecCount.addr, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %iRecCount.addr, align 4
  %18 = load ptr, ptr %pElem, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %x, align 8
  %20 = load i32, ptr %iRecCount.addr, align 4
  %call12 = call i64 @HashmapCount(ptr noundef %19, i32 noundef 1, i32 noundef %20)
  %21 = load i64, ptr %iCount, align 8
  %add = add nsw i64 %21, %call12
  store i64 %add, ptr %iCount, align 8
  %22 = load i32, ptr %iRecCount.addr, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %iRecCount.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %23 = load ptr, ptr %pEntry, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %pNext, align 8
  store ptr %24, ptr %pEntry, align 8
  %25 = load i32, ptr %n, align 4
  %inc15 = add i32 %25, 1
  store i32 %inc15, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then3
  %26 = load ptr, ptr %pMap.addr, align 8
  %nEntry16 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %nEntry16, align 4
  %conv17 = zext i32 %27 to i64
  %28 = load i64, ptr %iCount, align 8
  %add18 = add nsw i64 %28, %conv17
  store i64 %add18, ptr %iCount, align 8
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.then
  %29 = load i64, ptr %iCount, align 8
  store i64 %29, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end19, %if.then10
  %30 = load i64, ptr %retval, align 8
  ret i64 %30
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
