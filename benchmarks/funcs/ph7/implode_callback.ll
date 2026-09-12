; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.implode_data = type { ptr, i32, ptr, i32, i32, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapWalk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @implode_callback(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pData, align 8
  %1 = load ptr, ptr %pData, align 8
  %bRecursive = getelementptr inbounds nuw %struct.implode_data, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %bRecursive, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.lhs.true2, label %if.end15

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %pData, align 8
  %nRecCount = getelementptr inbounds nuw %struct.implode_data, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %nRecCount, align 8
  %cmp = icmp slt i32 %5, 32
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %land.lhs.true2
  %6 = load ptr, ptr %pData, align 8
  %nSeplen = getelementptr inbounds nuw %struct.implode_data, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %nSeplen, align 8
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %pData, align 8
  %bFirst = getelementptr inbounds nuw %struct.implode_data, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %bFirst, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  %10 = load ptr, ptr %pData, align 8
  %pCtx = getelementptr inbounds nuw %struct.implode_data, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pCtx, align 8
  %12 = load ptr, ptr %pData, align 8
  %zSep = getelementptr inbounds nuw %struct.implode_data, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %zSep, align 8
  %14 = load ptr, ptr %pData, align 8
  %nSeplen7 = getelementptr inbounds nuw %struct.implode_data, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %nSeplen7, align 8
  %call8 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef %13, i32 noundef %15)
  br label %if.end

if.else:                                          ; preds = %if.then4
  %16 = load ptr, ptr %pData, align 8
  %bFirst9 = getelementptr inbounds nuw %struct.implode_data, ptr %16, i32 0, i32 4
  store i32 0, ptr %bFirst9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %17 = load ptr, ptr %pData, align 8
  %bFirst11 = getelementptr inbounds nuw %struct.implode_data, ptr %17, i32 0, i32 4
  store i32 1, ptr %bFirst11, align 4
  %18 = load ptr, ptr %pData, align 8
  %nRecCount12 = getelementptr inbounds nuw %struct.implode_data, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nRecCount12, align 8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %nRecCount12, align 8
  %20 = load ptr, ptr %pValue.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %x, align 8
  %22 = load ptr, ptr %pData, align 8
  %call13 = call i32 @PH7_HashmapWalk(ptr noundef %21, ptr noundef @implode_callback, ptr noundef %22)
  %23 = load ptr, ptr %pData, align 8
  %nRecCount14 = getelementptr inbounds nuw %struct.implode_data, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %nRecCount14, align 8
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %nRecCount14, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %25 = load ptr, ptr %pValue.addr, align 8
  %call16 = call ptr @ph7_value_to_string(ptr noundef %25, ptr noundef %nLen)
  store ptr %call16, ptr %zData, align 8
  %26 = load i32, ptr %nLen, align 4
  %cmp17 = icmp sgt i32 %26, 0
  br i1 %cmp17, label %if.then18, label %if.else35

if.then18:                                        ; preds = %if.end15
  %27 = load ptr, ptr %pData, align 8
  %nSeplen19 = getelementptr inbounds nuw %struct.implode_data, ptr %27, i32 0, i32 3
  %28 = load i32, ptr %nSeplen19, align 8
  %cmp20 = icmp sgt i32 %28, 0
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %if.then18
  %29 = load ptr, ptr %pData, align 8
  %bFirst22 = getelementptr inbounds nuw %struct.implode_data, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %bFirst22, align 4
  %tobool23 = icmp ne i32 %30, 0
  br i1 %tobool23, label %if.else29, label %if.then24

if.then24:                                        ; preds = %if.then21
  %31 = load ptr, ptr %pData, align 8
  %pCtx25 = getelementptr inbounds nuw %struct.implode_data, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pCtx25, align 8
  %33 = load ptr, ptr %pData, align 8
  %zSep26 = getelementptr inbounds nuw %struct.implode_data, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %zSep26, align 8
  %35 = load ptr, ptr %pData, align 8
  %nSeplen27 = getelementptr inbounds nuw %struct.implode_data, ptr %35, i32 0, i32 3
  %36 = load i32, ptr %nSeplen27, align 8
  %call28 = call i32 @ph7_result_string(ptr noundef %32, ptr noundef %34, i32 noundef %36)
  br label %if.end31

if.else29:                                        ; preds = %if.then21
  %37 = load ptr, ptr %pData, align 8
  %bFirst30 = getelementptr inbounds nuw %struct.implode_data, ptr %37, i32 0, i32 4
  store i32 0, ptr %bFirst30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then18
  %38 = load ptr, ptr %pData, align 8
  %pCtx33 = getelementptr inbounds nuw %struct.implode_data, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pCtx33, align 8
  %40 = load ptr, ptr %zData, align 8
  %41 = load i32, ptr %nLen, align 4
  %call34 = call i32 @ph7_result_string(ptr noundef %39, ptr noundef %40, i32 noundef %41)
  br label %if.end36

if.else35:                                        ; preds = %if.end15
  store ptr null, ptr %pKey.addr, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %if.end10
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
