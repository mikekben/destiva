; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.522 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.523 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.524 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.525 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.526 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.527 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.528 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.529 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @MemObjStringValue(ptr noundef %pOut, ptr noundef %pObj, i8 noundef zeroext %bStrictBool) #0 {
entry:
  %pOut.addr = alloca ptr, align 8
  %pObj.addr = alloca ptr, align 8
  %bStrictBool.addr = alloca i8, align 1
  %sResult = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  store i8 %bStrictBool, ptr %bStrictBool.addr, align 1
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pOut.addr, align 8
  %3 = load ptr, ptr %pObj.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 0
  %4 = load double, ptr %rVal, align 8
  %call = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %2, ptr noundef @.str.522, double noundef %4)
  br label %if.end61

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %6, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %pOut.addr, align 8
  %8 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %x, align 8
  %call5 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %7, ptr noundef @.str.523, i64 noundef %9)
  br label %if.end60

if.else6:                                         ; preds = %if.else
  %10 = load ptr, ptr %pObj.addr, align 8
  %iFlags7 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags7, align 8
  %and8 = and i32 %11, 8
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.else20

if.then10:                                        ; preds = %if.else6
  %12 = load ptr, ptr %pObj.addr, align 8
  %x11 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %x11, align 8
  %tobool12 = icmp ne i64 %13, 0
  br i1 %tobool12, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.then10
  %14 = load ptr, ptr %pOut.addr, align 8
  %call14 = call i32 @SyBlobAppend(ptr noundef %14, ptr noundef @.str.524, i32 noundef 4)
  br label %if.end19

if.else15:                                        ; preds = %if.then10
  %15 = load i8, ptr %bStrictBool.addr, align 1
  %tobool16 = icmp ne i8 %15, 0
  br i1 %tobool16, label %if.end, label %if.then17

if.then17:                                        ; preds = %if.else15
  %16 = load ptr, ptr %pOut.addr, align 8
  %call18 = call i32 @SyBlobAppend(ptr noundef %16, ptr noundef @.str.525, i32 noundef 5)
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.else15
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then13
  br label %if.end59

if.else20:                                        ; preds = %if.else6
  %17 = load ptr, ptr %pObj.addr, align 8
  %iFlags21 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %iFlags21, align 8
  %and22 = and i32 %18, 64
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %if.else20
  %19 = load ptr, ptr %pOut.addr, align 8
  %call25 = call i32 @SyBlobAppend(ptr noundef %19, ptr noundef @.str.526, i32 noundef 5)
  %20 = load ptr, ptr %pObj.addr, align 8
  %x26 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %x26, align 8
  call void @PH7_HashmapUnref(ptr noundef %21)
  br label %if.end58

if.else27:                                        ; preds = %if.else20
  %22 = load ptr, ptr %pObj.addr, align 8
  %iFlags28 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %iFlags28, align 8
  %and29 = and i32 %23, 128
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.else49

if.then31:                                        ; preds = %if.else27
  %24 = load ptr, ptr %pObj.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pVm, align 8
  %call32 = call i32 @PH7_MemObjInit(ptr noundef %25, ptr noundef %sResult)
  %26 = load ptr, ptr %pObj.addr, align 8
  %pVm33 = getelementptr inbounds nuw %struct.ph7_value, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pVm33, align 8
  %28 = load ptr, ptr %pObj.addr, align 8
  %x34 = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %x34, align 8
  %call35 = call i32 @MemObjCallClassCastMethod(ptr noundef %27, ptr noundef %29, ptr noundef @.str.527, i32 noundef 10, ptr noundef %sResult)
  store i32 %call35, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %land.lhs.true, label %if.else44

land.lhs.true:                                    ; preds = %if.then31
  %iFlags36 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %31 = load i32, ptr %iFlags36, align 8
  %and37 = and i32 %31, 1
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.else44

land.lhs.true39:                                  ; preds = %land.lhs.true
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %32 = load i32, ptr %nByte, align 8
  %cmp40 = icmp ugt i32 %32, 0
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %land.lhs.true39
  %sBlob42 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 4
  %33 = load ptr, ptr %pOut.addr, align 8
  %call43 = call i32 @SyBlobDup(ptr noundef %sBlob42, ptr noundef %33)
  br label %if.end46

if.else44:                                        ; preds = %land.lhs.true39, %land.lhs.true, %if.then31
  %34 = load ptr, ptr %pOut.addr, align 8
  %call45 = call i32 @SyBlobAppend(ptr noundef %34, ptr noundef @.str.528, i32 noundef 6)
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then41
  %35 = load ptr, ptr %pObj.addr, align 8
  %x47 = getelementptr inbounds nuw %struct.ph7_value, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %x47, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %36)
  %call48 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end57

if.else49:                                        ; preds = %if.else27
  %37 = load ptr, ptr %pObj.addr, align 8
  %iFlags50 = getelementptr inbounds nuw %struct.ph7_value, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %iFlags50, align 8
  %and51 = and i32 %38, 256
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.else49
  %39 = load ptr, ptr %pOut.addr, align 8
  %40 = load ptr, ptr %pObj.addr, align 8
  %x54 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %x54, align 8
  %call55 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %39, ptr noundef @.str.529, ptr noundef %41)
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.else49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end46
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then24
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end19
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then4
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjCallClassCastMethod(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobDup(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
