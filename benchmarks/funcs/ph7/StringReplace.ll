; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @StringReplace(ptr noundef %pWorker, i32 noundef %nOfft, i32 noundef %nLen, ptr noundef %zReplace, i32 noundef %nReplen) #0 {
entry:
  %retval = alloca i32, align 4
  %pWorker.addr = alloca ptr, align 8
  %nOfft.addr = alloca i32, align 4
  %nLen.addr = alloca i32, align 4
  %zReplace.addr = alloca ptr, align 8
  %nReplen.addr = alloca i32, align 4
  %zInput = alloca ptr, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %iRep = alloca i32, align 4
  %rc = alloca i32, align 4
  %INLEN = alloca i32, align 4
  store ptr %pWorker, ptr %pWorker.addr, align 8
  store i32 %nOfft, ptr %nOfft.addr, align 4
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %zReplace, ptr %zReplace.addr, align 8
  store i32 %nReplen, ptr %nReplen.addr, align 4
  %0 = load ptr, ptr %pWorker.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBlob, align 8
  store ptr %1, ptr %zInput, align 8
  %2 = load ptr, ptr %pWorker.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nByte, align 8
  store i32 %3, ptr %n, align 4
  %4 = load i32, ptr %nOfft.addr, align 4
  store i32 %4, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %5 = load i32, ptr %m, align 4
  %6 = load i32, ptr %nLen.addr, align 4
  %add = add i32 %5, %6
  %7 = load i32, ptr %n, align 4
  %cmp = icmp uge i32 %add, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %zInput, align 8
  %9 = load i32, ptr %m, align 4
  %10 = load i32, ptr %nLen.addr, align 4
  %add1 = add i32 %9, %10
  %idxprom = zext i32 %add1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %8, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  %12 = load ptr, ptr %zInput, align 8
  %13 = load i32, ptr %m, align 4
  %idxprom2 = zext i32 %13 to i64
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom2
  store i8 %11, ptr %arrayidx3, align 1
  %14 = load i32, ptr %m, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %m, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %15 = load i32, ptr %nLen.addr, align 4
  %16 = load ptr, ptr %pWorker.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyBlob, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %nByte4, align 8
  %sub = sub i32 %17, %15
  store i32 %sub, ptr %nByte4, align 8
  %18 = load i32, ptr %nReplen.addr, align 4
  %cmp5 = icmp sgt i32 %18, 0
  br i1 %cmp5, label %if.then6, label %if.end39

if.then6:                                         ; preds = %for.end
  %19 = load i32, ptr %nReplen.addr, align 4
  store i32 %19, ptr %iRep, align 4
  %20 = load ptr, ptr %pWorker.addr, align 8
  %21 = load i32, ptr %nReplen.addr, align 4
  %call = call i32 @SyBlobAppend(ptr noundef %20, ptr noundef null, i32 noundef %21)
  store i32 %call, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %22, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then6
  %23 = load ptr, ptr %pWorker.addr, align 8
  %pBlob10 = getelementptr inbounds nuw %struct.SyBlob, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pBlob10, align 8
  store ptr %24, ptr %zInput, align 8
  %25 = load ptr, ptr %pWorker.addr, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyBlob, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %nByte11, align 8
  store i32 %26, ptr %n, align 4
  %27 = load i32, ptr %n, align 4
  %28 = load i32, ptr %nOfft.addr, align 4
  %sub12 = sub i32 %27, %28
  store i32 %sub12, ptr %INLEN, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %if.end19, %if.end9
  %29 = load i32, ptr %n, align 4
  %cmp14 = icmp ugt i32 %29, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.cond13
  %30 = load i32, ptr %n, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %n, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.cond13
  %31 = load i32, ptr %INLEN, align 4
  %cmp17 = icmp ult i32 %31, 1
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  br label %for.end26

if.end19:                                         ; preds = %if.end16
  %32 = load ptr, ptr %zInput, align 8
  %33 = load i32, ptr %n, align 4
  %idxprom20 = zext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %32, i64 %idxprom20
  %34 = load i8, ptr %arrayidx21, align 1
  %35 = load ptr, ptr %zInput, align 8
  %36 = load i32, ptr %n, align 4
  %37 = load i32, ptr %iRep, align 4
  %add22 = add i32 %36, %37
  %idxprom23 = zext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom23
  store i8 %34, ptr %arrayidx24, align 1
  %38 = load i32, ptr %INLEN, align 4
  %dec25 = add i32 %38, -1
  store i32 %dec25, ptr %INLEN, align 4
  br label %for.cond13

for.end26:                                        ; preds = %if.then18
  br label %for.cond27

for.cond27:                                       ; preds = %if.end30, %for.end26
  %39 = load i32, ptr %iRep, align 4
  %cmp28 = icmp slt i32 %39, 1
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.cond27
  br label %for.end36

if.end30:                                         ; preds = %for.cond27
  %40 = load ptr, ptr %zReplace.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx31, align 1
  %42 = load ptr, ptr %zInput, align 8
  %43 = load i32, ptr %nOfft.addr, align 4
  %idxprom32 = zext i32 %43 to i64
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %42, i64 %idxprom32
  store i8 %41, ptr %arrayidx33, align 1
  %44 = load i32, ptr %nOfft.addr, align 4
  %inc34 = add i32 %44, 1
  store i32 %inc34, ptr %nOfft.addr, align 4
  %45 = load ptr, ptr %zReplace.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %45, i32 1
  store ptr %incdec.ptr, ptr %zReplace.addr, align 8
  %46 = load i32, ptr %iRep, align 4
  %dec35 = add nsw i32 %46, -1
  store i32 %dec35, ptr %iRep, align 4
  br label %for.cond27

for.end36:                                        ; preds = %if.then29
  %47 = load i32, ptr %nReplen.addr, align 4
  %48 = load ptr, ptr %pWorker.addr, align 8
  %nByte37 = getelementptr inbounds nuw %struct.SyBlob, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %nByte37, align 8
  %add38 = add i32 %49, %47
  store i32 %add38, ptr %nByte37, align 8
  br label %if.end39

if.end39:                                         ; preds = %for.end36, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end39, %if.then8
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
