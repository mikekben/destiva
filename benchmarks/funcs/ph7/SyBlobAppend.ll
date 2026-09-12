; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @SyBlobAppend(ptr noundef %pBlob, ptr noundef %pData, i32 noundef %nSize) #0 {
entry:
  %retval = alloca i32, align 4
  %pBlob.addr = alloca ptr, align 8
  %pData.addr = alloca ptr, align 8
  %nSize.addr = alloca i32, align 4
  %zBlob = alloca ptr, align 8
  %rc = alloca i32, align 4
  %xSrc = alloca ptr, align 8
  %xDst = alloca ptr, align 8
  %xLen = alloca i32, align 4
  store ptr %pBlob, ptr %pBlob.addr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  store i32 %nSize, ptr %nSize.addr, align 4
  %0 = load i32, ptr %nSize.addr, align 4
  %cmp = icmp ult i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pBlob.addr, align 8
  %call = call i32 @BlobPrepareGrow(ptr noundef %1, ptr noundef %nSize.addr)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %cmp1 = icmp ne i32 0, %2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %pData.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then4, label %if.end37

if.then4:                                         ; preds = %if.end3
  %5 = load ptr, ptr %pBlob.addr, align 8
  %pBlob5 = getelementptr inbounds nuw %struct.SyBlob, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pBlob5, align 8
  store ptr %6, ptr %zBlob, align 8
  %7 = load ptr, ptr %zBlob, align 8
  %8 = load ptr, ptr %pBlob.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %zBlob, align 8
  %10 = load i32, ptr %nSize.addr, align 4
  %11 = load ptr, ptr %pBlob.addr, align 8
  %nByte6 = getelementptr inbounds nuw %struct.SyBlob, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nByte6, align 8
  %add = add i32 %12, %10
  store i32 %add, ptr %nByte6, align 8
  %13 = load ptr, ptr %pData.addr, align 8
  store ptr %13, ptr %xSrc, align 8
  %14 = load ptr, ptr %zBlob, align 8
  store ptr %14, ptr %xDst, align 8
  %15 = load i32, ptr %nSize.addr, align 4
  store i32 %15, ptr %xLen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end31, %if.then4
  %16 = load i32, ptr %xLen, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %17 = load ptr, ptr %xSrc, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx10, align 1
  %19 = load ptr, ptr %xDst, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 0
  store i8 %18, ptr %arrayidx11, align 1
  %20 = load ptr, ptr %xDst, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %xDst, align 8
  %21 = load ptr, ptr %xSrc, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr12, ptr %xSrc, align 8
  %22 = load i32, ptr %xLen, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %xLen, align 4
  %23 = load i32, ptr %xLen, align 4
  %tobool13 = icmp ne i32 %23, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  br label %for.end

if.end15:                                         ; preds = %if.end9
  %24 = load ptr, ptr %xSrc, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx16, align 1
  %26 = load ptr, ptr %xDst, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %26, i64 0
  store i8 %25, ptr %arrayidx17, align 1
  %27 = load ptr, ptr %xDst, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr18, ptr %xDst, align 8
  %28 = load ptr, ptr %xSrc, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr19, ptr %xSrc, align 8
  %29 = load i32, ptr %xLen, align 4
  %dec20 = add i32 %29, -1
  store i32 %dec20, ptr %xLen, align 4
  %30 = load i32, ptr %xLen, align 4
  %tobool21 = icmp ne i32 %30, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end15
  br label %for.end

if.end23:                                         ; preds = %if.end15
  %31 = load ptr, ptr %xSrc, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx24, align 1
  %33 = load ptr, ptr %xDst, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %33, i64 0
  store i8 %32, ptr %arrayidx25, align 1
  %34 = load ptr, ptr %xDst, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr26, ptr %xDst, align 8
  %35 = load ptr, ptr %xSrc, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %incdec.ptr27, ptr %xSrc, align 8
  %36 = load i32, ptr %xLen, align 4
  %dec28 = add i32 %36, -1
  store i32 %dec28, ptr %xLen, align 4
  %37 = load i32, ptr %xLen, align 4
  %tobool29 = icmp ne i32 %37, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end23
  br label %for.end

if.end31:                                         ; preds = %if.end23
  %38 = load ptr, ptr %xSrc, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx32, align 1
  %40 = load ptr, ptr %xDst, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %40, i64 0
  store i8 %39, ptr %arrayidx33, align 1
  %41 = load ptr, ptr %xDst, align 8
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr34, ptr %xDst, align 8
  %42 = load ptr, ptr %xSrc, align 8
  %incdec.ptr35 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr35, ptr %xSrc, align 8
  %43 = load i32, ptr %xLen, align 4
  %dec36 = add i32 %43, -1
  store i32 %dec36, ptr %xLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then30, %if.then22, %if.then14, %if.then8
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then2, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden i32 @BlobPrepareGrow(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
