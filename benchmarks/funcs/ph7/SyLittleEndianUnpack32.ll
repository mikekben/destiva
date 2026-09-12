; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyLittleEndianUnpack32(ptr noundef %uNB, ptr noundef %buf, i32 noundef %Len) #0 {
entry:
  %retval = alloca i32, align 4
  %uNB.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %Len.addr = alloca i32, align 4
  store ptr %uNB, ptr %uNB.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %Len, ptr %Len.addr, align 4
  %0 = load i32, ptr %Len.addr, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -29, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load ptr, ptr %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %4 to i32
  %shl = shl i32 %conv4, 8
  %add = add nsw i32 %conv2, %shl
  %5 = load ptr, ptr %buf.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %shl7 = shl i32 %conv6, 16
  %add8 = add nsw i32 %add, %shl7
  %7 = load ptr, ptr %buf.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %8 to i32
  %shl11 = shl i32 %conv10, 24
  %add12 = add nsw i32 %add8, %shl11
  %9 = load ptr, ptr %uNB.addr, align 8
  store i32 %add12, ptr %9, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
