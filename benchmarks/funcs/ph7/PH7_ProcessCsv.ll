; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ProcessCsv(ptr noundef %zInput, i32 noundef %nByte, i32 noundef %delim, i32 noundef %encl, i32 noundef %escape, ptr noundef %xConsumer, ptr noundef %pUserData) #0 {
entry:
  %zInput.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %delim.addr = alloca i32, align 4
  %encl.addr = alloca i32, align 4
  %escape.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %isEnc = alloca i32, align 4
  %nByte25 = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 %delim, ptr %delim.addr, align 4
  store i32 %encl, ptr %encl.addr, align 4
  store i32 %escape, ptr %escape.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %zInput.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load ptr, ptr %zInput.addr, align 8
  store ptr %2, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %while.end52, %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  store i32 0, ptr %isEnc, align 4
  %5 = load ptr, ptr %zIn, align 8
  store ptr %5, ptr %zPtr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end
  %6 = load ptr, ptr %zIn, align 8
  %7 = load ptr, ptr %zEnd, align 8
  %cmp1 = icmp ult ptr %6, %7
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %zIn, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %9 to i32
  %10 = load i32, ptr %delim.addr, align 4
  %cmp3 = icmp eq i32 %conv, %10
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %11 = load i32, ptr %isEnc, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  br label %while.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %13 to i32
  %14 = load i32, ptr %encl.addr, align 4
  %cmp8 = icmp eq i32 %conv7, %14
  br i1 %cmp8, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else
  %15 = load i32, ptr %isEnc, align 4
  %tobool11 = icmp ne i32 %15, 0
  %lnot = xor i1 %tobool11, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %isEnc, align 4
  br label %if.end19

if.else12:                                        ; preds = %if.else
  %16 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %18 = load i32, ptr %escape.addr, align 4
  %cmp15 = icmp eq i32 %conv14, %18
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else12
  %19 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.else12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %if.end20

if.end20:                                         ; preds = %if.end19
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr21, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then5, %while.cond
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zPtr, align 8
  %cmp22 = icmp ugt ptr %21, %22
  br i1 %cmp22, label %if.then24, label %if.end42

if.then24:                                        ; preds = %while.end
  %23 = load ptr, ptr %zIn, align 8
  %24 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv26, ptr %nByte25, align 4
  %25 = load ptr, ptr %zPtr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %26 to i32
  %27 = load i32, ptr %encl.addr, align 4
  %cmp29 = icmp eq i32 %conv28, %27
  br i1 %cmp29, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.then24
  %28 = load ptr, ptr %zPtr, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr32, ptr %zPtr, align 8
  %29 = load i32, ptr %nByte25, align 4
  %sub = sub nsw i32 %29, 2
  store i32 %sub, ptr %nByte25, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then24
  %30 = load i32, ptr %nByte25, align 4
  %cmp34 = icmp sgt i32 %30, 0
  br i1 %cmp34, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  %31 = load ptr, ptr %xConsumer.addr, align 8
  %32 = load ptr, ptr %zPtr, align 8
  %33 = load i32, ptr %nByte25, align 4
  %34 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %31(ptr noundef %32, i32 noundef %33, ptr noundef %34)
  store i32 %call, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %35, -10
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  br label %for.end

if.end40:                                         ; preds = %if.then36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end33
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %while.end
  br label %while.cond43

while.cond43:                                     ; preds = %while.body50, %if.end42
  %36 = load ptr, ptr %zIn, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp44 = icmp ult ptr %36, %37
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond43
  %38 = load ptr, ptr %zIn, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %39 to i32
  %40 = load i32, ptr %delim.addr, align 4
  %cmp48 = icmp eq i32 %conv47, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond43
  %41 = phi i1 [ false, %while.cond43 ], [ %cmp48, %land.rhs ]
  br i1 %41, label %while.body50, label %while.end52

while.body50:                                     ; preds = %land.end
  %42 = load ptr, ptr %zIn, align 8
  %incdec.ptr51 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr51, ptr %zIn, align 8
  br label %while.cond43, !llvm.loop !8

while.end52:                                      ; preds = %land.end
  br label %for.cond

for.end:                                          ; preds = %if.then39, %if.then
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
