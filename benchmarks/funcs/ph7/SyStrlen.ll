; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrlen(ptr noundef %zSrc) #0 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  store ptr %zSrc, ptr %zSrc.addr, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  %1 = load ptr, ptr %zIn, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %tobool2 = icmp ne i8 %5, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %zIn, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr5, ptr %zIn, align 8
  %7 = load ptr, ptr %zIn, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx6, align 1
  %tobool7 = icmp ne i8 %8, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end4
  br label %for.end

if.end9:                                          ; preds = %if.end4
  %9 = load ptr, ptr %zIn, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr10, ptr %zIn, align 8
  %10 = load ptr, ptr %zIn, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx11, align 1
  %tobool12 = icmp ne i8 %11, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  br label %for.end

if.end14:                                         ; preds = %if.end9
  %12 = load ptr, ptr %zIn, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr15, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then13, %if.then8, %if.then3, %if.then
  %13 = load ptr, ptr %zIn, align 8
  %14 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv
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
