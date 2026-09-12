; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

@.str.1386 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjCallClassCastMethod(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToReal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden double @MemObjRealValue(ptr noundef %pObj) #0 {
entry:
  %retval = alloca double, align 8
  %pObj.addr = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %sString = alloca %struct.SyString, align 8
  %rVal9 = alloca double, align 8
  %pMap = alloca ptr, align 8
  %n = alloca double, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %rVal32 = alloca double, align 8
  %rc = alloca i32, align 4
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags1, align 8
  store i32 %1, ptr %iFlags, align 4
  %2 = load i32, ptr %iFlags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pObj.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 0
  %4 = load double, ptr %rVal, align 8
  store double %4, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %iFlags, align 4
  %and2 = and i32 %5, 10
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %x, align 8
  %conv = sitofp i64 %7 to double
  store double %conv, ptr %retval, align 8
  br label %return

if.else5:                                         ; preds = %if.else
  %8 = load i32, ptr %iFlags, align 4
  %and6 = and i32 %8, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else18

if.then8:                                         ; preds = %if.else5
  store double 0.000000e+00, ptr %rVal9, align 8
  %9 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %10 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  store ptr %10, ptr %zString, align 8
  %11 = load ptr, ptr %pObj.addr, align 8
  %sBlob10 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob10, i32 0, i32 2
  %12 = load i32, ptr %nByte, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  store i32 %12, ptr %nByte11, align 8
  %13 = load ptr, ptr %pObj.addr, align 8
  %sBlob12 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 4
  %nByte13 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob12, i32 0, i32 2
  %14 = load i32, ptr %nByte13, align 8
  %cmp = icmp ugt i32 %14, 0
  br i1 %cmp, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then8
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %15 = load ptr, ptr %zString16, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %16 = load i32, ptr %nByte17, align 8
  %call = call i32 @SyStrToReal(ptr noundef %15, i32 noundef %16, ptr noundef %rVal9, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then8
  %17 = load double, ptr %rVal9, align 8
  store double %17, ptr %retval, align 8
  br label %return

if.else18:                                        ; preds = %if.else5
  %18 = load i32, ptr %iFlags, align 4
  %and19 = and i32 %18, 32
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else18
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

if.else22:                                        ; preds = %if.else18
  %19 = load i32, ptr %iFlags, align 4
  %and23 = and i32 %19, 64
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else22
  %20 = load ptr, ptr %pObj.addr, align 8
  %x26 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %x26, align 8
  store ptr %21, ptr %pMap, align 8
  %22 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %22, i32 0, i32 6
  %23 = load i32, ptr %nEntry, align 4
  %conv27 = uitofp i32 %23 to double
  store double %conv27, ptr %n, align 8
  %24 = load ptr, ptr %pMap, align 8
  call void @PH7_HashmapUnref(ptr noundef %24)
  %25 = load double, ptr %n, align 8
  store double %25, ptr %retval, align 8
  br label %return

if.else28:                                        ; preds = %if.else22
  %26 = load i32, ptr %iFlags, align 4
  %and29 = and i32 %26, 128
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.else47

if.then31:                                        ; preds = %if.else28
  store double 1.000000e+00, ptr %rVal32, align 8
  %27 = load ptr, ptr %pObj.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 3
  %28 = load ptr, ptr %pVm, align 8
  %call33 = call i32 @PH7_MemObjInit(ptr noundef %28, ptr noundef %sResult)
  %29 = load ptr, ptr %pObj.addr, align 8
  %pVm34 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pVm34, align 8
  %31 = load ptr, ptr %pObj.addr, align 8
  %x35 = getelementptr inbounds nuw %struct.ph7_value, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %x35, align 8
  %call36 = call i32 @MemObjCallClassCastMethod(ptr noundef %30, ptr noundef %32, ptr noundef @.str.1386, i32 noundef 9, ptr noundef %sResult)
  store i32 %call36, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %33, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.then31
  %iFlags39 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %34 = load i32, ptr %iFlags39, align 8
  %and40 = and i32 %34, 4
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %land.lhs.true
  %rVal43 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 0
  %35 = load double, ptr %rVal43, align 8
  store double %35, ptr %rVal32, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true, %if.then31
  %36 = load ptr, ptr %pObj.addr, align 8
  %x45 = getelementptr inbounds nuw %struct.ph7_value, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %x45, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %37)
  %call46 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %38 = load double, ptr %rVal32, align 8
  store double %38, ptr %retval, align 8
  br label %return

if.else47:                                        ; preds = %if.else28
  %39 = load i32, ptr %iFlags, align 4
  %and48 = and i32 %39, 256
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %if.else47
  %40 = load ptr, ptr %pObj.addr, align 8
  %x51 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %x51, align 8
  %cmp52 = icmp ne ptr %41, null
  %conv53 = zext i1 %cmp52 to i32
  %conv54 = sitofp i32 %conv53 to double
  store double %conv54, ptr %retval, align 8
  br label %return

if.end55:                                         ; preds = %if.else47
  br label %if.end56

if.end56:                                         ; preds = %if.end55
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %if.end57
  br label %if.end59

if.end59:                                         ; preds = %if.end58
  br label %if.end60

if.end60:                                         ; preds = %if.end59
  br label %if.end61

if.end61:                                         ; preds = %if.end60
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end61, %if.then50, %if.end44, %if.then25, %if.then21, %if.end, %if.then4, %if.then
  %42 = load double, ptr %retval, align 8
  ret double %42
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
