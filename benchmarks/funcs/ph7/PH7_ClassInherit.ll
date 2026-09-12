; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.364 = external hidden unnamed_addr constant [62 x i8], align 1
@.str.365 = external hidden unnamed_addr constant [62 x i8], align 1
@.str.366 = external hidden unnamed_addr constant [64 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInherit(ptr noundef %pGen, ptr noundef %pSub, ptr noundef %pBase) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pSub.addr = alloca ptr, align 8
  %pBase.addr = alloca ptr, align 8
  %pMeth = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pSub, ptr %pSub.addr, align 8
  store ptr %pBase, ptr %pBase.addr, align 8
  %0 = load ptr, ptr %pBase.addr, align 8
  %hDerived = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pSub.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %1, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pSub.addr, align 8
  %sName1 = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName1, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %5 = load ptr, ptr %pSub.addr, align 8
  %call = call i32 @SyHashInsert(ptr noundef %hDerived, ptr noundef %2, i32 noundef %4, ptr noundef %5)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %rc, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pBase.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %8, i32 0, i32 4
  %call2 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %if.end22, %if.end
  %9 = load ptr, ptr %pBase.addr, align 8
  %hAttr3 = getelementptr inbounds nuw %struct.ph7_class, ptr %9, i32 0, i32 4
  %call4 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr3)
  store ptr %call4, ptr %pEntry, align 8
  %cmp5 = icmp ne ptr %call4, null
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pUserData, align 8
  store ptr %11, ptr %pAttr, align 8
  %12 = load ptr, ptr %pAttr, align 8
  %sName6 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %12, i32 0, i32 0
  store ptr %sName6, ptr %pName, align 8
  %13 = load ptr, ptr %pSub.addr, align 8
  %hAttr7 = getelementptr inbounds nuw %struct.ph7_class, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pName, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %zString8, align 8
  %16 = load ptr, ptr %pName, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nByte9, align 8
  %call10 = call ptr @SyHashGet(ptr noundef %hAttr7, ptr noundef %15, i32 noundef %17)
  store ptr %call10, ptr %pEntry, align 8
  %cmp11 = icmp ne ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end23

if.then12:                                        ; preds = %while.body
  %18 = load ptr, ptr %pAttr, align 8
  %iProtection = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %iProtection, align 4
  %cmp13 = icmp eq i32 %19, 3
  br i1 %cmp13, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.then12
  %20 = load ptr, ptr %pEntry, align 8
  %pUserData14 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %pUserData14, align 8
  %iProtection15 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %iProtection15, align 4
  %cmp16 = icmp ne i32 %22, 1
  br i1 %cmp16, label %if.then17, label %if.end22

if.then17:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %pGen.addr, align 8
  %24 = load ptr, ptr %pEntry, align 8
  %pUserData18 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %pUserData18, align 8
  %nLine = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %25, i32 0, i32 5
  %26 = load i32, ptr %nLine, align 4
  %27 = load ptr, ptr %pBase.addr, align 8
  %sName19 = getelementptr inbounds nuw %struct.ph7_class, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pName, align 8
  %29 = load ptr, ptr %pSub.addr, align 8
  %sName20 = getelementptr inbounds nuw %struct.ph7_class, ptr %29, i32 0, i32 2
  %call21 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %23, i32 noundef 2, i32 noundef %26, ptr noundef @.str.364, ptr noundef %sName19, ptr noundef %28, ptr noundef %sName20)
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true, %if.then12
  br label %while.cond, !llvm.loop !6

if.end23:                                         ; preds = %while.body
  %30 = load ptr, ptr %pAttr, align 8
  %iProtection24 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %iProtection24, align 4
  %cmp25 = icmp ne i32 %31, 3
  br i1 %cmp25, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.end23
  %32 = load ptr, ptr %pSub.addr, align 8
  %hAttr27 = getelementptr inbounds nuw %struct.ph7_class, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %pName, align 8
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zString28, align 8
  %35 = load ptr, ptr %pName, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte29, align 8
  %37 = load ptr, ptr %pAttr, align 8
  %call30 = call i32 @SyHashInsert(ptr noundef %hAttr27, ptr noundef %34, i32 noundef %36, ptr noundef %37)
  store i32 %call30, ptr %rc, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp31 = icmp ne i32 %38, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then26
  %39 = load i32, ptr %rc, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.then26
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end23
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %40 = load ptr, ptr %pBase.addr, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %40, i32 0, i32 5
  %call35 = call i32 @SyHashResetLoopCursor(ptr noundef %hMethod)
  br label %while.cond36

while.cond36:                                     ; preds = %if.end79, %if.then62, %if.end58, %while.end
  %41 = load ptr, ptr %pBase.addr, align 8
  %hMethod37 = getelementptr inbounds nuw %struct.ph7_class, ptr %41, i32 0, i32 5
  %call38 = call ptr @SyHashGetNextEntry(ptr noundef %hMethod37)
  store ptr %call38, ptr %pEntry, align 8
  %cmp39 = icmp ne ptr %call38, null
  br i1 %cmp39, label %while.body40, label %while.end80

while.body40:                                     ; preds = %while.cond36
  %42 = load ptr, ptr %pEntry, align 8
  %pUserData41 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pUserData41, align 8
  store ptr %43, ptr %pMeth, align 8
  %44 = load ptr, ptr %pMeth, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %44, i32 0, i32 0
  %sName42 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc, i32 0, i32 2
  store ptr %sName42, ptr %pName, align 8
  %45 = load ptr, ptr %pSub.addr, align 8
  %hMethod43 = getelementptr inbounds nuw %struct.ph7_class, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %pName, align 8
  %zString44 = getelementptr inbounds nuw %struct.SyString, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %zString44, align 8
  %48 = load ptr, ptr %pName, align 8
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %nByte45, align 8
  %call46 = call ptr @SyHashGet(ptr noundef %hMethod43, ptr noundef %47, i32 noundef %49)
  store ptr %call46, ptr %pEntry, align 8
  %cmp47 = icmp ne ptr %call46, null
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %while.body40
  %50 = load ptr, ptr %pMeth, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_method, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %iFlags, align 4
  %and = and i32 %51, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then49, label %if.end58

if.then49:                                        ; preds = %if.then48
  %52 = load ptr, ptr %pGen.addr, align 8
  %53 = load ptr, ptr %pEntry, align 8
  %pUserData50 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %pUserData50, align 8
  %nLine51 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %nLine51, align 4
  %56 = load ptr, ptr %pBase.addr, align 8
  %sName52 = getelementptr inbounds nuw %struct.ph7_class, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %pName, align 8
  %58 = load ptr, ptr %pSub.addr, align 8
  %sName53 = getelementptr inbounds nuw %struct.ph7_class, ptr %58, i32 0, i32 2
  %call54 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %52, i32 noundef 1, i32 noundef %55, ptr noundef @.str.365, ptr noundef %sName52, ptr noundef %57, ptr noundef %sName53)
  store i32 %call54, ptr %rc, align 4
  %59 = load i32, ptr %rc, align 4
  %cmp55 = icmp eq i32 %59, -10
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then49
  store i32 -10, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then49
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then48
  br label %while.cond36, !llvm.loop !8

if.else:                                          ; preds = %while.body40
  %60 = load ptr, ptr %pMeth, align 8
  %iFlags59 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %iFlags59, align 4
  %and60 = and i32 %61, 4
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then62, label %if.end67

if.then62:                                        ; preds = %if.else
  %62 = load ptr, ptr %pGen.addr, align 8
  %63 = load ptr, ptr %pMeth, align 8
  %nLine63 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %nLine63, align 4
  %65 = load ptr, ptr %pBase.addr, align 8
  %sName64 = getelementptr inbounds nuw %struct.ph7_class, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %pName, align 8
  %67 = load ptr, ptr %pSub.addr, align 8
  %sName65 = getelementptr inbounds nuw %struct.ph7_class, ptr %67, i32 0, i32 2
  %call66 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %62, i32 noundef 2, i32 noundef %64, ptr noundef @.str.366, ptr noundef %sName64, ptr noundef %66, ptr noundef %sName65)
  br label %while.cond36, !llvm.loop !8

if.end67:                                         ; preds = %if.else
  br label %if.end68

if.end68:                                         ; preds = %if.end67
  %68 = load ptr, ptr %pMeth, align 8
  %iProtection69 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %68, i32 0, i32 2
  %69 = load i32, ptr %iProtection69, align 8
  %cmp70 = icmp ne i32 %69, 3
  br i1 %cmp70, label %if.then71, label %if.end79

if.then71:                                        ; preds = %if.end68
  %70 = load ptr, ptr %pSub.addr, align 8
  %hMethod72 = getelementptr inbounds nuw %struct.ph7_class, ptr %70, i32 0, i32 5
  %71 = load ptr, ptr %pName, align 8
  %zString73 = getelementptr inbounds nuw %struct.SyString, ptr %71, i32 0, i32 0
  %72 = load ptr, ptr %zString73, align 8
  %73 = load ptr, ptr %pName, align 8
  %nByte74 = getelementptr inbounds nuw %struct.SyString, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nByte74, align 8
  %75 = load ptr, ptr %pMeth, align 8
  %call75 = call i32 @SyHashInsert(ptr noundef %hMethod72, ptr noundef %72, i32 noundef %74, ptr noundef %75)
  store i32 %call75, ptr %rc, align 4
  %76 = load i32, ptr %rc, align 4
  %cmp76 = icmp ne i32 %76, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then71
  %77 = load i32, ptr %rc, align 4
  store i32 %77, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.then71
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end68
  br label %while.cond36, !llvm.loop !8

while.end80:                                      ; preds = %while.cond36
  %78 = load ptr, ptr %pBase.addr, align 8
  %79 = load ptr, ptr %pSub.addr, align 8
  %pBase81 = getelementptr inbounds nuw %struct.ph7_class, ptr %79, i32 0, i32 0
  store ptr %78, ptr %pBase81, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end80, %if.then77, %if.then56, %if.then32, %if.then
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
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
!8 = distinct !{!8, !7}
