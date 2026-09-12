; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyMemcpy(ptr noundef %pSrc, ptr noundef %pDest, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pSrc.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xSrc = alloca ptr, align 8
  %xDst = alloca ptr, align 8
  %xLen = alloca i32, align 4
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %pSrc.addr, align 8
  %1 = load ptr, ptr %pDest.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nLen.addr, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pSrc.addr, align 8
  store ptr %3, ptr %xSrc, align 8
  %4 = load ptr, ptr %pDest.addr, align 8
  store ptr %4, ptr %xDst, align 8
  %5 = load i32, ptr %nLen.addr, align 4
  store i32 %5, ptr %xLen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end23, %if.end
  %6 = load i32, ptr %xLen, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %for.cond
  br label %for.end

if.end2:                                          ; preds = %for.cond
  %7 = load ptr, ptr %xSrc, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx, align 1
  %9 = load ptr, ptr %xDst, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 0
  store i8 %8, ptr %arrayidx3, align 1
  %10 = load ptr, ptr %xDst, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %xDst, align 8
  %11 = load ptr, ptr %xSrc, align 8
  %incdec.ptr4 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr4, ptr %xSrc, align 8
  %12 = load i32, ptr %xLen, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %xLen, align 4
  %13 = load i32, ptr %xLen, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end2
  br label %for.end

if.end7:                                          ; preds = %if.end2
  %14 = load ptr, ptr %xSrc, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx8, align 1
  %16 = load ptr, ptr %xDst, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 0
  store i8 %15, ptr %arrayidx9, align 1
  %17 = load ptr, ptr %xDst, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr10, ptr %xDst, align 8
  %18 = load ptr, ptr %xSrc, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr11, ptr %xSrc, align 8
  %19 = load i32, ptr %xLen, align 4
  %dec12 = add i32 %19, -1
  store i32 %dec12, ptr %xLen, align 4
  %20 = load i32, ptr %xLen, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end7
  br label %for.end

if.end15:                                         ; preds = %if.end7
  %21 = load ptr, ptr %xSrc, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx16, align 1
  %23 = load ptr, ptr %xDst, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %23, i64 0
  store i8 %22, ptr %arrayidx17, align 1
  %24 = load ptr, ptr %xDst, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr18, ptr %xDst, align 8
  %25 = load ptr, ptr %xSrc, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr19, ptr %xSrc, align 8
  %26 = load i32, ptr %xLen, align 4
  %dec20 = add i32 %26, -1
  store i32 %dec20, ptr %xLen, align 4
  %27 = load i32, ptr %xLen, align 4
  %tobool21 = icmp ne i32 %27, 0
  br i1 %tobool21, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end15
  br label %for.end

if.end23:                                         ; preds = %if.end15
  %28 = load ptr, ptr %xSrc, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx24, align 1
  %30 = load ptr, ptr %xDst, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %30, i64 0
  store i8 %29, ptr %arrayidx25, align 1
  %31 = load ptr, ptr %xDst, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr26, ptr %xDst, align 8
  %32 = load ptr, ptr %xSrc, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr27, ptr %xSrc, align 8
  %33 = load i32, ptr %xLen, align 4
  %dec28 = add i32 %33, -1
  store i32 %dec28, ptr %xLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then22, %if.then14, %if.then6, %if.then1
  %34 = load i32, ptr %nLen.addr, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
