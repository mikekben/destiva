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
define hidden i32 @PH7_MemObjStore(ptr noundef %pSrc, ptr noundef %pDest) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store ptr null, ptr %pObj, align 8
  store ptr null, ptr %pMap, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pSrc.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %x, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %3, i32 0, i32 10
  %4 = load i32, ptr %iRef, align 8
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %iRef, align 8
  br label %if.end8

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pSrc.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %6, 128
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %pSrc.addr, align 8
  %x5 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %x5, align 8
  %iRef6 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %iRef6, align 8
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %iRef6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %10 = load ptr, ptr %pDest.addr, align 8
  %iFlags9 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags9, align 8
  %and10 = and i32 %11, 64
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.end8
  %12 = load ptr, ptr %pDest.addr, align 8
  %x13 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %x13, align 8
  store ptr %13, ptr %pMap, align 8
  br label %if.end21

if.else14:                                        ; preds = %if.end8
  %14 = load ptr, ptr %pDest.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %iFlags15, align 8
  %and16 = and i32 %15, 128
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else14
  %16 = load ptr, ptr %pDest.addr, align 8
  %x19 = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %x19, align 8
  store ptr %17, ptr %pObj, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else14
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  %18 = load ptr, ptr %pSrc.addr, align 8
  %19 = load ptr, ptr %pDest.addr, align 8
  %call = call i32 @SyMemcpy(ptr noundef %18, ptr noundef %19, i32 noundef 28)
  %20 = load ptr, ptr %pDest.addr, align 8
  %iFlags22 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %iFlags22, align 8
  %and23 = and i32 %21, -1025
  store i32 %and23, ptr %iFlags22, align 8
  store i32 0, ptr %rc, align 4
  %22 = load ptr, ptr %pSrc.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %23 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %23, 0
  br i1 %cmp, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.end21
  %24 = load ptr, ptr %pDest.addr, align 8
  %sBlob25 = getelementptr inbounds nuw %struct.ph7_value, ptr %24, i32 0, i32 4
  %call26 = call i32 @SyBlobReset(ptr noundef %sBlob25)
  %25 = load ptr, ptr %pSrc.addr, align 8
  %sBlob27 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %pDest.addr, align 8
  %sBlob28 = getelementptr inbounds nuw %struct.ph7_value, ptr %26, i32 0, i32 4
  %call29 = call i32 @SyBlobDup(ptr noundef %sBlob27, ptr noundef %sBlob28)
  store i32 %call29, ptr %rc, align 4
  br label %if.end38

if.else30:                                        ; preds = %if.end21
  %27 = load ptr, ptr %pDest.addr, align 8
  %sBlob31 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 4
  %nByte32 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob31, i32 0, i32 2
  %28 = load i32, ptr %nByte32, align 8
  %cmp33 = icmp ugt i32 %28, 0
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.else30
  %29 = load ptr, ptr %pDest.addr, align 8
  %sBlob35 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 4
  %call36 = call i32 @SyBlobRelease(ptr noundef %sBlob35)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else30
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24
  %30 = load ptr, ptr %pMap, align 8
  %tobool39 = icmp ne ptr %30, null
  br i1 %tobool39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.end38
  %31 = load ptr, ptr %pMap, align 8
  call void @PH7_HashmapUnref(ptr noundef %31)
  br label %if.end45

if.else41:                                        ; preds = %if.end38
  %32 = load ptr, ptr %pObj, align 8
  %tobool42 = icmp ne ptr %32, null
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.else41
  %33 = load ptr, ptr %pObj, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %33)
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.else41
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then40
  %34 = load i32, ptr %rc, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

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
