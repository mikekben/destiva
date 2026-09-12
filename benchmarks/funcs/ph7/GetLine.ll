; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @GetLine(ptr noundef %pDev, ptr noundef %pLen, ptr noundef %pzLine) #0 {
entry:
  %retval = alloca i32, align 4
  %pDev.addr = alloca ptr, align 8
  %pLen.addr = alloca ptr, align 8
  %pzLine.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  store ptr %pDev, ptr %pDev.addr, align 8
  store ptr %pLen, ptr %pLen.addr, align 8
  store ptr %pzLine, ptr %pzLine.addr, align 8
  %0 = load ptr, ptr %pDev.addr, align 8
  %sBuffer = getelementptr inbounds nuw %struct.io_private, ptr %0, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer, i32 0, i32 1
  %1 = load ptr, ptr %pBlob, align 8
  %2 = load ptr, ptr %pDev.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.io_private, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nOfft, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %pDev.addr, align 8
  %sBuffer1 = getelementptr inbounds nuw %struct.io_private, ptr %5, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBuffer1, i32 0, i32 2
  %6 = load i32, ptr %nByte, align 8
  %7 = load ptr, ptr %pDev.addr, align 8
  %nOfft2 = getelementptr inbounds nuw %struct.io_private, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %nOfft2, align 8
  %sub = sub i32 %6, %8
  %idxprom3 = zext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom3
  store ptr %arrayidx4, ptr %zEnd, align 8
  %9 = load ptr, ptr %zIn, align 8
  store ptr %9, ptr %zPtr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %10 = load ptr, ptr %zIn, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %10, %11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %13 to i32
  %cmp6 = icmp eq i32 %conv, 10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %15 = load ptr, ptr %zIn, align 8
  %16 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %17 = load ptr, ptr %pLen.addr, align 8
  store i64 %sub.ptr.sub, ptr %17, align 8
  %18 = load ptr, ptr %zPtr, align 8
  %19 = load ptr, ptr %pzLine.addr, align 8
  store ptr %18, ptr %19, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr8, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
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
