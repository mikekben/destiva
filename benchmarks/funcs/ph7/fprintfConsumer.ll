; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprintf_data = type { ptr, i64 }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @fprintfConsumer(ptr noundef %pCtx, ptr noundef %zInput, i32 noundef %nLen, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %zInput.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pFdata = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pFdata, align 8
  %1 = load ptr, ptr %pFdata, align 8
  %pIO = getelementptr inbounds nuw %struct.fprintf_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pIO, align 8
  %pStream = getelementptr inbounds nuw %struct.io_private, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pStream, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %3, i32 0, i32 8
  %4 = load ptr, ptr %xWrite, align 8
  %5 = load ptr, ptr %pFdata, align 8
  %pIO1 = getelementptr inbounds nuw %struct.fprintf_data, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pIO1, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pHandle, align 8
  %8 = load ptr, ptr %zInput.addr, align 8
  %9 = load i32, ptr %nLen.addr, align 4
  %conv = sext i32 %9 to i64
  %call = call i64 %4(ptr noundef %7, ptr noundef %8, i64 noundef %conv)
  store i64 %call, ptr %n, align 8
  %10 = load i64, ptr %n, align 8
  %cmp = icmp slt i64 %10, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %pCtx.addr, align 8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %11 = load i64, ptr %n, align 8
  %12 = load ptr, ptr %pFdata, align 8
  %nCount = getelementptr inbounds nuw %struct.fprintf_data, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %nCount, align 8
  %add = add nsw i64 %13, %11
  store i64 %add, ptr %nCount, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
