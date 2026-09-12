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
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapCmpCallback4(ptr noundef %pA, ptr noundef %pB, ptr noundef %pCmpData) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pCallback = alloca ptr, align 8
  %pV1 = alloca ptr, align 8
  %pV2 = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
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
  %call1 = call ptr @HashmapExtractNodeValue(ptr noundef %4)
  store ptr %call1, ptr %pV1, align 8
  %5 = load ptr, ptr %pB.addr, align 8
  %call2 = call ptr @HashmapExtractNodeValue(ptr noundef %5)
  store ptr %call2, ptr %pV2, align 8
  %6 = load ptr, ptr %pV1, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %6, ptr %arrayidx, align 16
  %7 = load ptr, ptr %pV2, align 8
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 1
  store ptr %7, ptr %arrayidx3, align 8
  %8 = load ptr, ptr %pA.addr, align 8
  %pMap4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pMap4, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm5, align 8
  %11 = load ptr, ptr %pCallback, align 8
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call6 = call i32 @PH7_VmCallUserFunction(ptr noundef %10, ptr noundef %11, i32 noundef 2, ptr noundef %arraydecay, ptr noundef %sResult)
  store i32 %call6, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %rc, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %13 = load i32, ptr %iFlags, align 8
  %and = and i32 %13, 2
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %call9 = call i32 @PH7_MemObjToInteger(ptr noundef %sResult)
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %14 = load i64, ptr %x, align 8
  %conv = trunc i64 %14 to i32
  store i32 %conv, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %call11 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
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
