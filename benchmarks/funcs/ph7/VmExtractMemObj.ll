; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmSlot = type { i32, ptr }
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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }

@VmExtractMemObj.sAnnon = external hidden constant { ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmExtractMemObj(ptr noundef %pVm, ptr noundef %pName, i32 noundef %bDup, i32 noundef %bCreate) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %bDup.addr = alloca i32, align 4
  %bCreate.addr = alloca i32, align 4
  %bNullify = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %rc = alloca i32, align 4
  %zName = alloca ptr, align 8
  %sLocal = alloca %struct.VmSlot, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %bDup, ptr %bDup.addr, align 4
  store i32 %bCreate, ptr %bCreate.addr, align 4
  store i32 0, ptr %bNullify, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFrame1, align 8
  store ptr %1, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %4, i32 0, i32 8
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, 1
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParent3, align 8
  store ptr %8, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %pName.addr, align 8
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %10 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nByte, align 8
  %cmp4 = icmp ult i32 %11, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  store ptr @VmExtractMemObj.sAnnon, ptr %pName.addr, align 8
  store i32 1, ptr %bNullify, align 4
  store i32 0, ptr %bDup.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %12 = load ptr, ptr %pVm.addr, align 8
  %hSuper = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zString, align 8
  %15 = load ptr, ptr %pName.addr, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nByte5, align 8
  %call = call ptr @SyHashGet(ptr noundef %hSuper, ptr noundef %14, i32 noundef %16)
  store ptr %call, ptr %pEntry, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then7, label %if.else65

if.then7:                                         ; preds = %if.end
  %18 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %pName.addr, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %zString8, align 8
  %21 = load ptr, ptr %pName.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nByte9, align 8
  %call10 = call ptr @SyHashGet(ptr noundef %hVar, ptr noundef %20, i32 noundef %22)
  store ptr %call10, ptr %pEntry, align 8
  %23 = load ptr, ptr %pEntry, align 8
  %cmp11 = icmp eq ptr %23, null
  br i1 %cmp11, label %if.then12, label %if.else55

if.then12:                                        ; preds = %if.then7
  %24 = load ptr, ptr %pName.addr, align 8
  %zString13 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString13, align 8
  store ptr %25, ptr %zName, align 8
  %26 = load i32, ptr %bCreate.addr, align 4
  %tobool14 = icmp ne i32 %26, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  store ptr null, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.then12
  %27 = load ptr, ptr %pVm.addr, align 8
  %call17 = call ptr @PH7_ReserveMemObj(ptr noundef %27)
  store ptr %call17, ptr %pObj, align 8
  %28 = load ptr, ptr %pObj, align 8
  %cmp18 = icmp eq ptr %28, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end16
  %29 = load ptr, ptr %pObj, align 8
  %nIdx21 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %nIdx21, align 8
  store i32 %30, ptr %nIdx, align 4
  %31 = load i32, ptr %bDup.addr, align 4
  %tobool22 = icmp ne i32 %31, 0
  br i1 %tobool22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  %32 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pName.addr, align 8
  %zString24 = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zString24, align 8
  %35 = load ptr, ptr %pName.addr, align 8
  %nByte25 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte25, align 8
  %call26 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %34, i32 noundef %36)
  store ptr %call26, ptr %zName, align 8
  %37 = load ptr, ptr %zName, align 8
  %cmp27 = icmp eq ptr %37, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then23
  store ptr null, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.then23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end20
  %38 = load ptr, ptr %pFrame, align 8
  %hVar31 = getelementptr inbounds nuw %struct.VmFrame, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %zName, align 8
  %40 = load ptr, ptr %pName.addr, align 8
  %nByte32 = getelementptr inbounds nuw %struct.SyString, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nByte32, align 8
  %42 = load i32, ptr %nIdx, align 4
  %conv = zext i32 %42 to i64
  %43 = inttoptr i64 %conv to ptr
  %call33 = call i32 @SyHashInsert(ptr noundef %hVar31, ptr noundef %39, i32 noundef %41, ptr noundef %43)
  store i32 %call33, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp34 = icmp ne i32 %44, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end30
  %45 = load i32, ptr %nIdx, align 4
  %nIdx37 = getelementptr inbounds nuw %struct.VmSlot, ptr %sLocal, i32 0, i32 0
  store i32 %45, ptr %nIdx37, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmSlot, ptr %sLocal, i32 0, i32 1
  store ptr null, ptr %pUserData, align 8
  %46 = load ptr, ptr %pVm.addr, align 8
  %aFreeObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %46, i32 0, i32 9
  %call38 = call i32 @SySetPut(ptr noundef %aFreeObj, ptr noundef %sLocal)
  store ptr null, ptr %retval, align 8
  br label %return

if.end39:                                         ; preds = %if.end30
  %47 = load ptr, ptr %pFrame, align 8
  %pParent40 = getelementptr inbounds nuw %struct.VmFrame, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pParent40, align 8
  %cmp41 = icmp ne ptr %48, null
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end39
  %49 = load i32, ptr %nIdx, align 4
  %nIdx44 = getelementptr inbounds nuw %struct.VmSlot, ptr %sLocal, i32 0, i32 0
  store i32 %49, ptr %nIdx44, align 8
  %50 = load ptr, ptr %pFrame, align 8
  %sLocal45 = getelementptr inbounds nuw %struct.VmFrame, ptr %50, i32 0, i32 3
  %call46 = call i32 @SySetPut(ptr noundef %sLocal45, ptr noundef %sLocal)
  br label %if.end50

if.else:                                          ; preds = %if.end39
  %51 = load ptr, ptr %pVm.addr, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %51, i32 0, i32 51
  %52 = load ptr, ptr %pGlobal, align 8
  %53 = load ptr, ptr %pName.addr, align 8
  %zString47 = getelementptr inbounds nuw %struct.SyString, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zString47, align 8
  %55 = load ptr, ptr %pName.addr, align 8
  %nByte48 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %nByte48, align 8
  %57 = load i32, ptr %nIdx, align 4
  %call49 = call i32 @VmHashmapRefInsert(ptr noundef %52, ptr noundef %54, i32 noundef %56, i32 noundef %57)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then43
  %58 = load ptr, ptr %pVm.addr, align 8
  %59 = load i32, ptr %nIdx, align 4
  %60 = load ptr, ptr %pFrame, align 8
  %hVar51 = getelementptr inbounds nuw %struct.VmFrame, ptr %60, i32 0, i32 5
  %call52 = call ptr @SyHashLastEntry(ptr noundef %hVar51)
  %call53 = call i32 @PH7_VmRefObjInstall(ptr noundef %58, i32 noundef %59, ptr noundef %call52, ptr noundef null, i32 noundef 0)
  %61 = load i32, ptr %nIdx, align 4
  %62 = load ptr, ptr %pObj, align 8
  %nIdx54 = getelementptr inbounds nuw %struct.ph7_value, ptr %62, i32 0, i32 5
  store i32 %61, ptr %nIdx54, align 8
  br label %if.end64

if.else55:                                        ; preds = %if.then7
  %63 = load ptr, ptr %pEntry, align 8
  %pUserData56 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %pUserData56, align 8
  %65 = ptrtoint ptr %64 to i64
  %conv57 = trunc i64 %65 to i32
  store i32 %conv57, ptr %nIdx, align 4
  %66 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %nIdx, align 4
  %call58 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %67)
  store ptr %call58, ptr %pObj, align 8
  %68 = load i32, ptr %bNullify, align 4
  %tobool59 = icmp ne i32 %68, 0
  br i1 %tobool59, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %if.else55
  %69 = load ptr, ptr %pObj, align 8
  %tobool60 = icmp ne ptr %69, null
  br i1 %tobool60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %land.lhs.true
  %70 = load ptr, ptr %pObj, align 8
  %call62 = call i32 @PH7_MemObjRelease(ptr noundef %70)
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %land.lhs.true, %if.else55
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end50
  br label %if.end70

if.else65:                                        ; preds = %if.end
  %71 = load ptr, ptr %pEntry, align 8
  %pUserData66 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %71, i32 0, i32 2
  %72 = load ptr, ptr %pUserData66, align 8
  %73 = ptrtoint ptr %72 to i64
  %conv67 = trunc i64 %73 to i32
  store i32 %conv67, ptr %nIdx, align 4
  %74 = load ptr, ptr %pVm.addr, align 8
  %aMemObj68 = getelementptr inbounds nuw %struct.ph7_vm, ptr %74, i32 0, i32 6
  %75 = load i32, ptr %nIdx, align 4
  %call69 = call ptr @SySetAt(ptr noundef %aMemObj68, i32 noundef %75)
  store ptr %call69, ptr %pObj, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.end64
  %76 = load ptr, ptr %pObj, align 8
  store ptr %76, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end70, %if.then36, %if.then28, %if.then19, %if.then15
  %77 = load ptr, ptr %retval, align 8
  ret ptr %77
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapRefInsert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashLastEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveMemObj(ptr noundef) #0

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
