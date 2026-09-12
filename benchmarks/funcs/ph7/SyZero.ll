; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @SyZero(ptr noundef %pSrc, i32 noundef %nSize) #0 {
entry:
  %pSrc.addr = alloca ptr, align 8
  %nSize.addr = alloca i32, align 4
  %zSrc = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %nSize, ptr %nSize.addr, align 4
  %0 = load ptr, ptr %pSrc.addr, align 8
  store ptr %0, ptr %zSrc, align 8
  %1 = load ptr, ptr %zSrc, align 8
  %2 = load i32, ptr %nSize.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  %3 = load ptr, ptr %zSrc, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %zSrc, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  store i8 0, ptr %arrayidx1, align 1
  %6 = load ptr, ptr %zSrc, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %zSrc, align 8
  %7 = load ptr, ptr %zSrc, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp2 = icmp uge ptr %7, %8
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %zSrc, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  store i8 0, ptr %arrayidx5, align 1
  %10 = load ptr, ptr %zSrc, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr6, ptr %zSrc, align 8
  %11 = load ptr, ptr %zSrc, align 8
  %12 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %11, %12
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  br label %for.end

if.end9:                                          ; preds = %if.end4
  %13 = load ptr, ptr %zSrc, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 0
  store i8 0, ptr %arrayidx10, align 1
  %14 = load ptr, ptr %zSrc, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %zSrc, align 8
  %15 = load ptr, ptr %zSrc, align 8
  %16 = load ptr, ptr %zEnd, align 8
  %cmp12 = icmp uge ptr %15, %16
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %for.end

if.end14:                                         ; preds = %if.end9
  %17 = load ptr, ptr %zSrc, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %17, i64 0
  store i8 0, ptr %arrayidx15, align 1
  %18 = load ptr, ptr %zSrc, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr16, ptr %zSrc, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then13, %if.then8, %if.then3, %if.then
  ret void
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
