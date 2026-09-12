; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapCmpCallback6(ptr noundef %pA, ptr noundef %pB, ptr noundef %pCmpData) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pCallback = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
  %sK1 = alloca %struct.ph7_value, align 8
  %sK2 = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  %0 = load ptr, ptr %pCmpData.addr, align 8
  store ptr %0, ptr %pCallback, align 8
  %1 = load ptr, ptr %pA.addr, align 8
  %pMap = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %3, ptr noundef %sResult)
  %4 = load ptr, ptr %pA.addr, align 8
  %pMap1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMap1, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVm2, align 8
  %call3 = call i32 @PH7_MemObjInit(ptr noundef %6, ptr noundef %sK1)
  %7 = load ptr, ptr %pA.addr, align 8
  %pMap4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pMap4, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm5, align 8
  %call6 = call i32 @PH7_MemObjInit(ptr noundef %9, ptr noundef %sK2)
  %10 = load ptr, ptr %pA.addr, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %10, ptr noundef %sK1)
  %11 = load ptr, ptr %pB.addr, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %11, ptr noundef %sK2)
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %sK1, ptr %arrayidx, align 16
  %arrayidx7 = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 1
  store ptr %sK2, ptr %arrayidx7, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sK1, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %nIdx8 = getelementptr inbounds nuw %struct.ph7_value, ptr %sK2, i32 0, i32 5
  store i32 -1, ptr %nIdx8, align 8
  %12 = load ptr, ptr %pA.addr, align 8
  %pMap9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pMap9, align 8
  %pVm10 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pVm10, align 8
  %15 = load ptr, ptr %pCallback, align 8
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call11 = call i32 @PH7_VmCallUserFunction(ptr noundef %14, ptr noundef %15, i32 noundef 2, ptr noundef %arraydecay, ptr noundef %sResult)
  store i32 %call11, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %rc, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %17 = load i32, ptr %iFlags, align 8
  %and = and i32 %17, 2
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  %call14 = call i32 @PH7_MemObjToInteger(ptr noundef %sResult)
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %18 = load i64, ptr %x, align 8
  %conv = trunc i64 %18 to i32
  store i32 %conv, ptr %rc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %call16 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %call17 = call i32 @PH7_MemObjRelease(ptr noundef %sK1)
  %call18 = call i32 @PH7_MemObjRelease(ptr noundef %sK2)
  %19 = load i32, ptr %rc, align 4
  ret i32 %19
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
