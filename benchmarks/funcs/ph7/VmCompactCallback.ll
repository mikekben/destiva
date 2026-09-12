; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.compact_data = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapWalk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractMemObj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmCompactCallback(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %sVar = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pData, align 8
  %1 = load ptr, ptr %pData, align 8
  %pArray1 = getelementptr inbounds nuw %struct.compact_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pArray1, align 8
  store ptr %2, ptr %pArray, align 8
  %3 = load ptr, ptr %pArray, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pVm2, align 8
  store ptr %4, ptr %pVm, align 8
  %5 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pValue.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %7 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 0
  store ptr %7, ptr %zString, align 8
  %8 = load ptr, ptr %pValue.addr, align 8
  %sBlob3 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3, i32 0, i32 2
  %9 = load i32, ptr %nByte, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %9, ptr %nByte4, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  %10 = load i32, ptr %nByte5, align 8
  %cmp = icmp ugt i32 %10, 0
  br i1 %cmp, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.then
  %11 = load ptr, ptr %pVm, align 8
  %call7 = call ptr @VmExtractMemObj(ptr noundef %11, ptr noundef %sVar, i32 noundef 0, i32 noundef 0)
  store ptr %call7, ptr %pKey.addr, align 8
  %12 = load ptr, ptr %pKey.addr, align 8
  %tobool8 = icmp ne ptr %12, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then6
  %13 = load ptr, ptr %pArray, align 8
  %14 = load ptr, ptr %pValue.addr, align 8
  %15 = load ptr, ptr %pKey.addr, align 8
  %call10 = call i32 @ph7_array_add_elem(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end20

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %pValue.addr, align 8
  %call12 = call i32 @ph7_value_is_array(ptr noundef %16)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.else
  %17 = load ptr, ptr %pData, align 8
  %nRecCount = getelementptr inbounds nuw %struct.compact_data, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %nRecCount, align 8
  %cmp14 = icmp slt i32 %18, 32
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %pData, align 8
  %nRecCount16 = getelementptr inbounds nuw %struct.compact_data, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nRecCount16, align 8
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %nRecCount16, align 8
  %21 = load ptr, ptr %pValue.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %x, align 8
  %23 = load ptr, ptr %pUserData.addr, align 8
  %call17 = call i32 @PH7_HashmapWalk(ptr noundef %22, ptr noundef @VmCompactCallback, ptr noundef %23)
  store i32 %call17, ptr %rc, align 4
  %24 = load ptr, ptr %pData, align 8
  %nRecCount18 = getelementptr inbounds nuw %struct.compact_data, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nRecCount18, align 8
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %nRecCount18, align 8
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then15
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
