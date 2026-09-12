; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToBool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToHashmap(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToObject(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_MemObjCastMethod(i32 noundef %iFlags) #0 {
entry:
  %retval = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load i32, ptr %iFlags.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @PH7_MemObjToString, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %iFlags.addr, align 4
  %and1 = and i32 %1, 2
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store ptr @PH7_MemObjToInteger, ptr %retval, align 8
  br label %return

if.else4:                                         ; preds = %if.else
  %2 = load i32, ptr %iFlags.addr, align 4
  %and5 = and i32 %2, 4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else4
  store ptr @PH7_MemObjToReal, ptr %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else4
  %3 = load i32, ptr %iFlags.addr, align 4
  %and9 = and i32 %3, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  store ptr @PH7_MemObjToBool, ptr %retval, align 8
  br label %return

if.else12:                                        ; preds = %if.else8
  %4 = load i32, ptr %iFlags.addr, align 4
  %and13 = and i32 %4, 64
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else12
  store ptr @PH7_MemObjToHashmap, ptr %retval, align 8
  br label %return

if.else16:                                        ; preds = %if.else12
  %5 = load i32, ptr %iFlags.addr, align 4
  %and17 = and i32 %5, 128
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else16
  store ptr @PH7_MemObjToObject, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.else16
  br label %if.end20

if.end20:                                         ; preds = %if.end
  br label %if.end21

if.end21:                                         ; preds = %if.end20
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %if.end22
  br label %if.end24

if.end24:                                         ; preds = %if.end23
  store ptr @PH7_MemObjToNull, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNull(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
