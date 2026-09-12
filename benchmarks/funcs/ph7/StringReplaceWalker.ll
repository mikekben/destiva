; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_replace_data = type { ptr, ptr, ptr, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @StringReplace(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @StringReplaceWalker(ptr noundef %pKey, ptr noundef %pData, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pRepData = alloca ptr, align 8
  %zTarget = alloca ptr, align 8
  %zReplace = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %tLen = alloca i32, align 4
  %nLen = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pRepData, align 8
  %1 = load ptr, ptr %pRepData, align 8
  %pWorker1 = getelementptr inbounds nuw %struct.str_replace_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pWorker1, align 8
  store ptr %2, ptr %pWorker, align 8
  %3 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pKey.addr, align 8
  %call2 = call ptr @ph7_value_to_string(ptr noundef %4, ptr noundef %tLen)
  store ptr %call2, ptr %zTarget, align 8
  %5 = load i32, ptr %tLen, align 4
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %pRepData, align 8
  %xMatch = getelementptr inbounds nuw %struct.str_replace_data, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %xMatch, align 8
  %8 = load ptr, ptr %pWorker, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pBlob, align 8
  %10 = load ptr, ptr %pWorker, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %nByte, align 8
  %12 = load ptr, ptr %zTarget, align 8
  %13 = load i32, ptr %tLen, align 4
  %call5 = call i32 %7(ptr noundef %9, i32 noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %nOfft)
  store i32 %call5, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %15 = load ptr, ptr %pData.addr, align 8
  %call9 = call ptr @ph7_value_to_string(ptr noundef %15, ptr noundef %nLen)
  store ptr %call9, ptr %zReplace, align 8
  %16 = load ptr, ptr %pWorker, align 8
  %17 = load i32, ptr %nOfft, align 4
  %18 = load i32, ptr %tLen, align 4
  %19 = load ptr, ptr %zReplace, align 8
  %20 = load i32, ptr %nLen, align 4
  %call10 = call i32 @StringReplace(ptr noundef %16, i32 noundef %17, i32 noundef %18, ptr noundef %19, i32 noundef %20)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then3, %if.then
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
