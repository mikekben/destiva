; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unique_id_data = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_result_buf_length(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HexConsumer(ptr noundef %pData, i32 noundef %nLen, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pData.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pUniq = alloca ptr, align 8
  %nBuflen = alloca i32, align 4
  store ptr %pData, ptr %pData.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pUniq, align 8
  %1 = load ptr, ptr %pUniq, align 8
  %pCtx = getelementptr inbounds nuw %struct.unique_id_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pCtx, align 8
  %call = call i32 @ph7_context_result_buf_length(ptr noundef %2)
  store i32 %call, ptr %nBuflen, align 4
  %3 = load i32, ptr %nBuflen, align 4
  %cmp = icmp ugt i32 %3, 12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pUniq, align 8
  %entropy = getelementptr inbounds nuw %struct.unique_id_data, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %entropy, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, ptr %nBuflen, align 4
  %cmp1 = icmp ugt i32 %6, 22
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %pUniq, align 8
  %pCtx4 = getelementptr inbounds nuw %struct.unique_id_data, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pCtx4, align 8
  %9 = load ptr, ptr %pData.addr, align 8
  %10 = load i32, ptr %nLen.addr, align 4
  %call5 = call i32 @ph7_result_string(ptr noundef %8, ptr noundef %9, i32 noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
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
