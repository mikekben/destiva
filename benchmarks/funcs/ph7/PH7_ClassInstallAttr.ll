; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInstallAttr(ptr noundef %pClass, ptr noundef %pAttr) #0 {
entry:
  %pClass.addr = alloca ptr, align 8
  %pAttr.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pClass, ptr %pClass.addr, align 8
  store ptr %pAttr, ptr %pAttr.addr, align 8
  %0 = load ptr, ptr %pAttr.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %0, i32 0, i32 0
  store ptr %sName, ptr %pName, align 8
  %1 = load ptr, ptr %pClass.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %4 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %6 = load ptr, ptr %pAttr.addr, align 8
  %call = call i32 @SyHashInsert(ptr noundef %hAttr, ptr noundef %3, i32 noundef %5, ptr noundef %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  ret i32 %7
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
