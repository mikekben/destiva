; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.196 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.203 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.504 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.505 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.506 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.507 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.508 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.509 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_MemObjTypeDump(ptr noundef %pVal) #0 {
entry:
  %pVal.addr = alloca ptr, align 8
  %zType = alloca ptr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store ptr @.str.4, ptr %zType, align 8
  %0 = load ptr, ptr %pVal.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store ptr @.str.203, ptr %zType, align 8
  br label %if.end41

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %pVal.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store ptr @.str.504, ptr %zType, align 8
  br label %if.end40

if.else5:                                         ; preds = %if.else
  %4 = load ptr, ptr %pVal.addr, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags6, align 8
  %and7 = and i32 %5, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else5
  store ptr @.str.505, ptr %zType, align 8
  br label %if.end39

if.else10:                                        ; preds = %if.else5
  %6 = load ptr, ptr %pVal.addr, align 8
  %iFlags11 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %iFlags11, align 8
  %and12 = and i32 %7, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else10
  store ptr @.str.506, ptr %zType, align 8
  br label %if.end38

if.else15:                                        ; preds = %if.else10
  %8 = load ptr, ptr %pVal.addr, align 8
  %iFlags16 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iFlags16, align 8
  %and17 = and i32 %9, 8
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else15
  store ptr @.str.507, ptr %zType, align 8
  br label %if.end37

if.else20:                                        ; preds = %if.else15
  %10 = load ptr, ptr %pVal.addr, align 8
  %iFlags21 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags21, align 8
  %and22 = and i32 %11, 64
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else20
  store ptr @.str.196, ptr %zType, align 8
  br label %if.end36

if.else25:                                        ; preds = %if.else20
  %12 = load ptr, ptr %pVal.addr, align 8
  %iFlags26 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %iFlags26, align 8
  %and27 = and i32 %13, 128
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else25
  store ptr @.str.508, ptr %zType, align 8
  br label %if.end35

if.else30:                                        ; preds = %if.else25
  %14 = load ptr, ptr %pVal.addr, align 8
  %iFlags31 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %iFlags31, align 8
  %and32 = and i32 %15, 256
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end

if.then34:                                        ; preds = %if.else30
  store ptr @.str.509, ptr %zType, align 8
  br label %if.end

if.end:                                           ; preds = %if.then34, %if.else30
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then24
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then19
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then14
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then9
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then4
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then
  %16 = load ptr, ptr %zType, align 8
  ret ptr %16
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
