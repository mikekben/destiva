; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjLoad(ptr noundef %pSrc, ptr noundef %pDest) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %1 = load ptr, ptr %pDest.addr, align 8
  %call = call i32 @SyMemcpy(ptr noundef %0, ptr noundef %1, i32 noundef 28)
  %2 = load ptr, ptr %pSrc.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags, align 8
  %and = and i32 %3, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pSrc.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %x, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 10
  %6 = load i32, ptr %iRef, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %iRef, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pSrc.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %8, 128
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %9 = load ptr, ptr %pSrc.addr, align 8
  %x5 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %x5, align 8
  %iRef6 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %iRef6, align 8
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %iRef6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load ptr, ptr %pDest.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %13 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %13, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end8
  %14 = load ptr, ptr %pDest.addr, align 8
  %sBlob10 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 4
  %call11 = call i32 @SyBlobRelease(ptr noundef %sBlob10)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end8
  %15 = load ptr, ptr %pSrc.addr, align 8
  %sBlob13 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 4
  %nByte14 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob13, i32 0, i32 2
  %16 = load i32, ptr %nByte14, align 8
  %cmp15 = icmp ugt i32 %16, 0
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  %17 = load ptr, ptr %pDest.addr, align 8
  %sBlob17 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pSrc.addr, align 8
  %sBlob18 = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob18, i32 0, i32 1
  %19 = load ptr, ptr %pBlob, align 8
  %20 = load ptr, ptr %pSrc.addr, align 8
  %sBlob19 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 4
  %nByte20 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob19, i32 0, i32 2
  %21 = load i32, ptr %nByte20, align 8
  %call21 = call i32 @SyBlobReadOnly(ptr noundef %sBlob17, ptr noundef %19, i32 noundef %21)
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end12
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReadOnly(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
