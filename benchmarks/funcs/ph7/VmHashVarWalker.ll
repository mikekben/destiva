; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHashVarWalker(ptr noundef %pEntry, ptr noundef %pUserData) #0 {
entry:
  %pEntry.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %sName = alloca %struct.SyString, align 8
  %sKey = alloca %struct.ph7_value, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pArray, align 8
  %1 = load ptr, ptr %pArray, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 3
  %2 = load ptr, ptr %pVm1, align 8
  store ptr %2, ptr %pVm, align 8
  %3 = load ptr, ptr %pEntry.addr, align 8
  %pUserData2 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pUserData2, align 8
  %5 = ptrtoint ptr %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %nIdx, align 4
  %6 = load ptr, ptr %pVm, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %nIdx, align 4
  %call = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %7)
  store ptr %call, ptr %pObj, align 8
  %8 = load ptr, ptr %pObj, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pObj, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %iFlags, align 8
  %and = and i32 %10, 64
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %11 = load ptr, ptr %pObj, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %x, align 8
  %13 = load ptr, ptr %pVm, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 51
  %14 = load ptr, ptr %pGlobal, align 8
  %cmp4 = icmp ne ptr %12, %14
  br i1 %cmp4, label %if.then6, label %if.end14

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  %15 = load ptr, ptr %pEntry.addr, align 8
  %nKeyLen = getelementptr inbounds nuw %struct.SyHashEntry, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nKeyLen, align 8
  %cmp7 = icmp ugt i32 %16, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %17 = load ptr, ptr %pEntry.addr, align 8
  %pKey = getelementptr inbounds nuw %struct.SyHashEntry, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pKey, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %18, ptr %zString, align 8
  %19 = load ptr, ptr %pEntry.addr, align 8
  %nKeyLen10 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nKeyLen10, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %20, ptr %nByte, align 8
  %21 = load ptr, ptr %pVm, align 8
  %call11 = call i32 @PH7_MemObjInitFromString(ptr noundef %21, ptr noundef %sKey, ptr noundef %sName)
  %22 = load ptr, ptr %pArray, align 8
  %23 = load ptr, ptr %pObj, align 8
  %call12 = call i32 @ph7_array_add_elem(ptr noundef %22, ptr noundef %sKey, ptr noundef %23)
  %call13 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  ret i32 0
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
