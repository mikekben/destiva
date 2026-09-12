; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_private_data = type { ptr, i32, i32, i32 }

@.str.191 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.618 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonEncode(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmJsonObjectEncode(ptr noundef %zAttr, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %zAttr.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pJson = alloca ptr, align 8
  store ptr %zAttr, ptr %zAttr.addr, align 8
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
  %pCtx3 = getelementptr inbounds nuw %struct.json_private_data, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pCtx3, align 8
  %9 = load ptr, ptr %zAttr.addr, align 8
  %call4 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %8, ptr noundef @.str.618, ptr noundef %9)
  %10 = load ptr, ptr %pJson, align 8
  %nRecCount5 = getelementptr inbounds nuw %struct.json_private_data, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %nRecCount5, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nRecCount5, align 8
  %12 = load ptr, ptr %pValue.addr, align 8
  %13 = load ptr, ptr %pJson, align 8
  %call6 = call i32 @VmJsonEncode(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %pJson, align 8
  %nRecCount7 = getelementptr inbounds nuw %struct.json_private_data, ptr %14, i32 0, i32 3
  %15 = load i32, ptr %nRecCount7, align 8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %nRecCount7, align 8
  %16 = load ptr, ptr %pJson, align 8
  %isFirst8 = getelementptr inbounds nuw %struct.json_private_data, ptr %16, i32 0, i32 1
  store i32 0, ptr %isFirst8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
