; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @SyRandomness(ptr noundef %pCtx, ptr noundef %pBuf, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zBuf = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load ptr, ptr %pBuf.addr, align 8
  store ptr %0, ptr %zBuf, align 8
  %1 = load ptr, ptr %zBuf, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %3 = load ptr, ptr %pCtx.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %3, i32 0, i32 3
  %4 = load i16, ptr %nMagic, align 2
  %conv = zext i16 %4 to i32
  %cmp = icmp ne i32 %conv, 5060
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %if.end
  %5 = load ptr, ptr %zBuf, align 8
  %6 = load ptr, ptr %zEnd, align 8
  %cmp2 = icmp uge ptr %5, %6
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.cond
  br label %for.end

if.end5:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call = call zeroext i8 @randomByte(ptr noundef %7)
  %8 = load ptr, ptr %zBuf, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 0
  store i8 %call, ptr %arrayidx6, align 1
  %9 = load ptr, ptr %zBuf, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %zBuf, align 8
  %10 = load ptr, ptr %zBuf, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %10, %11
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end5
  br label %for.end

if.end10:                                         ; preds = %if.end5
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call zeroext i8 @randomByte(ptr noundef %12)
  %13 = load ptr, ptr %zBuf, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i64 0
  store i8 %call11, ptr %arrayidx12, align 1
  %14 = load ptr, ptr %zBuf, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr13, ptr %zBuf, align 8
  %15 = load ptr, ptr %zBuf, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp14 = icmp uge ptr %15, %16
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end10
  br label %for.end

if.end17:                                         ; preds = %if.end10
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call zeroext i8 @randomByte(ptr noundef %17)
  %18 = load ptr, ptr %zBuf, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %18, i64 0
  store i8 %call18, ptr %arrayidx19, align 1
  %19 = load ptr, ptr %zBuf, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr20, ptr %zBuf, align 8
  %20 = load ptr, ptr %zBuf, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %cmp21 = icmp uge ptr %20, %21
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end17
  br label %for.end

if.end24:                                         ; preds = %if.end17
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call25 = call zeroext i8 @randomByte(ptr noundef %22)
  %23 = load ptr, ptr %zBuf, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %23, i64 0
  store i8 %call25, ptr %arrayidx26, align 1
  %24 = load ptr, ptr %zBuf, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr27, ptr %zBuf, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then23, %if.then16, %if.then9, %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @randomByte(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
