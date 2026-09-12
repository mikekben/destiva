; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_StreamReadWholeFile(ptr noundef %pHandle, ptr noundef %pStream, ptr noundef %pOut) #0 {
entry:
  %pHandle.addr = alloca ptr, align 8
  %pStream.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  %nRead = alloca i64, align 8
  %zBuf = alloca [8192 x i8], align 16
  %rc = alloca i32, align 4
  store ptr %pHandle, ptr %pHandle.addr, align 8
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end6, %entry
  %0 = load ptr, ptr %pStream.addr, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %xRead, align 8
  %2 = load ptr, ptr %pHandle.addr, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %call = call i64 %1(ptr noundef %2, ptr noundef %arraydecay, i64 noundef 8192)
  store i64 %call, ptr %nRead, align 8
  %3 = load i64, ptr %nRead, align 8
  %cmp = icmp slt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pOut.addr, align 8
  %arraydecay1 = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %5 = load i64, ptr %nRead, align 8
  %conv = trunc i64 %5 to i32
  %call2 = call i32 @SyBlobAppend(ptr noundef %4, ptr noundef %arraydecay1, i32 noundef %conv)
  store i32 %call2, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %6, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  br label %for.end

if.end6:                                          ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then5, %if.then
  %7 = load ptr, ptr %pOut.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nByte, align 8
  %cmp7 = icmp ugt i32 %8, 0
  %9 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i32 0, i32 -1
  ret i32 %cond
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
