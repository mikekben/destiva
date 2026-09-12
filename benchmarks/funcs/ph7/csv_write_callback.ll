; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csv_data = type { i32, i32, ptr, i32 }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @csv_write_callback(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %c2 = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pData, align 8
  %1 = load ptr, ptr %pValue.addr, align 8
  %call = call ptr @ph7_value_to_string(ptr noundef %1, ptr noundef %nLen)
  store ptr %call, ptr %zData, align 8
  %2 = load i32, ptr %nLen, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pData, align 8
  %iCount = getelementptr inbounds nuw %struct.csv_data, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %iCount, align 8
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %pData, align 8
  %pDev = getelementptr inbounds nuw %struct.csv_data, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pDev, align 8
  %pStream = getelementptr inbounds nuw %struct.io_private, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pStream, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %7, i32 0, i32 8
  %8 = load ptr, ptr %xWrite, align 8
  %9 = load ptr, ptr %pData, align 8
  %pDev3 = getelementptr inbounds nuw %struct.csv_data, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pDev3, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pHandle, align 8
  %12 = load ptr, ptr %pData, align 8
  %delimiter = getelementptr inbounds nuw %struct.csv_data, ptr %12, i32 0, i32 0
  %call4 = call i64 %8(ptr noundef %11, ptr noundef %delimiter, i64 noundef 1)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  store i32 1, ptr %n, align 4
  store i32 0, ptr %c2, align 4
  %13 = load ptr, ptr %zData, align 8
  %14 = load i32, ptr %nLen, align 4
  %15 = load ptr, ptr %pData, align 8
  %delimiter6 = getelementptr inbounds nuw %struct.csv_data, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %delimiter6, align 8
  %call7 = call i32 @SyByteFind(ptr noundef %13, i32 noundef %14, i32 noundef %16, ptr noundef null)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %17 = load ptr, ptr %zData, align 8
  %18 = load i32, ptr %nLen, align 4
  %19 = load ptr, ptr %pData, align 8
  %enclosure = getelementptr inbounds nuw %struct.csv_data, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %enclosure, align 4
  %call9 = call i32 @SyByteFind(ptr noundef %17, i32 noundef %18, i32 noundef %20, ptr noundef %n)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end32

if.then11:                                        ; preds = %lor.lhs.false, %if.end5
  store i32 1, ptr %c2, align 4
  %21 = load i32, ptr %n, align 4
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  store i32 2, ptr %c2, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  %22 = load ptr, ptr %pData, align 8
  %pDev15 = getelementptr inbounds nuw %struct.csv_data, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pDev15, align 8
  %pStream16 = getelementptr inbounds nuw %struct.io_private, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pStream16, align 8
  %xWrite17 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %xWrite17, align 8
  %26 = load ptr, ptr %pData, align 8
  %pDev18 = getelementptr inbounds nuw %struct.csv_data, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pDev18, align 8
  %pHandle19 = getelementptr inbounds nuw %struct.io_private, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %pHandle19, align 8
  %29 = load ptr, ptr %pData, align 8
  %enclosure20 = getelementptr inbounds nuw %struct.csv_data, ptr %29, i32 0, i32 1
  %call21 = call i64 %25(ptr noundef %28, ptr noundef %enclosure20, i64 noundef 1)
  %30 = load i32, ptr %c2, align 4
  %cmp22 = icmp sgt i32 %30, 1
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end14
  %31 = load ptr, ptr %pData, align 8
  %pDev24 = getelementptr inbounds nuw %struct.csv_data, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pDev24, align 8
  %pStream25 = getelementptr inbounds nuw %struct.io_private, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pStream25, align 8
  %xWrite26 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %33, i32 0, i32 8
  %34 = load ptr, ptr %xWrite26, align 8
  %35 = load ptr, ptr %pData, align 8
  %pDev27 = getelementptr inbounds nuw %struct.csv_data, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %pDev27, align 8
  %pHandle28 = getelementptr inbounds nuw %struct.io_private, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pHandle28, align 8
  %38 = load ptr, ptr %pData, align 8
  %enclosure29 = getelementptr inbounds nuw %struct.csv_data, ptr %38, i32 0, i32 1
  %call30 = call i64 %34(ptr noundef %37, ptr noundef %enclosure29, i64 noundef 1)
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end14
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %lor.lhs.false
  %39 = load ptr, ptr %pData, align 8
  %pDev33 = getelementptr inbounds nuw %struct.csv_data, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %pDev33, align 8
  %pStream34 = getelementptr inbounds nuw %struct.io_private, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pStream34, align 8
  %xWrite35 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %41, i32 0, i32 8
  %42 = load ptr, ptr %xWrite35, align 8
  %43 = load ptr, ptr %pData, align 8
  %pDev36 = getelementptr inbounds nuw %struct.csv_data, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %pDev36, align 8
  %pHandle37 = getelementptr inbounds nuw %struct.io_private, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pHandle37, align 8
  %46 = load ptr, ptr %zData, align 8
  %47 = load i32, ptr %nLen, align 4
  %conv = sext i32 %47 to i64
  %call38 = call i64 %42(ptr noundef %45, ptr noundef %46, i64 noundef %conv)
  %cmp39 = icmp slt i64 %call38, 1
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end32
  store ptr null, ptr %pKey.addr, align 8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end32
  %48 = load i32, ptr %c2, align 4
  %cmp43 = icmp sgt i32 %48, 0
  br i1 %cmp43, label %if.then45, label %if.end64

if.then45:                                        ; preds = %if.end42
  %49 = load ptr, ptr %pData, align 8
  %pDev46 = getelementptr inbounds nuw %struct.csv_data, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %pDev46, align 8
  %pStream47 = getelementptr inbounds nuw %struct.io_private, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %pStream47, align 8
  %xWrite48 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %51, i32 0, i32 8
  %52 = load ptr, ptr %xWrite48, align 8
  %53 = load ptr, ptr %pData, align 8
  %pDev49 = getelementptr inbounds nuw %struct.csv_data, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %pDev49, align 8
  %pHandle50 = getelementptr inbounds nuw %struct.io_private, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %pHandle50, align 8
  %56 = load ptr, ptr %pData, align 8
  %enclosure51 = getelementptr inbounds nuw %struct.csv_data, ptr %56, i32 0, i32 1
  %call52 = call i64 %52(ptr noundef %55, ptr noundef %enclosure51, i64 noundef 1)
  %57 = load i32, ptr %c2, align 4
  %cmp53 = icmp sgt i32 %57, 1
  br i1 %cmp53, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.then45
  %58 = load ptr, ptr %pData, align 8
  %pDev56 = getelementptr inbounds nuw %struct.csv_data, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %pDev56, align 8
  %pStream57 = getelementptr inbounds nuw %struct.io_private, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pStream57, align 8
  %xWrite58 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %60, i32 0, i32 8
  %61 = load ptr, ptr %xWrite58, align 8
  %62 = load ptr, ptr %pData, align 8
  %pDev59 = getelementptr inbounds nuw %struct.csv_data, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %pDev59, align 8
  %pHandle60 = getelementptr inbounds nuw %struct.io_private, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %pHandle60, align 8
  %65 = load ptr, ptr %pData, align 8
  %enclosure61 = getelementptr inbounds nuw %struct.csv_data, ptr %65, i32 0, i32 1
  %call62 = call i64 %61(ptr noundef %64, ptr noundef %enclosure61, i64 noundef 1)
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.then45
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end42
  %66 = load ptr, ptr %pData, align 8
  %iCount65 = getelementptr inbounds nuw %struct.csv_data, ptr %66, i32 0, i32 3
  %67 = load i32, ptr %iCount65, align 8
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %iCount65, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then41, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
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
