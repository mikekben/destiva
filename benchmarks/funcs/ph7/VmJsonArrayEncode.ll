; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_private_data = type { ptr, i32, i32, i32 }

@.str.191 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.617 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonEncode(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmJsonArrayEncode(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pJson = alloca ptr, align 8
  %zKey = alloca ptr, align 8
  %nByte = alloca i32, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pJson, align 8
  %1 = load ptr, ptr %pJson, align 8
  %nRecCount = getelementptr inbounds nuw %struct.json_private_data, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %nRecCount, align 8
  %cmp = icmp sgt i32 %2, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pJson, align 8
  %isFirst = getelementptr inbounds nuw %struct.json_private_data, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %isFirst, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %pJson, align 8
  %pCtx = getelementptr inbounds nuw %struct.json_private_data, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pCtx, align 8
  %call = call i32 @ph7_result_string(ptr noundef %6, ptr noundef @.str.191, i32 noundef 1)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %pJson, align 8
  %iFlags = getelementptr inbounds nuw %struct.json_private_data, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags, align 4
  %and = and i32 %8, 16
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end2
  %9 = load ptr, ptr %pKey.addr, align 8
  %call5 = call ptr @ph7_value_to_string(ptr noundef %9, ptr noundef %nByte)
  store ptr %call5, ptr %zKey, align 8
  %10 = load ptr, ptr %pJson, align 8
  %pCtx6 = getelementptr inbounds nuw %struct.json_private_data, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pCtx6, align 8
  %12 = load i32, ptr %nByte, align 4
  %13 = load ptr, ptr %zKey, align 8
  %call7 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %11, ptr noundef @.str.617, i32 noundef %12, ptr noundef %13)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end2
  %14 = load ptr, ptr %pJson, align 8
  %nRecCount9 = getelementptr inbounds nuw %struct.json_private_data, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %nRecCount9, align 8
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %nRecCount9, align 8
  %16 = load ptr, ptr %pValue.addr, align 8
  %17 = load ptr, ptr %pJson, align 8
  %call10 = call i32 @VmJsonEncode(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %pJson, align 8
  %nRecCount11 = getelementptr inbounds nuw %struct.json_private_data, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %nRecCount11, align 8
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %nRecCount11, align 8
  %20 = load ptr, ptr %pJson, align 8
  %isFirst12 = getelementptr inbounds nuw %struct.json_private_data, ptr %20, i32 0, i32 1
  store i32 0, ptr %isFirst12, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
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
