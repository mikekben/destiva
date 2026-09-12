; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @StreamReadLine(ptr noundef %pDev, ptr noundef %pzData, i64 noundef %nMaxLen) #0 {
entry:
  %retval = alloca i64, align 8
  %pDev.addr = alloca ptr, align 8
  %pzData.addr = alloca ptr, align 8
  %nMaxLen.addr = alloca i64, align 8
  %pStream = alloca ptr, align 8
  %zBuf = alloca [8192 x i8], align 16
  %n = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pDev, ptr %pDev.addr, align 8
  store ptr %pzData, ptr %pzData.addr, align 8
  store i64 %nMaxLen, ptr %nMaxLen.addr, align 8
  %0 = load ptr, ptr %pDev.addr, align 8
  %pStream1 = getelementptr inbounds nuw %struct.io_private, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pStream1, align 8
  store ptr %1, ptr %pStream, align 8
  store i64 0, ptr %n, align 8
  %2 = load ptr, ptr %pDev.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.io_private, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nOfft, align 8
  %4 = load ptr, ptr %pDev.addr, align 8
  %sBuffer = getelementptr inbounds nuw %struct.io_private, ptr %4, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer, i32 0, i32 2
  %5 = load i32, ptr %nByte, align 8
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pDev.addr, align 8
  %sBuffer2 = getelementptr inbounds nuw %struct.io_private, ptr %6, i32 0, i32 2
  %call = call i32 @SyBlobReset(ptr noundef %sBuffer2)
  %7 = load ptr, ptr %pDev.addr, align 8
  %nOfft3 = getelementptr inbounds nuw %struct.io_private, ptr %7, i32 0, i32 3
  store i32 0, ptr %nOfft3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %pDev.addr, align 8
  %sBuffer4 = getelementptr inbounds nuw %struct.io_private, ptr %8, i32 0, i32 2
  %nByte5 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer4, i32 0, i32 2
  %9 = load i32, ptr %nByte5, align 8
  %10 = load ptr, ptr %pDev.addr, align 8
  %nOfft6 = getelementptr inbounds nuw %struct.io_private, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %nOfft6, align 8
  %sub = sub i32 %9, %11
  %cmp7 = icmp ugt i32 %sub, 0
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %pDev.addr, align 8
  %13 = load ptr, ptr %pzData.addr, align 8
  %call9 = call i32 @GetLine(ptr noundef %12, ptr noundef %n, ptr noundef %13)
  store i32 %call9, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %14, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then8
  %15 = load i64, ptr %n, align 8
  %conv = trunc i64 %15 to i32
  %16 = load ptr, ptr %pDev.addr, align 8
  %nOfft12 = getelementptr inbounds nuw %struct.io_private, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %nOfft12, align 8
  %add = add i32 %17, %conv
  store i32 %add, ptr %nOfft12, align 8
  %18 = load i64, ptr %n, align 8
  store i64 %18, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.then8
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  br label %for.cond

for.cond:                                         ; preds = %if.end57, %if.end14
  %19 = load ptr, ptr %pStream, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %xRead, align 8
  %21 = load ptr, ptr %pDev.addr, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pHandle, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %23 = load i64, ptr %nMaxLen.addr, align 8
  %cmp15 = icmp sgt i64 %23, 0
  br i1 %cmp15, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.cond
  %24 = load i64, ptr %nMaxLen.addr, align 8
  %cmp17 = icmp ult i64 %24, 8192
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %25 = load i64, ptr %nMaxLen.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.cond
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ 8192, %cond.false ]
  %call19 = call i64 %20(ptr noundef %22, ptr noundef %arraydecay, i64 noundef %cond)
  store i64 %call19, ptr %n, align 8
  %26 = load i64, ptr %n, align 8
  %cmp20 = icmp slt i64 %26, 1
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %cond.end
  br label %for.end

if.end23:                                         ; preds = %cond.end
  %27 = load ptr, ptr %pDev.addr, align 8
  %sBuffer24 = getelementptr inbounds nuw %struct.io_private, ptr %27, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %28 = load i64, ptr %n, align 8
  %conv26 = trunc i64 %28 to i32
  %call27 = call i32 @SyBlobAppend(ptr noundef %sBuffer24, ptr noundef %arraydecay25, i32 noundef %conv26)
  %29 = load ptr, ptr %pDev.addr, align 8
  %30 = load ptr, ptr %pzData.addr, align 8
  %call28 = call i32 @GetLine(ptr noundef %29, ptr noundef %n, ptr noundef %30)
  store i32 %call28, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %31, 0
  br i1 %cmp29, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end23
  %32 = load i64, ptr %n, align 8
  %conv32 = trunc i64 %32 to i32
  %33 = load ptr, ptr %pDev.addr, align 8
  %nOfft33 = getelementptr inbounds nuw %struct.io_private, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %nOfft33, align 8
  %add34 = add i32 %34, %conv32
  store i32 %add34, ptr %nOfft33, align 8
  %35 = load i64, ptr %n, align 8
  store i64 %35, ptr %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end23
  %36 = load i64, ptr %nMaxLen.addr, align 8
  %cmp36 = icmp sgt i64 %36, 0
  br i1 %cmp36, label %land.lhs.true38, label %if.end57

land.lhs.true38:                                  ; preds = %if.end35
  %37 = load ptr, ptr %pDev.addr, align 8
  %sBuffer39 = getelementptr inbounds nuw %struct.io_private, ptr %37, i32 0, i32 2
  %nByte40 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer39, i32 0, i32 2
  %38 = load i32, ptr %nByte40, align 8
  %39 = load ptr, ptr %pDev.addr, align 8
  %nOfft41 = getelementptr inbounds nuw %struct.io_private, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %nOfft41, align 8
  %sub42 = sub i32 %38, %40
  %conv43 = zext i32 %sub42 to i64
  %41 = load i64, ptr %nMaxLen.addr, align 8
  %cmp44 = icmp sge i64 %conv43, %41
  br i1 %cmp44, label %if.then46, label %if.end57

if.then46:                                        ; preds = %land.lhs.true38
  %42 = load ptr, ptr %pDev.addr, align 8
  %sBuffer47 = getelementptr inbounds nuw %struct.io_private, ptr %42, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer47, i32 0, i32 1
  %43 = load ptr, ptr %pBlob, align 8
  %44 = load ptr, ptr %pDev.addr, align 8
  %nOfft48 = getelementptr inbounds nuw %struct.io_private, ptr %44, i32 0, i32 3
  %45 = load i32, ptr %nOfft48, align 8
  %idxprom = zext i32 %45 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %43, i64 %idxprom
  %46 = load ptr, ptr %pzData.addr, align 8
  store ptr %arrayidx, ptr %46, align 8
  %47 = load ptr, ptr %pDev.addr, align 8
  %sBuffer49 = getelementptr inbounds nuw %struct.io_private, ptr %47, i32 0, i32 2
  %nByte50 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer49, i32 0, i32 2
  %48 = load i32, ptr %nByte50, align 8
  %49 = load ptr, ptr %pDev.addr, align 8
  %nOfft51 = getelementptr inbounds nuw %struct.io_private, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %nOfft51, align 8
  %sub52 = sub i32 %48, %50
  %conv53 = zext i32 %sub52 to i64
  store i64 %conv53, ptr %n, align 8
  %51 = load ptr, ptr %pDev.addr, align 8
  %sBuffer54 = getelementptr inbounds nuw %struct.io_private, ptr %51, i32 0, i32 2
  %call55 = call i32 @SyBlobReset(ptr noundef %sBuffer54)
  %52 = load ptr, ptr %pDev.addr, align 8
  %nOfft56 = getelementptr inbounds nuw %struct.io_private, ptr %52, i32 0, i32 3
  store i32 0, ptr %nOfft56, align 8
  %53 = load i64, ptr %n, align 8
  store i64 %53, ptr %retval, align 8
  br label %return

if.end57:                                         ; preds = %land.lhs.true38, %if.end35
  br label %for.cond

for.end:                                          ; preds = %if.then22
  %54 = load ptr, ptr %pDev.addr, align 8
  %sBuffer58 = getelementptr inbounds nuw %struct.io_private, ptr %54, i32 0, i32 2
  %nByte59 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer58, i32 0, i32 2
  %55 = load i32, ptr %nByte59, align 8
  %56 = load ptr, ptr %pDev.addr, align 8
  %nOfft60 = getelementptr inbounds nuw %struct.io_private, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %nOfft60, align 8
  %sub61 = sub i32 %55, %57
  %cmp62 = icmp ugt i32 %sub61, 0
  br i1 %cmp62, label %if.then64, label %if.end78

if.then64:                                        ; preds = %for.end
  %58 = load ptr, ptr %pDev.addr, align 8
  %sBuffer65 = getelementptr inbounds nuw %struct.io_private, ptr %58, i32 0, i32 2
  %pBlob66 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer65, i32 0, i32 1
  %59 = load ptr, ptr %pBlob66, align 8
  %60 = load ptr, ptr %pDev.addr, align 8
  %nOfft67 = getelementptr inbounds nuw %struct.io_private, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %nOfft67, align 8
  %idxprom68 = zext i32 %61 to i64
  %arrayidx69 = getelementptr inbounds nuw i8, ptr %59, i64 %idxprom68
  %62 = load ptr, ptr %pzData.addr, align 8
  store ptr %arrayidx69, ptr %62, align 8
  %63 = load ptr, ptr %pDev.addr, align 8
  %sBuffer70 = getelementptr inbounds nuw %struct.io_private, ptr %63, i32 0, i32 2
  %nByte71 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer70, i32 0, i32 2
  %64 = load i32, ptr %nByte71, align 8
  %65 = load ptr, ptr %pDev.addr, align 8
  %nOfft72 = getelementptr inbounds nuw %struct.io_private, ptr %65, i32 0, i32 3
  %66 = load i32, ptr %nOfft72, align 8
  %sub73 = sub i32 %64, %66
  %conv74 = zext i32 %sub73 to i64
  store i64 %conv74, ptr %n, align 8
  %67 = load ptr, ptr %pDev.addr, align 8
  %sBuffer75 = getelementptr inbounds nuw %struct.io_private, ptr %67, i32 0, i32 2
  %call76 = call i32 @SyBlobReset(ptr noundef %sBuffer75)
  %68 = load ptr, ptr %pDev.addr, align 8
  %nOfft77 = getelementptr inbounds nuw %struct.io_private, ptr %68, i32 0, i32 3
  store i32 0, ptr %nOfft77, align 8
  br label %if.end78

if.end78:                                         ; preds = %if.then64, %for.end
  %69 = load i64, ptr %n, align 8
  store i64 %69, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end78, %if.then46, %if.then31, %if.then11
  %70 = load i64, ptr %retval, align 8
  ret i64 %70
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GetLine(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
