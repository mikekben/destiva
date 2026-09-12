; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.str_replace_data = type { ptr, ptr, ptr, ptr }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @StrReplaceWalker(ptr noundef %pKey, ptr noundef %pData, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pRep = alloca ptr, align 8
  %sWorker = alloca %struct.SyString, align 8
  %zIn = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %zDup = alloca ptr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pRep, align 8
  %1 = load ptr, ptr %pData.addr, align 8
  %call = call ptr @ph7_value_to_string(ptr noundef %1, ptr noundef %nByte)
  store ptr %call, ptr %zIn, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sWorker, i32 0, i32 0
  store ptr null, ptr %zString, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %sWorker, i32 0, i32 1
  store i32 0, ptr %nByte1, align 8
  %2 = load i32, ptr %nByte, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pRep, align 8
  %pCtx = getelementptr inbounds nuw %struct.str_replace_data, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pCtx, align 8
  %5 = load i32, ptr %nByte, align 4
  %call2 = call ptr @ph7_context_alloc_chunk(ptr noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef 1)
  store ptr %call2, ptr %zDup, align 8
  %6 = load ptr, ptr %zDup, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %pRep, align 8
  %pCtx5 = getelementptr inbounds nuw %struct.str_replace_data, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pCtx5, align 8
  %call6 = call i32 @ph7_context_throw_error(ptr noundef %8, i32 noundef 1, ptr noundef @.str.536)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load ptr, ptr %zIn, align 8
  %10 = load ptr, ptr %zDup, align 8
  %11 = load i32, ptr %nByte, align 4
  %call7 = call i32 @SyMemcpy(ptr noundef %9, ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %zDup, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %sWorker, i32 0, i32 0
  store ptr %12, ptr %zString8, align 8
  %13 = load i32, ptr %nByte, align 4
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %sWorker, i32 0, i32 1
  store i32 %13, ptr %nByte9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
  %14 = load ptr, ptr %pRep, align 8
  %pCollector = getelementptr inbounds nuw %struct.str_replace_data, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pCollector, align 8
  %call11 = call i32 @SySetPut(ptr noundef %15, ptr noundef %sWorker)
  store ptr null, ptr %pKey.addr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then4
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
