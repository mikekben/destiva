; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

@.str.100 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmIsCallable(ptr noundef %pVm, ptr noundef %pValue, i32 noundef %CallInvoke) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %CallInvoke.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %pThis = alloca ptr, align 8
  %pMethod = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %pMap = alloca ptr, align 8
  %pClass23 = alloca ptr, align 8
  %pV = alloca ptr, align 8
  %pMethod30 = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 %CallInvoke, ptr %CallInvoke.addr, align 4
  store i32 0, ptr %res, align 4
  %0 = load ptr, ptr %pValue.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pValue.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %x, align 8
  store ptr %3, ptr %pThis, align 8
  %4 = load ptr, ptr %pThis, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pClass, align 8
  %call = call ptr @PH7_ClassExtractMethod(ptr noundef %5, ptr noundef @.str.100, i32 noundef 8)
  store ptr %call, ptr %pMethod, align 8
  %6 = load ptr, ptr %pMethod, align 8
  %tobool1 = icmp ne ptr %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, ptr %CallInvoke.addr, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then3, label %if.end14

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pVm.addr, align 8
  %call4 = call i32 @PH7_MemObjInit(ptr noundef %8, ptr noundef %sResult)
  %9 = load ptr, ptr %pVm.addr, align 8
  %10 = load ptr, ptr %pThis, align 8
  %11 = load ptr, ptr %pMethod, align 8
  %call5 = call i32 @PH7_VmCallClassMethod(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %sResult, i32 noundef 0, ptr noundef null)
  store i32 %call5, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %if.then3
  %iFlags7 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %13 = load i32, ptr %iFlags7, align 8
  %and8 = and i32 %13, 10
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %land.lhs.true6
  %x11 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %14 = load i64, ptr %x11, align 8
  %cmp12 = icmp ne i64 %14, 0
  %conv = zext i1 %cmp12 to i32
  store i32 %conv, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %land.lhs.true6, %if.then3
  %call13 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end71

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %pValue.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iFlags15, align 8
  %and16 = and i32 %16, 64
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.else55

if.then18:                                        ; preds = %if.else
  %17 = load ptr, ptr %pValue.addr, align 8
  %x19 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %x19, align 8
  store ptr %18, ptr %pMap, align 8
  %19 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry, align 4
  %cmp20 = icmp ugt i32 %20, 1
  br i1 %cmp20, label %if.then22, label %if.end54

if.then22:                                        ; preds = %if.then18
  %21 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pFirst, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %nValIdx, align 8
  %call24 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %24)
  store ptr %call24, ptr %pV, align 8
  %25 = load ptr, ptr %pV, align 8
  %tobool25 = icmp ne ptr %25, null
  br i1 %tobool25, label %if.then26, label %if.end53

if.then26:                                        ; preds = %if.then22
  %26 = load ptr, ptr %pVm.addr, align 8
  %27 = load ptr, ptr %pV, align 8
  %call27 = call ptr @VmExtractClassFromValue(ptr noundef %26, ptr noundef %27)
  store ptr %call27, ptr %pClass23, align 8
  %28 = load ptr, ptr %pClass23, align 8
  %tobool28 = icmp ne ptr %28, null
  br i1 %tobool28, label %if.then29, label %if.end52

if.then29:                                        ; preds = %if.then26
  %29 = load ptr, ptr %pVm.addr, align 8
  %aMemObj31 = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %pMap, align 8
  %pFirst32 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %30, i32 0, i32 2
  %31 = load ptr, ptr %pFirst32, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 7
  %32 = load ptr, ptr %pPrev, align 8
  %nValIdx33 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %nValIdx33, align 8
  %call34 = call ptr @SySetAt(ptr noundef %aMemObj31, i32 noundef %33)
  store ptr %call34, ptr %pV, align 8
  %34 = load ptr, ptr %pV, align 8
  %tobool35 = icmp ne ptr %34, null
  br i1 %tobool35, label %land.lhs.true36, label %if.end51

land.lhs.true36:                                  ; preds = %if.then29
  %35 = load ptr, ptr %pV, align 8
  %iFlags37 = getelementptr inbounds nuw %struct.ph7_value, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %iFlags37, align 8
  %and38 = and i32 %36, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end51

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %37 = load ptr, ptr %pV, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %37, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %38 = load i32, ptr %nByte, align 8
  %cmp41 = icmp ugt i32 %38, 0
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %land.lhs.true40
  %39 = load ptr, ptr %pClass23, align 8
  %40 = load ptr, ptr %pV, align 8
  %sBlob44 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob44, i32 0, i32 1
  %41 = load ptr, ptr %pBlob, align 8
  %42 = load ptr, ptr %pV, align 8
  %sBlob45 = getelementptr inbounds nuw %struct.ph7_value, ptr %42, i32 0, i32 4
  %nByte46 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob45, i32 0, i32 2
  %43 = load i32, ptr %nByte46, align 8
  %call47 = call ptr @PH7_ClassExtractMethod(ptr noundef %39, ptr noundef %41, i32 noundef %43)
  store ptr %call47, ptr %pMethod30, align 8
  %44 = load ptr, ptr %pMethod30, align 8
  %tobool48 = icmp ne ptr %44, null
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then43
  store i32 1, ptr %res, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.then43
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %land.lhs.true40, %land.lhs.true36, %if.then29
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then26
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then22
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then18
  br label %if.end70

if.else55:                                        ; preds = %if.else
  %45 = load ptr, ptr %pValue.addr, align 8
  %iFlags56 = getelementptr inbounds nuw %struct.ph7_value, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %iFlags56, align 8
  %and57 = and i32 %46, 1
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %if.then59, label %if.end69

if.then59:                                        ; preds = %if.else55
  %47 = load ptr, ptr %pValue.addr, align 8
  %call60 = call ptr @ph7_value_to_string(ptr noundef %47, ptr noundef %nLen)
  store ptr %call60, ptr %zName, align 8
  %48 = load ptr, ptr %pVm.addr, align 8
  %hFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %zName, align 8
  %50 = load i32, ptr %nLen, align 4
  %call61 = call ptr @SyHashGet(ptr noundef %hFunction, ptr noundef %49, i32 noundef %50)
  %cmp62 = icmp ne ptr %call61, null
  br i1 %cmp62, label %if.then67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then59
  %51 = load ptr, ptr %pVm.addr, align 8
  %hHostFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %zName, align 8
  %53 = load i32, ptr %nLen, align 4
  %call64 = call ptr @SyHashGet(ptr noundef %hHostFunction, ptr noundef %52, i32 noundef %53)
  %cmp65 = icmp ne ptr %call64, null
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %lor.lhs.false, %if.then59
  store i32 1, ptr %res, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %lor.lhs.false
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.else55
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end54
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end14
  %54 = load i32, ptr %res, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
