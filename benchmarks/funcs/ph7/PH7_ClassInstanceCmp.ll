; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

@.str.1387 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @ExtractClassAttrValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInstanceCmp(ptr noundef %pLeft, ptr noundef %pRight, i32 noundef %bStrict, i32 noundef %iNest) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %iNest.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pEntry2 = alloca ptr, align 8
  %sV1 = alloca %struct.ph7_value, align 8
  %sV2 = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %pL = alloca ptr, align 8
  %pR = alloca ptr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  store i32 %iNest, ptr %iNest.addr, align 4
  %0 = load i32, ptr %iNest.addr, align 4
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pLeft.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmThrowError(ptr noundef %2, ptr noundef null, i32 noundef 1, ptr noundef @.str.1387)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pLeft.addr, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pClass, align 8
  %5 = load ptr, ptr %pRight.addr, align 8
  %pClass1 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pClass1, align 8
  %cmp2 = icmp ne ptr %4, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i32, ptr %bStrict.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %8 = load ptr, ptr %pLeft.addr, align 8
  %9 = load ptr, ptr %pRight.addr, align 8
  %cmp6 = icmp eq ptr %8, %9
  %lnot = xor i1 %cmp6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %pLeft.addr, align 8
  %11 = load ptr, ptr %pRight.addr, align 8
  %cmp8 = icmp eq ptr %10, %11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %12 = load ptr, ptr %pLeft.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %12, i32 0, i32 2
  %call11 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  %13 = load ptr, ptr %pRight.addr, align 8
  %hAttr12 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %13, i32 0, i32 2
  %call13 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr12)
  %14 = load ptr, ptr %pLeft.addr, align 8
  %pVm14 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pVm14, align 8
  %call15 = call i32 @PH7_MemObjInit(ptr noundef %15, ptr noundef %sV1)
  %16 = load ptr, ptr %pLeft.addr, align 8
  %pVm16 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm16, align 8
  %call17 = call i32 @PH7_MemObjInit(ptr noundef %17, ptr noundef %sV2)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sV2, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %nIdx18 = getelementptr inbounds nuw %struct.ph7_value, ptr %sV1, i32 0, i32 5
  store i32 -1, ptr %nIdx18, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end44, %if.end10
  %18 = load ptr, ptr %pLeft.addr, align 8
  %hAttr19 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %18, i32 0, i32 2
  %call20 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr19)
  store ptr %call20, ptr %pEntry, align 8
  %cmp21 = icmp ne ptr %call20, null
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load ptr, ptr %pRight.addr, align 8
  %hAttr22 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %19, i32 0, i32 2
  %call23 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr22)
  store ptr %call23, ptr %pEntry2, align 8
  %cmp24 = icmp ne ptr %call23, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pUserData, align 8
  store ptr %22, ptr %p1, align 8
  %23 = load ptr, ptr %pEntry2, align 8
  %pUserData25 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pUserData25, align 8
  store ptr %24, ptr %p2, align 8
  %25 = load ptr, ptr %p1, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %iFlags, align 8
  %and = and i32 %27, 3
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %if.then27, label %if.end44

if.then27:                                        ; preds = %while.body
  %28 = load ptr, ptr %pLeft.addr, align 8
  %pVm28 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pVm28, align 8
  %30 = load ptr, ptr %p1, align 8
  %call29 = call ptr @ExtractClassAttrValue(ptr noundef %29, ptr noundef %30)
  store ptr %call29, ptr %pL, align 8
  %31 = load ptr, ptr %pRight.addr, align 8
  %pVm30 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pVm30, align 8
  %33 = load ptr, ptr %p2, align 8
  %call31 = call ptr @ExtractClassAttrValue(ptr noundef %32, ptr noundef %33)
  store ptr %call31, ptr %pR, align 8
  %34 = load ptr, ptr %pL, align 8
  %tobool32 = icmp ne ptr %34, null
  br i1 %tobool32, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.then27
  %35 = load ptr, ptr %pR, align 8
  %tobool33 = icmp ne ptr %35, null
  br i1 %tobool33, label %if.then34, label %if.end43

if.then34:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %pL, align 8
  %call35 = call i32 @PH7_MemObjLoad(ptr noundef %36, ptr noundef %sV1)
  %37 = load ptr, ptr %pR, align 8
  %call36 = call i32 @PH7_MemObjLoad(ptr noundef %37, ptr noundef %sV2)
  %38 = load i32, ptr %bStrict.addr, align 4
  %39 = load i32, ptr %iNest.addr, align 4
  %add = add nsw i32 %39, 1
  %call37 = call i32 @PH7_MemObjCmp(ptr noundef %sV1, ptr noundef %sV2, i32 noundef %38, i32 noundef %add)
  store i32 %call37, ptr %rc, align 4
  %call38 = call i32 @PH7_MemObjRelease(ptr noundef %sV1)
  %call39 = call i32 @PH7_MemObjRelease(ptr noundef %sV2)
  %40 = load i32, ptr %rc, align 4
  %cmp40 = icmp ne i32 %40, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then34
  %41 = load i32, ptr %rc, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then34
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %land.lhs.true, %if.then27
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then41, %if.then9, %if.then5, %if.then3, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
