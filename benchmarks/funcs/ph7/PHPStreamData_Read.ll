; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_stream_data = type { ptr, i32, %union.anon.3 }
%union.anon.3 = type { %struct.ph7_output_consumer }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @PHPStreamData_Read(ptr noundef %pHandle, ptr noundef %pBuffer, i64 noundef %nDatatoRead) #1 {
entry:
  %retval = alloca i64, align 8
  %pHandle.addr = alloca ptr, align 8
  %pBuffer.addr = alloca ptr, align 8
  %nDatatoRead.addr = alloca i64, align 8
  %pData = alloca ptr, align 8
  %nRd = alloca i64, align 8
  %fd = alloca i32, align 4
  store ptr %pHandle, ptr %pHandle.addr, align 8
  store ptr %pBuffer, ptr %pBuffer.addr, align 8
  store i64 %nDatatoRead, ptr %nDatatoRead.addr, align 8
  %0 = load ptr, ptr %pHandle.addr, align 8
  store ptr %0, ptr %pData, align 8
  %1 = load ptr, ptr %pData, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pData, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %iType, align 8
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pData, align 8
  %x = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %x, align 8
  %6 = ptrtoint ptr %5 to i64
  %conv = trunc i64 %6 to i32
  store i32 %conv, ptr %fd, align 4
  %7 = load i32, ptr %fd, align 4
  %8 = load ptr, ptr %pBuffer.addr, align 8
  %9 = load i64, ptr %nDatatoRead.addr, align 8
  %call = call i64 @read(i32 noundef %7, ptr noundef %8, i64 noundef %9)
  store i64 %call, ptr %nRd, align 8
  %10 = load i64, ptr %nRd, align 8
  %cmp4 = icmp slt i64 %10, 1
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i64 -1, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end3
  %11 = load i64, ptr %nRd, align 8
  store i64 %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %12 = load i64, ptr %retval, align 8
  ret i64 %12
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
