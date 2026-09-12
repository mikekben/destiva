; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden double @sqlite3VdbeRealValue(ptr noundef %pMem) #0 {
entry:
  %retval = alloca double, align 8
  %pMem.addr = alloca ptr, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 0
  %3 = load double, ptr %u, align 8
  store double %3, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pMem.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags1, align 8
  %conv2 = zext i16 %5 to i32
  %and3 = and i32 %conv2, 36
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %pMem.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %u6, align 8
  %conv7 = sitofp i64 %7 to double
  store double %conv7, ptr %retval, align 8
  br label %return

if.else8:                                         ; preds = %if.else
  %8 = load ptr, ptr %pMem.addr, align 8
  %flags9 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 1
  %9 = load i16, ptr %flags9, align 8
  %conv10 = zext i16 %9 to i32
  %and11 = and i32 %conv10, 18
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else8
  %10 = load ptr, ptr %pMem.addr, align 8
  %call = call double @memRealValue(ptr noundef %10)
  store double %call, ptr %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else8
  store double 0.000000e+00, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else14, %if.then13, %if.then5, %if.then
  %11 = load double, ptr %retval, align 8
  ret double %11
}

; Function Attrs: nounwind uwtable
declare hidden double @memRealValue(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
