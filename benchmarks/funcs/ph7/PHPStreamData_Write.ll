; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_stream_data = type { ptr, i32, %union.anon.3 }
%union.anon.3 = type { %struct.ph7_output_consumer }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @PHPStreamData_Write(ptr noundef %pHandle, ptr noundef %pBuf, i64 noundef %nWrite) #0 {
entry:
  %retval = alloca i64, align 8
  %pHandle.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %nWrite.addr = alloca i64, align 8
  %pData = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nWr = alloca i64, align 8
  %fd = alloca i32, align 4
  store ptr %pHandle, ptr %pHandle.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i64 %nWrite, ptr %nWrite.addr, align 8
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
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %4 = load ptr, ptr %pData, align 8
  %iType3 = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iType3, align 8
  %cmp4 = icmp eq i32 %5, 4
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %pData, align 8
  %x = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %6, i32 0, i32 2
  store ptr %x, ptr %pCons, align 8
  %7 = load ptr, ptr %pCons, align 8
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %xConsumer, align 8
  %9 = load ptr, ptr %pBuf.addr, align 8
  %10 = load i64, ptr %nWrite.addr, align 8
  %conv = trunc i64 %10 to i32
  %11 = load ptr, ptr %pCons, align 8
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pUserData, align 8
  %call = call i32 %8(ptr noundef %9, i32 noundef %conv, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %13, -10
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  store i64 -1, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then5
  %14 = load i64, ptr %nWrite.addr, align 8
  store i64 %14, ptr %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %15 = load ptr, ptr %pData, align 8
  %x12 = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %x12, align 8
  %17 = ptrtoint ptr %16 to i64
  %conv13 = trunc i64 %17 to i32
  store i32 %conv13, ptr %fd, align 4
  %18 = load i32, ptr %fd, align 4
  %19 = load ptr, ptr %pBuf.addr, align 8
  %20 = load i64, ptr %nWrite.addr, align 8
  %call14 = call i64 @write(i32 noundef %18, ptr noundef %19, i64 noundef %20)
  store i64 %call14, ptr %nWr, align 8
  %21 = load i64, ptr %nWr, align 8
  %cmp15 = icmp slt i64 %21, 1
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  store i64 -1, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.end11
  %22 = load i64, ptr %nWr, align 8
  store i64 %22, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %if.end9, %if.then8, %if.then2, %if.then
  %23 = load i64, ptr %retval, align 8
  ret i64 %23
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
