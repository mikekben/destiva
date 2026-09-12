; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.215 = external hidden unnamed_addr constant [11 x i8], align 1
@__PRETTY_FUNCTION__.filt_sinc = external hidden unnamed_addr constant [55 x i8], align 1
@.str.216 = external hidden unnamed_addr constant [25 x i8], align 1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @filt_sinc(ptr noundef %dest, i32 noundef %N, i32 noundef %step, double noundef %fc, double noundef %gain, i32 noundef %width) #1 {
entry:
  %dest.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %fc.addr = alloca double, align 8
  %gain.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %s = alloca double, align 8
  %mid = alloca i32, align 4
  %x = alloca i32, align 4
  %endpoint = alloca ptr, align 8
  %base = alloca ptr, align 8
  %origdest = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 %step, ptr %step.addr, align 4
  store double %fc, ptr %fc.addr, align 8
  store double %gain, ptr %gain.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  %0 = load double, ptr %fc.addr, align 8
  %1 = load i32, ptr %step.addr, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %0, %conv
  store double %div, ptr %s, align 8
  %2 = load ptr, ptr %dest.addr, align 8
  %3 = load i32, ptr %N.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds float, ptr %2, i64 %idx.ext
  store ptr %add.ptr, ptr %endpoint, align 8
  %4 = load ptr, ptr %dest.addr, align 8
  store ptr %4, ptr %base, align 8
  %5 = load ptr, ptr %dest.addr, align 8
  store ptr %5, ptr %origdest, align 8
  %6 = load i32, ptr %width.addr, align 4
  %7 = load i32, ptr %N.addr, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.215, ptr noundef @.str.116, i32 noundef 3211, ptr noundef @__PRETTY_FUNCTION__.filt_sinc) #3
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %N.addr, align 4
  %and = and i32 %8, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %dest.addr, align 8
  store float 0.000000e+00, ptr %9, align 4
  %10 = load i32, ptr %width.addr, align 4
  %11 = load ptr, ptr %dest.addr, align 8
  %idx.ext5 = sext i32 %10 to i64
  %add.ptr6 = getelementptr inbounds float, ptr %11, i64 %idx.ext5
  store ptr %add.ptr6, ptr %dest.addr, align 8
  %12 = load ptr, ptr %dest.addr, align 8
  %13 = load ptr, ptr %endpoint, align 8
  %cmp7 = icmp uge ptr %12, %13
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then4
  %14 = load ptr, ptr %base, align 8
  %incdec.ptr = getelementptr inbounds nuw float, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %base, align 8
  store ptr %incdec.ptr, ptr %dest.addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then4
  %15 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %N.addr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %16 = load i32, ptr %N.addr, align 4
  %div12 = sdiv i32 %16, 2
  store i32 %div12, ptr %mid, align 4
  %17 = load i32, ptr %mid, align 4
  %sub = sub nsw i32 0, %17
  store i32 %sub, ptr %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %if.end11
  %18 = load i32, ptr %N.addr, align 4
  %dec13 = add nsw i32 %18, -1
  store i32 %dec13, ptr %N.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, ptr %x, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %20 = load i32, ptr %x, align 4
  %conv15 = sitofp i32 %20 to double
  %mul = fmul double %conv15, 0x400921FB54442D18
  %21 = load double, ptr %s, align 8
  %mul16 = fmul double %mul, %21
  %call = call double @sin(double noundef %mul16) #4
  %22 = load i32, ptr %x, align 4
  %conv17 = sitofp i32 %22 to double
  %mul18 = fmul double %conv17, 0x400921FB54442D18
  %div19 = fdiv double %call, %mul18
  %23 = load i32, ptr %step.addr, align 4
  %conv20 = sitofp i32 %23 to double
  %mul21 = fmul double %div19, %conv20
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %24 = load double, ptr %fc.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %mul21, %cond.true ], [ %24, %cond.false ]
  %25 = load double, ptr %gain.addr, align 8
  %mul22 = fmul double %cond, %25
  %conv23 = fptrunc double %mul22 to float
  %26 = load ptr, ptr %dest.addr, align 8
  store float %conv23, ptr %26, align 4
  %27 = load i32, ptr %x, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %x, align 4
  %28 = load i32, ptr %width.addr, align 4
  %29 = load ptr, ptr %dest.addr, align 8
  %idx.ext24 = sext i32 %28 to i64
  %add.ptr25 = getelementptr inbounds float, ptr %29, i64 %idx.ext24
  store ptr %add.ptr25, ptr %dest.addr, align 8
  %30 = load ptr, ptr %dest.addr, align 8
  %31 = load ptr, ptr %endpoint, align 8
  %cmp26 = icmp uge ptr %30, %31
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %cond.end
  %32 = load ptr, ptr %base, align 8
  %incdec.ptr29 = getelementptr inbounds nuw float, ptr %32, i32 1
  store ptr %incdec.ptr29, ptr %base, align 8
  store ptr %incdec.ptr29, ptr %dest.addr, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %cond.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %dest.addr, align 8
  %34 = load ptr, ptr %origdest, align 8
  %35 = load i32, ptr %width.addr, align 4
  %idx.ext31 = sext i32 %35 to i64
  %add.ptr32 = getelementptr inbounds float, ptr %34, i64 %idx.ext31
  %cmp33 = icmp eq ptr %33, %add.ptr32
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %while.end
  br label %if.end37

if.else36:                                        ; preds = %while.end
  call void @__assert_fail(ptr noundef @.str.216, ptr noundef @.str.116, i32 noundef 3233, ptr noundef @__PRETTY_FUNCTION__.filt_sinc) #3
  unreachable

if.end37:                                         ; preds = %if.then35
  ret void
}

; Function Attrs: nounwind
declare double @sin(double noundef) #2

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

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
