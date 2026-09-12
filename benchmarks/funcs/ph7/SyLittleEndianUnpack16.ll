; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyLittleEndianUnpack16(ptr noundef %pOut, ptr noundef %zBuf, i32 noundef %nLen) #0 {
entry:
  %retval = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  %0 = load i32, ptr %nLen.addr, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -29, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %shl = shl i32 %conv4, 8
  %add = add nsw i32 %conv2, %shl
  %conv5 = trunc i32 %add to i16
  %5 = load ptr, ptr %pOut.addr, align 8
  store i16 %conv5, ptr %5, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
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
