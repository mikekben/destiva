; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @StreamRead(ptr noundef %pDev, ptr noundef %pBuf, i64 noundef %nLen) #0 {
entry:
  %retval = alloca i64, align 8
  %pDev.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i64, align 8
  %pStream = alloca ptr, align 8
  %zBuf = alloca ptr, align 8
  %n = alloca i64, align 8
  %nRead = alloca i64, align 8
  store ptr %pDev, ptr %pDev.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i64 %nLen, ptr %nLen.addr, align 8
  %0 = load ptr, ptr %pDev.addr, align 8
  %pStream1 = getelementptr inbounds nuw %struct.io_private, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pStream1, align 8
  store ptr %1, ptr %pStream, align 8
  %2 = load ptr, ptr %pBuf.addr, align 8
  store ptr %2, ptr %zBuf, align 8
  %3 = load ptr, ptr %pDev.addr, align 8
  %sBuffer = getelementptr inbounds nuw %struct.io_private, ptr %3, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer, i32 0, i32 2
  %4 = load i32, ptr %nByte, align 8
  %5 = load ptr, ptr %pDev.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.io_private, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %nOfft, align 8
  %sub = sub i32 %4, %6
  %conv = zext i32 %sub to i64
  store i64 %conv, ptr %n, align 8
  %7 = load i64, ptr %n, align 8
  %cmp = icmp sgt i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %8 = load i64, ptr %n, align 8
  %9 = load i64, ptr %nLen.addr, align 8
  %cmp3 = icmp sgt i64 %8, %9
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load i64, ptr %nLen.addr, align 8
  store i64 %10, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %11 = load ptr, ptr %pDev.addr, align 8
  %sBuffer6 = getelementptr inbounds nuw %struct.io_private, ptr %11, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer6, i32 0, i32 1
  %12 = load ptr, ptr %pBlob, align 8
  %13 = load ptr, ptr %pDev.addr, align 8
  %nOfft7 = getelementptr inbounds nuw %struct.io_private, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nOfft7, align 8
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom
  %15 = load ptr, ptr %pBuf.addr, align 8
  %16 = load i64, ptr %n, align 8
  %conv8 = trunc i64 %16 to i32
  %call = call i32 @SyMemcpy(ptr noundef %arrayidx, ptr noundef %15, i32 noundef %conv8)
  %17 = load i64, ptr %n, align 8
  %conv9 = trunc i64 %17 to i32
  %18 = load ptr, ptr %pDev.addr, align 8
  %nOfft10 = getelementptr inbounds nuw %struct.io_private, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %nOfft10, align 8
  %add = add i32 %19, %conv9
  store i32 %add, ptr %nOfft10, align 8
  %20 = load ptr, ptr %pDev.addr, align 8
  %nOfft11 = getelementptr inbounds nuw %struct.io_private, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %nOfft11, align 8
  %22 = load ptr, ptr %pDev.addr, align 8
  %sBuffer12 = getelementptr inbounds nuw %struct.io_private, ptr %22, i32 0, i32 2
  %nByte13 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer12, i32 0, i32 2
  %23 = load i32, ptr %nByte13, align 8
  %cmp14 = icmp uge i32 %21, %23
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  %24 = load ptr, ptr %pDev.addr, align 8
  %sBuffer17 = getelementptr inbounds nuw %struct.io_private, ptr %24, i32 0, i32 2
  %call18 = call i32 @SyBlobReset(ptr noundef %sBuffer17)
  %25 = load ptr, ptr %pDev.addr, align 8
  %nOfft19 = getelementptr inbounds nuw %struct.io_private, ptr %25, i32 0, i32 3
  store i32 0, ptr %nOfft19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end
  %26 = load i64, ptr %n, align 8
  %27 = load i64, ptr %nLen.addr, align 8
  %sub21 = sub nsw i64 %27, %26
  store i64 %sub21, ptr %nLen.addr, align 8
  %28 = load i64, ptr %nLen.addr, align 8
  %cmp22 = icmp slt i64 %28, 1
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end20
  %29 = load i64, ptr %n, align 8
  store i64 %29, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end20
  %30 = load i64, ptr %n, align 8
  %31 = load ptr, ptr %zBuf, align 8
  %add.ptr = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %add.ptr, ptr %zBuf, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  %32 = load ptr, ptr %pStream, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %xRead, align 8
  %34 = load ptr, ptr %pDev.addr, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %pHandle, align 8
  %36 = load ptr, ptr %zBuf, align 8
  %37 = load i64, ptr %nLen.addr, align 8
  %call27 = call i64 %33(ptr noundef %35, ptr noundef %36, i64 noundef %37)
  store i64 %call27, ptr %nRead, align 8
  %38 = load i64, ptr %nRead, align 8
  %cmp28 = icmp sgt i64 %38, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %39 = load i64, ptr %nRead, align 8
  %40 = load i64, ptr %n, align 8
  %add31 = add nsw i64 %40, %39
  store i64 %add31, ptr %n, align 8
  br label %if.end36

if.else:                                          ; preds = %if.end26
  %41 = load i64, ptr %n, align 8
  %cmp32 = icmp slt i64 %41, 1
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else
  %42 = load i64, ptr %nRead, align 8
  store i64 %42, ptr %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.else
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then30
  %43 = load i64, ptr %n, align 8
  store i64 %43, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end36, %if.then34, %if.then24
  %44 = load i64, ptr %retval, align 8
  ret i64 %44
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
